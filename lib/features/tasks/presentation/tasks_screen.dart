import 'dart:async';

import 'package:collection/collection.dart';
import 'package:drift/drift.dart' show Value;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../projects/application/projects_providers.dart';
import '../application/tasks_providers.dart';
import '../data/tasks_repository.dart';
import 'tasks_transfer_sheet.dart';
import 'widgets/task_tile.dart';
import 'widgets/task_visuals.dart';

part 'tasks_screen/tab_controller.dart';
part 'tasks_screen/filter_sheet.dart';

/// Presentation-level views. The first five map to [TaskView]; the grouped
/// views show all open tasks grouped by an attribute.
enum TasksTab {
  today,
  inbox,
  upcoming,
  all,
  overdue,
  completed,
  byProject,
  byPriority,
  byCategory,
  archived,
}

final tasksTabProvider = NotifierProvider<_TabController, TasksTab>(_TabController.new);

TaskView _viewFor(TasksTab t) => switch (t) {
  TasksTab.today => TaskView.today,
  TasksTab.upcoming => TaskView.upcoming,
  TasksTab.overdue => TaskView.overdue,
  TasksTab.completed => TaskView.completed,
  TasksTab.inbox => TaskView.inbox,
  TasksTab.archived => TaskView.archived,
  _ => TaskView.all,
};

class TasksScreen extends ConsumerWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final tab = ref.watch(tasksTabProvider);
    final base = ref.watch(taskFilterProvider);
    final filter = base.copyWith(view: _viewFor(tab));
    final tasks = ref.watch(tasksProvider(filter));
    final projects = ref.watch(projectsProvider(false)).value ?? const [];
    final byId = {for (final p in projects) p.id: p};
    final active =
        base.projectId != null ||
        base.minPriority != null ||
        base.category != null ||
        base.labelId != null ||
        base.sort != TaskSort.smart;

    return ModuleScaffold(
      title: l10n.tasksTitle,
      hue: ModuleHue.tasks,
      actions: [
        IconButton(
          tooltip: l10n.tasksSearchTooltip,
          icon: const Icon(Icons.search_rounded),
          onPressed: () => context.push(Routes.search),
        ),
        IconButton(
          tooltip: l10n.filterTitle,
          isSelected: active,
          icon: const Icon(Icons.tune_rounded),
          selectedIcon: const Icon(Icons.tune_rounded),
          onPressed: () => showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            showDragHandle: true,
            builder: (_) => const _FilterSheet(),
          ),
        ),
        IconButton(
          key: const Key('tasksTransfer'),
          tooltip: l10n.transferTitle,
          icon: const Icon(Icons.import_export_rounded),
          onPressed: () => showTasksTransfer(context, ref),
        ),
      ],
      floatingActionButton: FloatingActionButton(
        heroTag: 'tasks-fab',
        tooltip: l10n.taskNew,
        onPressed: () => context.push(Routes.taskNew),
        child: const Icon(Icons.add_rounded),
      ),
      slivers: [
        SliverToBoxAdapter(child: _TabsRow(tab: tab)),
        SliverToBoxAdapter(
          child: _QuickAdd(tab: tab, projectId: base.projectId),
        ),
        SliverAsyncValueView(
          value: tasks,
          data: (list) => _TaskList(tab: tab, tasks: list, projects: byId),
        ),
      ],
    );
  }
}

const _keep = Object();

/// Minutes to finish [estimates]; a task without an estimate counts 25 minutes.
int finishMinutes(Iterable<int?> estimates) =>
    estimates.fold(0, (sum, e) => sum + ((e ?? 0) > 0 ? e! : 25));
