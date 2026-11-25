import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/time/clock.dart';

/// A period during which a habit was paused, as local day keys (yyyymmdd).
/// [toKey] is inclusive; null means the pause is still ongoing.
class PauseSpan {
  const PauseSpan(this.fromKey, [this.toKey]);
  final int fromKey;
  final int? toKey;

  bool contains(int dayKey) => dayKey >= fromKey && (toKey == null || dayKey <= toKey!);

  Map<String, Object?> toJson() => {'from': fromKey, 'to': toKey};
  static PauseSpan fromJson(Map<String, Object?> j) =>
      PauseSpan(j['from']! as int, j['to'] as int?);

  @override
  bool operator ==(Object other) =>
      other is PauseSpan && other.fromKey == fromKey && other.toKey == toKey;
  @override
  int get hashCode => Object.hash(fromKey, toKey);
}

/// Pure streak / consistency maths, separated for testing.
///
/// Paused days (see [PauseSpan]) are treated like unscheduled days: they
/// never break a streak and are not counted as scheduled. A paused day that
/// was nevertheless completed still counts as a completed scheduled day.
abstract final class HabitMath {
  static bool scheduledOn(int weekdayMask, DateTime day) =>
      (weekdayMask >> (day.weekday - 1)) & 1 == 1;

  static bool pausedOn(List<PauseSpan> pauses, int dayKey) {
    for (final p in pauses) {
      if (p.contains(dayKey)) return true;
    }
    return false;
  }

  /// Whether [day] counts for streaks/consistency, and whether it is done.
  static (bool counts, bool done) _evaluate(
    int weekdayMask,
    int targetPerDay,
    Map<int, int> countsByDay,
    List<PauseSpan> pauses,
    DateTime day,
  ) {
    if (!scheduledOn(weekdayMask, day)) return (false, false);
    final k = Days.key(day);
    final done = (countsByDay[k] ?? 0) >= targetPerDay;
    if (!done && pauses.isNotEmpty && pausedOn(pauses, k)) return (false, false);
    return (true, done);
  }

  /// Consecutive scheduled days completed, ending today (or yesterday if
  /// today is not yet done — an unfinished today doesn't break a streak).
  /// Unscheduled days are skipped and never break a streak.
  static int currentStreak({
    required int weekdayMask,
    required int targetPerDay,
    required Map<int, int> countsByDay,
    required DateTime today,
    List<PauseSpan> pauses = const [],
    int maxLookbackDays = 3660,
    bool shield = false,
  }) {
    if (weekdayMask == 0) return 0;
    var streak = 0;
    var day = Days.startOfDay(today);
    var first = true;
    // Streak shield: one missed scheduled day per 7 days is forgiven.
    DateTime? shielded;
    for (var i = 0; i < maxLookbackDays; i++) {
      final (counts, done) = _evaluate(weekdayMask, targetPerDay, countsByDay, pauses, day);
      if (counts) {
        if (done) {
          streak++;
        } else if (!first) {
          if (shield && streak > 0 && (shielded == null || shielded.difference(day).inDays >= 7)) {
            shielded = day;
          } else {
            break;
          }
        }
        first = false;
      }
      day = Days.addDays(day, -1);
    }
    return streak;
  }

  static int longestStreak({
    required int weekdayMask,
    required int targetPerDay,
    required Map<int, int> countsByDay,
    required DateTime from,
    required DateTime to,
    List<PauseSpan> pauses = const [],
  }) {
    var best = 0, run = 0;
    for (var d = Days.startOfDay(from); !d.isAfter(to); d = Days.addDays(d, 1)) {
      final (counts, done) = _evaluate(weekdayMask, targetPerDay, countsByDay, pauses, d);
      if (!counts) continue;
      if (done) {
        run++;
        if (run > best) best = run;
      } else {
        run = 0;
      }
    }
    return best;
  }

  /// Completed scheduled days / scheduled days within [from, to].
  static double consistency({
    required int weekdayMask,
    required int targetPerDay,
    required Map<int, int> countsByDay,
    required DateTime from,
    required DateTime to,
    List<PauseSpan> pauses = const [],
  }) {
    var scheduled = 0, done = 0;
    for (var d = Days.startOfDay(from); !d.isAfter(to); d = Days.addDays(d, 1)) {
      final (counts, isDone) = _evaluate(weekdayMask, targetPerDay, countsByDay, pauses, d);
      if (!counts) continue;
      scheduled++;
      if (isDone) done++;
    }
    return scheduled == 0 ? 0 : done / scheduled;
  }
}

/// Owns `habits` and `habit_logs`.
class HabitsRepository {
  HabitsRepository(this._db, this._clock);
  final AppDatabase _db;
  final Clock _clock;

  Future<String> create({
    required String name,
    required int color,
    int weekdays = 127,
    int targetPerDay = 1,
    int? reminderMinute,
    String icon = 'spark',
  }) async {
    if (name.trim().isEmpty) throw ArgumentError('name');
    if (weekdays <= 0 || weekdays > 127) throw ArgumentError('weekdays');
    final id = newId();
    final now = _clock.nowUtc();
    await _db
        .into(_db.habits)
        .insert(
          HabitsCompanion.insert(
            id: id,
            name: name.trim(),
            color: color,
            weekdays: Value(weekdays),
            targetPerDay: Value(targetPerDay.clamp(1, 99)),
            reminderMinute: Value(reminderMinute),
            icon: Value(icon),
            createdAt: now,
            updatedAt: now,
          ),
        );
    return id;
  }

