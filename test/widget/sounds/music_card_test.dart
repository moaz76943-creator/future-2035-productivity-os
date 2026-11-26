import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/sounds/application/sounds_controller.dart';
import 'package:future_os/features/sounds/data/soundscape_platform.dart';
import 'package:future_os/features/sounds/domain/nature_sound.dart';
import 'package:future_os/features/sounds/presentation/sounds_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

Future<MemorySoundscape> _open(WidgetTester tester, TestEnv env) async {
  final engine = MemorySoundscape();
  addTearDown(engine.close);
  await pumpScreen(
    tester,
    const SoundsScreen(),
    env: env,
    overrides: [soundscapePlatformProvider.overrideWithValue(engine)],
  );
  await settle(tester);
  return engine;
}

void main() {
  testWidgets('own music: pick plays it alone, volume, remove stops', (tester) async {
    final env = TestEnv();
    final engine = await _open(tester, env);
    await tester.ensureVisible(find.byKey(const Key('soundsMusicPick')));
    await tester.tap(find.byKey(const Key('soundsMusicPick')));
    await settle(tester);
    expect(engine.calls, containsAllInOrder(['pickMusic', 'play']));
    var s = await engine.state();
    expect(s.music?.name, 'My track');
    expect(s.playing, isTrue);
    expect(find.text('My track'), findsOneWidget);
    expect(find.byKey(const Key('soundsPlayPause')), findsOneWidget);

    // The player bar controls the own audio too (pause, play, stop keep the choice).
    await tester.tap(find.byKey(const Key('soundsPlayPause')));
    await settle(tester);
    expect((await engine.state()).playing, isFalse);
    expect(find.byIcon(Icons.play_arrow_rounded), findsOneWidget);
    await tester.tap(find.byKey(const Key('soundsPlayPause')));
    await settle(tester);
    expect((await engine.state()).playing, isTrue);

    await tester.tap(find.byKey(const Key('soundsStop')));
    await settle(tester);
    expect((await engine.state()).playing, isFalse);
    expect((await engine.state()).music?.name, 'My track', reason: 'stop keeps the chosen file');
    expect(find.byIcon(Icons.play_arrow_rounded), findsOneWidget);
    await tester.tap(find.byKey(const Key('soundsPlayPause')));
    await settle(tester);
    expect((await engine.state()).playing, isTrue);

    tester.widget<Slider>(find.byKey(const Key('soundsMusicVolume'))).onChanged!(0.3);
    await settle(tester);
    expect((await engine.state()).music!.volume, 0.3);

    await tester.ensureVisible(find.byKey(const Key('soundsMusicRemove')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('soundsMusicRemove')));
    await settle(tester);
    s = await engine.state();
    expect(s.music, isNull);
    expect(s.playing, isFalse);
    expect(find.byKey(const Key('soundsMusicPick')), findsOneWidget);
    await closeEnv(tester, env);
  });

  testWidgets('own music: a cancelled picker changes nothing', (tester) async {
    final env = TestEnv();
    final engine = await _open(tester, env)
      ..nextPick = null;
    await tester.ensureVisible(find.byKey(const Key('soundsMusicPick')));
    await tester.tap(find.byKey(const Key('soundsMusicPick')));
    await settle(tester);
    expect(engine.calls, isNot(contains('play')));
    expect((await engine.state()).isSilent, isTrue);
    await closeEnv(tester, env);
  });

  test('engine state with music parses; unknown shapes are ignored', () {
    final m = SoundMix.fromState({
      'playing': true,
      'volumes': {'rain': 0.5},
      'music': {'name': 'Lo-fi', 'volume': 1.7},
    });
    expect(m.music?.name, 'Lo-fi');
    expect(m.music?.volume, 1.0);
    expect(SoundMix.fromState({'music': 'bad'}).music, isNull);
    expect(const SoundMix(music: MusicPick(name: 'x')).isSilent, isFalse);
  });
}
