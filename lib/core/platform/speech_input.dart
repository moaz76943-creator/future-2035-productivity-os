import 'dart:io';

import 'package:flutter/services.dart';

/// Result of asking the phone to turn speech into text.
sealed class SpeechResult {
  const SpeechResult();
}

class SpeechText extends SpeechResult {
  const SpeechText(this.text);
  final String text;
}

/// The user closed the recognizer or nothing was heard.
class SpeechCancelled extends SpeechResult {
  const SpeechCancelled();
}

/// No speech recognizer on this phone.
class SpeechUnavailable extends SpeechResult {
  const SpeechUnavailable();
}

/// Voice typing through the phone's own speech recognizer screen. The app
/// itself never records: the system screen asks for the microphone.
abstract class SpeechInputPlatform {
  /// [languageTag] like "ar" or "en-US"; null = the phone's language.
  Future<SpeechResult> listen({String? languageTag, String? prompt});

  static SpeechInputPlatform create() =>
      Platform.isAndroid ? const ChannelSpeechInput() : MemorySpeechInput();
}

class ChannelSpeechInput implements SpeechInputPlatform {
  const ChannelSpeechInput();
  static const _c = MethodChannel('future_os/speech_input');

  @override
  Future<SpeechResult> listen({String? languageTag, String? prompt}) async {
    try {
      final r = await _c.invokeMethod<Object?>('listen', {'lang': languageTag, 'prompt': prompt});
      return switch (r) {
        'unavailable' => const SpeechUnavailable(),
        final String t when t.trim().isNotEmpty => SpeechText(t.trim()),
        _ => const SpeechCancelled(),
      };
    } on Object {
      return const SpeechUnavailable();
    }
  }
}

/// Tests and desktop: answers with [next].
class MemorySpeechInput implements SpeechInputPlatform {
  SpeechResult next = const SpeechUnavailable();
  String? lastLanguage;

  @override
  Future<SpeechResult> listen({String? languageTag, String? prompt}) async {
    lastLanguage = languageTag;
    return next;
  }
}
