import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/features/focus/application/focus_controller.dart';
import 'package:future_os/features/focus/domain/focus_timer_state.dart';
import 'package:future_os/features/notifications/application/notification_providers.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/features/sounds/application/focus_sounds_link.dart';
import 'package:future_os/features/sounds/application/sound_presets.dart';
import 'package:future_os/features/sounds/application/sounds_controller.dart';
import 'package:future_os/features/sounds/data/soundscape_platform.dart';
import 'package:future_os/features/sounds/domain/nature_sound.dart';

import '../../helpers.dart';
import '../notifications/fake_notification_service.dart';

void main() {
  late TestEnv env;
  late MemorySoundscape engine;

  setUp(() {
    env = TestEnv();
    engine = MemorySoundscape();
  });
  tearDown(() async {
    await engine.close();
    await env.dispose();
  });

  Future<ProviderContainer> launch({bool focusSounds = true}) async {
    final c = ProviderContainer(
      overrides: [
        databaseProvider.overrideWithValue(env.db),
        clockProvider.overrideWithValue(env.clock),
        notificationServiceProvider.overrideWithValue(FakeNotificationService()),
        initialSettingsProvider.overrideWithValue(AppSettings(focusSounds: focusSounds)),
        soundscapePlatformProvider.overrideWithValue(engine),
      ],
    );
    c.read(focusSoundsLinkProvider);
    c.read(soundsControllerProvider);
    await c.read(focusControllerProvider.notifier).restored;
    await Future<void>.delayed(Duration.zero);
    return c;
  }

  test('the mix plays with a focus session and pauses when it stops', () async {
    final c = await launch();
    await engine.setVolume(NatureSound.rain, 0.6);
    await Future<void>.delayed(Duration.zero);
    await c.read(focusControllerProvider.notifier).start(mode: FocusMode.pomodoro);
    await Future<void>.delayed(const Duration(milliseconds: 10));
    expect((await engine.state()).playing, isTrue);
    await c.read(focusControllerProvider.notifier).pause();
    await Future<void>.delayed(const Duration(milliseconds: 10));
    expect((await engine.state()).playing, isFalse);
    c.dispose();
  });

  test('off by default; sounds the user started are never paused by the link', () async {
    final c = await launch(focusSounds: false);
    await engine.setVolume(NatureSound.ocean, 0.6);
    await c.read(focusControllerProvider.notifier).start(mode: FocusMode.pomodoro);
    await Future<void>.delayed(const Duration(milliseconds: 10));
    expect((await engine.state()).playing, isFalse, reason: 'switch is off');

    await c.read(settingsProvider.notifier).update((s) => s.copyWith(focusSounds: true));
    await engine.play(const {}); // the user plays it themselves
    await c.read(focusControllerProvider.notifier).pause();
    await Future<void>.delayed(const Duration(milliseconds: 10));
    expect((await engine.state()).playing, isTrue);
    c.dispose();
  });

  test('saved mixes: save, apply replaces the mix, delete', () async {
    final c = await launch(focusSounds: false);
    final sounds = c.read(soundsControllerProvider.notifier);
    await sounds.toggle(NatureSound.rain, const {});
    await sounds.toggle(NatureSound.fire, const {});
    final presets = c.read(soundPresetsProvider.notifier);
    expect(await presets.saveCurrent('Cozy'), isTrue);
    await sounds.stop();
    await sounds.toggle(NatureSound.night, const {});
    await presets.apply(c.read(soundPresetsProvider).single, const {});
    expect((await engine.state()).volumes.keys.toSet(), {NatureSound.rain, NatureSound.fire});
    await presets.delete(c.read(soundPresetsProvider).single);
    expect(c.read(soundPresetsProvider), isEmpty);
    c.dispose();
  });
}
