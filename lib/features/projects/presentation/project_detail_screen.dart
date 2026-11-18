import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/navigation.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../notes/application/notes_providers.dart';
import '../../notes/data/notes_repository.dart';
import '../../tasks/application/tasks_providers.dart';
import '../../tasks/data/tasks_repository.dart';
import '../../tasks/presentation/widgets/task_tile.dart';
import '../application/projects_providers.dart';
import 'milestones_section.dart';
import 'project_editor_sheet.dart';
import 'project_visuals.dart';
import 'projects_screen.dart';

final _projectFocusProvider = StreamProvider.autoDispose.family<int, String>(
  (ref, id) => ref.watch(projectsRepositoryProvider).watchFocusSeconds(id),
);

final _projectNotesProvider = StreamProvider.autoDispose.family<List<NoteRow>, String>(
  (ref, id) => ref.watch(notesRepositoryProvider).watch(NotesView.all, projectId: id, limit: 20),
);

class ProjectDetailScreen extends ConsumerWidget {
  const ProjectDetailScreen({super.key, required this.projectId});
  final String projectId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final project = ref.watch(projectByIdProvider(projectId));
    return project.when(
      loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (_, _) => Scaffold(
        appBar: AppBar(),
        body: ErrorState(title: l10n.errorGenericTitle, message: l10n.errorLoadFailed),
      ),
      data: (p) => p == null || p.deletedAt != null
          ? Scaffold(
              appBar: AppBar(),
              body: EmptyState(
                icon: Icons.workspaces_outline,
                hue: ModuleHue.projects,
                title: l10n.projectsEmptyTitle,
                message: l10n.errorLoadFailed,
              ),
            )
          : _Detail(project: p),
    );
  }
}

