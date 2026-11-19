import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/srs_scheduler.dart';

void main() {
  const s = SrsScheduler();
  final now = DateTime(2026, 11, 16, 14, 30);

  group('FSRS-4.5 formulas', () {
    test('recall probability is 90 % after one stability interval', () {
      expect(Fsrs.retrievability(10, 10), closeTo(0.9, 1e-9));
      expect(Fsrs.retrievability(0, 10), 1);
      expect(Fsrs.interval(10, 0.9), closeTo(10, 1e-9));
      expect(Fsrs.interval(10, 0.8), greaterThan(10));
    });
    test('first answer seeds stability and difficulty by rating', () {
      expect(Fsrs.initStability(ReviewRating.again), 0.4872);
      expect(Fsrs.initStability(ReviewRating.easy), 13.8206);
      expect(
        Fsrs.initDifficulty(ReviewRating.again),
        greaterThan(Fsrs.initDifficulty(ReviewRating.easy)),
      );
      for (final r in ReviewRating.values) {
        expect(Fsrs.initDifficulty(r), inInclusiveRange(1, 10));
      }
    });
    test('a lapse never increases stability; success increases it more when recall was harder', () {
      expect(Fsrs.forgetStability(5, 20, 0.9), lessThanOrEqualTo(20));
      final easyRecall = Fsrs.recallStability(5, 10, 0.95, ReviewRating.good);
      final hardRecall = Fsrs.recallStability(5, 10, 0.7, ReviewRating.good);
      expect(hardRecall, greaterThan(easyRecall));
      expect(easyRecall, greaterThan(10));
    });
  });

  test('new card walks learning steps then graduates with an FSRS interval', () {
    var c = const SrsCard();
    c = s.review(c, ReviewRating.good, now);
    expect(c.state, CardState.learning);
    expect(c.stability, closeTo(3.7145, 1e-9));
    expect(c.dueAt, now.add(const Duration(minutes: 10)));
    c = s.review(c, ReviewRating.good, now);
    expect(c.state, CardState.review);
    expect(c.intervalDays, 4); // round(3.71)
    expect(c.dueAt, DateTime(2026, 11, 20));
    expect(c.lastReviewAt, now);
  });

  test('easy graduates a new card immediately', () {
    final c = s.review(const SrsCard(), ReviewRating.easy, now);
    expect(c.state, CardState.review);
    expect(c.intervalDays, 14); // round(13.82)
  });

  test('again in learning restarts the first step', () {
    var c = s.review(const SrsCard(), ReviewRating.good, now);
    c = s.review(c, ReviewRating.again, now);
    expect(c.learningStep, 0);
    expect(c.dueAt, now.add(const Duration(minutes: 1)));
  });

  SrsCard reviewCard({double stability = 10, double difficulty = 5, int daysAgo = 10}) => SrsCard(
    state: CardState.review,
    stability: stability,
    difficulty: difficulty,
    intervalDays: daysAgo,
    lastReviewAt: now.subtract(Duration(days: daysAgo)),
  );

  test('review intervals are ordered Hard <= Good < Easy and grow from stability', () {
    final card = reviewCard();
    final hard = s.review(card, ReviewRating.hard, now);
    final good = s.review(card, ReviewRating.good, now);
    final easy = s.review(card, ReviewRating.easy, now);
    expect(hard.intervalDays, lessThanOrEqualTo(good.intervalDays));
    expect(good.intervalDays, lessThan(easy.intervalDays));
    expect(good.intervalDays, greaterThan(10));
    expect(easy.difficulty, lessThan(card.difficulty));
    expect(hard.difficulty, greaterThan(card.difficulty));
  });

  test('a lapse relearns, counts the lapse and lowers stability', () {
    final c = s.review(reviewCard(stability: 30, daysAgo: 30), ReviewRating.again, now);
    expect(c.state, CardState.relearning);
    expect(c.lapses, 1);
    expect(c.stability, lessThan(30));
    expect(c.dueAt, now.add(const Duration(minutes: 10)));
    final back = s.review(c, ReviewRating.good, now);
    expect(back.state, CardState.review);
    expect(back.intervalDays, greaterThanOrEqualTo(1));
  });

  test('a card reviewed late gains more stability than one reviewed on time', () {
    final onTime = s.review(reviewCard(daysAgo: 10), ReviewRating.good, now);
    final late = s.review(reviewCard(daysAgo: 40), ReviewRating.good, now);
    expect(late.stability, greaterThan(onTime.stability));
  });

  test('cards migrated without an FSRS state still schedule sensibly', () {
    const legacy = SrsCard(state: CardState.review, intervalDays: 12);
    final c = s.review(legacy, ReviewRating.good, now);
    expect(c.state, CardState.review);
    expect(c.intervalDays, greaterThan(1));
    expect(c.difficulty, inInclusiveRange(1, 10));
  });

  test('retrievability falls with time', () {
    final c = reviewCard(daysAgo: 0);
    expect(c.retrievability(now), closeTo(1, 1e-9));
    expect(c.retrievability(now.add(const Duration(days: 10))), closeTo(0.9, 1e-6));
    expect(const SrsCard().retrievability(now), isNull);
  });

  test('deterministic: same inputs, same schedule', () {
    final a = s.review(reviewCard(), ReviewRating.good, now);
    final b = s.review(reviewCard(), ReviewRating.good, now);
    expect(a.intervalDays, b.intervalDays);
    expect(a.stability, b.stability);
  });
}
