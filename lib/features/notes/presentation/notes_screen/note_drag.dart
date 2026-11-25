part of '../notes_screen.dart';

/// A note card that can be lifted and dropped on a notebook chip. Long press and
/// release without moving still opens the note's actions.
class _DraggableNote extends ConsumerStatefulWidget {
  const _DraggableNote({required this.note, this.notebook});
  final NoteRow note;
  final NotebookRow? notebook;

  @override
  ConsumerState<_DraggableNote> createState() => _DraggableNoteState();
}

class _DraggableNoteState extends ConsumerState<_DraggableNote> {
  double _moved = 0;

  void _actions() => unawaited(showNoteActions(context, ref, widget.note));

  @override
  Widget build(BuildContext context) {
    final card = NoteCard(note: widget.note, notebook: widget.notebook, longPressActions: false);
    return Semantics(
      onLongPressHint: context.l10n.notesDragHint,
      onLongPress: _actions,
      child: LayoutBuilder(
        builder: (context, c) => LongPressDraggable<NoteRow>(
          data: widget.note,
          onDragStarted: () => _moved = 0,
          onDragUpdate: (d) => _moved += d.delta.distance,
          onDraggableCanceled: (_, _) {
            if (_moved < 12) _actions();
          },
          feedback: Material(
            type: MaterialType.transparency,
            child: SizedBox(
              width: c.maxWidth,
              child: Opacity(opacity: 0.92, child: card),
            ),
          ),
          childWhenDragging: Opacity(opacity: 0.35, child: card),
          child: card,
        ),
      ),
    );
  }
}

/// A notebook chip that takes dropped notes.
class _NotebookDrop extends ConsumerWidget {
  const _NotebookDrop({required this.notebook, required this.child});
  final NotebookRow notebook;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DragTarget<NoteRow>(
      onWillAcceptWithDetails: (d) => d.data.notebookId != notebook.id,
      onAcceptWithDetails: (d) async {
        final note = d.data;
        final repo = ref.read(notesRepositoryProvider);
        await repo.moveTo(note.id, notebookId: notebook.id, projectId: note.projectId);
        if (!context.mounted) return;
        showUndoSnack(
          context,
          context.l10n.notesMovedToNotebook(notebook.name),
          onUndo: () => unawaited(
            repo.moveTo(note.id, notebookId: note.notebookId, projectId: note.projectId),
          ),
        );
      },
      builder: (context, hovering, _) => AnimatedScale(
        scale: hovering.isNotEmpty ? 1.12 : 1,
        duration: const Duration(milliseconds: 150),
        child: child,
      ),
    );
  }
}
