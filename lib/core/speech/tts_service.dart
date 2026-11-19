import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Result of a speak request. Text-to-speech is optional: callers show a
/// message for anything but [ok] and the feature keeps working without it.
enum TtsResult { ok, unavailable, languageUnavailable, empty }

/// A voice installed on the device.
class TtsVoice {
  const TtsVoice({
    required this.name,
    required this.localeTag,
    this.network = false,
    this.notInstalled = false,
  });
  final String name;
  final String localeTag;

  /// Needs an internet connection (cloud voice of the engine).
  final bool network;

  /// Listed by the engine but its data is not downloaded yet.
  final bool notInstalled;

  String get language => localeTag.split(RegExp('[-_]')).first.toLowerCase();
}

abstract interface class TtsService {
  Future<TtsResult> speak(
    String text, {
    String? languageTag,
    double rate,
    double pitch,
    int repeat,
    String? voice,
    int pauseMs,
    bool awaitDone,
  });

  /// Voices installed on the device (empty when there is no engine).
  Future<List<TtsVoice>> voices();

  /// Language tags the phone's engine can speak (installed data).
  Future<List<String>> languages();

  /// Opens the phone's speech settings (to download more languages).
  Future<bool> openSettings();
  Future<void> stop();
}

/// Native Android TextToSpeech through the `future_os/tts` channel
/// (MainActivity.kt). No network, no paid service.
class PlatformTtsService implements TtsService {
  const PlatformTtsService([this._channel = const MethodChannel('future_os/tts')]);
  final MethodChannel _channel;

  @override
  Future<TtsResult> speak(
    String text, {
    String? languageTag,
    double rate = 1.0,
    double pitch = 1.0,
    int repeat = 1,
    String? voice,
    int pauseMs = 700,
    bool awaitDone = false,
  }) async {
    if (text.trim().isEmpty) return TtsResult.empty;
    try {
      final code = await _channel.invokeMethod<String>('speak', {
        'text': text,
        'languageTag': languageTag,
        'rate': rate,
        'pitch': pitch,
        'repeat': repeat.clamp(1, 9),
        'voice': voice,
        'pauseMs': pauseMs.clamp(0, 10000),
        'await': awaitDone,
      });
      return switch (code) {
        // "stopped": interrupted by stop() or a newer request; callers that
        // wait (listen mode) check their own state afterwards.
        'ok' || 'stopped' => TtsResult.ok,
        'language_unavailable' => TtsResult.languageUnavailable,
        'empty' => TtsResult.empty,
        _ => TtsResult.unavailable,
      };
    } on MissingPluginException {
      return TtsResult.unavailable; // Platforms without the channel (tests, desktop).
    } on PlatformException {
      return TtsResult.unavailable;
    }
  }

  @override
  Future<List<TtsVoice>> voices() async {
    try {
      final raw = await _channel.invokeListMethod<Map<Object?, Object?>>('voices') ?? const [];
      return [
        for (final m in raw)
          if (m['name'] case final String name)
            TtsVoice(
              name: name,
              localeTag: '${m['locale'] ?? ''}',
              network: m['network'] == true,
              notInstalled: m['notInstalled'] == true,
            ),
      ];
    } on MissingPluginException {
      return const [];
    } on PlatformException {
      return const [];
    }
  }

  @override
  Future<List<String>> languages() async {
    try {
      return await _channel.invokeListMethod<String>('languages') ?? const [];
    } on MissingPluginException {
      return const [];
    } on PlatformException {
      return const [];
    }
  }

  @override
  Future<bool> openSettings() async {
    try {
      return await _channel.invokeMethod<bool>('openSettings') ?? false;
    } on MissingPluginException {
      return false;
    } on PlatformException {
      return false;
    }
  }

  @override
  Future<void> stop() async {
    try {
      await _channel.invokeMethod<void>('stop');
    } on MissingPluginException {
      // Nothing is speaking.
    } on PlatformException {
      // Engine gone; nothing to stop.
    }
  }
}

final ttsServiceProvider = Provider<TtsService>((ref) => const PlatformTtsService());
