import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/pickers.dart';
import '../../projects/application/projects_providers.dart';
import '../application/notes_providers.dart';

/// Result of a picker where "none" is a valid choice.
class Picked<T> {
  const Picked(this.value);
  final T? value;
}

/// Asks for a notebook name and color, then creates it. Returns the id.
Future<String?> createNotebookFlow(BuildContext context, WidgetRef ref) async {
  final repo = ref.read(notesRepositoryProvider);
  final result = await showDialog<(String, int)>(
    context: context,
    builder: (_) => const _NewNotebookDialog(),
  );
  if (result == null || result.$1.trim().isEmpty) return null;
  return repo.createNotebook(result.$1, result.$2);
}

class _NewNotebookDialog extends StatefulWidget {
  const _NewNotebookDialog();
  @override
  State<_NewNotebookDialog> createState() => _NewNotebookDialogState();
}

class _NewNotebookDialogState extends State<_NewNotebookDialog> {
  final _name = TextEditingController();
  int _color = Palette.champagne.toARGB32();
  bool _showError = false;

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  void _submit() {
    if (_name.text.trim().isEmpty) {
      setState(() => _showError = true);
      return;
    }
    Navigator.pop(context, (_name.text.trim(), _color));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(l10n.notesNewNotebook),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _name,
              autofocus: true,
              maxLength: 80,
              decoration: InputDecoration(
                labelText: l10n.notesNotebookName,
                errorText: _showError ? l10n.validationNameRequired : null,
              ),
              onSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: Space.sm),
            Text(l10n.notesNotebookColor, style: context.text.labelLarge),
            const SizedBox(height: Space.xs),
            ColorSwatchPicker(value: _color, onChanged: (c) => setState(() => _color = c)),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.actionCancel)),
        FilledButton(onPressed: _submit, child: Text(l10n.actionCreate)),
      ],
    );
  }
}

