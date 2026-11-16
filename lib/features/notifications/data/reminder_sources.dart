import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../domain/notification_plan.dart';

/// Read-only queries that feed the reminder planner, plus the record of
/// what this app has scheduled with the OS.
class ReminderSources {
  ReminderSources(this._db);
  final AppDatabase _db;

  static const scheduledKey = 'notifications.scheduled';

  /// Open, non-deleted tasks that carry a reminder moment.
  Stream<List<TaskReminderInput>> watchTaskReminders() =>
      (_db.select(_db.tasks)
            ..where((t) => t.reminderAt.isNotNull() & t.done.equals(false) & t.deletedAt.isNull()))
          .watch()
          .map(
            (rows) => [
              for (final r in rows)
                TaskReminderInput(id: r.id, title: r.title, reminderAt: r.reminderAt!),
            ],
          );

  /// Due moment of the earliest reviewable (non-new) card in a live deck.
  Stream<DateTime?> watchEarliestReviewDue() {
    final c = _db.flashcards;
    final earliest = c.dueAt.min();
    final q = _db.selectOnly(c).join([innerJoin(_db.decks, _db.decks.id.equalsExp(c.deckId))])
      ..addColumns([earliest])
      ..where(
        c.deletedAt.isNull() &
            _db.decks.deletedAt.isNull() &
            c.state.equals('new').not() &
            c.dueAt.isNotNull(),
      );
    return q.watchSingle().map((r) => r.read(earliest));
  }

  Future<Map<int, ScheduledRecord>> loadScheduled() async {
    final raw = await _db.readValue(scheduledKey);
    if (raw == null) return {};
    try {
      final j = jsonDecode(raw) as Map<String, Object?>;
      final out = <int, ScheduledRecord>{};
      for (final e in j.entries) {
        final id = int.tryParse(e.key);
        final v = e.value;
        if (id == null || v is! Map) continue;
        final sig = v['s'];
        if (sig is! String) continue;
        out[id] = ScheduledRecord(sig, fireAtUtcMs: v['t'] as int?);
      }
      return out;
    } on Object {
      return {};
    }
  }

  Future<void> saveScheduled(Map<int, ScheduledRecord> scheduled) => _db.writeValue(
    scheduledKey,
    jsonEncode({
      for (final e in scheduled.entries)
        '${e.key}': {'s': e.value.signature, 't': e.value.fireAtUtcMs},
    }),
  );
}
