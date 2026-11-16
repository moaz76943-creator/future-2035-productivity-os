import '../../../core/text/text_normalizer.dart';

/// Finds where a query matches inside original text using the same
/// normalization as search ([TextNormalizer]): case, Latin accents,
/// Arabic diacritics and hamza/alef variants are ignored. Returned ranges
/// are UTF-16 offsets into the original text, `[start, end)`, so they can
/// be used directly for `TextSpan`s.
abstract final class MatchHighlighter {
  static bool _isSpace(int r) =>
      r == 0x20 || r == 0x09 || r == 0x0A || r == 0x0D || r == 0xA0 || r == 0x3000;

  static List<(int, int)> ranges(String text, String query) {
    final q = TextNormalizer.normalize(query.trim());
    if (q.isEmpty || text.isEmpty) return const [];

    // Build the normalized text alongside a map from each normalized code
    // unit to the [start, end) of the original rune that produced it.
    final norm = StringBuffer();
    final origStart = <int>[];
    final origEnd = <int>[];
    var i = 0;
    var lastWasSpace = true; // leading whitespace is dropped
    final runes = text.runes.toList();
    // Code-unit offset → rune index.
    final runeAt = <int, int>{};
    for (var ri = 0; ri < runes.length; ri++) {
      final r = runes[ri];
      runeAt[i] = ri;
      final len = r > 0xFFFF ? 2 : 1;
      if (_isSpace(r)) {
        if (!lastWasSpace) {
          norm.write(' ');
          origStart.add(i);
          origEnd.add(i + len);
        }
        lastWasSpace = true;
      } else {
        final piece = TextNormalizer.normalize(String.fromCharCode(r));
        for (var k = 0; k < piece.length; k++) {
          origStart.add(i);
          origEnd.add(i + len);
        }
        norm.write(piece);
        if (piece.isNotEmpty) lastWasSpace = false;
      }
      i += len;
    }
    final n = norm.toString();

    final out = <(int, int)>[];
    var from = 0;
    while (true) {
      final at = n.indexOf(q, from);
      if (at < 0) break;
      final s = origStart[at];
      var e = origEnd[at + q.length - 1];
      // Keep trailing combining marks / harakat attached to the match.
      var ri = runeAt[e];
      while (ri != null && ri < runes.length) {
        final next = runes[ri];
        if (_isSpace(next) || TextNormalizer.normalize(String.fromCharCode(next)).isNotEmpty) {
          break;
        }
        e += next > 0xFFFF ? 2 : 1;
        ri++;
      }
      if (out.isNotEmpty && s <= out.last.$2) {
        out[out.length - 1] = (out.last.$1, e);
      } else {
        out.add((s, e));
      }
      from = at + q.length;
    }
    return out;
  }
}
