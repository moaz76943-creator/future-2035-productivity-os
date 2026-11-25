import 'dart:math' as math;

import '../../../core/database/app_database.dart';
import '../../../core/time/clock.dart';
import '../data/habits_repository.dart';

/// Derived, display-ready numbers for one habit. Everything is computed from
/// stored logs and pause history; day keys use local calendar days.
class HabitStats {
  HabitStats._({
    required this.today,
    required this.todayCount,
    required this.target,
    required this.scheduledToday,
    required this.currentStreak,
    required this.bestStreak,
    required this.historyStart,
  });

  factory HabitStats.compute({
    required HabitRow habit,
    required Map<int, int> counts,
    required List<PauseSpan> pauses,
    required DateTime now,
  }) {
    final today = Days.startOfDay(now);
    final start = historyStartFor(habit, counts, today);
    return HabitStats._(
      today: today,
      todayCount: counts[Days.key(today)] ?? 0,
      target: habit.targetPerDay,
      scheduledToday: HabitMath.scheduledOn(habit.weekdays, today),
      currentStreak: HabitMath.currentStreak(
        weekdayMask: habit.weekdays,
        targetPerDay: habit.targetPerDay,
        countsByDay: counts,
        today: today,
        pauses: pauses,
        shield: true,
      ),
      bestStreak: HabitMath.longestStreak(
        weekdayMask: habit.weekdays,
        targetPerDay: habit.targetPerDay,
        countsByDay: counts,
        from: start,
        to: today,
        pauses: pauses,
      ),
      historyStart: start,
    );
  }

  final DateTime today;
  final int todayCount;
  final int target;
  final bool scheduledToday;
  final int currentStreak;
  final int bestStreak;

  /// Earliest day the habit has data for: its creation day or the earliest
  /// logged day (history may be corrected before creation).
  final DateTime historyStart;

  bool get doneToday => todayCount >= target;

  /// The first day relevant to the habit: creation day, or the earliest log.
  static DateTime historyStartFor(HabitRow habit, Map<int, int> counts, DateTime today) {
    var start = Days.startOfDay(habit.createdAt);
    for (final k in counts.keys) {
      final d = Days.fromKey(k);
      if (d.isBefore(start)) start = d;
    }
    return start.isAfter(today) ? today : start;
  }

  /// Consistency ([HabitMath.consistency]) over the last [days] days,
  /// never starting before [historyStart]. Today is included only once it
  /// is done, so an unfinished today never lowers the figure. Null when no
  /// scheduled day falls into the window.
  static double? consistency({
    required HabitRow habit,
    required Map<int, int> counts,
    required List<PauseSpan> pauses,
    required DateTime now,
    required int days,
  }) {
    final today = Days.startOfDay(now);
    final doneToday = (counts[Days.key(today)] ?? 0) >= habit.targetPerDay;
    final to = doneToday ? today : Days.addDays(today, -1);
    var from = Days.addDays(today, -(days - 1));
    final start = historyStartFor(habit, counts, today);
    if (from.isBefore(start)) from = start;
    if (from.isAfter(to)) return null;
    var any = false;
    for (var d = from; !d.isAfter(to); d = Days.addDays(d, 1)) {
      final k = Days.key(d);
      final counted = (counts[k] ?? 0) >= habit.targetPerDay || !HabitMath.pausedOn(pauses, k);
      if (HabitMath.scheduledOn(habit.weekdays, d) && counted) {
        any = true;
        break;
      }
    }
    if (!any) return null;
    return HabitMath.consistency(
      weekdayMask: habit.weekdays,
      targetPerDay: habit.targetPerDay,
      countsByDay: counts,
      from: from,
      to: to,
      pauses: pauses,
    );
  }

  /// Heatmap of the last [days] days as Monday-first week columns:
  /// `levels[week][weekday]`. A level is `count / target` in 0..1; `null`
  /// marks days outside the window, after today, unscheduled-and-not-done,
  /// or paused-and-not-done.
  static List<List<double?>> heatmap({
    required HabitRow habit,
    required Map<int, int> counts,
    required List<PauseSpan> pauses,
    required DateTime now,
    int days = 90,
  }) {
    final today = Days.startOfDay(now);
    final first = Days.addDays(today, -(days - 1));
    final weekStart = Days.startOfWeek(first);
    final weeks = <List<double?>>[];
    for (var w = weekStart; !w.isAfter(today); w = Days.addDays(w, 7)) {
      final col = <double?>[];
      for (var i = 0; i < 7; i++) {
        final d = Days.addDays(w, i);
        if (d.isBefore(first) || d.isAfter(today)) {
          col.add(null);
          continue;
        }
        final k = Days.key(d);
        final c = counts[k] ?? 0;
        final scheduled = HabitMath.scheduledOn(habit.weekdays, d);
        if (c == 0 && (!scheduled || HabitMath.pausedOn(pauses, k))) {
          col.add(null);
        } else {
          col.add(math.min(1, c / habit.targetPerDay).toDouble());
        }
      }
      weeks.add(col);
    }
    return weeks;
  }

  /// Monday-first grid of a month: rows of 7 days, null for padding cells.
  static List<List<DateTime?>> monthGrid(int year, int month) {
    final first = DateTime(year, month);
    final lead = first.weekday - DateTime.monday;
    final n = Days.daysInMonth(year, month);
    final cells = <DateTime?>[
      for (var i = 0; i < lead; i++) null,
      for (var d = 1; d <= n; d++) DateTime(year, month, d),
    ];
    while (cells.length % 7 != 0) {
      cells.add(null);
    }
    return [for (var i = 0; i < cells.length; i += 7) cells.sublist(i, i + 7)];
  }

  /// Bit mask helpers (bit 0 = Monday).
  static int toggleDay(int mask, int weekdayIndex) => mask ^ (1 << weekdayIndex);
  static bool hasDay(int mask, int weekdayIndex) => (mask >> weekdayIndex) & 1 == 1;
}
