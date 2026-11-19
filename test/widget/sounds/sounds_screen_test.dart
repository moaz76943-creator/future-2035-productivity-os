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
  testWidgets('tap a scene: it plays; player bar pauses, mixes and stops', (tester) async {
    final env = TestEnv();
    final engine = await _open(tester, env);
    expect(find.byKey(const Key('soundsPlayPause')), findsNothing);
    await tester.tap(find.byKey(const Key('sound_rain')));
    await settle(tester);
    expect(engine.calls, containsAllInOrder(['setVolume:rain:0.70', 'play']));
    expect((await engine.state()).playing, isTrue);
    await tester.tap(find.byKey(const Key('soundsPlayPause')));
    await settle(tester);
    expect((await engine.state()).playing, isFalse);

    await tester.tap(find.byKey(const Key('soundsMixer')));
    await settle(tester);
    await tester.drag(find.byKey(const Key('soundVolume_rain')), const Offset(-200, 0));
    await settle(tester);
    expect((await engine.state()).volumes[NatureSound.rain], lessThan(0.7));
    await tester.tap(find.byKey(const Key('soundRemove_rain')));
    await settle(tester);
    expect((await engine.state()).isEmpty, isTrue);
    await closeEnv(tester, env);
  });

  testWidgets('a seventh sound is refused with a message', (tester) async {
    final env = TestEnv();
    final engine = await _open(tester, env);
    for (final s in NatureSound.values.take(maxSoundsInMix)) {
      await tester.scrollUntilVisible(find.byKey(Key('sound_${s.name}')), 200);
      await tester.tap(find.byKey(Key('sound_${s.name}')));
      await settle(tester);
    }
    final seventh = NatureSound.values[maxSoundsInMix];
    await tester.scrollUntilVisible(find.byKey(Key('sound_${seventh.name}')), 200);
    await tester.tap(find.byKey(Key('sound_${seventh.name}')));
    await settle(tester);
    expect((await engine.state()).volumes.length, maxSoundsInMix);
    expect(find.textContaining('$maxSoundsInMix'), findsWidgets);
    await closeEnv(tester, env);
  });

  testWidgets('sleep timer and stop; the mix is remembered for next time', (tester) async {
    final env = TestEnv();
    final engine = await _open(tester, env);
    await tester.tap(find.byKey(const Key('sound_ocean')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('soundsSleepMenu')));
    await settle(tester);
    await tester.tap(find.byKey(const Key('sleep_30')));
    await settle(tester);
    expect(engine.calls, contains('sleep:30'));
    expect(find.byKey(const Key('soundsSleepLabel')), findsOneWidget);
    final saved = await tester.runAsync(() => env.db.readValue('sounds.mix'));
    expect(saved, contains('ocean'));
    await tester.tap(find.byKey(const Key('soundsStop')));
    await settle(tester);
    await tester.pump(const Duration(milliseconds: 600)); // FAB exit animation
    expect((await engine.state()).isEmpty, isTrue);
    expect(find.byKey(const Key('soundsPlayPause')), findsNothing);
    expect(await tester.runAsync(() => env.db.readValue('sounds.mix')), isNull);
    await closeEnv(tester, env);
  });
}
