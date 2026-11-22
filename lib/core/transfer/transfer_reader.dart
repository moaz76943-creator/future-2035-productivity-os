import 'dart:convert';
import 'dart:typed_data';

import '../files/zip_reader.dart';
import 'transfer_model.dart';

/// What a picked file contains.
enum PickedKind { xlsx, docx, pdf, text, unknown }

/// Reads picked files: rows from Excel/CSV/a Word table, or blocks from a
/// Word document. Text files are returned as text.
abstract final class TransferReader {
  static PickedKind sniff(Uint8List b) {
    final pdf = b.length >= 4 && b[0] == 0x25 && b[1] == 0x50 && b[2] == 0x44 && b[3] == 0x46;
    if (pdf) return PickedKind.pdf;
    final zip = ZipReader.open(b);
    if (zip != null) {
      if (zip.has('xl/workbook.xml')) return PickedKind.xlsx;
      if (zip.has('word/document.xml')) return PickedKind.docx;
      return PickedKind.unknown;
    }
    return PickedKind.text;
  }

  static String text(Uint8List b) {
    final start = b.length >= 3 && b[0] == 0xEF && b[1] == 0xBB && b[2] == 0xBF ? 3 : 0;
    return const Utf8Decoder(allowMalformed: true).convert(b, start);
  }

  /// Rows of a spreadsheet-like file; null when the file has no table.
  static List<List<String>>? rows(Uint8List b) => switch (sniff(b)) {
    PickedKind.xlsx => xlsxRows(ZipReader.open(b)!),
    PickedKind.docx => docxBlocks(b).where((x) => x.kind == DocBlockKind.table).firstOrNull?.rows,
    PickedKind.text => delimitedRows(text(b)),
    _ => null,
  };

  // ------------------------------------------------------------------ CSV

  /// CSV/TSV/semicolon text (RFC 4180 quotes); the delimiter is guessed
  /// from the first line.
  static List<List<String>> delimitedRows(String s) {
    final first = s.split('\n').firstWhere((l) => l.trim().isNotEmpty, orElse: () => '');
    final d = first.contains('\t')
        ? '\t'
        : (first.contains(';') && !first.contains(',') ? ';' : ',');
    final rows = <List<String>>[];
    var row = <String>[];
    final cell = StringBuffer();
    var quoted = false;
    for (var i = 0; i < s.length; i++) {
      final ch = s[i];
      if (quoted) {
        if (ch == '"') {
          if (i + 1 < s.length && s[i + 1] == '"') {
            cell.write('"');
            i++;
          } else {
            quoted = false;
          }
        } else {
          cell.write(ch);
        }
      } else if (ch == '"' && cell.isEmpty) {
        quoted = true;
      } else if (ch == d) {
        row.add(cell.toString());
        cell.clear();
      } else if (ch == '\n' || ch == '\r') {
        if (ch == '\r' && i + 1 < s.length && s[i + 1] == '\n') i++;
        row.add(cell.toString());
        cell.clear();
        if (row.any((c) => c.trim().isNotEmpty)) rows.add(row);
        row = <String>[];
      } else {
        cell.write(ch);
      }
    }
    row.add(cell.toString());
    if (row.any((c) => c.trim().isNotEmpty)) rows.add(row);
    return rows;
  }

  // ---------------------------------------------------------------- Excel

  static List<List<String>> xlsxRows(ZipReader zip) {
    final shared = <String>[];
    final sst = zip.readText('xl/sharedStrings.xml');
    if (sst != null) {
      for (final si in RegExp(r'<si>([\s\S]*?)</si>').allMatches(sst)) {
        shared.add(_texts(si.group(1)!));
      }
    }
    final names =
        zip.names.where((n) => RegExp(r'^xl/worksheets/sheet\d+\.xml$').hasMatch(n)).toList()
          ..sort((a, b) => a.length != b.length ? a.length - b.length : a.compareTo(b));
    final sheet = names.isEmpty ? null : zip.readText(names.first);
    if (sheet == null) return const [];
    final rows = <List<String>>[];
    for (final row in RegExp(r'<row\b[^>]*>([\s\S]*?)</row>').allMatches(sheet)) {
      final cells = <int, String>{};
      for (final c in RegExp(r'<c\b([^>]*?)(?:/>|>([\s\S]*?)</c>)').allMatches(row.group(1)!)) {
        final attrs = c.group(1)!;
        final body = c.group(2) ?? '';
        final ref = RegExp(r'\br="([A-Z]+)\d+"').firstMatch(attrs)?.group(1);
        final col = ref == null ? cells.length : _colIndex(ref);
        final type = RegExp(r'\bt="(\w+)"').firstMatch(attrs)?.group(1);
        final v = RegExp(r'<v>([\s\S]*?)</v>').firstMatch(body)?.group(1);
        final value = switch (type) {
          's' => shared.elementAtOrNull(int.tryParse(v ?? '') ?? -1) ?? '',
          'inlineStr' => _texts(body),
          _ => entities(v ?? ''),
        };
        if (col < 50) cells[col] = value;
      }
      if (cells.isEmpty) continue;
      final width = cells.keys.reduce((a, b) => a > b ? a : b) + 1;
      rows.add([for (var i = 0; i < width; i++) cells[i] ?? '']);
    }
    return rows;
  }

