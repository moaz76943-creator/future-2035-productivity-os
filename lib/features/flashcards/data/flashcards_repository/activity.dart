part of '../flashcards_repository.dart';

/// What was studied today: cards answered and time spent in study sessions.
class TodayActivity {
  const TodayActivity({required this.reviews, required this.time});
  final int reviews;
  final Duration time;
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
    final local = _clock.now();
    final startUtc = DateTime(local.year, local.month, local.day).toUtc();
    final reviews = await (_db.select(
      _db.cardReviews,
    )..where((r) => r.reviewedAt.isBiggerOrEqualValue(startUtc))).get();
    final seconds = int.tryParse(await _db.readValue(_timeKey(local)) ?? '') ?? 0;
    return TodayActivity(
      reviews: reviews.length,
      time: Duration(seconds: seconds),
    );
  }
}
