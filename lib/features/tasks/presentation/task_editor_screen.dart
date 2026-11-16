import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/pickers.dart';
import '../../../shared/widgets/recurrence_picker.dart';
import '../../../shared/widgets/task_picker.dart';
import '../../notes/application/notes_providers.dart';
import '../../projects/application/projects_providers.dart';
import '../application/tasks_providers.dart';
import '../data/tasks_repository.dart';
import 'widgets/task_tile.dart';
import 'widgets/task_visuals.dart';

final _notesForTaskProvider = StreamProvider.autoDispose.family<List<NoteRow>, String>(
  (ref, id) => ref.watch(notesRepositoryProvider).watchNotesForTask(id),
);

/// Relative reminder presets, in minutes before the due moment.
const _reminderPresets = [0, 5, 15, 30, 60, 1440];

class TaskEditorScreen extends ConsumerStatefulWidget {
  const TaskEditorScreen({super.key, this.taskId, this.parentId, this.projectId, this.initialDue});
  final String? taskId;
  final String? parentId;
  final String? projectId;
  final DateTime? initialDue;

  @override
  ConsumerState<TaskEditorScreen> createState() => _TaskEditorScreenState();
}

class _TaskEditorScreenState extends ConsumerState<TaskEditorScreen> {
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _notes = TextEditingController();
  final _category = TextEditingController();
  final _estimate = TextEditingController();

  String? _id;
  TaskRow? _loaded;
  bool _loading = true;
  bool _saving = false;
  String? _titleError;
  String? _formError;

  int _priority = 0;
  DateTime? _start;
  DateTime? _due;
  bool _dueHasTime = false;
  DateTime? _reminder;
  String? _recurrence;
  String? _projectId;

  bool get _isNew => _id == null;

  @override
  void initState() {
    super.initState();
    _id = widget.taskId;
    _projectId = widget.projectId;
    _due = widget.initialDue;
    _load();
  }

  Future<void> _load() async {
    if (_id == null) {
      setState(() => _loading = false);
      return;
    }
    final t = await ref.read(tasksRepositoryProvider).byId(_id!);
    if (!mounted) return;
    if (t != null) {
      _loaded = t;
      _title.text = t.title;
      _description.text = t.description;
      _notes.text = t.notes;
      _category.text = t.category;
      _estimate.text = t.estimateMinutes?.toString() ?? '';
      _priority = t.priority;
      _start = t.startAt?.toLocal();
      _due = t.dueAt?.toLocal();
      _dueHasTime = t.dueHasTime;
      _reminder = t.reminderAt?.toLocal();
      _recurrence = t.recurrence;
      _projectId = t.projectId;
    }
    setState(() => _loading = false);
  }

  @override
  void dispose() {
    for (final c in [_title, _description, _notes, _category, _estimate]) {
      c.dispose();
    }
    super.dispose();
  }

  TaskDraft _draft() => TaskDraft(
    title: _title.text,
    description: _description.text,
    notes: _notes.text,
    projectId: _projectId,
    parentId: _loaded?.parentId ?? widget.parentId,
    category: _category.text,
    priority: _priority,
    startAt: _start,
    dueAt: _due,
    dueHasTime: _dueHasTime,
    reminderAt: _reminder,
    recurrence: _recurrence,
    estimateMinutes: int.tryParse(_estimate.text.trim()),
  );

