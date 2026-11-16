import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/recurrence/recurrence_rule.dart';
import '../../../core/time/clock.dart';

enum EventKind { event, timeBlock, focus, goal }

class EventDraft {
  const EventDraft({
    required this.title,
    required this.start,
    required this.end,
    this.description = '',
    this.allDay = false,
    this.kind = EventKind.event,
    this.recurrence,
    this.reminderMinutes,
    this.taskId,
    this.color,
    this.timeZone = 'UTC',
  });
  final String title;
  final DateTime start;
  final DateTime end;
  final String description;
  final bool allDay;
  final EventKind kind;
  final String? recurrence;
  final int? reminderMinutes;
  final String? taskId;
  final int? color;
  final String timeZone;
}

/// One concrete (possibly recurring) occurrence of an event.
class EventOccurrence {
  const EventOccurrence(this.event, this.start, this.end);
  final EventRow event;
  final DateTime start;
  final DateTime end;
  EventKind get kind =>
      EventKind.values.asNameMap()[event.kind] ?? EventKind.event;
  bool overlaps(EventOccurrence o) =>
      start.isBefore(o.end) && o.start.isBefore(end);
}

class EventValidationException implements Exception {
  const EventValidationException(this.code);
  final String code; // titleRequired | endBeforeStart | invalidRecurrence
}

/// Owns the `events` table.
class EventsRepository {
  EventsRepository(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  void _validate(EventDraft d) {
    if (d.title.trim().isEmpty) {
      throw const EventValidationException('titleRequired');
    }
    if (!d.end.isAfter(d.start)) {
      throw const EventValidationException('endBeforeStart');
    }
    if (d.recurrence != null && RecurrenceRule.tryParse(d.recurrence) == null) {
      throw const EventValidationException('invalidRecurrence');
    }
  }

  EventsCompanion _companion(EventDraft d) => EventsCompanion(
    title: Value(d.title.trim()),
    description: Value(d.description),
    startAt: Value(d.start.toUtc()),
    endAt: Value(d.end.toUtc()),
    allDay: Value(d.allDay),
    kind: Value(d.kind.name),
    recurrence: Value(d.recurrence),
    reminderMinutes: Value(d.reminderMinutes),
    taskId: Value(d.taskId),
    color: Value(d.color),
    timeZone: Value(d.timeZone),
  );

  Future<String> create(EventDraft d) async {
    _validate(d);
    final id = newId();
    final now = _clock.nowUtc();
    await _db
        .into(_db.events)
        .insert(
          _companion(d).copyWith(
            id: Value(id),
            createdAt: Value(now),
            updatedAt: Value(now),
          ),
        );
    return id;
  }

  Future<void> update(String id, EventDraft d) async {
    _validate(d);
    await (_db.update(_db.events)..where((e) => e.id.equals(id))).write(
      _companion(d).copyWith(updatedAt: Value(_clock.nowUtc())),
    );
  }

  /// Moves an event by [delta] (drag-and-drop rescheduling).
  Future<void> shift(String id, Duration delta) => _db.transaction(() async {
    final e = await (_db.select(
      _db.events,
    )..where((x) => x.id.equals(id))).getSingle();
    await (_db.update(_db.events)..where((x) => x.id.equals(id))).write(
      EventsCompanion(
        startAt: Value(e.startAt.add(delta)),
        endAt: Value(e.endAt.add(delta)),
        updatedAt: Value(_clock.nowUtc()),
      ),
    );
  });

  Future<void> softDelete(String id) =>
      (_db.update(_db.events)..where((e) => e.id.equals(id))).write(
        EventsCompanion(deletedAt: Value(_clock.nowUtc())),
      );

  Future<void> restore(String id) =>
      (_db.update(_db.events)..where((e) => e.id.equals(id))).write(
        const EventsCompanion(deletedAt: Value(null)),
      );

  Future<EventRow?> byId(String id) =>
      (_db.select(_db.events)..where((e) => e.id.equals(id))).getSingleOrNull();

  /// Expands events and recurrences overlapping [from, to).
  Stream<List<EventOccurrence>> watchOccurrences(DateTime from, DateTime to) {
    final q = _db.select(_db.events)
      ..where(
        (e) =>
            e.deletedAt.isNull() &
            (e.recurrence.isNotNull() |
                (e.startAt.isSmallerThanValue(to.toUtc()) &
                    e.endAt.isBiggerThanValue(from.toUtc()))),
      );
    return q.watch().map((rows) => expand(rows, from, to));
  }

  static List<EventOccurrence> expand(
    List<EventRow> rows,
    DateTime from,
    DateTime to,
  ) {
    final out = <EventOccurrence>[];
    for (final e in rows) {
      final duration = e.endAt.difference(e.startAt);
      final rule = RecurrenceRule.tryParse(e.recurrence);
      if (rule == null) {
        if (e.startAt.isBefore(to.toUtc()) && e.endAt.isAfter(from.toUtc())) {
          out.add(EventOccurrence(e, e.startAt.toLocal(), e.endAt.toLocal()));
        }
        continue;
      }
      for (final s in rule.between(
        e.startAt.toLocal(),
        from,
        to,
        duration: duration,
      )) {
        final end = s.add(duration);
        if (end.isAfter(from)) out.add(EventOccurrence(e, s, end));
      }
    }
    out.sort((a, b) => a.start.compareTo(b.start));
    return out;
  }

  /// Pairs of overlapping timed (non all-day) occurrences.
  static List<(EventOccurrence, EventOccurrence)> conflicts(
    List<EventOccurrence> occ,
  ) {
    final timed = occ.where((o) => !o.event.allDay).toList()
      ..sort((a, b) => a.start.compareTo(b.start));
    final result = <(EventOccurrence, EventOccurrence)>[];
    for (var i = 0; i < timed.length; i++) {
      for (var j = i + 1; j < timed.length; j++) {
        if (!timed[j].start.isBefore(timed[i].end)) break;
        result.add((timed[i], timed[j]));
      }
    }
    return result;
  }
}
