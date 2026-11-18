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
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../../shared/widgets/task_picker.dart';
import '../application/goals_providers.dart';
import '../data/goals_repository.dart';
import 'widgets/goal_editor_sheet.dart';
import 'widgets/goal_visuals.dart';

enum _GoalAction { edit, pause, resume, achieve, reactivate, delete }

class GoalDetailScreen extends ConsumerWidget {
  const GoalDetailScreen({super.key, required this.goalId});
  final String goalId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final goal = ref.watch(goalByIdProvider(goalId));
    final row = goal.value;
    final available = row != null && row.deletedAt == null;
    return ModuleScaffold(
      title: available ? row.title : l10n.goalsTitle,
      hue: ModuleHue.goals,
      actions: [if (available) _menu(context, ref, row)],
      slivers: [
        SliverAsyncValueView<GoalRow?>(
          value: goal,
          data: (g) {
            if (g == null || g.deletedAt != null) {
              return SliverToBoxAdapter(
                child: EmptyState(
                  icon: Icons.flag_rounded,
                  hue: ModuleHue.goals,
                  title: l10n.goalsNotFound,
                  message: l10n.goalsEmptyMessage,
                ),
              );
            }
            return SliverList.list(
              children: [
                _ProgressHero(goal: g),
                _LinkedTasksSection(goal: g),
                _HistorySection(goal: g),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _menu(BuildContext context, WidgetRef ref, GoalRow g) {
    final l10n = context.l10n;
    final status = goalStatusOf(g);
    PopupMenuItem<_GoalAction> item(_GoalAction a, IconData icon, String label) => PopupMenuItem(
      value: a,
      child: ListTile(contentPadding: EdgeInsets.zero, leading: Icon(icon), title: Text(label)),
    );
    return PopupMenuButton<_GoalAction>(
      key: const ValueKey('goal-menu'),
      tooltip: l10n.actionMore,
      icon: const Icon(Icons.more_vert_rounded),
      onSelected: (a) => _onAction(context, ref, g, a),
      itemBuilder: (_) => [
        item(_GoalAction.edit, Icons.edit_rounded, l10n.actionEdit),
        if (status == GoalStatus.active)
          item(_GoalAction.pause, Icons.pause_rounded, l10n.goalPause),
        if (status == GoalStatus.paused)
          item(_GoalAction.resume, Icons.play_arrow_rounded, l10n.goalResume),
        if (status != GoalStatus.achieved)
          item(_GoalAction.achieve, Icons.emoji_events_rounded, l10n.goalMarkAchieved),
        if (status == GoalStatus.achieved)
          item(_GoalAction.reactivate, Icons.flag_rounded, l10n.goalsMarkActive),
        item(_GoalAction.delete, Icons.delete_outline_rounded, l10n.actionDelete),
      ],
    );
  }

  Future<void> _onAction(BuildContext context, WidgetRef ref, GoalRow g, _GoalAction a) async {
    final repo = ref.read(goalsRepositoryProvider);
    switch (a) {
      case _GoalAction.edit:
        await showGoalEditor(context, goal: g);
      case _GoalAction.pause:
        await repo.setStatus(g.id, GoalStatus.paused);
      case _GoalAction.resume:
      case _GoalAction.reactivate:
        await repo.setStatus(g.id, GoalStatus.active);
      case _GoalAction.achieve:
        await repo.setStatus(g.id, GoalStatus.achieved);
      case _GoalAction.delete:
        final messenger = ScaffoldMessenger.maybeOf(context);
        final l10n = context.l10n;
        await repo.softDelete(g.id);
        messenger
          ?..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(l10n.goalsDeleted),
              action: SnackBarAction(label: l10n.actionUndo, onPressed: () => repo.restore(g.id)),
            ),
          );
        if (context.mounted) leaveScreen(context, Routes.goals);
    }
  }
}

class _ProgressHero extends ConsumerWidget {
  const _ProgressHero({required this.goal});
  final GoalRow goal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final status = goalStatusOf(goal);
    final period = goalPeriodOf(goal);
    final progress =
        ref.watch(goalProgressProvider(goal)).value ??
        GoalProgress(current: 0, target: goal.target);
    final tasks = ref.watch(goalLinkedTasksProvider(goal.id)).value ?? const <TaskRow>[];
    final (from, to) = GoalsRepository.periodWindow(period, ref.read(clockProvider).now());
    final fromTasks = tasks.where((t) {
      final c = t.completedAt;
      if (!t.done || c == null) return false;
      if (from == null || to == null) return true;
      return !c.isBefore(from) && c.isBefore(to);
    }).length;
    final progressText = goalProgressText(context, progress, goal.unit);
    final pct = (progress.ratio * 100).round();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.page),
      child: LuxCard(
        padding: const EdgeInsets.all(Space.lg),
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              spacing: Space.xs,
              runSpacing: Space.xxs,
              children: [
                LuxPill(
                  label: goalStatusLabel(context, status),
                  icon: goalStatusIcon(status),
                  color: goalStatusColor(context, status),
                ),
                LuxPill(label: goalPeriodLabel(context, period)),
                if (goal.dueDate != null)
                  LuxPill(
                    label: l10n.goalsDueOn(fmt.date(goal.dueDate!)),
                    icon: Icons.event_rounded,
                  ),
              ],
            ),
            const SizedBox(height: Space.lg),
            GlowRing(
              key: const ValueKey('goal-ring'),
              value: progress.ratio,
              hue: status == GoalStatus.paused ? ModuleHue.neutral : ModuleHue.goals,
              size: 180,
              stroke: 14,
              semanticsLabel: progressText,
              semanticsValue: l10n.a11yProgress(pct),
              child: ExcludeSemantics(
                child: Padding(
                  padding: const EdgeInsets.all(Space.lg),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FittedBox(
                        child: Text(
                          fmt.percent(progress.ratio),
                          key: const ValueKey('goal-percent'),
                          style: context.text.headlineLarge,
                        ),
                      ),
                      Text(
                        period == GoalPeriod.longTerm
                            ? l10n.goalPeriodLongTerm
                            : l10n.goalThisPeriod,
                        style: context.text.labelSmall,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: Space.md),
            Text(
              progressText,
              key: const ValueKey('goal-progress-text'),
              style: context.text.titleMedium,
              textAlign: TextAlign.center,
            ),
            if (progress.reached) ...[
              const SizedBox(height: Space.xxs),
              Text(
                l10n.goalsReached,
                style: context.text.bodyMedium?.copyWith(color: ModuleHue.goals.a),
                textAlign: TextAlign.center,
              ),
            ],
            if (fromTasks > 0) ...[
              const SizedBox(height: Space.xxs),
              Text(
                l10n.goalsFromTasks(fromTasks),
                style: context.text.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
            if (goal.description.trim().isNotEmpty) ...[
              const SizedBox(height: Space.md),
              Text(goal.description, style: context.text.bodyMedium, textAlign: TextAlign.center),
            ],
            const SizedBox(height: Space.lg),
            FilledButton.icon(
              key: const ValueKey('goal-log'),
              onPressed: () async {
                final ok = await showLogProgressSheet(context, goal);
                if (ok && context.mounted) showMessage(context, l10n.goalsLogged);
              },
              icon: const Icon(Icons.add_rounded),
              label: Text(l10n.actionLog),
            ),
          ],
        ),
      ),
    );
  }
}

class _LinkedTasksSection extends ConsumerWidget {
  const _LinkedTasksSection({required this.goal});
  final GoalRow goal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final linked = ref.watch(goalLinkedTasksProvider(goal.id));
    final repo = ref.read(goalsRepositoryProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.goalLinkedTasks,
          action: l10n.goalsLinkTask,
          onAction: () async {
            final ids = {for (final t in linked.value ?? const <TaskRow>[]) t.id};
            final t = await pickTask(context, exclude: ids);
            if (t == null) return;
            await repo.linkTask(goal.id, t.id);
            if (context.mounted) showMessage(context, l10n.goalsTaskLinked);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.page),
          child: Text(l10n.goalLinkedTasksHint, style: context.text.bodySmall),
        ),
        const SizedBox(height: Space.sm),
        AsyncValueView<List<TaskRow>>(
          value: linked,
          data: (tasks) {
            if (tasks.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: Space.page),
                child: Text(
                  l10n.goalsNoLinkedTasks,
                  style: context.text.bodyMedium?.copyWith(color: context.lux.ink3),
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: Space.page),
              child: LuxCard(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    for (final t in tasks)
                      ListTile(
                        key: ValueKey('linked-${t.id}'),
                        onTap: () => context.push(Routes.task(t.id)),
                        leading: Icon(
                          t.done
                              ? Icons.check_circle_rounded
                              : Icons.radio_button_unchecked_rounded,
                          color: t.done ? ModuleHue.goals.a : context.lux.ink3,
                          semanticLabel: t.done ? l10n.taskCompleted : l10n.goalsTaskOpen,
                        ),
                        title: Text(
                          t.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: t.done
                              ? TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: context.lux.ink3,
                                )
                              : null,
                        ),
                        trailing: IconButton(
                          tooltip: l10n.goalsUnlinkTask,
                          icon: const Icon(Icons.link_off_rounded),
                          onPressed: () async {
                            await repo.unlinkTask(goal.id, t.id);
                            if (!context.mounted) return;
                            showUndoSnack(
                              context,
                              l10n.goalsTaskUnlinked,
                              onUndo: () => repo.linkTask(goal.id, t.id),
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _HistorySection extends ConsumerWidget {
  const _HistorySection({required this.goal});
  final GoalRow goal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final entries = ref.watch(goalEntriesProvider(goal.id));
    final now = ref.read(clockProvider).now();
    final repo = ref.read(goalsRepositoryProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(title: l10n.goalHistory),
        if (goalPeriodOf(goal) != GoalPeriod.longTerm)
          Padding(
            padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
            child: Text(l10n.goalsHistoryAllTime, style: context.text.bodySmall),
          ),
        AsyncValueView<List<GoalEntryRow>>(
          value: entries,
          data: (rows) {
            if (rows.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: Space.page),
                child: Text(
                  l10n.goalNoHistory,
                  style: context.text.bodyMedium?.copyWith(color: context.lux.ink3),
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: Space.page),
              child: LuxCard(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    for (final e in rows)
                      ListTile(
                        key: ValueKey('entry-${e.id}'),
                        leading: GlowDot(color: ModuleHue.goals.a),
                        title: Text(
                          goalAmount(context, e.amount, goal.unit),
                          style: context.text.titleSmall,
                        ),
                        subtitle: Text(
                          [
                            '${fmt.relativeDay(e.at, now)} · ${fmt.time(e.at)}',
                            if (e.note.trim().isNotEmpty) e.note.trim(),
                          ].join('\n'),
                        ),
                        isThreeLine: e.note.trim().isNotEmpty,
                        trailing: IconButton(
                          tooltip: l10n.goalsDeleteEntry,
                          icon: const Icon(Icons.delete_outline_rounded),
                          onPressed: () async {
                            await repo.deleteEntry(e.id);
                            if (!context.mounted) return;
                            showUndoSnack(
                              context,
                              l10n.goalsEntryDeleted,
                              onUndo: () => repo.restoreEntry(e),
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
