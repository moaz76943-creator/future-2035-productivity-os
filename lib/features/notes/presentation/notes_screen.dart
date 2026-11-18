import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/note_text.dart';
import '../application/notes_providers.dart';
import '../data/notes_repository.dart';
import 'note_actions.dart';

/// Notes home: views, notebook and tag filters, and a masonry of notes
/// with pinned notes first.
class NotesScreen extends ConsumerStatefulWidget {
  const NotesScreen({super.key});

  @override
  ConsumerState<NotesScreen> createState() => _NotesScreenState();
}

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

String _viewLabel(BuildContext context, NotesView v) => switch (v) {
  NotesView.pinned => context.l10n.notesViewPinned,
  NotesView.favorites => context.l10n.notesViewFavorites,
  NotesView.archived => context.l10n.notesViewArchived,
  _ => context.l10n.notesViewAll,
};

IconData _viewIcon(NotesView v) => switch (v) {
  NotesView.pinned => Icons.push_pin_outlined,
  NotesView.favorites => Icons.star_outline_rounded,
  NotesView.archived => Icons.archive_outlined,
  _ => Icons.notes_rounded,
};

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

int _previewLines(NoteRow n) {
  final len = n.body.length;
  if (len < 80) return 3;
  if (len < 300) return 5;
  return 8;
}

/// A note in the masonry. Shape varies with content: title-less notes show
/// larger text, checklists show real progress, long notes show more lines.
class NoteCard extends ConsumerWidget {
  const NoteCard({super.key, required this.note, this.notebook});
  final NoteRow note;
  final NotebookRow? notebook;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final lux = context.lux;
    final t = context.text;
    final hue = ModuleHue.notes;
    final accent = notebook == null ? hue.a : Color(notebook!.color);
    final lines = _previewLines(note);
    final preview = NoteText.preview(note.body, maxLines: lines);
    final (done, total) = NoteText.checklistProgress(note.body);
    final hasTitle = note.title.trim().isNotEmpty;
    final title = hasTitle ? note.title.trim() : (preview.isEmpty ? l10n.untitled : null);
    final ambient = Directionality.of(context);
    final titleDir = NoteText.firstStrongDirection(note.title) ?? ambient;
    final previewDir = NoteText.firstStrongDirection(preview) ?? ambient;
    final now = ref.watch(clockProvider).now();
    final updated = note.updatedAt.toLocal();
    final stamp = Days.sameDay(updated, now)
        ? l10n.notesUpdatedAt(context.fmt.relativeDay(updated, now), context.fmt.time(updated))
        : context.fmt.relativeDay(updated, now);

    return LuxCard(
      accent: accent,
      padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.xxs, Space.xxs),
      semanticLabel: title ?? preview,
      color: note.pinned ? Color.alphaBlend(hue.a.withValues(alpha: 0.05), lux.surface) : null,
      onTap: () => context.push(Routes.note(note.id)),
      onLongPress: () => showNoteActions(context, ref, note),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: Space.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (title != null)
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textDirection: hasTitle ? titleDir : null,
                    style: t.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: hasTitle ? lux.ink : lux.ink3,
                    ),
                  ),
                if (preview.isNotEmpty) ...[
                  if (title != null) const SizedBox(height: Space.xxs),
                  Text(
                    preview,
                    maxLines: lines,
                    overflow: TextOverflow.ellipsis,
                    textDirection: previewDir,
                    style: (hasTitle ? t.bodyMedium : t.bodyLarge)?.copyWith(
                      color: hasTitle ? lux.ink2 : lux.ink,
                      height: 1.4,
                    ),
                  ),
                ],
                if (total > 0) ...[
                  const SizedBox(height: Space.sm),
                  GlowBar(
                    value: done / total,
                    hue: hue,
                    height: 5,
                    semanticsLabel: l10n.notesChecklistProgress(done, total),
                  ),
                  const SizedBox(height: Space.xxs),
                  Text(
                    l10n.notesChecklistProgress(done, total),
                    style: t.labelSmall?.copyWith(color: lux.ink3),
                  ),
                ],
              ],
            ),
          ),
          Row(
            children: [
              if (note.pinned) Icon(Icons.push_pin, size: 14, color: hue.a),
              if (note.favorite)
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 2),
                  child: Icon(Icons.star_rounded, size: 15, color: Palette.champagne),
                ),
              if (note.pinned || note.favorite) const SizedBox(width: Space.xxs),
              Expanded(
                child: Text(
                  stamp,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: t.labelSmall?.copyWith(color: lux.ink3),
                ),
              ),
              IconButton(
                tooltip: l10n.actionMore,
                // Full 48dp target: the compact density made this a 40px tap area.
                icon: Icon(Icons.more_horiz_rounded, color: lux.ink3, size: 20),
                onPressed: () => showNoteActions(context, ref, note),
              ),
            ],
          ),
          if (notebook != null)
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: Space.xs, end: Space.sm),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: LuxPill(label: notebook!.name, color: accent),
              ),
            ),
        ],
      ),
    );
  }
}
