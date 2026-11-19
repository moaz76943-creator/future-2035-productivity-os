part of '../note_editor_screen.dart';

/// Rebuilds [builder] with the direction of the field's first strong
/// character, falling back to the ambient direction.
class _DirectionalField extends StatelessWidget {
  const _DirectionalField({required this.controller, required this.builder});
  final TextEditingController controller;
  final Widget Function(TextDirection dir) builder;

  @override
  Widget build(BuildContext context) {
    final ambient = Directionality.of(context);
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (_, v, _) => builder(NoteText.firstStrongDirection(v.text) ?? ambient),
    );
  }
}

class _MetaRow extends ConsumerWidget {
  const _MetaRow({
    required this.status,
    required this.savedAt,
    required this.body,
    required this.note,
    required this.onRetry,
    required this.onNotebook,
    required this.onProject,
  });
  final NoteSaveStatus status;
  final DateTime? savedAt;
  final TextEditingController body;
  final NoteRow? note;
  final VoidCallback onRetry;
  final VoidCallback? onNotebook;
  final VoidCallback? onProject;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final lux = context.lux;
    final t = context.text;
    final notebooks = ref.watch(notebooksProvider).value ?? const <NotebookRow>[];
    final notebook = notebooks.where((n) => n.id == note?.notebookId).firstOrNull;
    final projects = ref.watch(projectsProvider(false)).value ?? const <ProjectRow>[];
    final project = projects.where((p) => p.id == note?.projectId).firstOrNull;
    final now = ref.watch(clockProvider).now();

    final (label, color, icon) = switch (status) {
      NoteSaveStatus.saved => (l10n.stateSaved, lux.success, Icons.cloud_done_outlined),
      NoteSaveStatus.saving => (l10n.stateSaving, lux.ink3, Icons.sync_rounded),
      NoteSaveStatus.unsaved => (l10n.stateUnsaved, lux.warning, Icons.edit_outlined),
      NoteSaveStatus.failed => (l10n.errorSaveFailed, lux.danger, Icons.error_outline_rounded),
    };
    Widget chip = Semantics(
      liveRegion: true,
      button: status == NoteSaveStatus.failed,
      hint: status == NoteSaveStatus.failed ? l10n.actionRetry : null,
      child: LuxPill(label: label, color: color, icon: icon),
    );
    if (status == NoteSaveStatus.failed) {
      chip = InkWell(
        borderRadius: BorderRadius.circular(Radii.pill),
        onTap: onRetry,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: kMinTouchTarget),
          child: Align(widthFactor: 1, child: chip),
        ),
      );
    }
    final at = savedAt?.toLocal();
    final style = t.labelMedium?.copyWith(color: lux.ink3);

    return Wrap(
      spacing: Space.xs,
      runSpacing: Space.xxs,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        KeyedSubtree(key: const ValueKey('note-save-status'), child: chip),
        if (at != null)
          Text(
            l10n.noteEdited(
              Days.sameDay(at, now)
                  ? l10n.notesUpdatedAt(context.fmt.relativeDay(at, now), context.fmt.time(at))
                  : context.fmt.relativeDay(at, now),
            ),
            style: style,
          ),
        ValueListenableBuilder(
          valueListenable: body,
          builder: (_, v, _) => Text(l10n.noteWordCount(NoteText.wordCount(v.text)), style: style),
        ),
        ActionChip(
          avatar: notebook == null
              ? const Icon(Icons.folder_outlined, size: 18)
              : GlowDot(color: Color(notebook.color)),
          label: Text(notebook?.name ?? l10n.notesNoNotebook),
          tooltip: l10n.noteMoveTo,
          onPressed: onNotebook,
        ),
        ActionChip(
          avatar: project == null
              ? const Icon(Icons.workspaces_outline, size: 18)
              : GlowDot(color: Color(project.color)),
          label: Text(project?.name ?? l10n.noProject),
          tooltip: l10n.noteLinkProject,
          onPressed: onProject,
        ),
      ],
    );
  }
}

