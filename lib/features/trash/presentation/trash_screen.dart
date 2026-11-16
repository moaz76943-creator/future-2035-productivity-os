import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../notes/application/notes_providers.dart';
import '../../tasks/application/tasks_providers.dart';
import '../application/trash_providers.dart';

class TrashScreen extends ConsumerWidget {
  const TrashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final tasksAsync = ref.watch(trashedTasksProvider);
    final notesAsync = ref.watch(trashedNotesProvider);
    final total = (tasksAsync.value?.length ?? 0) + (notesAsync.value?.length ?? 0);

    Future<void> emptyAll() async {
      final ok = await confirmAction(
        context,
        title: l10n.trashEmptyTitle,
        message: l10n.trashEmptyBody(total),
        confirmLabel: l10n.actionEmptyTrash,
        destructive: true,
      );
      if (!ok) return;
      await ref.read(trashActionsProvider).emptyAll();
      if (context.mounted) showMessage(context, l10n.trashPurged);
    }

    return ModuleScaffold(
      title: l10n.moduleTrash,
      subtitle: l10n.trashHint,
      hue: ModuleHue.neutral,
      actions: [
        if (total > 0)
          IconButton(
            key: const ValueKey('trash-empty-all'),
            tooltip: l10n.actionEmptyTrash,
            onPressed: emptyAll,
            icon: const Icon(Icons.delete_sweep_rounded),
          ),
      ],
      slivers: [
        SliverToBoxAdapter(
          child: AsyncValueView<List<TaskRow>>(
            value: tasksAsync,
            data: (tasks) => AsyncValueView<List<NoteRow>>(
              value: notesAsync,
              data: (notes) {
                if (tasks.isEmpty && notes.isEmpty) {
                  return EmptyState(
                    icon: Icons.delete_outline_rounded,
                    title: l10n.trashEmpty,
                    message: l10n.trashHint,
                    hue: ModuleHue.neutral,
                  );
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: Space.page),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: LuxPill(
                          label: l10n.trashCount(tasks.length + notes.length),
                          icon: Icons.delete_outline_rounded,
                        ),
                      ),
                    ),
                    if (tasks.isNotEmpty) ...[
                      SectionHeader(title: l10n.trashTasks),
                      for (final t in tasks)
                        _TrashTile(
                          key: ValueKey('trash-task-${t.id}'),
                          icon: Icons.check_circle_outline_rounded,
                          hue: ModuleHue.tasks,
                          title: t.title,
                          deletedAt: t.deletedAt,
                          onRestore: () async {
                            await ref.read(tasksRepositoryProvider).restore(t.id);
                            if (context.mounted) showMessage(context, l10n.trashRestored);
                          },
                          onPurge: () async {
                            final ok = await confirmAction(
                              context,
                              title: l10n.trashDeleteTaskTitle,
                              message: l10n.trashDeleteBody,
                              confirmLabel: l10n.actionDeleteForever,
                              destructive: true,
                            );
                            if (!ok) return;
                            final all = await ref.read(tasksRepositoryProvider).watchTrash().first;
                            await ref.read(trashActionsProvider).purgeTask(t, all);
                            if (context.mounted) showMessage(context, l10n.trashPurged);
                          },
                        ),
                    ],
                    if (notes.isNotEmpty) ...[
                      SectionHeader(title: l10n.trashNotes),
                      for (final n in notes)
                        _TrashTile(
                          key: ValueKey('trash-note-${n.id}'),
                          icon: Icons.sticky_note_2_outlined,
                          hue: ModuleHue.notes,
                          title: n.title.trim().isEmpty ? l10n.untitled : n.title,
                          deletedAt: n.deletedAt,
                          onRestore: () async {
                            await ref.read(notesRepositoryProvider).restore(n.id);
                            if (context.mounted) showMessage(context, l10n.trashRestored);
                          },
                          onPurge: () async {
                            final ok = await confirmAction(
                              context,
                              title: l10n.trashDeleteNoteTitle,
                              message: l10n.trashDeleteBody,
                              confirmLabel: l10n.actionDeleteForever,
                              destructive: true,
                            );
                            if (!ok) return;
                            await ref.read(notesRepositoryProvider).purge(n.id);
                            if (context.mounted) showMessage(context, l10n.trashPurged);
                          },
                        ),
                    ],
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _TrashTile extends StatelessWidget {
  const _TrashTile({
    super.key,
    required this.icon,
    required this.hue,
    required this.title,
    required this.deletedAt,
    required this.onRestore,
    required this.onPurge,
  });
  final IconData icon;
  final ModuleHue hue;
  final String title;
  final DateTime? deletedAt;
  final VoidCallback onRestore;
  final VoidCallback onPurge;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.xs),
      child: LuxCard(
        padding: const EdgeInsetsDirectional.fromSTEB(Space.md, Space.sm, Space.xs, Space.sm),
        child: Row(
          children: [
            IconOrb(icon: icon, hue: hue, size: 36, glow: false),
            const SizedBox(width: Space.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.titleSmall,
                  ),
                  if (deletedAt != null)
                    Text(
                      l10n.trashDeletedOn(context.fmt.date(deletedAt!)),
                      style: context.text.bodySmall?.copyWith(color: context.lux.ink3),
                    ),
                ],
              ),
            ),
            IconButton(
              tooltip: l10n.actionRestore,
              onPressed: onRestore,
              icon: const Icon(Icons.restore_from_trash_rounded),
            ),
            IconButton(
              tooltip: l10n.actionDeleteForever,
              onPressed: onPurge,
              icon: Icon(Icons.delete_forever_rounded, color: Theme.of(context).colorScheme.error),
            ),
          ],
        ),
      ),
    );
  }
}
