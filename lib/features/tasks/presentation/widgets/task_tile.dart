import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../app/routing/routes.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/components/indicators.dart';
import '../../../../core/design_system/components/surfaces.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../../core/time/clock.dart';
import '../../../../shared/widgets/dialogs.dart';
import '../../application/tasks_providers.dart';
import '../../data/tasks_repository.dart';
import 'task_visuals.dart';

/// Completes or reopens a task with feedback and undo.
Future<void> toggleTaskDone(BuildContext context, WidgetRef ref, TaskRow task) async {
  final repo = ref.read(tasksRepositoryProvider);
  final l10n = context.l10n;
  if (task.done) {
    await repo.reopen(task.id);
    return;
  }
  // Read once from the repository; an autoDispose provider read here would
  // be disposed before it emits.
  final blockers = await repo.watchBlockers(task.id).first;
  if (blockers.any((b) => !b.done) && context.mounted) {
    final ok = await confirmAction(
      context,
      title: l10n.taskBlockedBy(blockers.where((b) => !b.done).length),
      message: l10n.taskBlockedWarning,
      confirmLabel: l10n.actionComplete,
    );
    if (!ok) return;
  }
  final nextId = await repo.complete(task.id);
  if (!context.mounted) return;
  showUndoSnack(
    context,
    nextId != null ? l10n.taskNextOccurrence : l10n.taskCompleted,
    onUndo: () async {
      if (nextId != null) await repo.purge(nextId);
      await repo.reopen(task.id);
    },
  );
}

/// A task row: glowing completion orb, title, and a quiet meta line.
class TaskTile extends ConsumerWidget {
  const TaskTile({super.key, required this.task, this.project, this.showProject = true});
  final TaskRow task;
  final ProjectRow? project;
  final bool showProject;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final lux = context.lux;
    final now = ref.watch(clockProvider).now();
    final pColor = PriorityStyle.color(task.priority);
    final due = task.dueAt?.toLocal();
    final overdue = !task.done && due != null && due.isBefore(Days.startOfDay(now));
    final subtasks = ref.watch(subtasksProvider(task.id)).value ?? const [];
    final meta = <Widget>[
      if (task.archivedAt != null)
        LuxPill(label: l10n.taskArchivedBadge)
      else if (!task.done && task.status == TaskStatus.inProgress)
        LuxPill(label: l10n.taskStatusInProgress, color: ModuleHue.focus.a),
      if (due != null)
        _Meta(
          icon: Icons.event_rounded,
          text: overdue
              ? l10n.taskOverdueBy(Days.startOfDay(now).difference(Days.startOfDay(due)).inDays)
              : task.dueHasTime
              ? '${fmt.relativeDay(due, now)} · ${fmt.time(due)}'
              : fmt.relativeDay(due, now),
          color: overdue ? lux.danger : null,
        ),
      if (task.recurrence != null)
        Semantics(
          label: l10n.tasksRecurringSemantics,
          child: Icon(Icons.repeat_rounded, size: 14, color: lux.ink3),
        ),
      if (task.reminderAt != null)
        Icon(Icons.notifications_none_rounded, size: 14, color: lux.ink3),
      if (subtasks.isNotEmpty)
        _Meta(
          icon: Icons.account_tree_outlined,
          text: l10n.taskSubtaskProgress(subtasks.where((s) => s.done).length, subtasks.length),
        ),
      if (task.estimateMinutes != null)
        _Meta(icon: Icons.hourglass_empty_rounded, text: fmt.minutes(task.estimateMinutes!)),
      if (showProject && project != null)
        LuxPill(label: project!.name, color: Color(project!.color)),
      if (task.category.isNotEmpty) LuxPill(label: task.category),
    ];

    return Dismissible(
      key: ValueKey('task-${task.id}'),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: AlignmentDirectional.centerEnd,
        padding: const EdgeInsetsDirectional.only(end: Space.xl),
        decoration: BoxDecoration(
          color: lux.danger.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(Radii.lg),
        ),
        child: Icon(Icons.delete_outline_rounded, color: lux.danger),
      ),
      onDismissed: (_) async {
        final repo = ref.read(tasksRepositoryProvider);
        await repo.softDelete(task.id);
        if (context.mounted) {
          showUndoSnack(context, l10n.deletedItem, onUndo: () => repo.restore(task.id));
        }
      },
      child: LuxCard(
        glass: true,
        padding: const EdgeInsetsDirectional.fromSTEB(Space.xs, Space.sm, Space.md, Space.sm),
        onTap: () => context.push(Routes.task(task.id)),
        // A coloured edge for every prioritised task, like the design; none for "no priority".
        accent: task.priority > 0 ? pColor : null,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CompletionOrb(
              done: task.done,
              color: task.priority > 0 ? pColor : ModuleHue.tasks.a,
              semanticsLabel: task.done
                  ? l10n.taskCheckboxSemanticsDone(task.title)
                  : l10n.taskCheckboxSemantics(task.title),
              onTap: () => toggleTaskDone(context, ref, task),
            ),
            const SizedBox(width: Space.xs),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: Space.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.titleMedium?.copyWith(
                        decoration: task.done ? TextDecoration.lineThrough : null,
                        color: task.done ? lux.ink3 : lux.ink,
                      ),
                    ),
                    if (meta.isNotEmpty) ...[
                      const SizedBox(height: Space.xxs + 2),
                      Wrap(
                        spacing: Space.sm,
                        runSpacing: Space.xxs,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: meta,
                      ),
                    ],
                  ],
                ),
              ),
            ),
            if (task.priority > 0)
              Padding(
                padding: const EdgeInsets.only(top: Space.sm),
                child: Semantics(
                  label: l10n.a11yPriority(PriorityStyle.label(l10n, task.priority)),
                  child: Icon(PriorityStyle.icon(task.priority), size: 18, color: pColor),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _Meta extends StatelessWidget {
  const _Meta({required this.icon, required this.text, this.color});
  final IconData icon;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final c = color ?? context.lux.ink3;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: c),
        const SizedBox(width: Space.xxs),
        Flexible(
          child: Text(text, style: context.text.labelMedium?.copyWith(color: c)),
        ),
      ],
    );
  }
}

/// Circular check control with a soft glow when completed.
class CompletionOrb extends StatelessWidget {
  const CompletionOrb({
    super.key,
    required this.done,
    required this.color,
    required this.semanticsLabel,
    required this.onTap,
  });
  final bool done;
  final Color color;
  final String semanticsLabel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final d = context.reduceMotion ? Duration.zero : Motion.medium;
    return Semantics(
      button: true,
      checked: done,
      label: semanticsLabel,
      excludeSemantics: true,
      child: InkResponse(
        onTap: onTap,
        radius: 24,
        child: SizedBox(
          width: kMinTouchTarget,
          height: kMinTouchTarget,
          child: Center(
            child: AnimatedContainer(
              duration: d,
              curve: Motion.emphasized,
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: done ? color : Colors.transparent,
                border: Border.all(color: color, width: 2),
                boxShadow: done
                    ? [BoxShadow(color: color.withValues(alpha: 0.45), blurRadius: 12)]
                    : const [],
              ),
              child: done ? const Icon(Icons.check_rounded, size: 16, color: Colors.white) : null,
            ),
          ),
        ),
      ),
    );
  }
}