class _FormatToolbar extends StatelessWidget {
  const _FormatToolbar({required this.onApply});
  final void Function(TextEditingValue Function(TextEditingValue)) onApply;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final lux = context.lux;
    final items = <(IconData, String, TextEditingValue Function(TextEditingValue))>[
      (Icons.title_rounded, l10n.noteFormatHeading, NoteText.heading),
      (Icons.format_bold_rounded, l10n.noteFormatBold, NoteText.bold),
      (Icons.format_italic_rounded, l10n.noteFormatItalic, NoteText.italic),
      (Icons.format_list_bulleted_rounded, l10n.noteFormatList, NoteText.bulletList),
      (Icons.checklist_rounded, l10n.noteFormatChecklist, NoteText.checklist),
      (Icons.data_array_rounded, l10n.noteFormatLink, NoteText.wikiLink),
    ];
    return Semantics(
      container: true,
      label: l10n.notesFormatting,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: lux.surface,
          border: Border(top: BorderSide(color: lux.hairline)),
        ),
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: Space.xs),
            child: Row(
              children: [
                for (final (icon, label, fn) in items)
                  IconButton(
                    tooltip: label,
                    icon: Icon(icon),
                    color: lux.ink2,
                    onPressed: () => onApply(fn),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TagsSection extends ConsumerWidget {
  const _TagsSection({required this.noteId});
  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final tags = ref.watch(noteTagsProvider(noteId)).value ?? const <String>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.notesTags,
          padding: const EdgeInsets.only(top: Space.md, bottom: Space.xs),
        ),
        if (tags.isEmpty)
          Text(l10n.notesTagsHint, style: context.text.bodySmall?.copyWith(color: context.lux.ink3))
        else
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final t in tags) LuxPill(label: l10n.notesTagFilter(t), color: Palette.emerald),
            ],
          ),
      ],
    );
  }
}

class _BacklinksSection extends ConsumerWidget {
  const _BacklinksSection({required this.noteId, required this.title});
  final String noteId;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final lux = context.lux;
    final trimmed = title.trim();
    final links = trimmed.isEmpty
        ? const <NoteRow>[]
        : ref.watch(noteBacklinksProvider((id: noteId, title: trimmed))).value ?? const <NoteRow>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.noteBacklinks,
          padding: const EdgeInsets.only(top: Space.lg, bottom: Space.xs),
        ),
        if (links.isEmpty)
          Text(
            trimmed.isEmpty ? l10n.notesBacklinksNeedTitle : l10n.notesBacklinksEmpty(trimmed),
            style: context.text.bodySmall?.copyWith(color: lux.ink3),
          )
        else
          for (final n in links)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.xs),
              child: LuxCard(
                elevated: false,
                accent: ModuleHue.notes.b,
                padding: const EdgeInsetsDirectional.fromSTEB(
                  Space.md,
                  Space.sm,
                  Space.sm,
                  Space.sm,
                ),
                onTap: () => context.push(Routes.note(n.id)),
                child: Row(
                  children: [
                    Icon(Icons.link_rounded, size: 18, color: ModuleHue.notes.b),
                    const SizedBox(width: Space.xs),
                    Expanded(
                      child: Text(
                        n.title.trim().isEmpty ? l10n.untitled : n.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ],
    );
  }
}

class _LinkedTasksSection extends ConsumerWidget {
  const _LinkedTasksSection({required this.noteId, required this.onLink});
  final String noteId;
  final Future<void> Function(List<TaskRow> linked) onLink;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final lux = context.lux;
    final tasks = ref.watch(noteLinkedTasksProvider(noteId)).value ?? const <TaskRow>[];
    final repo = ref.read(notesRepositoryProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.noteLinkedTasks,
          action: l10n.noteLinkTask,
          onAction: () => onLink(tasks),
          padding: const EdgeInsets.only(top: Space.lg, bottom: Space.xs),
        ),
        if (tasks.isEmpty)
          Text(l10n.notesLinkedTasksEmpty, style: context.text.bodySmall?.copyWith(color: lux.ink3))
        else
          for (final t in tasks)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                t.done ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
                color: t.done ? lux.success : ModuleHue.tasks.a,
                semanticLabel: t.done ? l10n.notesTaskDone : null,
              ),
              title: Text(
                t.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: t.done
                    ? TextStyle(color: lux.ink3, decoration: TextDecoration.lineThrough)
                    : null,
              ),
              onTap: () => context.push(Routes.task(t.id)),
              trailing: IconButton(
                tooltip: l10n.actionUnlink,
                icon: const Icon(Icons.link_off_rounded),
                onPressed: () => repo.unlinkTask(noteId, t.id),
              ),
            ),
      ],
    );
  }
}
