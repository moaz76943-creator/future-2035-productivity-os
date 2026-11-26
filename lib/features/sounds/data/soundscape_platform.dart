import 'dart:async';

import 'package:flutter/services.dart';

import '../domain/nature_sound.dart';

/// Commands for the native nature-sound engine. The in-memory implementation
/// is used where no engine exists (tests, other platforms).
abstract interface class SoundscapePlatform {
  /// Engine state changes, including those made from the notification.
  Stream<SoundMix> get states;

  /// False when the mix is full ([maxSoundsInMix]).
  Future<bool> setVolume(NatureSound sound, double volume);

  /// [labels]: translated notification texts. Returns whether it plays.
  Future<bool> play(Map<String, String> labels);
  Future<void> pause();
  Future<void> stop();
  Future<void> sleep(int minutes);
  Future<SoundMix> state();

  /// Opens the phone's file picker for an audio file. True when one was chosen.
  Future<bool> pickMusic();
  Future<void> clearMusic();
  Future<void> setMusicVolume(double volume);
}

class ChannelSoundscape implements SoundscapePlatform {
  const ChannelSoundscape();

  static const _methods = MethodChannel('future_os/soundscape');
  static const _events = EventChannel('future_os/soundscape/state');

  @override
  Stream<SoundMix> get states => _events.receiveBroadcastStream().map(
    (e) => e is Map ? SoundMix.fromState(e) : const SoundMix(),
  );

  Future<T?> _call<T>(String method, [Map<String, Object?>? args]) async {
    try {
      return await _methods.invokeMethod<T>(method, args);
    } on MissingPluginException {
      return null;
    } on PlatformException {
      return null;
    }
  }

  @override
  Future<bool> setVolume(NatureSound sound, double volume) async =>
      await _call<bool>('setVolume', {'id': sound.name, 'volume': volume}) ?? false;

  @override
  Future<bool> play(Map<String, String> labels) async =>
      await _call<bool>('play', {'labels': labels}) ?? false;

  @override
  Future<void> pause() => _call<void>('pause');

  @override
  Future<void> stop() => _call<void>('stop');

  @override
  Future<void> sleep(int minutes) => _call<void>('sleep', {'minutes': minutes});

  @override
  Future<bool> pickMusic() async => await _call<bool>('pickMusic') ?? false;

  @override
  Future<void> clearMusic() => _call<void>('clearMusic');

  @override
  Future<void> setMusicVolume(double volume) => _call<void>('setMusicVolume', {'volume': volume});

  @override
  Future<SoundMix> state() async {
    final m = await _call<Map<Object?, Object?>>('state');
    return m == null ? const SoundMix() : SoundMix.fromState(m);
  }
}

/// Engine stand-in with the same rules (max sounds, volume 0 removes).
class MemorySoundscape implements SoundscapePlatform {
  final _controller = StreamController<SoundMix>.broadcast();
  SoundMix _mix = const SoundMix();
  final calls = <String>[];

  void _emit(SoundMix m) {
    _mix = m;
    _controller.add(m);
  }

  @override
  Stream<SoundMix> get states => _controller.stream;

  @override
  Future<bool> setVolume(NatureSound sound, double volume) async {
    calls.add('setVolume:${sound.name}:${volume.toStringAsFixed(2)}');
    final v = {..._mix.volumes};
    if (volume <= 0) {
      v.remove(sound);
    } else {
      if (!v.containsKey(sound) && v.length >= maxSoundsInMix) return false;
      v[sound] = volume;
    }
    _emit(_mix.copyWith(volumes: v, playing: v.isEmpty && _mix.music == null ? false : null));
    return true;
  }

  @override
  Future<bool> play(Map<String, String> labels) async {
    calls.add('play');
    if (_mix.isSilent) return false;
    _emit(_mix.copyWith(playing: true));
    return true;
  }

  @override
  Future<void> pause() async {
    calls.add('pause');
    _emit(_mix.copyWith(playing: false));
  }

  @override
  Future<void> stop() async {
    calls.add('stop');
    _emit(SoundMix(music: _mix.music));
  }

  /// Name the fake picker returns; null behaves like a cancelled picker.
  String? nextPick = 'My track';

  @override
  Future<bool> pickMusic() async {
    calls.add('pickMusic');
    final name = nextPick;
    if (name == null) return false;
    _emit(_mix.copyWith(music: MusicPick(name: name)));
    return true;
  }

  @override
  Future<void> clearMusic() async {
    calls.add('clearMusic');
    final silent = _mix.volumes.isEmpty;
    _emit(_mix.copyWith(clearMusic: true, playing: silent ? false : null));
  }

  @override
  Future<void> setMusicVolume(double volume) async {
    calls.add('setMusicVolume:${volume.toStringAsFixed(2)}');
    final m = _mix.music;
    if (m != null) {
      _emit(
        _mix.copyWith(
          music: MusicPick(name: m.name, volume: volume),
        ),
      );
    }
  }

  @override
  Future<void> sleep(int minutes) async {
    calls.add('sleep:$minutes');
    _emit(_mix.copyWith(sleepRemaining: Duration(minutes: minutes)));
  }

  @override
  Future<SoundMix> state() async => _mix;

  Future<void> close() => _controller.close();
}
