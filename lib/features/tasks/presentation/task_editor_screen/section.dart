part of '../task_editor_screen.dart';

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Space.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Semantics(
            header: true,
            child: Text(
              title.toUpperCase(),
              style: context.text.labelMedium?.copyWith(
                color: ModuleHue.tasks.a,
                letterSpacing: 1.2,
              ),
            ),
          ),
          const SizedBox(height: Space.xs),
          ...children,
        ],
      ),
    );
  }
}

class _PrioritySelector extends StatelessWidget {
  const _PrioritySelector({required this.value, required this.onChanged});
  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.taskPriority, style: context.text.labelLarge),
        const SizedBox(height: Space.xs),
        Wrap(
          spacing: Space.xs,
          runSpacing: Space.xs,
          children: [
            for (var p = 0; p <= 4; p++)
              ChoiceChip(
                avatar: Icon(PriorityStyle.icon(p), size: 16, color: PriorityStyle.color(p)),
                label: Text(PriorityStyle.label(l10n, p)),
                selected: value == p,
                onSelected: (_) => onChanged(p),
              ),
          ],
        ),
      ],
    );
  }
}

class _ProjectSelector extends ConsumerWidget {
  const _ProjectSelector({required this.value, required this.onChanged});
  final String? value;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final projects = ref.watch(projectsProvider(false)).value ?? const <ProjectRow>[];
    final known = value == null || projects.any((p) => p.id == value);
    return DropdownButtonFormField<String?>(
      initialValue: known ? value : null,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: l10n.taskProject,
        prefixIcon: const Icon(Icons.workspaces_outline),
      ),
      items: [
        DropdownMenuItem(child: Text(l10n.noProject)),
        for (final p in projects)
          DropdownMenuItem(
            value: p.id,
            child: Row(
              children: [
                GlowDotLite(color: Color(p.color)),
                const SizedBox(width: Space.xs),
                Flexible(child: Text(p.name, overflow: TextOverflow.ellipsis)),
              ],
            ),
          ),
      ],
      onChanged: onChanged,
    );
  }
}

/// Small colored dot without glow, for dense lists.
class GlowDotLite extends StatelessWidget {
  const GlowDotLite({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) => Container(
    width: 10,
    height: 10,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );
}

class _CategoryField extends ConsumerWidget {
  const _CategoryField({required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final cats = ref.watch(categoriesProvider).value ?? const <String>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: l10n.taskCategory,
            hintText: l10n.taskCategoryHint,
            prefixIcon: const Icon(Icons.category_outlined),
          ),
        ),
        if (cats.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: Space.xs),
            child: Wrap(
              spacing: Space.xs,
              children: [
                for (final c in cats)
                  ActionChip(label: Text(c), onPressed: () => controller.text = c),
              ],
            ),
          ),
      ],
    );
  }
}

class _TrackedTime extends ConsumerWidget {
  const _TrackedTime({required this.taskId});
  final String taskId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final secs = ref.watch(trackedSecondsProvider(taskId)).value ?? 0;
    if (secs == 0) return const SizedBox.shrink();
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(Icons.timer_outlined, color: ModuleHue.focus.a),
      title: Text(context.l10n.taskTracked),
      subtitle: Text(
        '${context.fmt.duration(Duration(seconds: secs))} · '
        '${context.l10n.statMeasuredNote}',
      ),
    );
  }
}

