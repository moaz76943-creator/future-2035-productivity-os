part of '../note_editor_screen.dart';

/// Links, delete and moving the note (kept apart from the editor layout).
extension _NoteEditorActions on _NoteEditorScreenState {
  Future<void> _openLink(String title) async {
    await _flush();
    final found = await _repo.resolveLinks('[[$title]]');
    if (!mounted) return;
    final target = found.where((n) => n.id != widget.noteId).firstOrNull;
    if (target != null) {
      context.push(Routes.note(target.id));
      return;
    }
    final l10n = context.l10n;
    ScaffoldMessenger.maybeOf(context)
      ?..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(l10n.notesLinkMissing(title)),
          action: SnackBarAction(
            label: l10n.actionCreate,
            onPressed: () async {
              final id = await _repo.create(title: title);
              if (mounted) context.push(Routes.note(id));
            },
          ),
        ),
      );
  }

  Future<void> _delete() async {
    await _flush();
    await _repo.softDelete(widget.noteId);
    _deleted = true;
    if (!mounted) return;
    final messenger = ScaffoldMessenger.maybeOf(context);
    final l10n = context.l10n;
    final repo = _repo;
    final id = widget.noteId;
    if (Navigator.of(context).canPop()) Navigator.of(context).pop();
    messenger
      ?..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(l10n.deletedItem),
          action: SnackBarAction(label: l10n.actionUndo, onPressed: () => repo.restore(id)),
        ),
      );
  }

  Future<void> _moveNotebook(NoteRow note) async {
    final picked = await pickNotebook(context, ref, current: note.notebookId);
    if (picked == null) return;
    await _repo.moveTo(note.id, notebookId: picked.value, projectId: note.projectId);
  }

  Future<void> _linkTask(List<TaskRow> linked) async {
    final task = await pickTask(context, exclude: {for (final t in linked) t.id});
    if (task == null) return;
    await _repo.linkTask(widget.noteId, task.id);
  }

  /// Picks a picture, makes it small and puts it on its own line at the cursor.
  Future<void> _addImage() async {
    final l10n = context.l10n;
    final picked = await ref.read(mediaPickerProvider).pick(image: true);
    if (picked == null || !mounted) return;
    final small = await ref.read(imageShrinkerProvider).shrink(Uint8List.fromList(picked.bytes));
    if (!mounted) return;
    if (small == null) {
      showMessage(context, l10n.noteImageUnreadable);
      return;
    }
    final String id;
    try {
      id = await _images.add(widget.noteId, small);
    } on FormatException {
      if (mounted) showMessage(context, l10n.noteImageTooLarge);
      return;
    }
    final v = _body.value;
    final at = v.selection.isValid ? v.selection.end.clamp(0, v.text.length) : v.text.length;
    final before = v.text.substring(0, at);
    final after = v.text.substring(at);
    final lead = before.isEmpty || before.endsWith('\n') ? '' : '\n';
    final insert = '$lead${NoteImageRefs.markdown(id)}\n';
    _body.value = TextEditingValue(
      text: '$before$insert$after',
      selection: TextSelection.collapsed(offset: at + insert.length),
    );
    await _flush();
  }
}
