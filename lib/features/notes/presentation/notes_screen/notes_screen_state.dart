part of '../notes_screen.dart';

class _NotesScreenState extends ConsumerState<NotesScreen> {
  NotesView _view = NotesView.all;
  String? _notebookId;
  String? _tag;
  bool _creating = false;

  Future<void> _create() async {
    if (_creating) return;
    _creating = true;
    try {
      final id = await ref.read(notesRepositoryProvider).create(notebookId: _notebookId);
      if (mounted) context.push(Routes.note(id));
    } catch (_) {
      if (mounted) showMessage(context, context.l10n.errorSaveFailed);
    } finally {
      _creating = false;
    }
  }

  Future<void> _deleteNotebook(NotebookRow nb) async {
    final l10n = context.l10n;
    final ok = await confirmAction(
      context,
      title: l10n.notesDeleteNotebook,
      message: l10n.notesDeleteNotebookMessage,
      confirmLabel: l10n.actionDelete,
      destructive: true,
    );
    if (!ok) return;
    await ref.read(notesRepositoryProvider).deleteNotebook(nb.id);
    if (mounted && _notebookId == nb.id) setState(() => _notebookId = null);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final query = (view: _view, notebookId: _notebookId, tag: _tag);
    final notes = ref.watch(notesListProvider(query));
    final notebooks = ref.watch(notebooksProvider).value ?? const <NotebookRow>[];
    final tags = ref.watch(noteAllTagsProvider).value ?? const <String>[];
    if (_notebookId != null && notebooks.isNotEmpty && !notebooks.any((n) => n.id == _notebookId)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) setState(() => _notebookId = null);
      });
    }
    final hue = ModuleHue.notes;

    return ModuleScaffold(
      title: l10n.notesTitle,
      hue: hue,
      actions: [
        IconButton(
          key: const Key('notesTransfer'),
          tooltip: l10n.transferTitle,
          icon: const Icon(Icons.import_export_rounded),
          onPressed: () => showNotesTransfer(context, ref),
        ),
      ],
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'notes-fab',
        onPressed: _create,
        backgroundColor: hue.a,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.edit_note_rounded),
        label: Text(l10n.quickAddNote),
      ),
      slivers: [
        SliverToBoxAdapter(
          child: _ChipRow(
            children: [
              for (final v in const [
                NotesView.all,
                NotesView.pinned,
                NotesView.favorites,
                NotesView.archived,
              ])
                ChoiceChip(
                  label: Text(_viewLabel(context, v)),
                  avatar: Icon(_viewIcon(v), size: 18),
                  selected: _view == v,
                  selectedColor: hue.a.withValues(alpha: 0.18),
                  onSelected: (_) => setState(() => _view = v),
                ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: _ChipRow(
            children: [
              ChoiceChip(
                label: Text(l10n.notesAllNotebooks),
                selected: _notebookId == null,
                selectedColor: hue.a.withValues(alpha: 0.18),
                onSelected: (_) => setState(() => _notebookId = null),
              ),
              for (final nb in notebooks)
                GestureDetector(
                  onLongPress: () => _deleteNotebook(nb),
                  child: ChoiceChip(
                    avatar: GlowDot(color: Color(nb.color)),
                    label: Text(nb.name),
                    selected: _notebookId == nb.id,
                    selectedColor: Color(nb.color).withValues(alpha: 0.18),
                    onSelected: (s) => setState(() => _notebookId = s ? nb.id : null),
                  ),
                ),
              ActionChip(
                avatar: const Icon(Icons.add_rounded, size: 18),
                label: Text(l10n.notesNewNotebook),
                onPressed: () async {
                  final id = await createNotebookFlow(context, ref);
                  if (id != null && mounted) setState(() => _notebookId = id);
                },
              ),
            ],
          ),
        ),
        if (tags.isNotEmpty)
          SliverToBoxAdapter(
            child: _ChipRow(
              children: [
                for (final t in tags)
                  FilterChip(
                    label: Text(l10n.notesTagFilter(t)),
                    selected: _tag == t,
                    selectedColor: Palette.emerald.withValues(alpha: 0.16),
                    onSelected: (s) => setState(() => _tag = s ? t : null),
                  ),
              ],
            ),
          ),
        SliverAsyncValueView<List<NoteRow>>(
          value: notes,
          data: (list) => list.isEmpty
              ? SliverToBoxAdapter(child: _empty(context))
              : SliverToBoxAdapter(
                  child: _NotesBody(notes: list, notebooks: notebooks),
                ),
        ),
      ],
    );
  }

  Widget _empty(BuildContext context) {
    final l10n = context.l10n;
    final filtered = _notebookId != null || _tag != null;
    if (!filtered && _view == NotesView.all) {
      return EmptyState(
        icon: Icons.auto_stories_outlined,
        title: l10n.notesEmptyTitle,
        message: l10n.notesEmptyMessage,
        hue: ModuleHue.notes,
        actionLabel: l10n.quickAddNote,
        onAction: _create,
      );
    }
    final message = filtered
        ? l10n.notesEmptyFiltered
        : switch (_view) {
            NotesView.pinned => l10n.notesEmptyPinned,
            NotesView.favorites => l10n.notesEmptyFavorites,
            _ => l10n.notesEmptyArchived,
          };
    return EmptyState(
      icon: _viewIcon(_view),
      title: _viewLabel(context, _view),
      message: message,
      hue: ModuleHue.notes,
      compact: true,
    );
  }
}

