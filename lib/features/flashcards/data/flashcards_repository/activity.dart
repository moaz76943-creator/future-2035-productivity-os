part of '../flashcards_repository.dart';

/// What was studied today and this week, and the study streak.
class TodayActivity {
  const TodayActivity({
    required this.reviews,
    required this.time,
    this.streak = 0,
    this.bestStreak = 0,
    this.week = const [0, 0, 0, 0, 0, 0, 0],
    this.weekFocusMinutes = 0,
  });
  final int reviews;
  final Duration time;

  /// Consecutive days with card reviews or a finished focus session.
  final int streak;
  final int bestStreak;

  /// Cards answered on each of the last 7 days, oldest first (last = today).
  final List<int> week;
  final int weekFocusMinutes;

  int get weekReviews => week.fold(0, (a, b) => a + b);
}

extension FlashcardsActivity on FlashcardsRepository {
  static String _timeKey(DateTime local) =>
      'flash.time.${local.year}-${local.month.toString().padLeft(2, '0')}-'
      '${local.day.toString().padLeft(2, '0')}';

  /// Adds a study session's length to today's total (capped at 4 hours per
  /// session so a screen left open does not inflate the number).
  Future<void> addStudyTime(Duration d) async {
    if (d < const Duration(seconds: 5)) return;
    final capped = d > const Duration(hours: 4) ? const Duration(hours: 4) : d;
    final key = _timeKey(_clock.now());
    final current = int.tryParse(await _db.readValue(key) ?? '') ?? 0;
    await _db.writeValue(key, '${current + capped.inSeconds}');
  }

  Future<TodayActivity> todayActivity() async {
    final local = _clock.now().toLocal();
    final today = StudyStreak.day(local);
    // A year back is plenty for the streak; only timestamps are read.
    final since = DateTime(local.year - 1, local.month, local.day).toUtc();

    final r = _db.cardReviews;
    final reviewTimes =
        await (_db.selectOnly(r)
              ..addColumns([r.reviewedAt])
              ..where(r.reviewedAt.isBiggerOrEqualValue(since)))
            .map((row) => row.read(r.reviewedAt)!)
            .get();
    final f = _db.focusSessions;
    final focus =
        await (_db.selectOnly(f)
              ..addColumns([f.endedAt, f.activeSeconds])
              ..where(
                f.endedAt.isBiggerOrEqualValue(since) &
                    f.phase.equals('work') &
                    f.outcome.equals('completed'),
              ))
            .map((row) => (row.read(f.endedAt)!, row.read(f.activeSeconds) ?? 0))
            .get();

    final days = <DateTime>{};
    final week = List<int>.filled(7, 0);
    final weekStart = DateTime(today.year, today.month, today.day - 6);
    for (final t in reviewTimes) {
      final d = StudyStreak.day(t);
      days.add(d);
      if (!d.isBefore(weekStart)) {
        // Rounded: a day across a clock change is 23 or 25 hours long.
        final i = (d.difference(weekStart).inHours + 12) ~/ 24;
        if (i >= 0 && i < 7) week[i]++;
      }
    }
    var focusSeconds = 0;
    for (final (end, secs) in focus) {
      final d = StudyStreak.day(end);
      days.add(d);
      if (!d.isBefore(weekStart)) focusSeconds += secs;
    }
    final seconds = int.tryParse(await _db.readValue(_timeKey(local)) ?? '') ?? 0;
    return TodayActivity(
      reviews: week[6],
      time: Duration(seconds: seconds),
      streak: StudyStreak.current(days, today, shield: true),
      bestStreak: StudyStreak.best(days),
      week: week,
      weekFocusMinutes: focusSeconds ~/ 60,
    );
  }
}
