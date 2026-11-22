import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/transfer/markdown_doc.dart';
import '../../../core/transfer/transfer_model.dart';
import '../../../core/transfer/transfer_reader.dart';
import '../../../core/transfer/transfer_schema.dart';
import '../../../core/transfer/transfer_service.dart';
import '../../../l10n/gen/app_localizations.dart';
import 'notes_repository.dart';

/// Columns of a notes spreadsheet. Export and import both use this list.
final noteSchema = TransferSchema<NoteRow>([
  TransferField('title', (l) => l.transferColTitle, (n) => n.title),
  TransferField('body', (l) => l.transferColBody, (n) => n.body),
]);

class NotesTransfer {
  NotesTransfer(this._db, this._repo);
  final AppDatabase _db;
  final NotesRepository _repo;

  Future<List<NoteRow>> _all() =>
      (_db.select(_db.notes)
            ..where((n) => n.deletedAt.isNull())
            ..orderBy([(n) => OrderingTerm.desc(n.updatedAt)]))
          .get();

  /// One note as a document (title, then its headings, lists and text).
  static TransferDoc noteDoc(NoteRow n, String untitled, {bool rtl = false}) => TransferDoc(
    rtl: rtl,
    blocks: [
      DocBlock(DocBlockKind.title, n.title.trim().isEmpty ? untitled : n.title),
      ...MarkdownDoc.toBlocks(n.body),
    ],
  );

  /// Every note, one after another.
  Future<TransferDoc> allDoc(AppLocalizations l10n, {bool rtl = false}) async => TransferDoc(
    rtl: rtl,
    blocks: [
      DocBlock(DocBlockKind.title, l10n.moduleNotes),
      for (final n in await _all()) ...[
        DocBlock(DocBlockKind.heading, n.title.trim().isEmpty ? l10n.untitled : n.title),
        ...MarkdownDoc.toBlocks(n.body),
      ],
    ],
  );

  Future<TransferTable> table(AppLocalizations l10n, {bool rtl = false}) async =>
      noteSchema.table(l10n.moduleNotes, await _all(), l10n, rtl: rtl);

  /// A picked file becomes notes: a Word, Markdown or text file is one note
  /// (titled by its first heading or its file name); a spreadsheet gives one
  /// note per row. Returns the ids of the new notes.
  Future<List<String>> import(PickedFile f, {String? notebookId}) async {
    final name = f.name.replaceAll(RegExp(r'\.[A-Za-z0-9]{1,5}$'), '').trim();
    switch (TransferReader.sniff(f.bytes)) {
      case PickedKind.xlsx:
        return _rows(TransferReader.rows(f.bytes) ?? const [], notebookId);
      case PickedKind.docx:
        final blocks = TransferReader.docxBlocks(f.bytes);
        final first = blocks.firstOrNull;
        final titled = first != null && first.kind == DocBlockKind.heading;
        return [
          await _repo.create(
            title: titled ? first.text : name,
            body: MarkdownDoc.fromBlocks(titled ? blocks.skip(1).toList() : blocks),
            notebookId: notebookId,
          ),
        ];
      case PickedKind.text:
        final text = TransferReader.text(f.bytes);
        if (f.name.toLowerCase().endsWith('.csv') || f.name.toLowerCase().endsWith('.tsv')) {
          return _rows(TransferReader.delimitedRows(text), notebookId);
        }
        final heading = RegExp(r'^\s*#\s+(.+)$').firstMatch(text.split('\n').first);
        return [
          await _repo.create(
            title: heading?.group(1)?.trim() ?? name,
            body: heading == null ? text.trim() : text.split('\n').skip(1).join('\n').trim(),
            notebookId: notebookId,
          ),
        ];
      case PickedKind.pdf:
      case PickedKind.unknown:
        throw const FormatException('unsupported');
    }
  }

  Future<List<String>> _rows(List<List<String>> rows, String? notebookId) async {
    final ids = <String>[];
    for (final r in noteSchema.records(rows)) {
      final title = (r['title'] ?? '').trim();
      final body = (r['body'] ?? '').trim();
      if (title.isEmpty && body.isEmpty) continue;
      ids.add(await _repo.create(title: title, body: body, notebookId: notebookId));
    }
    return ids;
  }
}
