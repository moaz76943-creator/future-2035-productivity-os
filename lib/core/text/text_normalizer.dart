/// Script-aware normalization used for local search.
///
/// * Lower-cases Latin, Cyrillic and other cased scripts.
/// * Strips Latin combining diacritics after decomposing common accented
///   letters (é → e, ç → c, ã → a, ё → е).
/// * Arabic: removes harakat / tatweel, unifies alef variants, ta marbuta
///   and alef maqsura so that "مدرسة" matches "مدرسه".
/// * Devanagari: removes nukta so variants match.
/// * Converts Arabic-Indic and Devanagari digits to Western digits.
/// * Collapses whitespace.
///
/// CJK text is left intact; substring search works on it directly.
abstract final class TextNormalizer {
  static final Map<int, String> _fold = _buildFold();

  static Map<int, String> _buildFold() {
    final m = <int, String>{};
    void add(String from, String to) {
      for (final r in from.runes) {
        m[r] = to;
      }
    }

    add('àáâãäåāăą', 'a');
    add('ÀÁÂÃÄÅĀĂĄ', 'a');
    add('çćĉċč', 'c');
    add('ÇĆĈĊČ', 'c');
    add('ďđ', 'd');
    add('èéêëēĕėęě', 'e');
    add('ÈÉÊËĒĔĖĘĚ', 'e');
    add('ìíîïĩīĭįı', 'i');
    add('ÌÍÎÏĨĪĬĮİ', 'i');
    add('ñńņňŉ', 'n');
    add('ÑŃŅŇ', 'n');
    add('òóôõöøōŏő', 'o');
    add('ÒÓÔÕÖØŌŎŐ', 'o');
    add('ùúûüũūŭůűų', 'u');
    add('ÙÚÛÜŨŪŬŮŰŲ', 'u');
    add('ýÿ', 'y');
    add('ÝŸ', 'y');
    add('śŝşšș', 's');
    add('ŚŜŞŠȘ', 's');
    add('ţťțŧ', 't');
    add('źżž', 'z');
    add('ŹŻŽ', 'z');
    add('ß', 'ss');
    add('œ', 'oe');
    add('æ', 'ae');
    // Cyrillic
    add('ёЁ', 'е');
    // Arabic letter unification
    add('أإآٱ', 'ا');
    add('ة', 'ه');
    add('ى', 'ي');
    add('ؤ', 'و');
    add('ئ', 'ي');
    // Arabic-Indic digits
    const arabicIndic = '٠١٢٣٤٥٦٧٨٩';
    const easternArabicIndic = '۰۱۲۳۴۵۶۷۸۹';
    const devanagari = '०१२३४५६७८९';
    for (var i = 0; i < 10; i++) {
      m[arabicIndic.codeUnitAt(i)] = '$i';
      m[easternArabicIndic.codeUnitAt(i)] = '$i';
      m[devanagari.codeUnitAt(i)] = '$i';
    }
    return m;
  }

  static bool _isRemovable(int r) {
    // Arabic harakat, Quranic marks, tatweel.
    if (r >= 0x064B && r <= 0x065F) return true;
    if (r == 0x0670 || r == 0x0640) return true;
    if (r >= 0x06D6 && r <= 0x06ED) return true;
    // Latin combining diacritics.
    if (r >= 0x0300 && r <= 0x036F) return true;
    // Devanagari nukta.
    if (r == 0x093C) return true;
    // Zero-width & bidi marks.
    if (r == 0x200B || r == 0x200C || r == 0x200D) return true;
    if (r == 0x200E || r == 0x200F || r == 0xFEFF) return true;
    return false;
  }

  static String normalize(String input) {
    if (input.isEmpty) return input;
    final lower = input.toLowerCase();
    final out = StringBuffer();
    var lastWasSpace = false;
    for (final r in lower.runes) {
      if (_isRemovable(r)) continue;
      final isSpace =
          r == 0x20 ||
          r == 0x09 ||
          r == 0x0A ||
          r == 0x0D ||
          r == 0xA0 ||
          r == 0x3000;
      if (isSpace) {
        if (!lastWasSpace && out.isNotEmpty) out.write(' ');
        lastWasSpace = true;
        continue;
      }
      lastWasSpace = false;
      final folded = _fold[r];
      if (folded != null) {
        out.write(folded);
      } else {
        out.writeCharCode(r);
      }
    }
    return out.toString().trimRight();
  }

  /// Converts any non-Western decimal digits to 0-9. Used as a final guard
  /// on formatted strings so every locale displays Western digits.
  static String westernDigits(String input) {
    final out = StringBuffer();
    for (final r in input.runes) {
      if (r >= 0x0660 && r <= 0x0669) {
        out.writeCharCode(0x30 + r - 0x0660);
      } else if (r >= 0x06F0 && r <= 0x06F9) {
        out.writeCharCode(0x30 + r - 0x06F0);
      } else if (r >= 0x0966 && r <= 0x096F) {
        out.writeCharCode(0x30 + r - 0x0966);
      } else {
        out.writeCharCode(r);
      }
    }
    return out.toString();
  }
}
