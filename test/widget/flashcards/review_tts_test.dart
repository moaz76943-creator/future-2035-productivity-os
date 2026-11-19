import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/speech/tts_service.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/presentation/review_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

class _FakeTts implements TtsService {
  _FakeTts(this.result);
  final TtsResult result;
  final spoken = <(String, String?)>[];
  final repeats = <int>[];
  int stops = 0;

  @override
  Future<TtsResult> speak(
    String text, {
    String? languageTag,
    double rate = 1,
    double pitch = 1,
    int repeat = 1,
    String? voice,
  }) async {
    spoken.add((text, languageTag));
    repeats.add(repeat);
    return result;
  }

  @override
  Future<void> stop() async => stops++;

  @override
  Future<List<TtsVoice>> voices() async => const [];
}

void main() {
  Future<(TestEnv, String)> seed(WidgetTester tester) async {
    final env = TestEnv();
    late String deck;
    await tester.runAsync(() async {
      final repo = FlashcardsRepository(env.db, env.clock);
      deck = await repo.createDeck('Words', color: 0xFF6C4CFF);
      await repo.addCard(deck, 'hola', 'hello');
    });
    return (env, deck);
  }

  testWidgets('read aloud speaks the visible side in the app language', (tester) async {
    final (env, deck) = await seed(tester);
    final tts = _FakeTts(TtsResult.ok);
    await pumpScreen(
      tester,
      ReviewScreen(deckId: deck),
      env: env,
      overrides: [ttsServiceProvider.overrideWithValue(tts)],
    );
    await settle(tester);
    await tester.tap(find.byKey(const Key('reviewSpeakButton')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('showAnswerButton')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('reviewSpeakButton')));
    await settle(tester);
    expect(tts.spoken, [('hola', 'en'), ('hello', 'en')]);
    expect(find.byType(SnackBar), findsNothing);
    await closeEnv(tester, env);
    expect(tts.stops, greaterThanOrEqualTo(1), reason: 'speech stops when the screen closes');
  });

  for (final (result, message) in [
    (TtsResult.unavailable, 'Text-to-speech isn’t available on this device.'),
    (
      TtsResult.languageUnavailable,
      'No voice is installed for this language. Add one in Android text-to-speech settings.',
    ),
  ]) {
    testWidgets('read aloud explains $result and review continues', (tester) async {
      final (env, deck) = await seed(tester);
      await pumpScreen(
        tester,
        ReviewScreen(deckId: deck),
        env: env,
        overrides: [ttsServiceProvider.overrideWithValue(_FakeTts(result))],
      );
      await settle(tester);
      await tester.tap(find.byKey(const Key('reviewSpeakButton')));
      await settle(tester);
      expect(find.text(message), findsOneWidget);
      await tester.tap(find.byKey(const Key('showAnswerButton')));
      await settle(tester);
      expect(find.text('hello'), findsOneWidget);
      await closeEnv(tester, env);
    });
  }

  test('platform service reports unavailable instead of throwing without an engine', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    expect(await const PlatformTtsService().speak('hi'), TtsResult.unavailable);
    expect(await const PlatformTtsService().speak('  '), TtsResult.empty);
    await const PlatformTtsService().stop();
  });
}
