import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

/// Writes a ZIP file in memory (deflated entries with CRC-32), enough for
/// .xlsx and .docx files.
class ZipWriter {
  final _out = BytesBuilder();
  final _central = BytesBuilder();
  var _count = 0;

  void add(String name, List<int> data) {
    final packed = ZLibEncoder(raw: true).convert(data);
    final n = utf8.encode(name);
    final crc = _crc32(data);
    final offset = _out.length;
    _u32(_out, 0x04034b50);
    _u16(_out, 20); // version
    _u16(_out, 0x0800); // UTF-8 names
    _u16(_out, 8); // deflate
    _u16(_out, 0);
    _u16(_out, 0x21); // time/date: 1980-01-01
    _u32(_out, crc);
    _u32(_out, packed.length);
    _u32(_out, data.length);
    _u16(_out, n.length);
    _u16(_out, 0);
    _out
      ..add(n)
      ..add(packed);
    _u32(_central, 0x02014b50);
    _u16(_central, 20);
    _u16(_central, 20);
    _u16(_central, 0x0800);
    _u16(_central, 8);
    _u16(_central, 0);
    _u16(_central, 0x21);
    _u32(_central, crc);
    _u32(_central, packed.length);
    _u32(_central, data.length);
    _u16(_central, n.length);
    for (var i = 0; i < 4; i++) {
      _u16(_central, 0);
    }
    _u32(_central, 0);
    _u32(_central, offset);
    _central.add(n);
    _count++;
  }

  void addText(String name, String text) => add(name, utf8.encode(text));

  Uint8List finish() {
    final cd = _central.toBytes();
    final cdOffset = _out.length;
    _out.add(cd);
    _u32(_out, 0x06054b50);
    _u16(_out, 0);
    _u16(_out, 0);
    _u16(_out, _count);
    _u16(_out, _count);
    _u32(_out, cd.length);
    _u32(_out, cdOffset);
    _u16(_out, 0);
    return _out.toBytes();
  }

  static void _u16(BytesBuilder b, int v) => b.add([v & 0xff, (v >> 8) & 0xff]);
  static void _u32(BytesBuilder b, int v) =>
      b.add([v & 0xff, (v >> 8) & 0xff, (v >> 16) & 0xff, (v >> 24) & 0xff]);

  static final _table = List<int>.generate(256, (n) {
    var c = n;
    for (var k = 0; k < 8; k++) {
      c = (c & 1) != 0 ? 0xEDB88320 ^ (c >> 1) : c >> 1;
    }
    return c;
  });

  static int _crc32(List<int> data) {
    var c = 0xFFFFFFFF;
    for (final b in data) {
      c = _table[(c ^ b) & 0xff] ^ (c >> 8);
    }
    return (c ^ 0xFFFFFFFF) & 0xFFFFFFFF;
  }
}
