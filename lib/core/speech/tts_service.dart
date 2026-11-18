import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Result of a speak request. Text-to-speech is optional: callers show a
/// message for anything but [ok] and the feature keeps working without it.
enum TtsResult { ok, unavailable, languageUnavailable, empty }

abstract interface class TtsService {
  Future<TtsResult> speak(String text, {String? languageTag, double rate, double pitch});
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
  }) async {
    if (text.trim().isEmpty) return TtsResult.empty;
    try {
      final code = await _channel.invokeMethod<String>('speak', {
        'text': text,
        'languageTag': languageTag,
        'rate': rate,
        'pitch': pitch,
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
