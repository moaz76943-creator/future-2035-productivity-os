import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/speech_language.dart';

void main() {
  test('a language set on the deck always wins', () {
    expect(resolveSpeechTag('hello', 'de-DE', 'ar'), 'de-DE');
  });

  test('script decides when the deck has no language', () {
    expect(resolveSpeechTag('مرحباً', '', 'en'), 'ar');
    expect(resolveSpeechTag('Привет', '', 'en'), 'ru');
    expect(resolveSpeechTag('你好', '', 'en'), 'zh');
    expect(resolveSpeechTag('こんにちは', '', 'en'), 'ja');
    expect(resolveSpeechTag('안녕', '', 'en'), 'ko');
    expect(resolveSpeechTag('नमस्ते', '', 'en'), 'hi');
  });

  test('Latin text: app language when it is Latin, otherwise English', () {
    expect(resolveSpeechTag('hello', '', 'ar'), 'en');
    expect(resolveSpeechTag('hola', '', 'es'), 'es');
    expect(resolveSpeechTag('123', '', 'fr'), 'fr');
  });
}
