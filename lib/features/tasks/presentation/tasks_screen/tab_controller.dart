part of '../tasks_screen.dart';

class _TabController extends Notifier<TasksTab> {
  @override
  TasksTab build() => TasksTab.today;
  void set(TasksTab t) => state = t;
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
    // Four everyday views as chips; the other six live behind one "more" chip.
    const main = [TasksTab.today, TasksTab.inbox, TasksTab.upcoming, TasksTab.all];
    final extra = [
      for (final t in TasksTab.values)
        if (!main.contains(t)) t,
    ];
    final inExtra = extra.contains(tab);
    return SizedBox(
      height: 52,
      child: ListView(
        key: const Key('tasksTabs'),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: Space.page),
        children: [
          for (final t in main)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: Space.xs),
              child: ChoiceChip(
                label: Text(label(t)),
                selected: t == tab,
                onSelected: (_) => ref.read(tasksTabProvider.notifier).set(t),
              ),
            ),
          PopupMenuButton<TasksTab>(
            key: const Key('tasksMoreViews'),
            tooltip: l10n.actionMore,
            onSelected: (t) => ref.read(tasksTabProvider.notifier).set(t),
            itemBuilder: (_) => [
              for (final t in extra)
                CheckedPopupMenuItem(value: t, checked: t == tab, child: Text(label(t))),
            ],
            child: Chip(
              avatar: const Icon(Icons.expand_more_rounded, size: 18),
              label: Text(inExtra ? label(tab) : l10n.actionMore),
              backgroundColor: inExtra ? context.lux.surface : null,
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
