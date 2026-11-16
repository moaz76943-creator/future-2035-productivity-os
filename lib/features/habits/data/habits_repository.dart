import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/ids.dart';
import '../../../core/time/clock.dart';

/// Pure streak / consistency maths, separated for testing.
abstract final class HabitMath {
  static bool scheduledOn(int weekdayMask, DateTime day) =>
      (weekdayMask >> (day.weekday - 1)) & 1 == 1;

  /// Consecutive scheduled days completed, ending today (or yesterday if
  /// today is not yet done — an unfinished today doesn't break a streak).
  /// Unscheduled days are skipped and never break a streak.
  static int currentStreak({
    required int weekdayMask,
    required int targetPerDay,
    required Map<int, int> countsByDay,
    required DateTime today,
    int maxLookbackDays = 3660,
  }) {
    if (weekdayMask == 0) return 0;
    var streak = 0;
    var day = Days.startOfDay(today);
    var first = true;
    for (var i = 0; i < maxLookbackDays; i++) {
      if (scheduledOn(weekdayMask, day)) {
        final done = (countsByDay[Days.key(day)] ?? 0) >= targetPerDay;
        if (done) {
          streak++;
        } else if (!first) {
          break;
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
  }) {
    var best = 0, run = 0;
    for (
      var d = Days.startOfDay(from);
      !d.isAfter(to);
      d = Days.addDays(d, 1)
    ) {
      if (!scheduledOn(weekdayMask, d)) continue;
      if ((countsByDay[Days.key(d)] ?? 0) >= targetPerDay) {
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
  }) {
    var scheduled = 0, done = 0;
    for (
      var d = Days.startOfDay(from);
      !d.isAfter(to);
      d = Days.addDays(d, 1)
    ) {
      if (!scheduledOn(weekdayMask, d)) continue;
      scheduled++;
      if ((countsByDay[Days.key(d)] ?? 0) >= targetPerDay) done++;
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

  Future<void> setPaused(String id, bool paused) =>
      (_db.update(_db.habits)..where((h) => h.id.equals(id))).write(
        HabitsCompanion(paused: Value(paused)),
      );

  Future<void> archive(String id) =>
      (_db.update(_db.habits)..where((h) => h.id.equals(id))).write(
        const HabitsCompanion(archived: Value(true)),
      );

  Future<void> unarchive(String id) =>
      (_db.update(_db.habits)..where((h) => h.id.equals(id))).write(
        const HabitsCompanion(archived: Value(false)),
      );

  Stream<List<HabitRow>> watchHabits() =>
      (_db.select(_db.habits)
            ..where((h) => h.archived.equals(false))
            ..orderBy([
              (h) => OrderingTerm.asc(h.paused),
              (h) => OrderingTerm.asc(h.name),
            ]))
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
            HabitLogsCompanion.insert(
              habitId: habitId,
              day: k,
              count: Value(count),
            ),
          );
    }
  }

  Future<void> increment(String habitId, DateTime day) async {
    final k = Days.key(day);
    await _db.transaction(() async {
      final row =
          await (_db.select(_db.habitLogs)
                ..where((l) => l.habitId.equals(habitId) & l.day.equals(k)))
              .getSingleOrNull();
      await setCount(habitId, day, (row?.count ?? 0) + 1);
    });
  }

  Stream<Map<int, int>> watchCounts(String habitId, {int days = 400}) {
    final from = Days.key(Days.addDays(Days.startOfDay(_clock.now()), -days));
    return (_db.select(_db.habitLogs)..where(
          (l) => l.habitId.equals(habitId) & l.day.isBiggerOrEqualValue(from),
        ))
        .watch()
        .map((rows) => {for (final r in rows) r.day: r.count});
  }

  Stream<Map<String, Map<int, int>>> watchAllCounts({int days = 120}) {
    final from = Days.key(Days.addDays(Days.startOfDay(_clock.now()), -days));
    return (_db.select(
      _db.habitLogs,
    )..where((l) => l.day.isBiggerOrEqualValue(from))).watch().map((rows) {
      final m = <String, Map<int, int>>{};
      for (final r in rows) {
        (m[r.habitId] ??= {})[r.day] = r.count;
      }
      return m;
    });
  }
}
