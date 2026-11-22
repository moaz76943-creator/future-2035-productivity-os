import 'world_languages.dart';

/// Language to speak [text] in. A language chosen for the deck wins; when the
/// deck has none ([tag] empty) the script of the text decides, so Arabic words
/// are read by an Arabic voice and English words by an English one even in a
/// deck that was never set up. Latin text uses the app language when it is
/// written in Latin letters, otherwise English.
String resolveSpeechTag(String text, String tag, String appTag) {
  if (tag.isNotEmpty) return tag;
  final byScript = _scriptLanguage(text);
  if (byScript != null && byScript != 'latin') return byScript;
  const latin = {'en', 'es', 'fr', 'pt'};
  final app = languageCode(appTag);
  return latin.contains(app) ? appTag : 'en';
}

String? _scriptLanguage(String text) {
  final counts = <String, int>{};
  for (final r in text.runes) {
    final lang = _langOf(r);
    if (lang != null) counts[lang] = (counts[lang] ?? 0) + 1;
  }
  if (counts.isEmpty) return null;
  return counts.entries.reduce((a, b) => a.value >= b.value ? a : b).key;
}

String? _langOf(int r) {
  if (r >= 0x0600 && r <= 0x06FF || r >= 0x0750 && r <= 0x077F || r >= 0xFB50 && r <= 0xFDFF) {
    return 'ar';
  }
  if (r >= 0x0400 && r <= 0x04FF) return 'ru';
  if (r >= 0x0900 && r <= 0x097F) return 'hi';
  if (r >= 0x3040 && r <= 0x30FF) return 'ja';
  if (r >= 0xAC00 && r <= 0xD7AF) return 'ko';
  if (r >= 0x4E00 && r <= 0x9FFF) return 'zh';
  if (r >= 0x0E00 && r <= 0x0E7F) return 'th';
  if (r >= 0x0370 && r <= 0x03FF) return 'el';
  if (r >= 0x41 && r <= 0x5A || r >= 0x61 && r <= 0x7A || r >= 0xC0 && r <= 0x24F) return 'latin';
  return null;
}