  static int _colIndex(String letters) {
    var n = 0;
    for (final u in letters.codeUnits) {
      n = n * 26 + (u - 64);
    }
    return n - 1;
  }

  static String _texts(String xml) =>
      RegExp(r'<t\b[^>]*>([\s\S]*?)</t>').allMatches(xml).map((m) => entities(m.group(1)!)).join();

  // ----------------------------------------------------------------- Word

  /// Paragraphs and tables of a Word document, in order.
  static List<DocBlock> docxBlocks(Uint8List b) {
    final xml = ZipReader.open(b)?.readText('word/document.xml');
    if (xml == null) return const [];
    final out = <DocBlock>[];
    for (final m in RegExp(
      r'<w:tbl>[\s\S]*?</w:tbl>|<w:p[ >][\s\S]*?</w:p>|<w:p/>',
    ).allMatches(xml)) {
      final part = m.group(0)!;
      if (part.startsWith('<w:tbl>')) {
        final rows = [
          for (final tr in RegExp(r'<w:tr[ >][\s\S]*?</w:tr>').allMatches(part))
            [
              for (final tc in RegExp(r'<w:tc[ >][\s\S]*?</w:tc>').allMatches(tr.group(0)!))
                _paragraphText(tc.group(0)!).trim(),
            ],
        ];
        if (rows.isNotEmpty) out.add(DocBlock(DocBlockKind.table, '', rows: rows));
        continue;
      }
      final text = _paragraphText(part, formatted: true);
      if (text.trim().isEmpty) continue;
      final style =
          RegExp(r'<w:pStyle w:val="([^"]+)"').firstMatch(part)?.group(1)?.toLowerCase() ?? '';
      final outline = int.tryParse(
        RegExp(r'<w:outlineLvl w:val="(\d)"').firstMatch(part)?.group(1) ?? '',
      );
      final t = text.trim();
      if (style == 'title' || style.startsWith('heading') || outline != null) {
        // Headings carry no inline markers.
        final plain = _paragraphText(part).trim();
        final level = outline ?? int.tryParse(style.replaceAll(RegExp(r'\D'), '')) ?? 1;
        out.add(DocBlock(DocBlockKind.heading, plain, level: level.clamp(1, 3)));
      } else if (RegExp(r'<w:ind w:start="720"/>').hasMatch(part)) {
        out.add(DocBlock(DocBlockKind.quote, _paragraphText(part).trim()));
      } else if (t.startsWith('☐') || t.startsWith('☑') || t.startsWith('☒')) {
        out.add(DocBlock(DocBlockKind.check, t.substring(1).trim(), checked: !t.startsWith('☐')));
      } else if (t.startsWith('•') || part.contains('<w:numPr>')) {
        out.add(DocBlock(DocBlockKind.bullet, t.startsWith('•') ? t.substring(1).trim() : t));
      } else {
        out.add(DocBlock(DocBlockKind.paragraph, t));
      }
    }
    return out;
  }

  /// Text of a paragraph (or table cell). With [formatted], bold and italic
  /// runs become `**bold**` and `_italic_` so notes keep their formatting.
  static String _paragraphText(String xml, {bool formatted = false}) {
    final b = StringBuffer();
    for (final r in RegExp(r'<w:r[ >][\s\S]*?</w:r>|<w:r/>|</w:p>').allMatches(xml)) {
      final run = r.group(0)!;
      if (run == '</w:p>') {
        b.write('\n');
        continue;
      }
      final text = StringBuffer();
      for (final m in RegExp(
        r'<w:t(?:\s[^>]*)?>([\s\S]*?)</w:t>|<w:br\s*/>|<w:tab\s*/>',
      ).allMatches(run)) {
        final s = m.group(0)!;
        text.write(
          s.startsWith('<w:br') ? '\n' : (s.startsWith('<w:tab') ? '\t' : entities(m.group(1)!)),
        );
      }
      final t = text.toString();
      final props = RegExp(r'<w:rPr>([\s\S]*?)</w:rPr>').firstMatch(run)?.group(1) ?? '';
      bool on(String tag) => RegExp('<w:$tag(?:\\s+w:val="(?:1|true|on)")?\\s*/>').hasMatch(props);
      if (!formatted || t.trim().isEmpty || t.contains('\n')) {
        b.write(t);
      } else {
        // Markers hug the words; surrounding spaces stay outside.
        final lead = RegExp(r'^\s*').firstMatch(t)!.group(0)!;
        final trail = RegExp(r'\s*$').firstMatch(t)!.group(0)!;
        var core = t.trim();
        if (on('i')) core = '_${core}_';
        if (on('b')) core = '**$core**';
        b.write('$lead$core$trail');
      }
    }
    return b.toString().replaceAll(RegExp(r'\n+$'), '');
  }

  static String entities(String s) => s
      .replaceAllMapped(RegExp(r'&#(x?)([0-9a-fA-F]+);'), (m) {
        final code = int.tryParse(m.group(2)!, radix: m.group(1)!.isEmpty ? 10 : 16);
        return code == null || code > 0x10FFFF ? '' : String.fromCharCode(code);
      })
      .replaceAll('&nbsp;', ' ')
      .replaceAll('&lt;', '<')
      .replaceAll('&gt;', '>')
      .replaceAll('&quot;', '"')
      .replaceAll('&apos;', "'")
      .replaceAll('&amp;', '&');
}
