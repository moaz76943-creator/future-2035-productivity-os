import 'card_extras.dart';

/// One card parsed from pasted or file text.
class ImportedCard {
  const ImportedCard(this.front, this.back, {this.tags = '', this.extras = const CardExtras()});
  final String front;
  final String back;
  final String tags;
  final CardExtras extras;
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

  static ParsedImport parse(String text) {
    final all = rows(text.replaceAll('﻿', ''), detectDelimiter(text));
    if (all.isEmpty) return const ParsedImport([], 0);
    var columns = ['front', 'back', 'tags'];
    var body = all;
    final header = [for (final c in all.first) _headers[c.trim().toLowerCase()]];
    if (header.contains('front') && header.contains('back')) {
      columns = [for (final h in header) h ?? ''];
      body = all.skip(1).toList();
    }
    final cards = <ImportedCard>[];
    var invalid = 0;
    for (final r in body) {
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
