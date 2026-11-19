import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/data/card_file_import.dart';
import 'package:future_os/features/flashcards/domain/card_import.dart';
import 'package:sqlite3/sqlite3.dart';

/// A minimal ZIP writer for test fixtures (deflated entries, CRC not checked).
Uint8List zip(Map<String, List<int>> files) {
  final out = BytesBuilder();
  final central = BytesBuilder();
  var count = 0;
  void u16(BytesBuilder b, int v) => b.add([v & 0xff, v >> 8 & 0xff]);
  void u32(BytesBuilder b, int v) =>
      b.add([v & 0xff, v >> 8 & 0xff, v >> 16 & 0xff, v >> 24 & 0xff]);
  files.forEach((name, data) {
    final packed = ZLibEncoder(raw: true).convert(data);
    final n = utf8.encode(name);
    final offset = out.length;
    u32(out, 0x04034b50);
    for (final v in [20, 0, 8, 0, 0]) {
      u16(out, v);
    }
    u32(out, 0);
    u32(out, packed.length);
    u32(out, data.length);
    u16(out, n.length);
    u16(out, 0);
    out
      ..add(n)
      ..add(packed);
    u32(central, 0x02014b50);
    for (final v in [20, 20, 0, 8, 0, 0]) {
      u16(central, v);
    }
    u32(central, 0);
    u32(central, packed.length);
    u32(central, data.length);
    for (final v in [n.length, 0, 0, 0, 0]) {
      u16(central, v);
    }
    u32(central, 0);
    u32(central, offset);
    central.add(n);
    count++;
  });
  final cdOffset = out.length;
  final cd = central.toBytes();
  out.add(cd);
  u32(out, 0x06054b50);
  for (final v in [0, 0, count, count]) {
    u16(out, v);
  }
  u32(out, cd.length);
  u32(out, cdOffset);
  u16(out, 0);
  return out.toBytes();
}

void main() {
  late Directory temp;
  setUp(() => temp = Directory.systemTemp.createTempSync('cards'));
  tearDown(() => temp.deleteSync(recursive: true));

  test('Excel workbook: shared and inline strings, columns by reference', () async {
    final bytes = zip({
      'xl/workbook.xml': utf8.encode('<workbook/>'),
      'xl/sharedStrings.xml': utf8.encode(
        '<sst><si><t>front</t></si><si><t>back</t></si><si><r><t>كتاب</t></r></si>'
        '<si><t xml:space="preserve">book &amp; more</t></si></sst>',
      ),
      'xl/worksheets/sheet1.xml': utf8.encode(
        '<worksheet><sheetData>'
        '<row r="1"><c r="A1" t="s"><v>0</v></c><c r="B1" t="s"><v>1</v></c></row>'
        '<row r="2"><c r="A2" t="s"><v>2</v></c><c r="B2" t="s"><v>3</v></c></row>'
        '<row r="3"><c r="A3" t="inlineStr"><is><t>sun</t></is></c><c r="C3"><v>7</v></c></row>'
        '</sheetData></worksheet>',
      ),
    });
    final text = await CardFileImport.toText(bytes, temp: temp);
    final parsed = CardImportParser.parse(text);
    expect(parsed.cards.map((c) => (c.front, c.back)).first, ('كتاب', 'book & more'));
  });

  test('Anki package: fields without HTML or sounds, tags kept', () async {
    final dbFile = File('${temp.path}/c.anki2');
    final db = sqlite3.open(dbFile.path);
    db
      ..execute('CREATE TABLE notes (id INTEGER PRIMARY KEY, flds TEXT, tags TEXT)')
      ..execute(
        "INSERT INTO notes VALUES (1, 'hello<br>world\u001f<b>مرحبا</b>&nbsp;[sound:a.mp3]', ' greet ')",
      )
      ..execute("INSERT INTO notes VALUES (2, 'cat\u001fقطة\u001fextra', '')")
      ..close();
    final bytes = zip({'collection.anki2': dbFile.readAsBytesSync(), 'media': utf8.encode('{}')});
    final text = await CardFileImport.toText(bytes, temp: temp);
    final rows = CardImportParser.rows(text, ',');
    expect(rows.first, ['front', 'back', 'field 3', 'tags']);
    expect(rows[1], ['hello\nworld', 'مرحبا', '', 'greet']);
    expect(rows[2], ['cat', 'قطة', 'extra', '']);
    expect(temp.listSync().whereType<File>().where((f) => f.path.contains('anki_import')), isEmpty);
  });

  test('newest Anki format only: a clear message', () async {
    final bytes = zip({
      'collection.anki21b': [1, 2, 3],
      'meta': [0],
    });
    await expectLater(
      CardFileImport.toText(bytes, temp: temp),
      throwsA(
        isA<CardFileException>().having((e) => e.error, 'error', CardFileError.ankiNewFormat),
      ),
    );
  });

  test('plain text passes through (BOM removed)', () async {
    final text = await CardFileImport.toText(
      Uint8List.fromList([0xEF, 0xBB, 0xBF, ...utf8.encode('a;b')]),
      temp: temp,
    );
    expect(text, 'a;b');
  });
}
