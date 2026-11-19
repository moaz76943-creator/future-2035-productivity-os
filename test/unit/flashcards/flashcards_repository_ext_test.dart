import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/card_layout.dart';
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
      expect(after.stability, preview.stability);
      expect(after.difficulty, preview.difficulty);
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
    expect(p[ReviewRating.easy]!.intervalDays, 14); // FSRS-4.5: initial Easy stability 13.8 days
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

  test('saved templates and non-destructive template application preserve card data', () async {
    final deck = await repo.createDeck('Langs', color: 1);
    final initial = const CardLayout().addCustomField(name: 'Literal', isTranslation: true);
    await repo.saveLayout(deck, initial);
    final cardId = await repo.addCard(deck, 'كتاب', 'book', custom: const {'c1': 'a writing'});

    final tpl = SavedCardTemplate(
      id: 't1',
      name: 'Grammar',
      layout: templateLayout(CardTemplate.grammar, name: (k) => k),
    );
    await repo.saveTemplate(tpl);
    expect((await repo.savedTemplates()).single.name, 'Grammar');

    final updated = await repo.applyTemplateNonDestructive(deck, tpl.layout);
    expect(updated.customFields.length, 2);
    expect(updated.customFields[0].id, 'c1');
    expect(updated.customFields[1].id, 'c2');

    // Existing card custom field data is 100% preserved.
    final card = (await repo.getCard(cardId))!;
    expect(CardCustom.decode(card.custom)['c1'], 'a writing');

    await repo.deleteTemplate('t1');
    expect(await repo.savedTemplates(), isEmpty);
  });

  test('cardReviewHistory records persistent review log newest first', () async {
    final deck = await repo.createDeck('D', color: 1);
    final id = await repo.addCard(deck, 'q', 'a');
    await repo.recordReview(id, ReviewRating.good);
    env.clock.advance(const Duration(minutes: 15));
    await repo.recordReview(id, ReviewRating.easy);

    final history = await repo.cardReviewHistory(id);
    expect(history.length, 2);
    expect(history.first.rating, ReviewRating.easy.value);
    expect(history.last.rating, ReviewRating.good.value);
  });
}
