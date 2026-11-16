import '../../../core/text/text_normalizer.dart';

/// Pure, deterministic extraction of tasks and flashcards from note text.
/// Nothing here touches the network or storage.
abstract final class TaskExtractor {
  /// Action markers that start a task line when followed by a colon
  /// (":" or full-width "：") or a dash. Matching ignores case and
  /// diacritics. One list for all 8 supported languages.
  static const markers = <String>[
    // English
    'todo', 'to do', 'to-do', 'action',
    // Arabic
    'مهمة', 'للتنفيذ', 'مطلوب',
    // Chinese
    '待办', '待辦', '任务',
    // Spanish
    'pendiente', 'tarea', 'por hacer',
    // Russian
    'сделать', 'задача',
    // French
    'à faire', 'tâche',
    // Portuguese (Brazil)
    'a fazer', 'tarefa', 'fazer',
    // Hindi
    'करना है', 'कार्य',
  ];

  static final _checkbox = RegExp(r'^\s*(?:[-*+•]\s*)?\[ \]\s+(.+)$');
  static final _bullet = RegExp(r'^\s*(?:[-*+•]\s+|\d+[.)]\s+)?');
  static final _sep = RegExp(r'^\s*(?:[:：]|-\s|–\s|—\s)\s*');

  static List<String> _normalizedMarkers() =>
      [for (final m in markers) TextNormalizer.normalize(m)]
        ..sort((a, b) => b.length.compareTo(a.length));

  /// Returns task titles found in [body], in order, without duplicates.
  ///
  /// Recognized lines:
  /// * unchecked Markdown checkboxes: `- [ ] Call the bank`
  /// * lines starting with an action marker: `TODO: Call the bank`,
  ///   `مهمة: الاتصال بالبنك`, `À faire : appeler la banque`.
  static List<String> extract(String body) {
    final out = <String>[];
    final seen = <String>{};
    final norm = _normalizedMarkers();
    void add(String raw) {
      var t = raw.trim();
      if (t.isEmpty) return;
      if (t.length > 500) t = t.substring(0, 500).trim();
      if (seen.add(TextNormalizer.normalize(t))) out.add(t);
    }

    for (final line in body.split(RegExp(r'\r?\n'))) {
      final cb = _checkbox.firstMatch(line);
      if (cb != null) {
        add(cb.group(1)!);
        continue;
      }
      final rest = line.substring(_bullet.firstMatch(line)!.end);
      final t = _matchMarker(rest, norm);
      if (t != null) add(t);
    }
    return out;
  }

  /// If [line] starts with a marker followed by a separator, returns the
  /// remainder.
  static String? _matchMarker(String line, List<String> normalizedMarkers) {
    // Compare a normalized prefix of growing length; markers are short so
    // checking up to the first separator character is enough.
    for (var end = 1; end <= line.length && end <= 24; end++) {
      final prefix = TextNormalizer.normalize(line.substring(0, end));
      if (!normalizedMarkers.contains(prefix)) continue;
      final after = line.substring(end);
      final sep = _sep.firstMatch(after);
      if (sep == null) continue;
      final rest = after.substring(sep.end).trim();
      if (rest.isNotEmpty) return rest;
    }
    return null;
  }
}

class CardDraft {
  const CardDraft(this.front, this.back);
  final String front;
  final String back;

  @override
  bool operator ==(Object other) =>
      other is CardDraft && other.front == front && other.back == back;

  @override
  int get hashCode => Object.hash(front, back);

  @override
  String toString() => 'CardDraft($front | $back)';
}

abstract final class CardExtractor {
  /// Question / answer prefixes per language (normalized comparison).
  static const questionPrefixes = <String>[
    'q',
    'question',
    'س',
    'سؤال',
    '问',
    '問',
    'p',
    'pregunta',
    'pergunta',
    'в',
    'вопрос',
    'प्र',
    'प्रश्न',
  ];
  static const answerPrefixes = <String>[
    'a',
    'answer',
    'ج',
    'جواب',
    'الجواب',
    '答',
    'r',
    'respuesta',
    'réponse',
    'resposta',
    'о',
    'ответ',
    'उ',
    'उत्तर',
  ];

  static const maxTermLength = 120;

  static final _bullet = RegExp(r'^\s*(?:[-*+•]\s+|\d+[.)]\s+)?');
  static final _prefixed = RegExp(r'^([^:：]{1,12})[:：]\s*(.*)$');
  static final _dash = RegExp(r'^(.+?)\s+[—–-]\s+(.+)$');
  static final _colon = RegExp(r'^([^:：]+?)\s*(?::\s+|：\s*)(.+)$');
  static final _url = RegExp(r'^[a-z][a-z0-9+.-]*://', caseSensitive: false);

  static bool _isOneOf(String raw, List<String> options) {
    final n = TextNormalizer.normalize(raw.trim());
    return options.any((o) => TextNormalizer.normalize(o) == n);
  }

  /// Finds flashcards in [body]:
  /// * `Q: question` followed (on a later non-empty line) by `A: answer`
  /// * `term — definition` (em dash, en dash or spaced hyphen)
  /// * `term: definition`
  /// Headings, checkboxes, task-marker lines and URLs are skipped.
  static List<CardDraft> extract(String body) {
    final out = <CardDraft>[];
    final seen = <String>{};
    void add(String f, String b) {
      final front = f.trim(), back = b.trim();
      if (front.isEmpty || back.isEmpty) return;
      if (seen.add('${TextNormalizer.normalize(front)}\u0000${TextNormalizer.normalize(back)}')) {
        out.add(CardDraft(front, back));
      }
    }

    String? pendingQuestion;
    for (final raw in body.split(RegExp(r'\r?\n'))) {
      if (raw.trim().isEmpty) continue;
      final trimmed = raw.trim();
      if (trimmed.startsWith('#') || trimmed.startsWith('>')) {
        pendingQuestion = null;
        continue;
      }
      final line = raw.substring(_bullet.firstMatch(raw)!.end).trim();
      if (line.startsWith('[ ]') || line.startsWith('[x]') || line.startsWith('[X]')) {
        pendingQuestion = null;
        continue;
      }

      final p = _prefixed.firstMatch(line);
      if (p != null && _isOneOf(p.group(1)!, questionPrefixes)) {
        pendingQuestion = p.group(2)!.trim();
        if (pendingQuestion.isEmpty) pendingQuestion = null;
        continue;
      }
      if (p != null && _isOneOf(p.group(1)!, answerPrefixes)) {
        if (pendingQuestion != null) add(pendingQuestion, p.group(2)!);
        pendingQuestion = null;
        continue;
      }
      pendingQuestion = null;

      if (TaskExtractor.extract(line).isNotEmpty) continue;
      if (_url.hasMatch(line)) continue;

      final d = _dash.firstMatch(line);
      if (d != null && d.group(1)!.trim().length <= maxTermLength) {
        add(d.group(1)!, d.group(2)!);
        continue;
      }
      final c = _colon.firstMatch(line);
      if (c != null && c.group(1)!.trim().length <= maxTermLength && !_url.hasMatch(c.group(2)!)) {
        add(c.group(1)!, c.group(2)!);
      }
    }
    return out;
  }
}
