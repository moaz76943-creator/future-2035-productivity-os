import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/srs_scheduler.dart';
import 'package:future_os/features/flashcards/presentation/decks_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

AppLocalizations _l10n(WidgetTester t) => AppLocalizations.of(t.element(find.byType(DecksScreen)));

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('empty state then create deck with limits ($tag)', (tester) async {
      final env = TestEnv();
      await pumpScreen(tester, const DecksScreen(), localeTag: tag, env: env);
      await settle(tester);
      final l10n = _l10n(tester);
      expect(
        Directionality.of(tester.element(find.byType(DecksScreen))),
        tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      );
      expect(find.text(l10n.flashEmptyTitle), findsOneWidget);

      await tester.tap(find.byKey(const Key('newDeckFab')));
      await settle(tester);
      // Empty name is rejected.
      await tester.tap(find.byKey(const Key('deckSaveButton')));
      await settle(tester);
      expect(find.text(l10n.validationNameRequired), findsOneWidget);

      await tester.enterText(find.byKey(const Key('deckNameField')), 'Español');
      await tester.enterText(find.byKey(const Key('deckDescriptionField')), 'Vocabulary');
      await tester.enterText(find.byKey(const Key('deckNewLimitField')), '7');
      await tester.enterText(find.byKey(const Key('deckReviewTargetField')), '40');
      await tester.tap(find.byKey(const Key('deckSaveButton')));
      await settle(tester);
      await tester.pump(const Duration(seconds: 1));

      final rows = (await tester.runAsync(() => env.db.select(env.db.decks).get()))!;
      expect(rows, hasLength(1));
      expect(rows.single.name, 'Español');
      expect(rows.single.description, 'Vocabulary');
      expect(rows.single.dailyNewLimit, 7);
      expect(rows.single.dailyReviewTarget, 40);
      expect(find.text('Español'), findsOneWidget);
      expect(find.text(l10n.deckCards(0)), findsOneWidget);
      expect(find.text(l10n.deckNothingDue), findsNothing, reason: 'no discouraging banner');
      expect(find.byKey(const Key('starterDecksCard')), findsOneWidget);
      await env.dispose();
    });
  }

  testWidgets('due banner and deck pills reflect stored cards', (tester) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    await tester.runAsync(() async {
      final deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
      final a = await repo.addCard(deck, 'a', 'b');
      await repo.addCard(deck, 'c', 'd');
      await repo.recordReview(a, ReviewRating.again);
    });
    env.clock.advance(const Duration(minutes: 2));
    await pumpScreen(tester, const DecksScreen(), env: env);
    await settle(tester);
    final l10n = _l10n(tester);
    expect(find.text(l10n.flashcardsDueBanner(1)), findsOneWidget);
    expect(find.byKey(const Key('reviewNowButton')), findsOneWidget);
    expect(find.text(l10n.deckCards(2)), findsOneWidget);
    expect(find.text(l10n.flashcardsDueCount(1)), findsOneWidget);
    expect(find.text(l10n.flashcardsNewCount(1)), findsOneWidget);
    await env.dispose();
  });

  testWidgets('long text and large font render without overflow', (tester) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    await tester.runAsync(() async {
      await repo.createDeck(
        'A very long deck name that keeps going and going for translation checks',
        description: List.filled(12, 'Description words').join(' '),
        color: 0xFF6C4CFF,
      );
    });
    await pumpScreen(
      tester,
      Builder(
        builder: (c) => MediaQuery(
          data: MediaQuery.of(c).copyWith(textScaler: const TextScaler.linear(2)),
          child: const DecksScreen(),
        ),
      ),
      localeTag: 'ru',
      env: env,
    );
    await settle(tester);
    expect(tester.takeException(), isNull);
    await env.dispose();
  });

  testWidgets('deck options from the list; decks can be dragged into a new order (ar)', (
    tester,
  ) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    final a = (await tester.runAsync(() => repo.createDeck('أول', color: 0xFF2EC4B6)))!;
    final b = (await tester.runAsync(() => repo.createDeck('ثانٍ', color: 0xFF6C5CE7)))!;
    await pumpScreen(tester, const DecksScreen(), localeTag: 'ar', env: env);
    await settle(tester);
    double y(String name) => tester.getTopLeft(find.text(name).first).dy;
    final firstBefore = y('أول') < y('ثانٍ') ? 'أول' : 'ثانٍ';

    await tester.tap(find.byKey(Key('deckMore_$a')));
    await settle(tester);
    expect(find.byKey(const Key('deckAction_delete')), findsOneWidget);
    await tester.tap(find.byKey(const Key('deckAction_arrange')));
    await settle(tester);
    final handle = find.byKey(Key('deckDrag_${firstBefore == 'أول' ? a : b}'));
    final drag = await tester.startGesture(tester.getCenter(handle));
    await tester.pump(const Duration(milliseconds: 600));
    await drag.moveBy(const Offset(0, 140));
    await tester.pump();
    await drag.up();
    for (var i = 0; i < 3; i++) {
      await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
      await settle(tester);
    }
    Navigator.of(tester.element(find.byKey(const Key('arrangeDecks')))).pop();
    await tester.pump(const Duration(seconds: 1));
    await settle(tester);
    expect(find.byKey(const Key('arrangeDecks')), findsNothing);
    final firstAfter = y('أول') < y('ثانٍ') ? 'أول' : 'ثانٍ';
    expect(firstAfter, isNot(firstBefore), reason: 'the dragged order is kept');
    await closeEnv(tester, env);
  });
}
