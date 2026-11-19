import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/speech/tts_service.dart';
import 'package:future_os/features/flashcards/application/deck_view_prefs.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/presentation/deck_screen.dart';
import 'package:future_os/features/flashcards/presentation/widgets/card_table.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../settings/settings_test_utils.dart';
import '../widget_helpers.dart';

class _Tts implements TtsService {
  final said = <(String, String?)>[];
  bool opened = false;
  TtsResult result = TtsResult.ok;

  @override
  Future<TtsResult> speak(
    String text, {
    String? languageTag,
    double rate = 1,
    double pitch = 1,
    int repeat = 1,
    String? voice,
    int pauseMs = 700,
    bool awaitDone = false,
  }) async {
    said.add((text, languageTag));
    return result;
  }

  @override
  Future<List<TtsVoice>> voices() async => const [];
  @override
  Future<List<String>> languages() async => const ['es-ES', 'de-DE'];
  @override
  Future<bool> openSettings() async => opened = true;
  @override
  Future<void> stop() async {}
}

Future<(TestEnv, String, _Tts)> _open(WidgetTester tester) async {
  final env = TestEnv();
  final tts = _Tts();
  final repo = FlashcardsRepository(env.db, env.clock);
  late String deck;
  await tester.runAsync(() async {
    deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
    await repo.setDeckLanguages(deck, front: 'es-ES', back: 'ar');
    await repo.addCard(deck, 'mesa', 'طاولة');
    await repo.addCard(deck, 'agua', 'ماء');
  });
  await pumpScreen(
    tester,
    DeckScreen(deckId: deck),
    env: env,
    overrides: [ttsServiceProvider.overrideWithValue(tts)],
  );
  await settle(tester);
  return (env, deck, tts);
}

AppLocalizations _l10n(WidgetTester t) => AppLocalizations.of(t.element(find.byType(DeckScreen)));

