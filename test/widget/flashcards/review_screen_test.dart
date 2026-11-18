import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/presentation/review_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

Future<List<ReviewRow>> _reviews(AppDatabase db) => db.select(db.cardReviews).get();

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('review flow: flip, interval previews, rate Good persists ($tag)', (tester) async {
      final env = TestEnv();
      final repo = FlashcardsRepository(env.db, env.clock);
      late String deck;
      await tester.runAsync(() async {
        deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
        await repo.addCard(deck, 'hola', 'hello');
        await repo.addCard(deck, 'adiós', 'bye');
      });
      await pumpScreen(
        tester,
        ReviewScreen(deckId: deck),
        localeTag: tag,
        env: env,
      );
      await settle(tester);
      final l10n = AppLocalizations.of(tester.element(find.byType(ReviewScreen)));

      expect(
        Directionality.of(tester.element(find.byType(ReviewScreen))),
        tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      );
      expect(find.text('hola'), findsOneWidget);
      expect(find.text('hello'), findsNothing);
      expect(find.text(l10n.reviewProgress(0, 2)), findsOneWidget);

      // Flip by tapping the card.
      await tester.tap(find.byKey(const Key('flipCard')));
      await settle(tester);
      expect(find.text('hello'), findsOneWidget);

      // Interval previews come from the real scheduler for a new card.
      expect(find.text(l10n.intervalMinutes(1)), findsOneWidget); // again
      expect(find.text(l10n.intervalMinutes(6)), findsOneWidget); // hard
      expect(find.text(l10n.intervalMinutes(10)), findsOneWidget); // good
      expect(find.text(l10n.intervalDays(14)), findsOneWidget); // easy (FSRS-4.5)
      expect(
        find.bySemanticsLabel(l10n.flashcardsRatingA11y(l10n.reviewGood, l10n.intervalMinutes(10))),
        findsOneWidget,
      );

      expect(await tester.runAsync(() => _reviews(env.db)), isEmpty);
      await tester.tap(find.byKey(const Key('rating_good')));
      await settle(tester);
      final rows = (await tester.runAsync(() => _reviews(env.db)))!;
      expect(rows, hasLength(1));
      expect(rows.single.rating, 3);
      expect(rows.single.stateBefore, 'new');

      // Next card, back to front side. Good on a new card is due in 10 min,
      // within the session window, so it is appended to the queue.
      expect(find.text('adiós'), findsOneWidget);
      expect(find.text(l10n.reviewProgress(1, 3)), findsOneWidget);
      await env.dispose();
    });
  }

  testWidgets('session finishes with per-rating summary from real reviews', (tester) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async {
      deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
      await repo.addCard(deck, 'uno', 'one');
    });
    await pumpScreen(tester, ReviewScreen(deckId: deck), env: env);
    await settle(tester);
    final l10n = AppLocalizations.of(tester.element(find.byType(ReviewScreen)));

    // Again re-appends (due in 1 min); Easy graduates (4 days) and ends.
    await tester.tap(find.byKey(const Key('showAnswerButton')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('rating_again')));
    await settle(tester);
    expect(find.text('uno'), findsOneWidget);
    expect(find.text(l10n.reviewProgress(1, 2)), findsOneWidget);
    await tester.tap(find.byKey(const Key('showAnswerButton')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('rating_easy')));
    await settle(tester);

    expect(find.text(l10n.reviewFinishedTitle), findsOneWidget);
    expect(find.text(l10n.reviewFinishedMessage(2)), findsOneWidget);
    expect(find.bySemanticsLabel('${l10n.reviewAgain}: 1'), findsOneWidget);
    expect(find.bySemanticsLabel('${l10n.reviewEasy}: 1'), findsOneWidget);
    expect(find.bySemanticsLabel('${l10n.reviewGood}: 0'), findsOneWidget);
    final rows = (await tester.runAsync(() => env.db.select(env.db.cardReviews).get()))!;
    expect(rows.map((r) => r.rating).toList()..sort(), [1, 4]);
    await env.dispose();
  });

  testWidgets('empty queue shows nothing to study', (tester) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async => deck = await repo.createDeck('Empty', color: 1));
    await pumpScreen(
      tester,
      ReviewScreen(deckId: deck),
      localeTag: 'ar',
      env: env,
    );
    await settle(tester);
    final l10n = AppLocalizations.of(tester.element(find.byType(ReviewScreen)));
    expect(find.text(l10n.flashcardsNothingToStudy), findsOneWidget);
    await env.dispose();
  });
}