class _ChipRow extends StatelessWidget {
  const _ChipRow({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsetsDirectional.fromSTEB(Space.page, Space.xxs, Space.page, Space.xxs),
    child: Row(
      children: [
        for (final c in children)
          Padding(
            padding: const EdgeInsetsDirectional.only(end: Space.xs),
            child: c,
          ),
      ],
    ),
  );
}

class _NotesBody extends StatelessWidget {
  const _NotesBody({required this.notes, required this.notebooks});
  final List<NoteRow> notes;
  final List<NotebookRow> notebooks;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final pinned = notes.where((n) => n.pinned).toList();
    final others = notes.where((n) => !n.pinned).toList();
    final byId = {for (final nb in notebooks) nb.id: nb};
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (pinned.isNotEmpty) ...[
          SectionHeader(title: l10n.notesViewPinned),
          _Masonry(notes: pinned, notebooks: byId),
        ],
        if (others.isNotEmpty) ...[
          if (pinned.isNotEmpty) SectionHeader(title: l10n.notesSectionOthers),
          if (pinned.isEmpty) const SizedBox(height: Space.sm),
          _Masonry(notes: others, notebooks: byId),
        ],
      ],
    );
  }
}

/// Staggered columns: each note goes into the currently shortest column,
/// using an estimate of its rendered height.
class _Masonry extends StatelessWidget {
  const _Masonry({required this.notes, required this.notebooks});
  final List<NoteRow> notes;
  final Map<String, NotebookRow> notebooks;

  static double _estimate(NoteRow n) {
    final preview = NoteText.preview(n.body, maxLines: _previewLines(n));
    final lines = preview.isEmpty ? 0 : preview.split('\n').length;
    final (_, total) = NoteText.checklistProgress(n.body);
    return 72 + (n.title.isEmpty ? 0 : 28) + lines * 20 + (total > 0 ? 28 : 0);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final cols = c.maxWidth >= 900 ? 4 : (c.maxWidth >= 600 ? 3 : 2);
        final columns = List.generate(cols, (_) => <NoteRow>[]);
        final heights = List.filled(cols, 0.0);
        for (final n in notes) {
          var min = 0;
          for (var i = 1; i < cols; i++) {
            if (heights[i] < heights[min]) min = i;
          }
          columns[min].add(n);
          heights[min] += _estimate(n);
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page - Space.xxs),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final col in columns)
                Expanded(
                  child: Column(
                    children: [
                      for (final n in col)
                        Padding(
                          padding: const EdgeInsets.all(Space.xxs + 1),
                          child: NoteCard(note: n, notebook: notebooks[n.notebookId]),
                        ),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
