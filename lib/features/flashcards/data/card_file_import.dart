import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';

import '../../../core/files/zip_reader.dart';
import '../../../core/transfer/transfer_reader.dart';

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
/// Word tables (.docx) and Anki packages (.apkg, note fields). Plain text is returned as is.
abstract final class CardFileImport {
  static Future<String> toText(Uint8List bytes, {required Directory temp}) async {
    final zip = ZipReader.open(bytes);
    if (zip == null) return _utf8(bytes);
    if (zip.has('xl/workbook.xml')) return _csv(TransferReader.xlsxRows(zip));
    if (zip.has('word/document.xml')) {
      // A table in a Word document: its rows.
      final rows = TransferReader.rows(bytes);
      if (rows == null || rows.isEmpty) throw const CardFileException(CardFileError.unreadable);
      return _csv(rows);
    }
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

  static String _entities(String s) => TransferReader.entities(s);

  static String _csv(List<List<String>> rows) => rows
      .map(
        (r) => r
            .map((v) => v.contains(RegExp(r'[",\n\r]')) ? '"${v.replaceAll('"', '""')}"' : v)
            .join(','),
      )
      .join('\n');
}