  Future<void> update(
    String id, {
    required String name,
    required int color,
    required int weekdays,
    required int targetPerDay,
    int? reminderMinute,
  }) => (_db.update(_db.habits)..where((h) => h.id.equals(id))).write(
    HabitsCompanion(
      name: Value(name.trim()),
      color: Value(color),
      weekdays: Value(weekdays),
      targetPerDay: Value(targetPerDay.clamp(1, 99)),
      reminderMinute: Value(reminderMinute),
      updatedAt: Value(_clock.nowUtc()),
    ),
  );

  /// Key in the key/value store holding the habit's pause history (JSON).
  static String pausesKey(String habitId) => 'habit.pauses.$habitId';

  static List<PauseSpan> decodePauses(String? raw) {
    if (raw == null || raw.isEmpty) return const [];
    try {
      final list = jsonDecode(raw) as List<Object?>;
      return [for (final e in list) PauseSpan.fromJson((e! as Map).cast<String, Object?>())];
    } on Object {
      return const [];
    }
  }

  static String encodePauses(List<PauseSpan> spans) =>
      jsonEncode([for (final s in spans) s.toJson()]);

  /// Pausing opens a pause span starting today; resuming closes it on
  /// yesterday (today counts normally again). A span shorter than one day
  /// is dropped. Paused days never break a streak.
  Future<void> setPaused(String id, bool paused) => _db.transaction(() async {
    await (_db.update(_db.habits)..where((h) => h.id.equals(id))).write(
      HabitsCompanion(paused: Value(paused), updatedAt: Value(_clock.nowUtc())),
    );
    final today = Days.startOfDay(_clock.now());
    final spans = [...decodePauses(await _db.readValue(pausesKey(id)))];
    final openIndex = spans.indexWhere((s) => s.toKey == null);
    if (paused) {
      if (openIndex >= 0) return;
      spans.add(PauseSpan(Days.key(today)));
    } else {
      if (openIndex < 0) return;
      final open = spans.removeAt(openIndex);
      final end = Days.key(Days.addDays(today, -1));
      if (end >= open.fromKey) spans.add(PauseSpan(open.fromKey, end));
    }
    spans.sort((a, b) => a.fromKey.compareTo(b.fromKey));
    if (spans.isEmpty) {
      await _db.deleteValue(pausesKey(id));
    } else {
      await _db.writeValue(pausesKey(id), encodePauses(spans));
    }
  });

  Stream<List<PauseSpan>> watchPauses(String habitId) =>
      _db.watchValue(pausesKey(habitId)).map(decodePauses);

  /// Pause history for every habit, keyed by habit id.
  Stream<Map<String, List<PauseSpan>>> watchAllPauses() {
    const prefix = 'habit.pauses.';
    return (_db.select(_db.keyValues)..where((k) => k.key.like('$prefix%'))).watch().map(
      (rows) => {for (final r in rows) r.key.substring(prefix.length): decodePauses(r.value)},
    );
  }

  Stream<HabitRow?> watchHabit(String id) =>
      (_db.select(_db.habits)..where((h) => h.id.equals(id))).watchSingleOrNull();

  Future<void> archive(String id) => (_db.update(
    _db.habits,
  )..where((h) => h.id.equals(id))).write(const HabitsCompanion(archived: Value(true)));

  Future<void> unarchive(String id) => (_db.update(
    _db.habits,
  )..where((h) => h.id.equals(id))).write(const HabitsCompanion(archived: Value(false)));

  Stream<List<HabitRow>> watchHabits() =>
      (_db.select(_db.habits)
            ..where((h) => h.archived.equals(false))
            ..orderBy([(h) => OrderingTerm.asc(h.paused), (h) => OrderingTerm.asc(h.name)]))
          .watch();

  /// Sets today's (or [day]'s) count. 0 removes the log.
  Future<void> setCount(String habitId, DateTime day, int count) async {
    final k = Days.key(day);
    if (count <= 0) {
      await (_db.delete(
        _db.habitLogs,
      )..where((l) => l.habitId.equals(habitId) & l.day.equals(k))).go();
    } else {
      await _db
          .into(_db.habitLogs)
          .insertOnConflictUpdate(
            HabitLogsCompanion.insert(habitId: habitId, day: k, count: Value(count)),
          );
    }
  }

  Future<void> increment(String habitId, DateTime day) async {
    final k = Days.key(day);
    await _db.transaction(() async {
      final row = await (_db.select(
        _db.habitLogs,
      )..where((l) => l.habitId.equals(habitId) & l.day.equals(k))).getSingleOrNull();
      await setCount(habitId, day, (row?.count ?? 0) + 1);
    });
  }

  Stream<Map<int, int>> watchCounts(String habitId, {int days = 400}) {
    final from = Days.key(Days.addDays(Days.startOfDay(_clock.now()), -days));
    return (_db.select(_db.habitLogs)
          ..where((l) => l.habitId.equals(habitId) & l.day.isBiggerOrEqualValue(from)))
        .watch()
        .map((rows) => {for (final r in rows) r.day: r.count});
  }

  Stream<Map<String, Map<int, int>>> watchAllCounts({int days = 120}) {
    final from = Days.key(Days.addDays(Days.startOfDay(_clock.now()), -days));
    return (_db.select(_db.habitLogs)..where((l) => l.day.isBiggerOrEqualValue(from))).watch().map((
      rows,
    ) {
      final m = <String, Map<int, int>>{};
      for (final r in rows) {
        (m[r.habitId] ??= {})[r.day] = r.count;
      }
      return m;
    });
  }
}
