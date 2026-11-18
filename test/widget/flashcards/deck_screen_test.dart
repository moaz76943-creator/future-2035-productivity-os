import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/presentation/deck_screen.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

AppLocalizations _l10n(WidgetTester t) => AppLocalizations.of(t.element(find.byType(DeckScreen)));

Future<(TestEnv, String)> _setup(WidgetTester tester, {String tag = 'en'}) async {
  final env = TestEnv();
  final repo = FlashcardsRepository(env.db, env.clock);
  late String deck;
  await tester.runAsync(() async => deck = await repo.createDeck('Words', color: 0xFF6C4CFF));
  await pumpScreen(
    tester,
    DeckScreen(deckId: deck),
    localeTag: tag,
    env: env,
  );
  await settle(tester);
  return (env, deck);
}

Future<int> _cardCount(TestEnv env, WidgetTester tester) async => (await tester.runAsync(
  () => (env.db.select(env.db.flashcards)..where((c) => c.deletedAt.isNull())).get(),
))!.length;

void main() {
  for (final tag in ['en', 'ar']) {
    testWidgets('import pasted lines and study enables ($tag)', (tester) async {
      final (env, _) = await _setup(tester, tag: tag);
      final l10n = _l10n(tester);
      expect(
        Directionality.of(tester.element(find.byType(DeckScreen))),
        tag == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      );
      // Empty deck: nothing to study.
      expect(find.text(l10n.deckNothingDue), findsOneWidget);
      final study = tester.widget<ButtonStyleButton>(
        find.ancestor(of: find.text(l10n.deckStudy), matching: find.bySubtype<ButtonStyleButton>()),
      );
      expect(study.onPressed, isNull);

      await tester.tap(find.byKey(const Key('importButton')));
      await settle(tester);
      await tester.enterText(find.byKey(const Key('importField')), 'hola\thello\nadiós;bye\n\nbad');
      await tester.tap(find.byKey(const Key('importConfirmButton')));
      await settle(tester);

      // The line without an answer ('bad') is reported, not silently dropped.
      expect(find.text(l10n.importCardsResultDetail(2, 0, 1)), findsOneWidget);
      expect(await _cardCount(env, tester), 2);
      expect(find.text('hola'), findsOneWidget);
      expect(find.text('adiós'), findsOneWidget);
      expect(find.text(l10n.flashcardsReadyCount(2)), findsOneWidget);
      final enabled = tester.widget<ButtonStyleButton>(
        find.ancestor(of: find.text(l10n.deckStudy), matching: find.bySubtype<ButtonStyleButton>()),
      );
      expect(enabled.onPressed, isNotNull);
      await env.dispose();
    });
  }

  testWidgets('import of unsupported deck JSON shows failure', (tester) async {
    final (env, _) = await _setup(tester);
    final l10n = _l10n(tester);
    await tester.tap(find.byKey(const Key('importButton')));
    await settle(tester);
    await tester.enterText(find.byKey(const Key('importField')), '{"format":"other"}');
    await tester.tap(find.byKey(const Key('importConfirmButton')));
    await settle(tester);
    expect(find.text(l10n.importFailed), findsOneWidget);
    expect(await _cardCount(env, tester), 0);
    await env.dispose();
  });

  testWidgets('add cards with save and add another, search, delete with undo', (tester) async {
    final (env, _) = await _setup(tester);
    final l10n = _l10n(tester);
    await tester.tap(find.byKey(const Key('addCardFab')));
    await settle(tester);
    await tester.enterText(find.byKey(const Key('cardFrontField')), 'uno');
    await tester.enterText(find.byKey(const Key('cardBackField')), 'one');
    await tester.enterText(find.byKey(const Key('cardTagsField')), 'numbers');
    await tester.tap(find.byKey(const Key('cardSaveAnotherButton')));
    await settle(tester);
    expect(find.text(l10n.flashcardsCardAdded), findsOneWidget);
    await tester.enterText(find.byKey(const Key('cardFrontField')), 'dos');
    await tester.enterText(find.byKey(const Key('cardBackField')), 'two');
    await tester.tap(find.byKey(const Key('cardSaveButton')));
    await settle(tester);
    await tester.pump(const Duration(seconds: 1));
    expect(await _cardCount(env, tester), 2);
    expect(find.text('uno'), findsOneWidget);
    expect(find.text('dos'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('cardSearchField')), 'numb');
    await settle(tester);
    expect(find.text('uno'), findsOneWidget);
    expect(find.text('dos'), findsNothing);
    await tester.enterText(find.byKey(const Key('cardSearchField')), '');
    await settle(tester);

    await tester.tap(find.byTooltip(l10n.actionDelete).first);
    await settle(tester);
    expect(await _cardCount(env, tester), 1);
    await tester.tap(find.text(l10n.actionUndo));
    await settle(tester);
    expect(await _cardCount(env, tester), 2);
    await env.dispose();
  });

  testWidgets('export copies the deck JSON to the clipboard', (tester) async {
    final (env, deck) = await _setup(tester);
    final l10n = _l10n(tester);
    String? copied;
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(SystemChannels.platform, (
      call,
    ) async {
      if (call.method == 'Clipboard.setData') {
        copied = (call.arguments as Map)['text'] as String?;
      }
      return null;
    });
    await tester.runAsync(
      () => FlashcardsRepository(env.db, env.clock).addCard(deck, 'front', 'back'),
    );
    await settle(tester);
    await tester.tap(find.byKey(const Key('exportButton')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('exportCopyTile')));
    await settle(tester);
    expect(copied, contains('"format": "future-os-deck"'));
    expect(copied, contains('"front": "front"'));
    expect(find.text(l10n.exportCopied), findsOneWidget);
    await env.dispose();
  });

  testWidgets('large font in Arabic renders without layout errors', (tester) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async {
      deck = await repo.createDeck('مفردات طويلة جدا للاختبار', color: 0xFF6C4CFF);
      await repo.addCard(deck, List.filled(10, 'سؤال طويل').join(' '), 'جواب', tags: 'a b c');
    });
    await pumpScreen(
      tester,
      Builder(
        builder: (c) => MediaQuery(
          data: MediaQuery.of(c).copyWith(textScaler: const TextScaler.linear(2)),
          child: DeckScreen(deckId: deck),
        ),
      ),
      localeTag: 'ar',
      env: env,
    );
    await settle(tester);
    expect(tester.takeException(), isNull);
    await env.dispose();
  });

  testWidgets('study sheet: choose a mode and start a practice round; filters and suspend', (
    tester,
  ) async {
    final env = TestEnv();
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async {
      deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
      await repo.addCard(deck, 'hola', 'hello', tags: 'greet');
      await repo.addCard(deck, 'mesa', 'table');
    });
    await pumpScreen(tester, DeckScreen(deckId: deck), env: env, withRouter: true);
    await settle(tester);
    final l10n = _l10n(tester);

    // Tag filter and suspension.
    final filters = find.descendant(
      of: find.byKey(const Key('cardFilters')),
      matching: find.byType(Scrollable),
    );
    await scrollPageTo(tester, find.byKey(const Key('cardFilters')));
    await tester.scrollUntilVisible(find.text('#greet'), 100, scrollable: filters);
    await tester.tap(find.text('#greet'));
    await settle(tester);
    expect(find.text(l10n.flashcardsShownOf(1, 2)), findsOneWidget);
    await tester.tap(find.byTooltip(l10n.flashcardsSuspend).first);
    await settle(tester);
    final hola = (await tester.runAsync(() => env.db.select(env.db.flashcards).get()))!
        .firstWhere((c) => c.front == 'hola');
    expect(hola.suspended, isTrue);
    await tester.tap(find.text('#greet'));
    await settle(tester);
    await tester.scrollUntilVisible(
      find.byKey(const Key('cardFilter_suspended')),
      -100,
      scrollable: filters,
    );
    await tester.tap(find.byKey(const Key('cardFilter_suspended')));
    await settle(tester);
    expect(find.text(l10n.flashcardsShownOf(1, 2)), findsOneWidget);

    // Study sheet → typed mode → practice all.
    await tester.drag(find.byType(Scrollable).first, const Offset(0, 2000));
    await settle(tester);
    await tester.tap(find.byKey(const Key('studyButton')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('studyMode_typed')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('practiceAllButton')));
    await settle(tester);
    expect(find.textContaining('mode=typed'), findsOneWidget);
    expect(find.textContaining('scope=practiceAll'), findsOneWidget);
    await closeEnv(tester, env);
  });
}
