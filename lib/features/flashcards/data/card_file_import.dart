import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';

import '../../../core/files/zip_reader.dart';

/// Why a card file could not be read.
enum CardFileError {
  /// An Anki package in the newest format only (Anki 2.1.50+ without
  /// "Support older Anki versions").
  ankiNewFormat,
  unreadable,
}

class CardFileException implements Exception {
  const CardFileException(this.error);
  final CardFileError error;
}

/// Turns a picked file into import text (CSV with a header row) for the
/// usual preview and column mapping: Excel workbooks (.xlsx, first sheet)
/// and Anki packages (.apkg, note fields). Plain text is returned as is.
abstract final class CardFileImport {
  static Future<String> toText(Uint8List bytes, {required Directory temp}) async {
    final zip = ZipReader.open(bytes);
    if (zip == null) return _utf8(bytes);
    if (zip.has('xl/workbook.xml')) return _xlsx(zip);
    if (zip.has('collection.anki2') ||
        zip.has('collection.anki21') ||
        zip.has('collection.anki21b')) {
      return _anki(zip, temp);
    }
    throw const CardFileException(CardFileError.unreadable);
  }

  static String _utf8(Uint8List b) {
    final start = b.length >= 3 && b[0] == 0xEF && b[1] == 0xBB && b[2] == 0xBF ? 3 : 0;
    return const Utf8Decoder(allowMalformed: true).convert(b, start);
  }

  // ---------------------------------------------------------------- Excel

  static String _xlsx(ZipReader zip) {
    final shared = <String>[];
    final sst = zip.readText('xl/sharedStrings.xml');
    if (sst != null) {
      for (final si in RegExp(r'<si>([\s\S]*?)</si>').allMatches(sst)) {
        shared.add(_texts(si.group(1)!));
      }
    }
    final sheetName =
        zip.names.where((n) => RegExp(r'^xl/worksheets/sheet\d+\.xml$').hasMatch(n)).toList()
          ..sort((a, b) => a.length != b.length ? a.length - b.length : a.compareTo(b));
    final sheet = sheetName.isEmpty ? null : zip.readText(sheetName.first);
    if (sheet == null) throw const CardFileException(CardFileError.unreadable);
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
          _ => _entities(v ?? ''),
        };
        if (col < 50) cells[col] = value;
      }
      if (cells.isEmpty) continue;
      final width = cells.keys.reduce((a, b) => a > b ? a : b) + 1;
      rows.add([for (var i = 0; i < width; i++) cells[i] ?? '']);
    }
    return _csv(rows);
  }

  static int _colIndex(String letters) {
    var n = 0;
    for (final u in letters.codeUnits) {
      n = n * 26 + (u - 64);
    }
    return n - 1;
  }

  /// All `<t>` runs of a rich-text string.
  static String _texts(String xml) =>
      RegExp(r'<t\b[^>]*>([\s\S]*?)</t>').allMatches(xml).map((m) => _entities(m.group(1)!)).join();

  // ----------------------------------------------------------------- Anki

  static Future<String> _anki(ZipReader zip, Directory temp) async {
    // Newer exports also hold a stub "collection.anki2" that only says
    // "please update Anki", so the newer file wins when both are there.
    final name = zip.has('collection.anki21') ? 'collection.anki21' : 'collection.anki2';
    final bytes = zip.read(name);
    if (bytes == null) {
      throw CardFileException(
        zip.has('collection.anki21b') ? CardFileError.ankiNewFormat : CardFileError.unreadable,
      );
    }
    final file = File(p.join(temp.path, 'anki_import_${DateTime.now().microsecondsSinceEpoch}.db'));
    await file.writeAsBytes(bytes, flush: true);
    try {
      final db = sqlite3.open(file.path, mode: OpenMode.readOnly);
      try {
        final notes = db.select('SELECT flds, tags FROM notes ORDER BY id');
        final rows = <List<String>>[];
        var width = 2;
        for (final r in notes) {
          final fields = (r['flds'] as String).split('\u001f').map(_fromHtml).toList();
          if (fields.length > width) width = fields.length.clamp(2, 8);
          rows.add([...fields.take(8), (r['tags'] as String).trim()]);
        }
        if (rows.length == 1 && zip.has('collection.anki21b') && name == 'collection.anki2') {
          throw const CardFileException(CardFileError.ankiNewFormat); // only the stub note
        }
        final header = ['front', 'back', for (var i = 3; i <= width; i++) 'field $i', 'tags'];
        return _csv([
          header,
          for (final r in rows)
            [...r.sublist(0, r.length - 1), for (var i = r.length - 1; i < width; i++) '', r.last],
        ]);
      } finally {
        db.close();
      }
    } on CardFileException {
      rethrow;
    } on Object {
      throw const CardFileException(CardFileError.unreadable);
    } finally {
      try {
        await file.delete();
      } on Object {
        // Temporary file: the system clears it eventually.
      }
    }
  }

  /// Anki field HTML → plain text with line breaks; sounds and images dropped.
  static String _fromHtml(String html) {
    var s = html
        .replaceAll(RegExp(r'\[sound:[^\]]*\]'), '')
        .replaceAll(RegExp(r'<br\s*/?>|</div>|</p>|</li>', caseSensitive: false), '\n')
        .replaceAll(RegExp(r'<[^>]+>'), '');
    s = _entities(s);
    return s.replaceAll(RegExp(r'[ \t]+\n'), '\n').replaceAll(RegExp(r'\n{3,}'), '\n\n').trim();
  }

  static String _entities(String s) => s
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

  static String _csv(List<List<String>> rows) => rows
      .map(
        (r) => r
            .map((v) => v.contains(RegExp(r'[",\n\r]')) ? '"${v.replaceAll('"', '""')}"' : v)
            .join(','),
      )
      .join('\n');
}
