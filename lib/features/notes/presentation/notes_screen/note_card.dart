part of '../notes_screen.dart';

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
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 2),
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
