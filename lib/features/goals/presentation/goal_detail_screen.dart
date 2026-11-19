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

part 'goal_detail_screen/progress_hero.dart';

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
