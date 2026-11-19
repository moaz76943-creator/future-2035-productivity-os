import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import 'markdown_doc.dart';
import 'office_writer.dart';
import 'transfer_model.dart';

/// PDF pages drawn by the phone (Android text layout handles Arabic).
abstract class PdfRenderer {
  Future<Uint8List> render(TransferDoc doc);
}

class ChannelPdfRenderer implements PdfRenderer {
  static const _c = MethodChannel('future_os/pdf');
  @override
  Future<Uint8List> render(TransferDoc doc) async {
    final bytes = await _c.invokeMethod<Uint8List>('render', {
      'rtl': doc.rtl,
      'blocks': [for (final b in doc.blocks) b.toJson()],
    });
    if (bytes == null) throw StateError('pdf');
    return bytes;
  }
}

/// Tests and desktop: a tiny valid-looking PDF with the text inside.
class MemoryPdfRenderer implements PdfRenderer {
  TransferDoc? last;
  @override
  Future<Uint8List> render(TransferDoc doc) async {
    last = doc;
    return Uint8List.fromList(utf8.encode('%PDF-1.4\n% ${MarkdownDoc.plainText(doc)}\n%%EOF'));
  }
}

final pdfRendererProvider = Provider<PdfRenderer>(
  (ref) => Platform.isAndroid ? ChannelPdfRenderer() : MemoryPdfRenderer(),
);

/// Turns tables and documents into file bytes in any [TransferFormat].
class TransferEncoder {
  const TransferEncoder(this._pdf);
  final PdfRenderer _pdf;

  static Uint8List _utf8Bom(String s) => Uint8List.fromList([0xEF, 0xBB, 0xBF, ...utf8.encode(s)]);

  static String csvCell(String v) {
    var s = v;
    // Text a spreadsheet would run as a formula gets a leading apostrophe.
    if (RegExp(r'^\s*[=+\-@\t\r]').hasMatch(s) && double.tryParse(s.trim()) == null) s = "'$s";
    return s.contains(RegExp(r'[",\n\r]')) ? '"${s.replaceAll('"', '""')}"' : s;
  }

  Future<Uint8List> table(TransferTable t, TransferFormat f) async => switch (f) {
    TransferFormat.xlsx => OfficeWriter.xlsx(t),
    TransferFormat.csv => _utf8Bom(
      [
        t.columns.map((c) => csvCell(c.label)).join(','),
        for (final r in t.rows) t.columns.map((c) => csvCell(r[c.id] ?? '')).join(','),
      ].join('\r\n'),
    ),
    _ => doc(TransferDoc.ofTable(t), f),
  };

  Future<Uint8List> doc(TransferDoc d, TransferFormat f) async => switch (f) {
    TransferFormat.docx => OfficeWriter.docx(d),
    TransferFormat.pdf => _pdf.render(d.plain),
    TransferFormat.md => _utf8Bom(MarkdownDoc.fromBlocks(d.blocks)),
    TransferFormat.txt => _utf8Bom(MarkdownDoc.plainText(d)),
    TransferFormat.xlsx || TransferFormat.csv => table(
      TransferTable(
        title: d.blocks.firstOrNull?.text ?? '',
        rtl: d.rtl,
        columns: const [TransferColumn('text', 'text')],
        rows: [
          for (final b in d.blocks) {'text': b.text},
        ],
      ),
      f,
    ),
  };
}

final transferEncoderProvider = Provider<TransferEncoder>(
  (ref) => TransferEncoder(ref.watch(pdfRendererProvider)),
);

/// A picked file.
typedef PickedFile = ({String name, Uint8List bytes});

/// Saving and picking files, overridable in tests.
abstract class TransferFiles {
  /// False when the user cancelled.
  Future<bool> save(String fileName, Uint8List bytes, TransferFormat format);
  Future<PickedFile?> pick();
}

class PlatformTransferFiles implements TransferFiles {
  const PlatformTransferFiles();

  @override
  Future<bool> save(String fileName, Uint8List bytes, TransferFormat format) async {
    try {
      return await FilePicker.saveFile(fileName: fileName, bytes: bytes) != null;
    } on Object {
      final r = await SharePlus.instance.share(
        ShareParams(
          files: [XFile.fromData(bytes, name: fileName, mimeType: format.mime)],
          fileNameOverrides: [fileName],
        ),
      );
      return r.status != ShareResultStatus.dismissed;
    }
  }

  @override
  Future<PickedFile?> pick() async {
    final files = await FilePicker.pickFiles();
    if (files.isEmpty) return null;
    final f = files.first;
    final bytes = await f.readAsBytes();
    if (bytes.length > 20 * 1024 * 1024) throw StateError('too big');
    return (name: f.name, bytes: bytes);
  }
}

class MemoryTransferFiles implements TransferFiles {
  final saved = <String, Uint8List>{};
  PickedFile? next;
  @override
  Future<bool> save(String fileName, Uint8List bytes, TransferFormat format) async {
    saved[fileName] = bytes;
    return true;
  }

  @override
  Future<PickedFile?> pick() async => next;
}

final transferFilesProvider = Provider<TransferFiles>((ref) => const PlatformTransferFiles());

/// A file name from a title: letters, digits, spaces and dashes only.
String safeFileName(String title, TransferFormat f, {String fallback = 'export'}) {
  final base = title
      .replaceAll(RegExp(r'[^\p{L}\p{N} _-]+', unicode: true), ' ')
      .trim()
      .replaceAll(RegExp(r'\s+'), '_');
  final cut = base.length > 60 ? base.substring(0, 60) : base;
  return '${cut.isEmpty ? fallback : cut}.${f.extension}';
}
