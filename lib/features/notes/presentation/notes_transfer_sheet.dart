import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/transfer/transfer_model.dart';
import '../../../core/transfer/transfer_service.dart';
import '../../../shared/widgets/transfer_sheet.dart';
import '../application/notes_providers.dart';
import '../data/notes_transfer.dart';

final notesTransferProvider = Provider<NotesTransfer>(
  (ref) => NotesTransfer(ref.watch(databaseProvider), ref.watch(notesRepositoryProvider)),
);

const _docFormats = [
  TransferFormat.docx,
  TransferFormat.pdf,
  TransferFormat.md,
  TransferFormat.txt,
];

/// Notes as Word, PDF, Markdown, text or Excel; notes from files. With
/// [note], "This note" comes first.
Future<void> showNotesTransfer(
  BuildContext context,
  WidgetRef ref, {
  NoteRow? note,
  String? notebookId,
}) {
  final l10n = context.l10n;
  final rtl = Directionality.of(context) == TextDirection.rtl;
  final transfer = ref.read(notesTransferProvider);
  final encoder = ref.read(transferEncoderProvider);
  return showTransferSheet(
    context,
    exports: [
      if (note != null)
        ExportGroup(
          label: l10n.transferThisNote,
          formats: _docFormats,
          build: (f) async => (
            safeFileName(note.title, f, fallback: 'note'),
            await encoder.doc(NotesTransfer.noteDoc(note, l10n.untitled, rtl: rtl), f),
          ),
        ),
      ExportGroup(
        label: l10n.transferAllNotes,
        formats: [..._docFormats, TransferFormat.xlsx, TransferFormat.csv],
        build: (f) async {
          final name = safeFileName(l10n.moduleNotes, f, fallback: 'notes');
          if (f == TransferFormat.xlsx || f == TransferFormat.csv) {
            return (name, await encoder.table(await transfer.table(l10n, rtl: rtl), f));
          }
          return (name, await encoder.doc(await transfer.allDoc(l10n, rtl: rtl), f));
        },
      ),
    ],
    importHint: l10n.transferImportNotesHint,
    onImport: (file) async => (await transfer.import(file, notebookId: notebookId)).length,
  );
}

/// "Save as file" in the note editor: the note as saved right now.
Future<void> showNoteTransferById(BuildContext context, WidgetRef ref, String noteId) async {
  final note = await ref.read(notesRepositoryProvider).byId(noteId);
  if (note != null && context.mounted) await showNotesTransfer(context, ref, note: note);
}
