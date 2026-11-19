part of '../tasks_screen.dart';

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