class _Detail extends ConsumerWidget {
  const _Detail({required this.project});
  final ProjectRow project;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final color = Color(project.color);
    final progress = ref.watch(projectProgressProvider(project.id)).value;
    final focus = ref.watch(_projectFocusProvider(project.id)).value ?? 0;
    final open =
        ref.watch(tasksProvider(TaskFilter(view: TaskView.all, projectId: project.id))).value ??
        const <TaskRow>[];
    final done =
        ref
            .watch(tasksProvider(TaskFilter(view: TaskView.completed, projectId: project.id)))
            .value ??
        const <TaskRow>[];
    final notes = ref.watch(_projectNotesProvider(project.id)).value ?? const <NoteRow>[];
    final now = ref.watch(clockProvider).now();
    final repo = ref.read(projectsRepositoryProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: l10n.actionEdit,
            icon: const Icon(Icons.edit_outlined),
            onPressed: () => showProjectEditor(context, existing: project),
          ),
          PopupMenuButton<String>(
            tooltip: l10n.actionMore,
            onSelected: (v) async {
              switch (v) {
                case 'archive':
                  await repo.setArchived(project.id, !project.archived);
                case 'delete':
                  final ok = await confirmAction(
                    context,
                    title: l10n.actionDelete,
                    message: l10n.projectDeleteMessage,
                    confirmLabel: l10n.actionDelete,
                    destructive: true,
                  );
                  if (!ok) return;
                  await repo.softDelete(project.id);
                  if (!context.mounted) return;
                  showUndoSnack(
                    context,
                    l10n.projectDeleted,
                    onUndo: () => repo.restore(project.id),
                  );
                  leaveScreen(context, Routes.projects);
              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                value: 'archive',
                child: Text(project.archived ? l10n.actionUnarchive : l10n.actionArchive),
              ),
              PopupMenuItem(value: 'delete', child: Text(l10n.actionDelete)),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'project-task-fab',
        tooltip: l10n.projectAddTask,
        onPressed: () => context.push('${Routes.taskNew}?project=${project.id}'),
        child: const Icon(Icons.add_task_rounded),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, 120),
        children: [
          // Hero: identity + live progress.
          Container(
            padding: const EdgeInsets.all(Space.lg),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Radii.xl),
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [color.withValues(alpha: 0.16), color.withValues(alpha: 0.04)],
              ),
              border: Border.all(color: color.withValues(alpha: 0.25)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(projectIcon(project.icon), color: color, size: 32),
                      const SizedBox(height: Space.sm),
                      Text(project.name, style: context.text.headlineSmall),
                      if (project.archived)
                        Padding(
                          padding: const EdgeInsets.only(top: Space.xxs),
                          child: LuxPill(label: l10n.projectArchivedBadge),
                        ),
                      if (project.goal.isNotEmpty) ...[
                        const SizedBox(height: Space.xs),
                        Text(project.goal, style: context.text.bodyMedium),
                      ],
                      const SizedBox(height: Space.sm),
                      if (project.deadline != null)
                        DeadlineLabel(deadline: project.deadline!, now: now)
                      else
                        Text(
                          l10n.projectNoDeadline,
                          style: context.text.labelMedium?.copyWith(color: context.lux.ink3),
                        ),
                    ],
                  ),
                ),
                GlowRing(
                  value: progress?.ratio ?? 0,
                  hue: ModuleHue.projects,
                  size: 96,
                  semanticsLabel: l10n.projectProgress,
                  semanticsValue: context.fmt.percent(progress?.ratio ?? 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        context.fmt.percent(progress?.ratio ?? 0),
                        style: context.text.titleMedium,
                      ),
                      if (progress != null)
                        Text(
                          l10n.taskSubtaskProgress(progress.done, progress.total),
                          style: context.text.labelSmall,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Space.md),
          // Equal-height tiles even when only one carries a caption.
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: StatTile(
                    value: context.fmt.duration(Duration(seconds: focus)),
                    label: l10n.projectFocusTime,
                    caption: l10n.statMeasuredNote,
                    hue: ModuleHue.focus,
                    icon: Icons.timer_outlined,
                  ),
                ),
                const SizedBox(width: Space.sm),
                Expanded(
                  child: StatTile(
                    value: context.fmt.number(open.length),
                    label: l10n.projectTasksOpen,
                    hue: ModuleHue.tasks,
                    icon: Icons.radio_button_unchecked_rounded,
                  ),
                ),
              ],
            ),
          ),
          if (project.description.isNotEmpty) ...[
            const SizedBox(height: Space.md),
            Text(project.description, style: context.text.bodyMedium),
          ],
          MilestonesSection(projectId: project.id),
          SectionHeader(
            title: l10n.projectTasksOpen,
            padding: const EdgeInsets.only(top: Space.xl, bottom: Space.xs),
          ),
          if (open.isEmpty)
            Text(
              l10n.projectNoTasks,
              style: context.text.bodyMedium?.copyWith(color: context.lux.ink3),
            )
          else
            for (final t in open)
              Padding(
                padding: const EdgeInsets.only(bottom: Space.xxs),
                child: TaskTile(task: t, showProject: false),
              ),
          SectionHeader(
            title: l10n.projectLinkedNotes,
            action: l10n.projectAddNote,
            onAction: () async {
              final id = await ref.read(notesRepositoryProvider).create(projectId: project.id);
              if (context.mounted) context.push(Routes.note(id));
            },
            padding: const EdgeInsets.only(top: Space.xl, bottom: Space.xs),
          ),
          for (final n in notes)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.xs),
              child: LuxCard(
                padding: const EdgeInsets.all(Space.sm),
                onTap: () => context.push(Routes.note(n.id)),
                child: Row(
                  children: [
                    Icon(Icons.sticky_note_2_outlined, color: ModuleHue.notes.a),
                    const SizedBox(width: Space.sm),
                    Expanded(
                      child: Text(
                        n.title.isEmpty ? l10n.untitled : n.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (done.isNotEmpty) ...[
            SectionHeader(
              title: l10n.projectTasksCompleted,
              padding: const EdgeInsets.only(top: Space.xl, bottom: Space.xs),
            ),
            for (final t in done.take(20))
              Padding(
                padding: const EdgeInsets.only(bottom: Space.xxs),
                child: TaskTile(task: t, showProject: false),
              ),
          ],
        ],
      ),
    );
  }
}
