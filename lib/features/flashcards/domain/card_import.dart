import 'card_extras.dart';

/// One card parsed from pasted or file text.
class ImportedCard {
  const ImportedCard(
    this.front,
    this.back, {
    this.tags = '',
    this.extras = const CardExtras(),
    this.custom = const {},
  });
  final String front;
  final String back;
  final String tags;
  final CardExtras extras;

  /// Custom field values keyed by field id (JSON deck format only).
  final Map<String, String> custom;
}

/// Parsed rows before import, with a suggested field for each column.
class ImportPreview {
  const ImportPreview({required this.rows, required this.columns, required this.hasHeader});
  final List<List<String>> rows;
  final List<String> columns;

  /// The first row holds column names and is not imported.
  final bool hasHeader;

  List<List<String>> get body => hasHeader ? rows.skip(1).toList() : rows;
}

/// Result of parsing: the cards plus how many lines were unusable.
class ParsedImport {
  const ParsedImport(this.cards, this.invalid);
  final List<ImportedCard> cards;
  final int invalid;
}

/// CSV / TSV / semicolon text → cards.
///
/// * The delimiter is detected from the first non-empty line (tab, then `;`,
///   then `,`).
/// * Quoted fields (`"a, b"`, doubled `""` quotes, line breaks inside quotes)
///   follow RFC 4180.
/// * A first row whose cells are column names (front/back/question/answer/
///   tags/example/explanation/pronunciation/notes, also in Arabic) is used as
///   a header; otherwise columns are front, back, tags.
abstract final class CardImportParser {
  static const maxCards = 20000;
  static const maxFieldChars = 4000;

  static const _headers = {
    'front': 'front',
    'question': 'front',
    'term': 'front',
    'word': 'front',
    'الوجه': 'front',
    'السؤال': 'front',
    'الكلمة': 'front',
    'back': 'back',
    'answer': 'back',
    'definition': 'back',
    'meaning': 'back',
    'الخلف': 'back',
    'الجواب': 'back',
    'الإجابة': 'back',
    'المعنى': 'back',
    'tags': 'tags',
    'tag': 'tags',
    'الوسوم': 'tags',
    'example': 'example',
    'مثال': 'example',
    'explanation': 'explanation',
    'شرح': 'explanation',
    'pronunciation': 'pronunciation',
    'النطق': 'pronunciation',
    'notes': 'notes',
    'note': 'notes',
    'ملاحظات': 'notes',
  };

  static String detectDelimiter(String text) {
    final first = text.split('\n').firstWhere((l) => l.trim().isNotEmpty, orElse: () => '');
    if (first.contains('\t')) return '\t';
    if (first.contains(';')) return ';';
    return ',';
  }

  static List<List<String>> rows(String text, String delimiter) {
    final out = <List<String>>[];
    var row = <String>[];
    final field = StringBuffer();
    var quoted = false;
    var i = 0;
    void endField() {
      row.add(field.toString());
      field.clear();
    }

    void endRow() {
      endField();
      if (row.any((c) => c.trim().isNotEmpty)) out.add(row);
      row = <String>[];
    }

    while (i < text.length) {
      final ch = text[i];
      if (quoted) {
        if (ch == '"') {
          if (i + 1 < text.length && text[i + 1] == '"') {
            field.write('"');
            i += 2;
            continue;
          }
          quoted = false;
        } else {
          field.write(ch);
        }
      } else if (ch == '"' && field.isEmpty) {
        quoted = true;
      } else if (ch == delimiter) {
        endField();
      } else if (ch == '\n') {
        endRow();
      } else if (ch != '\r') {
        field.write(ch);
      }
      i++;
      if (out.length > maxCards + 1) break;
    }
    if (field.isNotEmpty || row.isNotEmpty) endRow();
    return out;
  }

  /// Splits the text into rows and suggests a column → field mapping.
  static ImportPreview preview(String text) {
    final delimiter = detectDelimiter(text);
    final all = rows(text.replaceAll('\uFEFF', ''), delimiter);
    if (all.isEmpty) return ImportPreview(rows: const [], columns: const [], hasHeader: false);
    final normalized = [
      for (var r in all)
        // Pasted lists often mix separators line by line ("a<TAB>b", "c;d").
        if (r.length == 1) _splitMixed(r, delimiter) else r,
    ];
    final width = normalized.fold<int>(0, (m, r) => r.length > m ? r.length : m);
    final header = [for (final c in normalized.first) _headers[c.trim().toLowerCase()]];
    final hasHeader = header.contains('front') && header.contains('back');
    final columns = hasHeader
        ? [for (var i = 0; i < width; i++) i < header.length ? (header[i] ?? '') : '']
        : [
            for (var i = 0; i < width; i++) i < 3 ? const ['front', 'back', 'tags'][i] : '',
          ];
    return ImportPreview(rows: normalized, columns: columns, hasHeader: hasHeader);
  }

  static List<String> _splitMixed(List<String> r, String delimiter) {
    for (final alt in const ['\t', ';']) {
      if (alt != delimiter && r.first.contains(alt)) {
        final i = r.first.indexOf(alt);
        return [r.first.substring(0, i), r.first.substring(i + 1)];
      }
    }
    return r;
  }

  /// Cards from [rows] using [columns] (one field name per column, '' to
  /// ignore). Rows without a front or back are counted as invalid.
  static ParsedImport build(List<List<String>> rows, List<String> columns) {
    final cards = <ImportedCard>[];
    var invalid = 0;
    for (final r in rows) {
      String cell(String name) {
        final i = columns.indexOf(name);
        if (i < 0 || i >= r.length) return '';
        final v = r[i].trim();
        return v.length > maxFieldChars ? v.substring(0, maxFieldChars) : v;
      }

      final front = cell('front'), back = cell('back');
      if (front.isEmpty || back.isEmpty) {
        invalid++;
        continue;
      }
      if (cards.length >= maxCards) break;
      cards.add(
        ImportedCard(
          front,
          back,
          tags: cell('tags'),
          extras: CardExtras({
            for (final f in CardField.values)
              if (cell(f.name).isNotEmpty) f: cell(f.name),
          }),
        ),
      );
    }
    return ParsedImport(cards, invalid);
  }

  static ParsedImport parse(String text) {
    final p = preview(text);
    return build(p.hasHeader ? p.rows.skip(1).toList() : p.rows, p.columns);
  }

  /// Fields a column can map to ('' = ignore).
  static const fields = [
    'front',
    'back',
    'tags',
    'example',
    'explanation',
    'pronunciation',
    'notes',
    '',
  ];

  /// CSV cell for export. Text that a spreadsheet would run as a formula
  /// (leading `= + - @`, tab or carriage return) gets a leading apostrophe.
  static String csvCell(String v) {
    var s = v;
    if (RegExp(r'^[\s]*[=+\-@\t\r]').hasMatch(s) && double.tryParse(s.trim()) == null) {
      s = "'$s";
    }
    if (s.contains(RegExp(r'[",\n\r]'))) s = '"${s.replaceAll('"', '""')}"';
    return s;
  }
}
