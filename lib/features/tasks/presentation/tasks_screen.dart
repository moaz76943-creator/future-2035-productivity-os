import 'package:collection/collection.dart';
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
import 'widgets/task_tile.dart';
import 'widgets/task_visuals.dart';

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

class _TabController extends Notifier<TasksTab> {
  @override
  TasksTab build() => TasksTab.today;
  void set(TasksTab t) => state = t;
}

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

class _TabsRow extends ConsumerWidget {
  const _TabsRow({required this.tab});
  final TasksTab tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    String label(TasksTab t) => switch (t) {
      TasksTab.today => l10n.tasksViewToday,
      TasksTab.inbox => l10n.tasksViewInbox,
      TasksTab.archived => l10n.tasksViewArchived,
      TasksTab.upcoming => l10n.tasksViewUpcoming,
      TasksTab.all => l10n.tasksViewAll,
      TasksTab.overdue => l10n.tasksViewOverdue,
      TasksTab.completed => l10n.tasksViewCompleted,
      TasksTab.byProject => l10n.tasksViewByProject,
      TasksTab.byPriority => l10n.tasksViewByPriority,
      TasksTab.byCategory => l10n.tasksViewByCategory,
    };
    return SizedBox(
      height: 52,
      child: ListView(
        key: const Key('tasksTabs'),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: Space.page),
        children: [
          for (final t in TasksTab.values)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: Space.xs),
              child: ChoiceChip(
                label: Text(label(t)),
                selected: t == tab,
                onSelected: (_) => ref.read(tasksTabProvider.notifier).set(t),
              ),
            ),
        ],
      ),
    );
  }
}

class _QuickAdd extends ConsumerStatefulWidget {
  const _QuickAdd({required this.tab, this.projectId});
  final TasksTab tab;
  final String? projectId;
  @override
  ConsumerState<_QuickAdd> createState() => _QuickAddState();
}

class _QuickAddState extends ConsumerState<_QuickAdd> {
  final _c = TextEditingController();
  final _focus = FocusNode();
  bool _busy = false;

  @override
  void dispose() {
    _c.dispose();
    _focus.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final title = _c.text.trim();
    // Empty input: the Add button is disabled; the keyboard action just keeps focus.
    // _busy blocks a second task from a double tap while the first one saves.
    if (title.isEmpty || _busy) return;
    setState(() => _busy = true);
    try {
      await _create(title);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _create(String title) async {
    final now = ref.read(clockProvider).now();
    final due = switch (widget.tab) {
      TasksTab.today || TasksTab.overdue => Days.startOfDay(now),
      TasksTab.upcoming => Days.addDays(Days.startOfDay(now), 1),
      _ => null,
    };
    await ref
        .read(tasksRepositoryProvider)
        .create(TaskDraft(title: title, dueAt: due, projectId: widget.projectId));
    _c.clear();
    _focus.requestFocus();
    if (mounted) showMessage(context, context.l10n.taskCreated);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tab == TasksTab.completed || widget.tab == TasksTab.archived) {
      return const SizedBox(height: Space.xs);
    }
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(Space.page, Space.xs, Space.page, Space.sm),
      child: TextField(
        controller: _c,
        focusNode: _focus,
        textInputAction: TextInputAction.done,
        maxLength: 500,
        buildCounter: (_, {required currentLength, required isFocused, maxLength}) => null,
        decoration: InputDecoration(
          hintText: context.l10n.tasksQuickAddHint,
          prefixIcon: const Icon(Icons.add_task_rounded),
          suffixIcon: ValueListenableBuilder<TextEditingValue>(
            valueListenable: _c,
            builder: (context, value, _) => IconButton(
              tooltip: context.l10n.actionAdd,
              icon: const Icon(Icons.arrow_upward_rounded),
              onPressed: value.text.trim().isEmpty || _busy ? null : _submit,
            ),
          ),
        ),
        onSubmitted: (_) => _submit(),
      ),
    );
  }
}