class _LabelsEditor extends ConsumerWidget {
  const _LabelsEditor({required this.taskId});
  final String taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final all = ref.watch(labelsProvider).value ?? const <LabelRow>[];
    final mine = {for (final l in ref.watch(taskLabelsProvider(taskId)).value ?? const <LabelRow>[]) l.id};
    final repo = ref.read(tasksRepositoryProvider);
    return Padding(
      padding: const EdgeInsets.only(top: Space.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.taskLabels, style: context.text.labelLarge),
          const SizedBox(height: Space.xs),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final lb in all)
                FilterChip(
                  avatar: CircleAvatar(backgroundColor: Color(lb.color), radius: 6),
                  label: Text(lb.name),
                  selected: mine.contains(lb.id),
                  onSelected: (on) => repo.setLabel(taskId, lb.id, on),
                ),
              ActionChip(
                avatar: const Icon(Icons.add_rounded, size: 18),
                label: Text(l10n.taskAddLabel),
                onPressed: () async {
                  final name = await promptText(
                    context,
                    title: l10n.taskAddLabel,
                    hint: l10n.taskLabelName,
                  );
                  if (name == null || name.isEmpty) return;
                  final color = Palette.swatches[all.length % Palette.swatches.length].toARGB32();
                  final id = await repo.ensureLabel(name, color);
                  await repo.setLabel(taskId, id, true);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SubtasksEditor extends ConsumerWidget {
  const _SubtasksEditor({required this.taskId});
  final String taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final subs = ref.watch(subtasksProvider(taskId)).value ?? const <TaskRow>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _SubHeader(
          title: l10n.taskSubtasks,
          trailing: subs.isEmpty
              ? null
              : l10n.taskSubtaskProgress(subs.where((s) => s.done).length, subs.length),
        ),
        for (final s in subs)
          Padding(
            padding: const EdgeInsets.only(bottom: Space.xxs),
            child: TaskTile(task: s, showProject: false),
          ),
        _InlineAdd(
          hint: l10n.taskAddSubtask,
          onAdd: (text) async {
            final parent = await ref.read(tasksRepositoryProvider).byId(taskId);
            await ref
                .read(tasksRepositoryProvider)
                .create(TaskDraft(title: text, parentId: taskId, projectId: parent?.projectId));
          },
        ),
      ],
    );
  }
}

class _ChecklistEditor extends ConsumerWidget {
  const _ChecklistEditor({required this.taskId});
  final String taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final items = ref.watch(checklistProvider(taskId)).value ?? const <ChecklistItemRow>[];
    final repo = ref.read(tasksRepositoryProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _SubHeader(
          title: l10n.taskChecklist,
          trailing: items.isEmpty
              ? null
              : l10n.taskSubtaskProgress(items.where((i) => i.done).length, items.length),
        ),
        for (final i in items)
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: i.done,
            title: Text(
              i.label,
              style: i.done ? const TextStyle(decoration: TextDecoration.lineThrough) : null,
            ),
            onChanged: (v) => repo.toggleChecklistItem(i.id, v ?? false),
            secondary: IconButton(
              tooltip: l10n.actionDelete,
              icon: const Icon(Icons.close_rounded, size: 18),
              onPressed: () => repo.deleteChecklistItem(i.id),
            ),
          ),
        _InlineAdd(hint: l10n.taskAddChecklistItem, onAdd: (t) => repo.addChecklistItem(taskId, t)),
      ],
    );
  }
}

class _DependenciesEditor extends ConsumerWidget {
  const _DependenciesEditor({required this.taskId});
  final String taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final blockers = ref.watch(blockersProvider(taskId)).value ?? const <TaskRow>[];
    final repo = ref.read(tasksRepositoryProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _SubHeader(title: l10n.taskDependencies),
        for (final b in blockers)
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              b.done ? Icons.check_circle_rounded : Icons.block_rounded,
              color: b.done ? context.lux.success : context.lux.warning,
            ),
            title: Text(b.title),
            onTap: () => context.push(Routes.task(b.id)),
            trailing: IconButton(
              tooltip: l10n.actionUnlink,
              icon: const Icon(Icons.link_off_rounded),
              onPressed: () => repo.removeDependency(taskId, b.id),
            ),
          ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TextButton.icon(
            icon: const Icon(Icons.add_link_rounded),
            label: Text(l10n.taskAddDependency),
            onPressed: () async {
              final t = await pickTask(context, exclude: {taskId, ...blockers.map((b) => b.id)});
              if (t == null) return;
              try {
                await repo.addDependency(taskId, t.id);
              } on TaskValidationException {
                if (context.mounted) showMessage(context, l10n.validationDependencyCycle);
              }
            },
          ),
        ),
      ],
    );
  }
}
