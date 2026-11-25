part of '../task_editor_screen.dart';

extension _TaskEditorActions on _TaskEditorScreenState {
  Future<void> _load() async {
    if (_id == null) {
      _update(() => _loading = false);
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
    _update(() => _loading = false);
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
    _update(() {
      _titleError = null;
      _formError = null;
    });
    final est = _estimate.text.trim();
    if (est.isNotEmpty && ((int.tryParse(est) ?? 0) <= 0)) {
      _update(() => _formError = l10n.validationPositiveNumber);
      return false;
    }
    _update(() => _saving = true);
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
        leaveScreen(context, Routes.tasks);
      }
      return true;
    } on TaskValidationException catch (e) {
      _update(() {
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
      if (mounted) _update(() => _formError = l10n.errorSaveFailed);
      return false;
    } finally {
      if (mounted) _update(() => _saving = false);
    }
  }

  Future<void> _delete() async {
    final id = _id;
    if (id == null) return;
    final repo = ref.read(tasksRepositoryProvider);
    await repo.softDelete(id);
    if (!mounted) return;
    showUndoSnack(context, context.l10n.deletedItem, onUndo: () => repo.restore(id));
    leaveScreen(context, Routes.tasks);
  }

  Future<void> _toggleArchive() async {
    final id = _id;
    if (id == null) return;
    final repo = ref.read(tasksRepositoryProvider);
    final l10n = context.l10n;
    if (_loaded?.archivedAt != null) {
      await repo.unarchive(id);
      final fresh = await repo.byId(id);
      if (!mounted) return;
      _update(() => _loaded = fresh);
      showMessage(context, l10n.taskUnarchived);
      return;
    }
    await repo.archive(id);
    if (!mounted) return;
    showUndoSnack(context, l10n.taskArchived, onUndo: () => repo.unarchive(id));
    leaveScreen(context, Routes.tasks);
  }

  Future<void> _setInProgress(bool on) async {
    final id = _id;
    if (id == null) return;
    final repo = ref.read(tasksRepositoryProvider);
    await repo.setInProgress(id, on);
    final fresh = await repo.byId(id);
    if (mounted) _update(() => _loaded = fresh);
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
      useRootNavigator: true,
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
      _update(() => _reminder = null);
    } else if (choice == 'custom') {
      final dt = await pickDateTime(context, initial: _reminder ?? _due);
      if (dt != null) _update(() => _reminder = dt);
    } else if (choice is int && due != null) {
      // Date-only due dates remind at 09:00 local on the due day.
      final anchor = _dueHasTime ? due : DateTime(due.year, due.month, due.day, 9);
      _update(() => _reminder = anchor.subtract(Duration(minutes: choice)));
    }
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
