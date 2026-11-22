import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/speech/audio_recorder.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/flashcards/presentation/deck_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

class _Recorder implements AudioRecorder {
  _Recorder(this.result);
  final RecordStart result;
  bool recording = false;
  int cancels = 0;

  @override
  Future<RecordStart> start() async {
    recording = result == RecordStart.ok;
    return result;
  }

  @override
  Future<Uint8List?> stop() async {
    recording = false;
    return Uint8List.fromList([7, 7, 7]);
  }

  @override
  Future<void> cancel() async {
    recording = false;
    cancels++;
  }
}

Future<(TestEnv, FlashcardsRepository)> _openForm(WidgetTester tester, _Recorder rec) async {
  final env = TestEnv();
  final repo = FlashcardsRepository(env.db, env.clock);
  late String deck;
  await tester.runAsync(() async => deck = await repo.createDeck('German', color: 0xFF6C4CFF));
  await pumpScreen(
    tester,
    DeckScreen(deckId: deck),
    env: env,
    overrides: [audioRecorderProvider.overrideWithValue(rec)],
  );
  await settle(tester);
  await tester.tap(find.byKey(const Key('addCardFab')));
  await settle(tester);
  await tester.enterText(find.byKey(const Key('cardFrontField')), 'der Hund');
  await tester.enterText(find.byKey(const Key('cardBackField')), 'dog');
  await tester.pump();
  return (env, repo);
}

void main() {
  testWidgets('record a clip on the back side and save it with the card', (tester) async {
    final rec = _Recorder(RecordStart.ok);
    final (env, repo) = await _openForm(tester, rec);
    await tester.ensureVisible(find.byKey(const Key('mediaRecord_back')));
    await tester.tap(find.byKey(const Key('mediaRecord_back')));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.byKey(const Key('recordElapsed')), findsOneWidget);
    expect(rec.recording, isTrue);
    await tester.pump(const Duration(seconds: 2));
    await tester.tap(find.byKey(const Key('recordStop')));
    await settle(tester);
    await tester.pump(const Duration(milliseconds: 600)); // sheet exit animation
    expect(find.byKey(const Key('recordElapsed')), findsNothing);
    expect(find.text('recording.m4a'), findsOneWidget);
    await tester.tap(find.byKey(const Key('cardSaveButton')));
    await settle(tester);
    final card = (await tester.runAsync(() => env.db.select(env.db.flashcards).getSingle()))!;
    final media = (await tester.runAsync(() => repo.mediaFor(card.id)))!;
    expect(media.single.side, 'back');
    expect(media.single.kind, 'audio');
    expect(media.single.bytes, [7, 7, 7]);
    await closeEnv(tester, env);
  });

  testWidgets('cancel discards the recording', (tester) async {
    final rec = _Recorder(RecordStart.ok);
    final (env, _) = await _openForm(tester, rec);
    await tester.ensureVisible(find.byKey(const Key('mediaRecord_front')));
    await tester.tap(find.byKey(const Key('mediaRecord_front')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('recordCancel')));
    await settle(tester);
    await tester.pump(const Duration(milliseconds: 600));
    expect(find.byKey(const Key('recordElapsed')), findsNothing);
    expect(rec.cancels, 1);
    expect(rec.recording, isFalse);
    expect(find.text('recording.m4a'), findsNothing);
    await closeEnv(tester, env);
  });

  testWidgets('denied microphone shows the reason inline in the form', (tester) async {
    final rec = _Recorder(RecordStart.denied);
    final (env, _) = await _openForm(tester, rec);
    await tester.ensureVisible(find.byKey(const Key('mediaRecord_front')));
    await tester.tap(find.byKey(const Key('mediaRecord_front')));
    await settle(tester);
    expect(find.byKey(const Key('mediaError_front')), findsOneWidget);
    expect(find.byKey(const Key('recordElapsed')), findsNothing);
    await closeEnv(tester, env);
  });
}
