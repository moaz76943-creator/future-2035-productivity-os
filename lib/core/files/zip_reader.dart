import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

/// Reads entries of a ZIP file in memory (stored or deflated). Enough for
/// .xlsx and Anki .apkg packages; no encryption, no ZIP64.
class ZipReader {
  ZipReader._(this._bytes, this._entries);

  final Uint8List _bytes;
  final Map<String, _Entry> _entries;

  /// Null when [bytes] is not a ZIP file.
  static ZipReader? open(Uint8List bytes) {
    if (bytes.length < 22 || bytes[0] != 0x50 || bytes[1] != 0x4B) return null;
    final d = ByteData.sublistView(bytes);
    // End of central directory: last 22..65557 bytes.
    var eocd = -1;
    for (var i = bytes.length - 22; i >= 0 && i >= bytes.length - 65557; i--) {
      if (d.getUint32(i, Endian.little) == 0x06054b50) {
        eocd = i;
        break;
      }
    }
    if (eocd < 0) return null;
    final count = d.getUint16(eocd + 10, Endian.little);
    var p = d.getUint32(eocd + 16, Endian.little);
    final entries = <String, _Entry>{};
    for (var n = 0; n < count; n++) {
      if (p + 46 > bytes.length || d.getUint32(p, Endian.little) != 0x02014b50) return null;
      final method = d.getUint16(p + 10, Endian.little);
      final compressed = d.getUint32(p + 20, Endian.little);
      final size = d.getUint32(p + 24, Endian.little);
      final nameLen = d.getUint16(p + 28, Endian.little);
      final extraLen = d.getUint16(p + 30, Endian.little);
      final commentLen = d.getUint16(p + 32, Endian.little);
      final local = d.getUint32(p + 42, Endian.little);
      final name = utf8.decode(bytes.sublist(p + 46, p + 46 + nameLen), allowMalformed: true);
      entries[name] = _Entry(method, compressed, size, local);
      p += 46 + nameLen + extraLen + commentLen;
    }
    return ZipReader._(bytes, entries);
  }

  Iterable<String> get names => _entries.keys;
  bool has(String name) => _entries.containsKey(name);

  /// The entry's bytes, or null when missing, too big or unsupported.
  Uint8List? read(String name, {int maxBytes = 200 * 1024 * 1024}) {
    final e = _entries[name];
    if (e == null || e.size > maxBytes) return null;
    final d = ByteData.sublistView(_bytes);
    final h = e.localHeader;
    if (h + 30 > _bytes.length || d.getUint32(h, Endian.little) != 0x04034b50) return null;
    final start = h + 30 + d.getUint16(h + 26, Endian.little) + d.getUint16(h + 28, Endian.little);
    if (start + e.compressed > _bytes.length) return null;
    final data = Uint8List.sublistView(_bytes, start, start + e.compressed);
    try {
      return switch (e.method) {
        0 => Uint8List.fromList(data),
        8 => Uint8List.fromList(ZLibDecoder(raw: true).convert(data)),
        _ => null,
      };
    } on Object {
      return null;
    }
  }

  String? readText(String name) {
    final b = read(name);
    return b == null ? null : utf8.decode(b, allowMalformed: true);
  }
}

class _Entry {
  const _Entry(this.method, this.compressed, this.size, this.localHeader);
  final int method;
  final int compressed;
  final int size;
  final int localHeader;
}
