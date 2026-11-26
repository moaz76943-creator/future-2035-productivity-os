import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core_providers.dart';
import '../../notifications/application/notification_providers.dart';
import '../data/soundscape_platform.dart';
import '../domain/nature_sound.dart';

/// The native engine on Android; an in-memory stand-in elsewhere (tests,
/// desktop) so the screen still behaves the same.
final soundscapePlatformProvider = Provider<SoundscapePlatform>((ref) {
  if (Platform.isAndroid) return const ChannelSoundscape();
  final memory = MemorySoundscape();
  ref.onDispose(memory.close);
  return memory;
});

final soundsControllerProvider = NotifierProvider<SoundsController, SoundMix>(SoundsController.new);

/// Default volume for a sound that is switched on.
const defaultSoundVolume = 0.7;

/// The current mix. Mirrors the engine (which may also be changed from the
/// notification) and remembers the last mix so it is ready next time.
class SoundsController extends Notifier<SoundMix> {
  static const _savedKey = 'sounds.mix';
  StreamSubscription<SoundMix>? _sub;

  SoundscapePlatform get _platform => ref.read(soundscapePlatformProvider);

  @override
  SoundMix build() {
    _sub = _platform.states.listen((m) {
      if (ref.mounted) state = m;
    });
    ref.onDispose(() => _sub?.cancel());
    unawaited(_restore());
    return const SoundMix();
  }

  Future<void> _restore() async {
    final current = await _platform.state();
    if (!ref.mounted) return;
    if (!current.isSilent) {
      state = current; // still playing from before, or own audio chosen (service kept running)
      return;
    }
    final saved = SoundMix.decodeVolumes(await ref.read(databaseProvider).readValue(_savedKey));
    for (final e in saved.entries) {
      await _platform.setVolume(e.key, e.value);
    }
    if (ref.mounted && saved.isNotEmpty) state = await _platform.state();
  }

  Future<void> _save() async {
    final db = ref.read(databaseProvider);
    if (state.isEmpty) {
      await db.deleteValue(_savedKey);
    } else {
      await db.writeValue(_savedKey, state.encodeVolumes());
    }
  }

  /// Switches a sound on (and starts playing) or off.
  /// Returns false when the mix is already full.
  Future<bool> toggle(NatureSound sound, Map<String, String> labels) async {
    if (state.contains(sound)) {
      await _platform.setVolume(sound, 0);
      await _sync();
      await _save();
      return true;
    }
    if (!await _platform.setVolume(sound, defaultSoundVolume)) return false;
    await _askNotificationsOnce();
    await _platform.play(labels);
    await _sync();
    await _save();
    return true;
  }

  /// Live volume change (slider drag). Call [commit] when the drag ends.
  Future<void> setVolume(NatureSound sound, double volume) async {
    final v = volume.clamp(0.05, 1.0);
    state = state.copyWith(volumes: {...state.volumes, sound: v});
    await _platform.setVolume(sound, v);
  }

  Future<void> commit() => _save();

  /// Android 13+: without notification permission the playback controls
  /// (pause / stop from the shade) are invisible. Asked once, on first play.
  Future<void> _askNotificationsOnce() async {
    const key = 'sounds.askedNotifications';
    final db = ref.read(databaseProvider);
    if (await db.readValue(key) != null) return;
    await db.writeValue(key, '1');
    try {
      await ref.read(notificationServiceProvider).requestPermission();
    } on Exception {
      // Playback works without it; only the shade controls are hidden.
    }
  }

  Future<void> playPause(Map<String, String> labels) async {
    // The engine is the truth: the notification, headphones or a call may have changed it.
    if ((await _platform.state()).playing) {
      await _platform.pause();
    } else {
      await _platform.play(labels);
    }
    await _sync();
  }

  /// Replaces the mix with [volumes] and plays it (saved mixes, focus link).
  Future<void> playMix(Map<NatureSound, double> volumes, Map<String, String> labels) async {
    for (final s in state.volumes.keys.where((s) => !volumes.containsKey(s)).toList()) {
      await _platform.setVolume(s, 0);
    }
    for (final e in volumes.entries) {
      await _platform.setVolume(e.key, e.value);
    }
    await _platform.play(labels);
    await _sync();
    await _save();
  }

  /// Pauses without changing the mix (focus link).
  Future<void> pause() async {
    if (!(await _platform.state()).playing) return;
    await _platform.pause();
    await _sync();
  }

  /// Chooses an audio file from the phone and plays it under the mix.
  Future<bool> pickMusic(Map<String, String> labels) async {
    final ok = await _platform.pickMusic();
    if (ok) {
      await _askNotificationsOnce();
      await _platform.play(labels);
    }
    await _sync();
    return ok;
  }

  Future<void> clearMusic() async {
    await _platform.clearMusic();
    await _sync();
  }

  Future<void> setMusicVolume(double volume) async {
    await _platform.setMusicVolume(volume);
    await _sync();
  }

  /// Stops and empties the mix (the chosen music stays chosen).
  Future<void> stop() async {
    await _platform.stop();
    state = SoundMix(music: state.music);
    await _save();
  }

  Future<void> sleep(int minutes) async {
    await _platform.sleep(minutes);
    await _sync();
  }

  Future<void> _sync() async {
    final m = await _platform.state();
    if (ref.mounted) state = m;
  }
}