/// Lets the user choose a notebook (or none). Offers creating a new one.
Future<Picked<String>?> pickNotebook(BuildContext context, WidgetRef ref, {String? current}) {
  return showModalBottomSheet<Picked<String>>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (sheetContext) => Consumer(
      builder: (ctx, ref, _) {
        final l10n = ctx.l10n;
        final notebooks = ref.watch(notebooksProvider).value ?? const <NotebookRow>[];
        return SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(ctx).height * 0.7),
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                    Space.page,
                    0,
                    Space.page,
                    Space.xs,
                  ),
                  child: Text(l10n.noteMoveTo, style: ctx.text.titleMedium),
                ),
                _choice(
                  ctx,
                  selected: current == null,
                  leading: Icon(Icons.inbox_outlined, color: ctx.lux.ink3),
                  label: l10n.notesNoNotebook,
                  onTap: () => Navigator.pop(ctx, const Picked<String>(null)),
                ),
                for (final nb in notebooks)
                  _choice(
                    ctx,
                    selected: current == nb.id,
                    leading: Icon(Icons.circle, color: Color(nb.color), size: 18),
                    label: nb.name,
                    onTap: () => Navigator.pop(ctx, Picked(nb.id)),
                  ),
                ListTile(
                  leading: const Icon(Icons.add_rounded),
                  title: Text(l10n.notesNewNotebook),
                  onTap: () async {
                    final id = await createNotebookFlow(ctx, ref);
                    if (id != null && ctx.mounted) Navigator.pop(ctx, Picked(id));
                  },
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

/// Lets the user choose a project (or none).
Future<Picked<String>?> pickProject(BuildContext context, {String? current}) {
  return showModalBottomSheet<Picked<String>>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (_) => Consumer(
      builder: (ctx, ref, _) {
        final l10n = ctx.l10n;
        final projects = ref.watch(projectsProvider(false)).value ?? const <ProjectRow>[];
        return SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(ctx).height * 0.7),
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                    Space.page,
                    0,
                    Space.page,
                    Space.xs,
                  ),
                  child: Text(l10n.noteLinkProject, style: ctx.text.titleMedium),
                ),
                _choice(
                  ctx,
                  selected: current == null,
                  leading: Icon(Icons.block_rounded, color: ctx.lux.ink3),
                  label: l10n.noProject,
                  onTap: () => Navigator.pop(ctx, const Picked<String>(null)),
                ),
                for (final p in projects)
                  _choice(
                    ctx,
                    selected: current == p.id,
                    leading: Icon(Icons.circle, color: Color(p.color), size: 18),
                    label: p.name,
                    onTap: () => Navigator.pop(ctx, Picked(p.id)),
                  ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget _choice(
  BuildContext context, {
  required bool selected,
  required Widget leading,
  required String label,
  required VoidCallback onTap,
}) => ListTile(
  leading: leading,
  title: Text(label, maxLines: 2, overflow: TextOverflow.ellipsis),
  trailing: selected ? const Icon(Icons.check_rounded) : null,
  selected: selected,
  onTap: onTap,
);

enum _NoteAction { pin, favorite, archive, move, delete }

/// Long-press / overflow actions for a note: pin, favorite, archive, move
/// to notebook and delete (with undo).
Future<void> showNoteActions(BuildContext context, WidgetRef ref, NoteRow note) async {
  final l10n = context.l10n;
  final repo = ref.read(notesRepositoryProvider);
  final action = await showModalBottomSheet<_NoteAction>(
    context: context,
    showDragHandle: true,
    builder: (ctx) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(note.pinned ? Icons.push_pin : Icons.push_pin_outlined),
            title: Text(note.pinned ? l10n.actionUnpin : l10n.actionPin),
            onTap: () => Navigator.pop(ctx, _NoteAction.pin),
          ),
          ListTile(
            leading: Icon(note.favorite ? Icons.star_rounded : Icons.star_outline_rounded),
            title: Text(note.favorite ? l10n.noteUnfavorite : l10n.noteFavorite),
            onTap: () => Navigator.pop(ctx, _NoteAction.favorite),
          ),
          ListTile(
            leading: Icon(note.archived ? Icons.unarchive_outlined : Icons.archive_outlined),
            title: Text(note.archived ? l10n.actionUnarchive : l10n.actionArchive),
            onTap: () => Navigator.pop(ctx, _NoteAction.archive),
          ),
          ListTile(
            leading: const Icon(Icons.drive_file_move_outline),
            title: Text(l10n.noteMoveTo),
            onTap: () => Navigator.pop(ctx, _NoteAction.move),
          ),
          ListTile(
            leading: Icon(Icons.delete_outline_rounded, color: ctx.lux.danger),
            title: Text(l10n.actionDelete, style: TextStyle(color: ctx.lux.danger)),
            onTap: () => Navigator.pop(ctx, _NoteAction.delete),
          ),
        ],
      ),
    ),
  );
  if (action == null || !context.mounted) return;
  switch (action) {
    case _NoteAction.pin:
      await repo.setFlags(note.id, pinned: !note.pinned);
    case _NoteAction.favorite:
      await repo.setFlags(note.id, favorite: !note.favorite);
    case _NoteAction.archive:
      final archive = !note.archived;
      await repo.setFlags(note.id, archived: archive);
      if (context.mounted) {
        showUndoSnack(
          context,
          archive ? l10n.notesArchivedSnack : l10n.notesUnarchivedSnack,
          onUndo: () => repo.setFlags(note.id, archived: !archive),
        );
      }
    case _NoteAction.move:
      final picked = await pickNotebook(context, ref, current: note.notebookId);
      if (picked == null) return;
      // moveTo writes both columns, so keep the existing project.
      await repo.moveTo(note.id, notebookId: picked.value, projectId: note.projectId);
    case _NoteAction.delete:
      await repo.softDelete(note.id);
      if (context.mounted) {
        showUndoSnack(context, l10n.deletedItem, onUndo: () => repo.restore(note.id));
      }
  }
}