void main() {
  testWidgets('table: language columns, speak a row, swap, sort, switch to tiles', (tester) async {
    final (env, _, tts) = await _open(tester);
    final l10n = _l10n(tester);
    await scrollPageTo(tester, find.byKey(const Key('swapColumns')));
    expect(find.text('Español (ES)'), findsOneWidget);
    expect(find.text('العربية'), findsOneWidget);
    expect(find.text('mesa'), findsOneWidget);

    final rowSpeak = find.byWidgetPredicate(
      (w) =>
          w.key is ValueKey<String> && (w.key! as ValueKey<String>).value.startsWith('speakRow_'),
    );
    await tester.tap(rowSpeak.first);
    await settle(tester);
    expect(tts.said.last.$2, 'es-ES');

    await tester.tap(find.byKey(const Key('swapColumns')));
    await settle(tester);
    await tester.tap(rowSpeak.first);
    await settle(tester);
    expect(tts.said.last.$2, 'ar', reason: 'swapped: the first column is Arabic');
    final backSpeak = find.byWidgetPredicate(
      (w) =>
          w.key is ValueKey<String> && (w.key! as ValueKey<String>).value.startsWith('speakBack_'),
    );
    await tester.tap(backSpeak.first);
    await settle(tester);
    expect(tts.said.last.$2, 'es-ES', reason: 'the translation has its own speaker');
    expect(find.byKey(const Key('deckSpeech')), findsOneWidget);

    await tester.tap(find.byKey(const Key('sortMenu')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('sort_alpha')).last);
    await settle(tester);
    final firstRow = tester.widgetList<Text>(find.textContaining(RegExp('^(ماء|طاولة)\$'))).first;
    expect(firstRow.data, 'طاولة', reason: 'A to Z on the (swapped) first column');

    await tester.tap(find.byKey(const Key('viewCards')));
    await settle(tester);
    expect(find.byKey(const Key('cardTable')), findsNothing);
    expect(find.byTooltip(l10n.actionDelete), findsWidgets);
    expect(
      await tester.runAsync(() => env.db.readValue('flash.deckView')),
      contains('"table":false'),
    );
    await closeEnv(tester, env);
  });

  testWidgets('listen mode reads front then back for each card, next and stop', (tester) async {
    final (env, _, tts) = await _open(tester);
    await tester.tap(find.byKey(const Key('listenButton')));
    await tester.pump();
    await tester.pump(const Duration(seconds: 3));
    expect(find.byKey(const Key('listenBar')), findsOneWidget);
    expect(tts.said.take(2).map((e) => e.$2).toList(), ['es-ES', 'ar']);
    expect(tts.said.length, greaterThanOrEqualTo(3), reason: 'second card started');
    await tester.tap(find.byKey(const Key('listenStop')));
    await settle(tester);
    await tester.pump(const Duration(seconds: 1));
    expect(find.byKey(const Key('listenBar')), findsNothing);
    expect(find.byKey(const Key('addCardFab')), findsOneWidget);

    // Played to the end, the bar goes away by itself.
    await tester.tap(find.byKey(const Key('listenButton')));
    await tester.pump();
    await tester.pump(const Duration(seconds: 8));
    await tester.pump(const Duration(seconds: 1));
    expect(find.byKey(const Key('listenBar')), findsNothing);
    await closeEnv(tester, env);
  });

  testWidgets('listen mode stops and explains when the language has no voice', (tester) async {
    final (env, _, tts) = await _open(tester);
    tts.result = TtsResult.languageUnavailable;
    await tester.tap(find.byKey(const Key('listenButton')));
    await settle(tester);
    expect(find.byKey(const Key('listenProblem')), findsOneWidget);
    expect(tts.said.length, 1, reason: 'does not race through the list');
    await tester.tap(find.byKey(const Key('listenStop')));
    await settle(tester);
    await closeEnv(tester, env);
  });

  testWidgets('paste cards: clipboard text opens the import preview; empty clipboard explains', (
    tester,
  ) async {
    String? clip = 'perro\tكلب\ngato\tقطة';
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(SystemChannels.platform, (
      call,
    ) async {
      if (call.method == 'Clipboard.getData') return clip == null ? null : {'text': clip};
      return null;
    });
    final (env, _, _) = await _open(tester);
    final l10n = _l10n(tester);
    await tester.tap(find.byKey(const Key('deckMenu')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('deckMenu_paste')));
    await settle(tester);
    expect(find.textContaining('perro'), findsWidgets);
    await tester.tap(find.text(l10n.actionCancel).last);
    await settle(tester);

    clip = null;
    await tester.tap(find.byKey(const Key('deckMenu')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('deckMenu_paste')));
    await settle(tester);
    expect(find.text(l10n.flashClipboardEmpty), findsOneWidget);
    await closeEnv(tester, env);
  });

  testWidgets('any world language: phone voices first, search, download voices', (tester) async {
    final (env, deck, tts) = await _open(tester);
    await tester.tap(find.byKey(const Key('deckMenu')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('deckMenu_speech')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('speechFront')));
    await settle(tester);
    expect(find.byKey(const Key('langPhone_de-DE')), findsOneWidget);
    await tester.enterText(find.byKey(const Key('langSearch')), 'swahili');
    await settle(tester);
    expect(find.byKey(const Key('lang_sw')), findsOneWidget, reason: 'Kiswahili matches');
    await tester.tap(find.byKey(const Key('ttsOpenSettings')));
    await settle(tester);
    expect(tts.opened, isTrue);
    await tester.tap(find.byKey(const Key('lang_sw')));
    await settle(tester);
    final row = await tester.runAsync(
      () => (env.db.select(env.db.decks)..where((d) => d.id.equals(deck))).getSingle(),
    );
    expect(row!.frontLang, 'sw');
    await closeEnv(tester, env);
  });

  testWidgets('my order: dragging a card saves the order and keeps it', (tester) async {
    final (env, deck, _) = await _open(tester);
    final c = containerOf(tester, DeckScreen);
    await c
        .read(deckViewPrefsProvider.notifier)
        .set(c.read(deckViewPrefsProvider).copyWith(sort: DeckSort.manual));
    await settle(tester);
    expect(find.byKey(const Key('cardReorderList')), findsOneWidget);
    List<String> fronts() => tester
        .widgetList<CardTableRow>(find.byType(CardTableRow))
        .map((r) => r.card.front)
        .toList();
    final before = fronts();
    expect(before.length, 2);
    final id = tester.widget<CardTableRow>(find.byType(CardTableRow).first).card.id;
    final g = await tester.startGesture(tester.getCenter(find.byKey(ValueKey('dragHandle_$id'))));
    await tester.pump(const Duration(milliseconds: 100));
    await g.moveBy(const Offset(0, 120));
    await tester.pump();
    await g.up();
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 300)));
    await settle(tester);
    expect(fronts(), before.reversed.toList());
    // Saved: it is still there after the screen reloads the cards.
    final saved = await tester.runAsync(
      () => FlashcardsRepository(env.db, env.clock).watchCards(deck).first,
    );
    expect(saved!.map((c) => c.position).every((p) => p > 0), isTrue);
    await closeEnv(tester, env);
  });
}
