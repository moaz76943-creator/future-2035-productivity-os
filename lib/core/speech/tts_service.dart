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
  });

  /// Voices installed on the device (empty when there is no engine).
  Future<List<TtsVoice>> voices();
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
      });
      return switch (code) {
        'ok' => TtsResult.ok,
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
