import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/time/clock.dart';

/// What one calendar month looked like: focus, cards, tasks and habits.
class MonthlyReport {
  const MonthlyReport({
    required this.month,
    required this.focusMinutes,
    required this.focusSessions,
    required this.bestDay,
    required this.bestDayMinutes,
    required this.activeDays,
    required this.cardsReviewed,
    required this.cardsKnown,
    required this.tasksDone,
    required this.habitCheckIns,
  });

  /// First day of the month (local).
  final DateTime month;
  final int focusMinutes;
  final int focusSessions;
  final DateTime? bestDay;
  final int bestDayMinutes;

  /// Days with focus, a reviewed card or a finished task.
  final int activeDays;
  final int cardsReviewed;

  /// Reviews rated Good or Easy.
  final int cardsKnown;
  final int tasksDone;
  final int habitCheckIns;

  double? get knownRatio => cardsReviewed == 0 ? null : cardsKnown / cardsReviewed;
  bool get isEmpty =>
      focusSessions == 0 && cardsReviewed == 0 && tasksDone == 0 && habitCheckIns == 0;
}

class MonthlyReportService {
  MonthlyReportService(this._db);
  final AppDatabase _db;

  Future<MonthlyReport> compute(DateTime anyDayInMonth) async {
    final start = Days.startOfMonth(anyDayInMonth);
    final end = DateTime(start.year, start.month + 1);
    final fromUtc = start.toUtc(), toUtc = end.toUtc();

    final sessions =
        await (_db.select(_db.focusSessions)..where(
              (s) =>
                  s.startedAt.isBiggerOrEqualValue(fromUtc) &
                  s.startedAt.isSmallerThanValue(toUtc) &
                  s.phase.equals('work'),
            ))
            .get();
    final perDay = <int, int>{};
    var seconds = 0;
    for (final s in sessions) {
      seconds += s.activeSeconds;
      final k = Days.key(s.startedAt);
      perDay[k] = (perDay[k] ?? 0) + s.activeSeconds;
    }
    int? best;
    perDay.forEach((k, v) {
      if (best == null || v > perDay[best]!) best = k;
    });

    final reviews =
        await (_db.select(_db.cardReviews)..where(
              (r) =>
                  r.reviewedAt.isBiggerOrEqualValue(fromUtc) &
                  r.reviewedAt.isSmallerThanValue(toUtc),
            ))
            .get();

    final tasks =
        await (_db.select(_db.tasks)..where(
              (t) =>
                  t.done.equals(true) &
                  t.completedAt.isBiggerOrEqualValue(fromUtc) &
                  t.completedAt.isSmallerThanValue(toUtc),
            ))
            .get();

    final fromKey = Days.key(start), toKey = Days.key(end);
    final logs = await (_db.select(
      _db.habitLogs,
    )..where((l) => l.day.isBiggerOrEqualValue(fromKey) & l.day.isSmallerThanValue(toKey))).get();

    final active = <int>{
      ...perDay.keys,
      for (final r in reviews) Days.key(r.reviewedAt),
      for (final t in tasks) Days.key(t.completedAt!),
    };
    return MonthlyReport(
      month: start,
      focusMinutes: (seconds / 60).round(),
      focusSessions: sessions.length,
      bestDay: best == null ? null : Days.fromKey(best!),
      bestDayMinutes: best == null ? 0 : (perDay[best]! / 60).round(),
      activeDays: active.length,
      cardsReviewed: reviews.length,
      cardsKnown: reviews.where((r) => r.rating >= 3).length,
      tasksDone: tasks.length,
      habitCheckIns: logs.fold<int>(0, (a, l) => a + l.count),
    );
  }
}
