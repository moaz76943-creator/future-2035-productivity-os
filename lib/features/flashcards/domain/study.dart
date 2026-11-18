import 'dart:math' as math;

import '../../../core/text/text_normalizer.dart';

/// How a study session asks each card.
enum StudyMode {
  /// Front → back, self-graded.
  classic,

  /// Back → front, self-graded.
  reverse,

  /// Each card asked in a random but stable direction.
  mixed,

  /// Type the answer; checked exactly / nearly / wrong.
  typed,

  /// Pick the answer among four.
  choice,

  /// The question is spoken first and its text stays hidden until asked.
  listening,
}

/// Which cards a session contains.
enum StudyScope {
  /// Due cards plus today's new cards; ratings update the schedule.
  scheduled,

  /// Every active card in random order; the schedule is not changed.
  practiceAll,

  /// Cards recently answered wrong (lapses or "Again" in the last 14 days).
  practiceMistakes,
}

StudyMode? studyModeFromName(String? s) => StudyMode.values.asNameMap()[s];
StudyScope? studyScopeFromName(String? s) => StudyScope.values.asNameMap()[s];

/// Result of comparing a typed answer with the card.
enum AnswerMatch { exact, close, wrong }

abstract final class StudyRules {
  /// Whether this card is asked back → front in [mode]. Mixed mode derives
  /// the direction from the card id, so it is stable across a session and
  /// after a resume.
  static bool reversed(StudyMode mode, String cardId) => switch (mode) {
    StudyMode.reverse => true,
    StudyMode.mixed => cardId.codeUnits.fold<int>(7, (a, b) => (a * 31 + b) & 0x7fffffff).isOdd,
    _ => false,
  };

  /// Accepted answers: one per line, or separated by `;` / `؛` (several
  /// meanings). Empty parts are ignored.
  static List<String> alternatives(String answer) =>
      answer.split(RegExp(r'[\n;؛]')).map((s) => s.trim()).where((s) => s.isNotEmpty).toList();

  /// Case, accent, Arabic diacritics and punctuation are ignored. A small
  /// spelling slip (edit distance up to 1 per 5 letters, at least 1) is
  /// "close".
  static AnswerMatch check(String typed, String answer) {
    final t = _key(typed);
    if (t.isEmpty) return AnswerMatch.wrong;
    var best = AnswerMatch.wrong;
    for (final alt in alternatives(answer).isEmpty ? [answer] : alternatives(answer)) {
      final a = _key(alt);
      if (a.isEmpty) continue;
      if (a == t) return AnswerMatch.exact;
      final allowed = math.max(1, a.length ~/ 5);
      if (a.length > 2 && _distance(a, t, allowed) <= allowed) best = AnswerMatch.close;
    }
    return best;
  }

  static String _key(String s) =>
      TextNormalizer.normalize(s)
          .replaceAll(RegExp(r'''[\p{P}\p{S}]''', unicode: true), '')
          .replaceAll(RegExp(r'\s+'), ' ')
          .trim();

  /// Levenshtein distance, stopping early once it exceeds [limit].
  static int _distance(String a, String b, int limit) {
    if ((a.length - b.length).abs() > limit) return limit + 1;
    var prev = List<int>.generate(b.length + 1, (i) => i);
    for (var i = 1; i <= a.length; i++) {
      final cur = List<int>.filled(b.length + 1, 0)..[0] = i;
      var rowMin = cur[0];
      for (var j = 1; j <= b.length; j++) {
        final cost = a.codeUnitAt(i - 1) == b.codeUnitAt(j - 1) ? 0 : 1;
        cur[j] = math.min(math.min(cur[j - 1] + 1, prev[j] + 1), prev[j - 1] + cost);
        rowMin = math.min(rowMin, cur[j]);
      }
      if (rowMin > limit) return limit + 1;
      prev = cur;
    }
    return prev[b.length];
  }

  /// Up to four options: the correct answer plus distinct distractors drawn
  /// from [pool] (other cards' answers). Order is shuffled with [random].
  static List<String> choices(String correct, Iterable<String> pool, math.Random random) {
    final seen = {_key(correct)};
    final others = <String>[];
    for (final p in pool.toList()..shuffle(random)) {
      final k = _key(p);
      if (k.isEmpty || !seen.add(k)) continue;
      others.add(p);
      if (others.length == 3) break;
    }
    return [correct, ...others]..shuffle(random);
  }

  /// Text-search key used by the deck filter (same folding as answers).
  static String searchKey(String s) => _key(s);
}
