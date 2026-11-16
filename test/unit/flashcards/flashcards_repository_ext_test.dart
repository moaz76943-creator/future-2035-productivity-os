import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/srs_scheduler.dart';

import '../../helpers.dart';

void main() {
  late TestEnv env;
  late FlashcardsRepository repo;

  setUp(() {
    env = TestEnv();
    repo = FlashcardsRepository(env.db, env.clock);
  });
  tearDown(() => env.dispose());

  test('createDeck stores daily limits when given and defaults otherwise', () async {
    final a = await repo.createDeck('A', color: 1, dailyNewLimit: 5, dailyReviewTarget: 30);
    final b = await repo.createDeck('B', color: 1);
    final rows = {for (final d in await env.db.select(env.db.decks).get()) d.id: d};
    expect(rows[a]!.dailyNewLimit, 5);
    expect(rows[a]!.dailyReviewTarget, 30);
    expect(rows[b]!.dailyNewLimit, 20);
    expect(rows[b]!.dailyReviewTarget, 50);
  });

  test('previewRatings matches what recordReview persists', () async {
    final deck = await repo.createDeck('D', color: 1);
    final id = await repo.addCard(deck, 'f', 'b');
    for (final rating in [ReviewRating.good, ReviewRating.good, ReviewRating.hard]) {
      final card = (await repo.getCard(id))!;
      final preview = repo.previewRatings(card)[rating]!;
      final after = await repo.recordReview(id, rating);
      expect(after.state, preview.state);
      expect(after.intervalDays, preview.intervalDays);
      expect(after.dueAt, preview.dueAt);
      expect(after.easePermille, preview.easePermille);
    }
  });

  test('preview for a new card follows scheduler steps', () async {
    final deck = await repo.createDeck('D', color: 1);
    final card = (await repo.getCard(await repo.addCard(deck, 'f', 'b')))!;
    final p = repo.previewRatings(card);
    final now = env.clock.now();
    expect(p[ReviewRating.again]!.dueAt, now.add(const Duration(minutes: 1)));
    expect(p[ReviewRating.hard]!.dueAt, now.add(const Duration(minutes: 6)));
    expect(p[ReviewRating.good]!.dueAt, now.add(const Duration(minutes: 10)));
    expect(p[ReviewRating.easy]!.intervalDays, 4);
    expect(FlashcardsRepository.srsOf(card).state, CardState.newCard);
  });

  test('deckWithMostDue picks the deck with most due cards, ignoring deleted', () async {
    expect(await repo.deckWithMostDue(), isNull);
    final a = await repo.createDeck('A', color: 1);
    final b = await repo.createDeck('B', color: 1);
    final a1 = await repo.addCard(a, 'x', 'y');
    final b1 = await repo.addCard(b, 'x', 'y');
    final b2 = await repo.addCard(b, 'x2', 'y2');
    for (final id in [a1, b1, b2]) {
      await repo.recordReview(id, ReviewRating.again);
    }
    expect(await repo.deckWithMostDue(), isNull, reason: 'not due yet');
    env.clock.advance(const Duration(minutes: 2));
    expect(await repo.deckWithMostDue(), b);
    await repo.deleteDeck(b);
    expect(await repo.deckWithMostDue(), a);
  });
}