class _TaskList extends ConsumerWidget {
  const _TaskList({required this.tab, required this.tasks, required this.projects});
  final TasksTab tab;
  final List<TaskRow> tasks;
  final Map<String, ProjectRow> projects;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    if (tasks.isEmpty) {
      return SliverToBoxAdapter(
        child: EmptyState(
          icon: switch (tab) {
            TasksTab.completed => Icons.done_all_rounded,
            TasksTab.archived => Icons.inventory_2_outlined,
            TasksTab.inbox => Icons.inbox_outlined,
            _ => Icons.wb_twilight_rounded,
          },
          hue: ModuleHue.tasks,
          title: l10n.tasksEmptyTitle,
          message: switch (tab) {
            TasksTab.completed => l10n.tasksEmptyCompleted,
            TasksTab.archived => l10n.tasksEmptyArchived,
            TasksTab.inbox => l10n.tasksEmptyInbox,
            _ => l10n.tasksEmptyMessage,
          },
        ),
      );
    }
    final now = ref.watch(clockProvider).now();
    final groups = <(String, List<TaskRow>)>[];
    switch (tab) {
      case TasksTab.today:
        final start = Days.startOfDay(now);
        final overdue = tasks.where((t) => t.dueAt!.toLocal().isBefore(start)).toList();
        final today = tasks.where((t) => !t.dueAt!.toLocal().isBefore(start)).toList();
        if (overdue.isNotEmpty) groups.add((l10n.tasksSectionOverdue, overdue));
        if (today.isNotEmpty) groups.add((l10n.tasksSectionToday, today));
      case TasksTab.upcoming:
        final byDay = groupBy(tasks, (t) => Days.key(t.dueAt!.toLocal()));
        for (final e in byDay.entries) {
          groups.add((context.fmt.relativeDay(Days.fromKey(e.key), now), e.value));
        }
      case TasksTab.byProject:
        final g = groupBy(tasks, (t) => t.projectId);
        final keys = g.keys.toList()
          ..sort(
            (a, b) => a == null
                ? 1
                : b == null
                ? -1
                : (projects[a]?.name ?? '').compareTo(projects[b]?.name ?? ''),
          );
        for (final k in keys) {
          groups.add((k == null ? l10n.noProject : projects[k]?.name ?? l10n.noProject, g[k]!));
        }
      case TasksTab.byPriority:
        final g = groupBy(tasks, (t) => t.priority);
        for (final p in [4, 3, 2, 1, 0]) {
          if (g[p] case final list?) groups.add((PriorityStyle.label(l10n, p), list));
        }
      case TasksTab.byCategory:
        final g = groupBy(tasks, (t) => t.category);
        final keys = g.keys.toList()
          ..sort((a, b) => a.isEmpty ? 1 : (b.isEmpty ? -1 : a.compareTo(b)));
        for (final k in keys) {
          groups.add((k.isEmpty ? l10n.tasksGroupNoCategory : k, g[k]!));
        }
      default:
        groups.add(('', tasks));
    }

    final children = <Widget>[];
    for (final (title, list) in groups) {
      if (title.isNotEmpty) {
        children.add(
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(
              Space.page,
              Space.md,
              Space.page,
              Space.xs,
            ),
            child: Semantics(
              header: true,
              child: Text(
                '$title · ${context.fmt.number(list.length)}',
                style: context.text.labelLarge?.copyWith(color: context.lux.ink2),
              ),
            ),
          ),
        );
      }
      for (final t in list) {
        children.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Space.page, vertical: Space.xxs),
            child: TaskTile(
              task: t,
              project: t.projectId == null ? null : projects[t.projectId],
              showProject: tab != TasksTab.byProject,
            ),
          ),
        );
      }
    }
    return SliverList.list(children: children);
  }
}