  Future<bool> _save({bool pop = true}) async {
    final l10n = context.l10n;
    setState(() {
      _titleError = null;
      _formError = null;
    });
    final est = _estimate.text.trim();
    if (est.isNotEmpty && ((int.tryParse(est) ?? 0) <= 0)) {
      setState(() => _formError = l10n.validationPositiveNumber);
      return false;
    }
    setState(() => _saving = true);
    try {
      final repo = ref.read(tasksRepositoryProvider);
      if (_isNew) {
        _id = await repo.create(_draft());
        _loaded = await repo.byId(_id!);
      } else {
        await repo.update(_id!, _draft());
      }
      if (!mounted) return true;
      if (pop) {
        showMessage(context, l10n.taskSaved);
        context.pop();
      }
      return true;
    } on TaskValidationException catch (e) {
      setState(() {
        switch (e.code) {
          case 'titleRequired':
            _titleError = l10n.validationTitleRequired;
          case 'titleTooLong':
            _titleError = l10n.validationTooLong;
          case 'startAfterDue':
            _formError = l10n.validationStartAfterDue;
          case 'invalidRecurrence':
            _formError = l10n.validationInvalidRepeat;
          default:
            _formError = l10n.errorSaveFailed;
        }
      });
      return false;
    } on Object {
      if (mounted) setState(() => _formError = l10n.errorSaveFailed);
      return false;
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _delete() async {
    final id = _id;
    if (id == null) return;
    final repo = ref.read(tasksRepositoryProvider);
    await repo.softDelete(id);
    if (!mounted) return;
    showUndoSnack(context, context.l10n.deletedItem, onUndo: () => repo.restore(id));
    context.pop();
  }

  // ---- reminder ------------------------------------------------------------

  String _reminderLabel() {
    final l10n = context.l10n;
    final r = _reminder;
    if (r == null) return l10n.reminderNone;
    if (_due != null) {
      final diff = _due!.difference(r).inMinutes;
      if (diff == 0) return l10n.reminderAtTime;
      if (_reminderPresets.contains(diff)) return _presetLabel(diff);
    }
    return context.fmt.dateTime(r);
  }

  String _presetLabel(int m) {
    final l10n = context.l10n;
    if (m == 0) return l10n.reminderAtTime;
    if (m == 1440) return l10n.reminderDayBefore;
    if (m % 60 == 0) return l10n.reminderHoursBefore(m ~/ 60);
    return l10n.reminderMinutesBefore(m);
  }

  Future<void> _pickReminder() async {
    final l10n = context.l10n;
    final due = _due;
    final choice = await showModalBottomSheet<Object>(
      context: context,
      showDragHandle: true,
      builder: (ctx) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(title: Text(l10n.reminderNone), onTap: () => Navigator.pop(ctx, -1)),
              if (due == null)
                ListTile(
                  enabled: false,
                  leading: const Icon(Icons.info_outline_rounded),
                  title: Text(l10n.taskReminderNeedsDue),
                )
              else
                for (final m in _reminderPresets)
                  ListTile(title: Text(_presetLabel(m)), onTap: () => Navigator.pop(ctx, m)),
              ListTile(
                leading: const Icon(Icons.schedule_rounded),
                title: Text(l10n.reminderCustomTime),
                onTap: () => Navigator.pop(ctx, 'custom'),
              ),
            ],
          ),
        ),
      ),
    );
    if (!mounted || choice == null) return;
    if (choice == -1) {
      setState(() => _reminder = null);
    } else if (choice == 'custom') {
      final dt = await pickDateTime(context, initial: _reminder ?? _due);
      if (dt != null) setState(() => _reminder = dt);
    } else if (choice is int && due != null) {
      // Date-only due dates remind at 09:00 local on the due day.
      final anchor = _dueHasTime ? due : DateTime(due.year, due.month, due.day, 9);
      setState(() => _reminder = anchor.subtract(Duration(minutes: choice)));
    }
  }

  // ---- build ---------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (_loading) return const Scaffold(body: Center(child: CircularProgressIndicator()));
    return Scaffold(
      appBar: AppBar(
        title: Text(_isNew ? l10n.taskNew : l10n.taskEdit),
        actions: [
          if (!_isNew)
            IconButton(
              tooltip: l10n.actionDelete,
              icon: const Icon(Icons.delete_outline_rounded),
              onPressed: _delete,
            ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: Space.sm),
            child: FilledButton(
              onPressed: _saving ? null : () => _save(),
              child: Text(l10n.actionSave),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsetsDirectional.fromSTEB(Space.page, Space.sm, Space.page, 120),
          children: [
            TextField(
              controller: _title,
              autofocus: _isNew,
              maxLines: null,
              textCapitalization: TextCapitalization.sentences,
              style: context.text.headlineSmall,
              decoration: InputDecoration(
                labelText: l10n.taskTitleLabel,
                hintText: l10n.taskTitleHint,
                errorText: _titleError,
              ),
            ),
            if (_formError != null)
              Padding(
                padding: const EdgeInsets.only(top: Space.sm),
                child: Text(
                  _formError!,
                  style: context.text.bodyMedium?.copyWith(color: context.lux.danger),
                ),
              ),
            const SizedBox(height: Space.lg),
            _PrioritySelector(value: _priority, onChanged: (p) => setState(() => _priority = p)),
            _Section(
              title: l10n.taskPlanning,
              children: [
                _row(
                  icon: Icons.event_rounded,
                  label: l10n.taskDueDate,
                  value: _due == null
                      ? l10n.taskNoDate
                      : _dueHasTime
                      ? context.fmt.dateTime(_due!)
                      : context.fmt.dayLong(_due!),
                  onTap: () async {
                    final d = await pickDate(context, initial: _due);
                    if (d == null) return;
                    setState(
                      () => _due = _dueHasTime && _due != null
                          ? DateTime(d.year, d.month, d.day, _due!.hour, _due!.minute)
                          : d,
                    );
                  },
                  onClear: _due == null ? null : () => setState(() => _due = null),
                ),
                if (_due != null)
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(l10n.taskSetTime),
                    subtitle: _dueHasTime ? null : Text(l10n.taskAllDay),
                    value: _dueHasTime,
                    onChanged: (on) async {
                      if (!on) {
                        setState(() {
                          _dueHasTime = false;
                          _due = Days.startOfDay(_due!);
                        });
                        return;
                      }
                      final t = await pickTime(context);
                      if (t == null) return;
                      setState(() {
                        _dueHasTime = true;
                        _due = DateTime(_due!.year, _due!.month, _due!.day, t.hour, t.minute);
                      });
                    },
                  ),
                _row(
                  icon: Icons.play_circle_outline_rounded,
                  label: l10n.taskStartDate,
                  value: _start == null ? l10n.taskNoDate : context.fmt.dayLong(_start!),
                  onTap: () async {
                    final d = await pickDate(context, initial: _start ?? _due);
                    if (d != null) setState(() => _start = d);
                  },
                  onClear: _start == null ? null : () => setState(() => _start = null),
                ),
                _row(
                  icon: Icons.notifications_none_rounded,
                  label: l10n.taskReminder,
                  value: _reminderLabel(),
                  onTap: _pickReminder,
                ),
                _row(
                  icon: Icons.repeat_rounded,
                  label: l10n.taskRepeat,
                  value: describeRecurrence(context, _recurrence),
                  onTap: () async {
                    final r = await pickRecurrence(context, current: _recurrence);
                    if (r == null) return;
                    setState(() => _recurrence = r.isEmpty ? null : r);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: Space.sm),
                  child: TextField(
                    controller: _estimate,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: l10n.taskEstimateMinutes,
                      prefixIcon: const Icon(Icons.hourglass_empty_rounded),
                    ),
                  ),
                ),
                if (!_isNew) _TrackedTime(taskId: _id!),
              ],
            ),
            _Section(
              title: l10n.taskOrganize,
              children: [
                _ProjectSelector(
                  value: _projectId,
                  onChanged: (id) => setState(() => _projectId = id),
                ),
                const SizedBox(height: Space.sm),
                _CategoryField(controller: _category),
                if (!_isNew) _LabelsEditor(taskId: _id!),
              ],
            ),
            _Section(
              title: l10n.taskMoreDetails,
              children: [
                TextField(
                  controller: _description,
                  maxLines: null,
                  minLines: 2,
                  decoration: InputDecoration(labelText: l10n.taskDescriptionLabel),
                ),
                const SizedBox(height: Space.sm),
                TextField(
                  controller: _notes,
                  maxLines: null,
                  minLines: 2,
                  decoration: InputDecoration(labelText: l10n.taskNotesLabel),
                ),
              ],
            ),
            _Section(
              title: l10n.taskBreakdown,
              children: [
                if (_isNew)
                  Text(
                    l10n.taskSubtaskDetailsHint,
                    style: context.text.bodyMedium?.copyWith(color: context.lux.ink3),
                  )
                else ...[
                  if (_loaded?.parentId == null) _SubtasksEditor(taskId: _id!),
                  _ChecklistEditor(taskId: _id!),
                  _DependenciesEditor(taskId: _id!),
                  _LinkedNotes(taskId: _id!),
                ],
              ],
            ),
            if (!_isNew && !(_loaded?.done ?? false)) ...[
              const SizedBox(height: Space.lg),
              OutlinedButton.icon(
                icon: const Icon(Icons.timer_outlined),
                label: Text(l10n.taskStartFocus),
                onPressed: () async {
                  if (await _save(pop: false) && context.mounted) {
                    context.go('${Routes.focus}?task=$_id');
                  }
                },
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _row({
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
    VoidCallback? onClear,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
      onTap: onTap,
      trailing: onClear == null
          ? null
          : IconButton(
              tooltip: context.l10n.taskRemoveDate,
              icon: const Icon(Icons.close_rounded),
              onPressed: onClear,
            ),
    );
  }
}

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
        DropdownMenuItem(value: null, child: Text(l10n.noProject)),
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
    final mine = {for (final l in ref.watch(taskLabelsProvider(taskId)).value ?? const []) l.id};
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

class _LinkedNotes extends ConsumerWidget {
  const _LinkedNotes({required this.taskId});
  final String taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(_notesForTaskProvider(taskId)).value ?? const <NoteRow>[];
    if (notes.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _SubHeader(title: context.l10n.taskLinkedNotes),
        for (final n in notes)
          LuxCard(
            padding: const EdgeInsets.all(Space.sm),
            onTap: () => context.push(Routes.note(n.id)),
            child: Row(
              children: [
                Icon(Icons.sticky_note_2_outlined, color: ModuleHue.notes.a),
                const SizedBox(width: Space.sm),
                Expanded(
                  child: Text(
                    n.title.isEmpty ? context.l10n.untitled : n.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _SubHeader extends StatelessWidget {
  const _SubHeader({required this.title, this.trailing});
  final String title;
  final String? trailing;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: Space.md, bottom: Space.xxs),
    child: Row(
      children: [
        Expanded(child: Text(title, style: context.text.labelLarge)),
        if (trailing != null)
          Text(trailing!, style: context.text.labelMedium?.copyWith(color: context.lux.ink3)),
      ],
    ),
  );
}

class _InlineAdd extends StatefulWidget {
  const _InlineAdd({required this.hint, required this.onAdd});
  final String hint;
  final Future<void> Function(String) onAdd;
  @override
  State<_InlineAdd> createState() => _InlineAddState();
}

class _InlineAddState extends State<_InlineAdd> {
  final _c = TextEditingController();
  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final t = _c.text.trim();
    if (t.isEmpty) return;
    await widget.onAdd(t);
    _c.clear();
  }

  @override
  Widget build(BuildContext context) => TextField(
    controller: _c,
    decoration: InputDecoration(
      isDense: true,
      hintText: widget.hint,
      prefixIcon: const Icon(Icons.add_rounded),
    ),
    onSubmitted: (_) => _submit(),
  );
}
