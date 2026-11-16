import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/srs_scheduler.dart';

void main() {
  const s = SrsScheduler();
  final now = DateTime(2026, 11, 16, 14, 30);

  test('new card walks learning steps then graduates', () {
    var c = const SrsCard();
    c = s.review(c, ReviewRating.good, now);
    expect(c.state, CardState.learning);
    expect(c.dueAt, now.add(const Duration(minutes: 10)));
    c = s.review(c, ReviewRating.good, now);
    expect(c.state, CardState.review);
    expect(c.intervalDays, 1);
    expect(c.dueAt, DateTime(2026, 11, 17));
  });

  test('easy graduates new card immediately with easy interval', () {
    final c = s.review(const SrsCard(), ReviewRating.easy, now);
    expect(c.state, CardState.review);
    expect(c.intervalDays, 4);
    expect(c.dueAt, DateTime(2026, 11, 20));
  });

  test('again in learning restarts first step', () {
    var c = s.review(const SrsCard(), ReviewRating.good, now);
    c = s.review(c, ReviewRating.again, now);
    expect(c.learningStep, 0);
    expect(c.dueAt, now.add(const Duration(minutes: 1)));
  });

  test('review intervals grow with ease and are deterministic', () {
    const card = SrsCard(state: CardState.review, intervalDays: 10);
    final good = s.review(card, ReviewRating.good, now);
    expect(good.intervalDays, 25);
    final hard = s.review(card, ReviewRating.hard, now);
    expect(hard.intervalDays, 12);
    expect(hard.easePermille, 2350);
    final easy = s.review(card, ReviewRating.easy, now);
    expect(easy.intervalDays, 33);
    expect(easy.easePermille, 2650);
    expect(s.review(card, ReviewRating.good, now).intervalDays, 25);
  });

  test('lapse reduces ease, halves interval, enters relearning', () {
    const card =
        SrsCard(state: CardState.review, intervalDays: 20, repetitions: 5);
    final c = s.review(card, ReviewRating.again, now);
    expect(c.state, CardState.relearning);
    expect(c.lapses, 1);
    expect(c.easePermille, 2300);
    expect(c.intervalDays, 10);
    final back = s.review(c, ReviewRating.good, now);
    expect(back.state, CardState.review);
    expect(back.intervalDays, 10);
  });

  test('ease never drops below minimum', () {
    var c = const SrsCard(
        state: CardState.review, intervalDays: 5, easePermille: 1350);
    c = s.review(c, ReviewRating.hard, now);
    expect(c.easePermille, SrsScheduler.minimumEase);
  });

  test('interval always grows by at least a day on success', () {
    const c = SrsCard(
        state: CardState.review, intervalDays: 1, easePermille: 1300);
    expect(s.review(c, ReviewRating.hard, now).intervalDays, 2);
  });

  test('state db mapping round trips', () {
    for (final st in CardState.values) {
      expect(cardStateFromDb(cardStateToDb(st)), st);
    }
  });
}