class _FilterSheet extends ConsumerWidget {
  const _FilterSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final f = ref.watch(taskFilterProvider);
    final ctrl = ref.read(taskFilterProvider.notifier);
    final projects = ref.watch(projectsProvider(false)).value ?? const [];
    final categories = ref.watch(categoriesProvider).value ?? const [];
    final labels = ref.watch(labelsProvider).value ?? const [];
    String sortLabel(TaskSort s) => switch (s) {
      TaskSort.smart => l10n.sortSmart,
      TaskSort.dueDate => l10n.sortDueDate,
      TaskSort.priority => l10n.sortPriority,
      TaskSort.created => l10n.sortCreated,
      TaskSort.title => l10n.sortTitle,
    };
    TaskFilter rebuild({
      Object? projectId = _keep,
      Object? minPriority = _keep,
      Object? category = _keep,
      Object? labelId = _keep,
      TaskSort? sort,
    }) => TaskFilter(
      view: f.view,
      projectId: identical(projectId, _keep) ? f.projectId : projectId as String?,
      minPriority: identical(minPriority, _keep) ? f.minPriority : minPriority as int?,
      category: identical(category, _keep) ? f.category : category as String?,
      labelId: identical(labelId, _keep) ? f.labelId : labelId as String?,
      sort: sort ?? f.sort,
    );

    Widget section(String title, List<Widget> chips) => Padding(
      padding: const EdgeInsets.only(top: Space.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.text.labelLarge),
          const SizedBox(height: Space.xs),
          Wrap(spacing: Space.xs, runSpacing: Space.xs, children: chips),
        ],
      ),
    );

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l10n.filterTitle, style: context.text.titleLarge),
            section(l10n.actionSort, [
              for (final s in TaskSort.values)
                ChoiceChip(
                  label: Text(sortLabel(s)),
                  selected: f.sort == s,
                  onSelected: (_) => ctrl.set(rebuild(sort: s)),
                ),
            ]),
            section(l10n.taskProject, [
              ChoiceChip(
                label: Text(l10n.filterAllProjects),
                selected: f.projectId == null,
                onSelected: (_) => ctrl.set(rebuild(projectId: null)),
              ),
              for (final p in projects)
                ChoiceChip(
                  avatar: CircleAvatar(backgroundColor: Color(p.color), radius: 6),
                  label: Text(p.name),
                  selected: f.projectId == p.id,
                  onSelected: (_) => ctrl.set(rebuild(projectId: p.id)),
                ),
            ]),
            section(l10n.tasksFilterPriorityAtLeast, [
              ChoiceChip(
                label: Text(l10n.filterAnyPriority),
                selected: f.minPriority == null,
                onSelected: (_) => ctrl.set(rebuild(minPriority: null)),
              ),
              for (final p in [1, 2, 3, 4])
                ChoiceChip(
                  avatar: Icon(PriorityStyle.icon(p), size: 16, color: PriorityStyle.color(p)),
                  label: Text(PriorityStyle.label(l10n, p)),
                  selected: f.minPriority == p,
                  onSelected: (_) => ctrl.set(rebuild(minPriority: p)),
                ),
            ]),
            if (categories.isNotEmpty)
              section(l10n.tasksFilterCategory, [
                ChoiceChip(
                  label: Text(l10n.tasksFilterAnyCategory),
                  selected: f.category == null,
                  onSelected: (_) => ctrl.set(rebuild(category: null)),
                ),
                for (final c in categories)
                  ChoiceChip(
                    label: Text(c),
                    selected: f.category == c,
                    onSelected: (_) => ctrl.set(rebuild(category: c)),
                  ),
              ]),
            if (labels.isNotEmpty)
              section(l10n.tasksFilterLabel, [
                ChoiceChip(
                  label: Text(l10n.tasksFilterAnyLabel),
                  selected: f.labelId == null,
                  onSelected: (_) => ctrl.set(rebuild(labelId: null)),
                ),
                for (final lb in labels)
                  ChoiceChip(
                    avatar: CircleAvatar(backgroundColor: Color(lb.color), radius: 6),
                    label: Text(lb.name),
                    selected: f.labelId == lb.id,
                    onSelected: (_) => ctrl.set(rebuild(labelId: lb.id)),
                  ),
              ]),
            const SizedBox(height: Space.lg),
            OutlinedButton(
              onPressed: () => ctrl.set(const TaskFilter()),
              child: Text(l10n.tasksFilterReset),
            ),
          ],
        ),
      ),
    );
  }
}

const _keep = Object();
