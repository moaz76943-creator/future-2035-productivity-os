part of '../task_editor_screen.dart';

class _TaskEditorScreenState extends ConsumerState<TaskEditorScreen> {
  /// setState for the extension parts (keeps setState protected).
  void _update(VoidCallback fn) => setState(fn);

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

  @override
  void dispose() {
    for (final c in [_title, _description, _notes, _category, _estimate]) {
      c.dispose();
    }
    super.dispose();
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
              key: const Key('taskArchiveButton'),
              tooltip: _loaded?.archivedAt != null ? l10n.actionUnarchive : l10n.actionArchive,
              icon: Icon(
                _loaded?.archivedAt != null ? Icons.unarchive_outlined : Icons.inventory_2_outlined,
              ),
              onPressed: _toggleArchive,
            ),
          if (!_isNew)
            IconButton(
              tooltip: l10n.actionDelete,
              icon: const Icon(Icons.delete_outline_rounded),
              onPressed: _delete,
            ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: Space.sm),
            child: FilledButton(onPressed: _saving ? null : _save, child: Text(l10n.actionSave)),
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
                suffixIcon: MicButton(controller: _title),
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
            if (_loaded?.archivedAt != null)
              Padding(
                padding: const EdgeInsets.only(top: Space.sm),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: LuxPill(label: l10n.taskArchivedBadge),
                ),
              ),
            if (!_isNew && !(_loaded?.done ?? false))
              SwitchListTile(
                key: const Key('taskInProgressSwitch'),
                contentPadding: EdgeInsets.zero,
                secondary: const Icon(Icons.play_circle_outline_rounded),
                title: Text(l10n.taskStatusInProgress),
                value: _loaded?.status == TaskStatus.inProgress,
                onChanged: _setInProgress,
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
              collapsed: _isNew,
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
              collapsed: _isNew,
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
              collapsed: _isNew,
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
}
