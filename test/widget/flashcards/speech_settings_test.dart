import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/speech/tts_service.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/domain/card_extras.dart';
import 'package:future_os/features/flashcards/presentation/deck_screen.dart';
import 'package:future_os/features/flashcards/presentation/review_screen.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/l10n/gen/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

class _Tts implements TtsService {
  final calls = <({String text, String? lang, String? voice, int repeat})>[];
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
    calls.add((text: text, lang: languageTag, voice: voice, repeat: repeat));
    return TtsResult.ok;
  }

  @override
  Future<List<String>> languages() async => const ['es-ES', 'en-US', 'de-DE'];

  @override
  Future<bool> openSettings() async => true;

  @override
  Future<void> stop() async {}

  @override
  Future<List<TtsVoice>> voices() async => const [
    TtsVoice(name: 'es-es-x-eea-local', localeTag: 'es-ES'),
    TtsVoice(name: 'es-us-x-sfb-network', localeTag: 'es-US', network: true),
    TtsVoice(name: 'en-us-x-iol-local', localeTag: 'en-US'),
  ];
}

void main() {
  testWidgets('deck speech: language, voice per language and test playback', (tester) async {
    final env = TestEnv();
    final tts = _Tts();
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async {
      deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
      await repo.setDeckLanguages(deck, front: 'es-ES', back: '');
    });
    await pumpScreen(
      tester,
      DeckScreen(deckId: deck),
      env: env,
      overrides: [ttsServiceProvider.overrideWithValue(tts)],
    );
    await settle(tester);
    final l10n = AppLocalizations.of(tester.element(find.byType(DeckScreen)));
    await tester.tap(find.byKey(const Key('deckMenu')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('deckMenu_speech')));
    await settle(tester);

    await tester.tap(find.byKey(const Key('voiceFront')));
    await settle(tester);
    // Only Spanish voices are offered for the Spanish side; online ones are marked.
    expect(find.text('en-us-x-iol-local'), findsNothing);
    expect(find.text('es-us-x-sfb-network · ${l10n.speechVoiceOnline}'), findsOneWidget);
    await tester.tap(find.text('es-es-x-eea-local').last);
    await settle(tester);
    final saved = (await tester.runAsync(() => SettingsRepository(env.db).load()))!;
    expect(saved.flashVoices['es'], 'es-es-x-eea-local');

    await tester.tap(find.byTooltip(l10n.speechTest).first);
    await settle(tester);
    expect(tts.calls.last.lang, 'es-ES');
    expect(tts.calls.last.voice, 'es-es-x-eea-local');
    await closeEnv(tester, env);
  });

  testWidgets('example field is spoken on its own in the front language', (tester) async {
    final env = TestEnv();
    final tts = _Tts();
    final repo = FlashcardsRepository(env.db, env.clock);
    late String deck;
    await tester.runAsync(() async {
      deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
      await repo.setDeckLanguages(deck, front: 'es-ES', back: 'ar');
      await repo.addCard(
        deck,
        'la llave',
        'المفتاح',
        extras: const CardExtras({CardField.example: 'Tengo la llave.'}),
      );
    });
    await pumpScreen(
      tester,
      ReviewScreen(deckId: deck),
      env: env,
      overrides: [ttsServiceProvider.overrideWithValue(tts)],
    );
    await settle(tester);
    await tester.tap(find.byKey(const Key('showAnswerButton')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('speakField_example')));
    await settle(tester);
    expect(tts.calls.last.text, 'Tengo la llave.');
    expect(tts.calls.last.lang, 'es-ES');
    await closeEnv(tester, env);
  });
}
