part of '../event_editor_screen.dart';

extension _EventEditorActions on _EventEditorScreenState {
  Future<void> _load() async {
    if (_isEdit) {
      final e = await ref.read(eventsRepositoryProvider).byId(widget.eventId!);
      if (!mounted) return;
      if (e == null || e.deletedAt != null) {
        _update(() {
          _notFound = true;
          _loading = false;
        });
        return;
      }
      _update(() {
        _title.text = e.title;
        _description.text = e.description;
        _kind = EventStyle.kindOf(e);
        _allDay = e.allDay;
        _start = e.startAt.toLocal();
        _end = e.endAt.toLocal();
        _recurrence = e.recurrence;
        _reminder = e.reminderMinutes;
        _color = e.color;
        _taskId = e.taskId;
        _timeZone = e.timeZone;
        _loading = false;
      });
      return;
    }
    if (widget.taskId != null) {
      final task = await ref.read(tasksRepositoryProvider).byId(widget.taskId!);
      if (!mounted) return;
      if (task != null) _applyTask(task, scheduling: true);
    }
    if (mounted) _update(() => _loading = false);
    final zone = await localTimeZoneName();
    if (mounted) _timeZone = zone;
  }

  void _applyTask(TaskRow task, {bool scheduling = false}) {
    _update(() {
      _taskId = task.id;
      if (_title.text.trim().isEmpty) _title.text = task.title;
      if (scheduling) {
        _kind = EventKind.timeBlock;
        final minutes = task.estimateMinutes;
        if (minutes != null && minutes > 0) _end = _start.add(Duration(minutes: minutes));
      }
    });
  }

  void _setAllDay(bool v) {
    _update(() {
      _timeError = null;
      if (v) {
        final first = CalendarMath.day(_start);
        var endExclusive = CalendarMath.day(_end);
        if (!_end.isAtSameMomentAs(endExclusive)) {
          endExclusive = CalendarMath.addDays(endExclusive, 1);
        }
        if (!endExclusive.isAfter(first)) endExclusive = CalendarMath.addDays(first, 1);
        _start = first;
        _end = endExclusive;
      } else {
        _start = CalendarMath.atMinute(CalendarMath.day(_start), 9 * 60);
        _end = _start.add(const Duration(hours: 1));
      }
      _allDay = v;
    });
  }

  Future<void> _pickStart() async {
    final duration = _end.difference(_start);
    if (_allDay) {
      final d = await pickDate(context, initial: _start, first: DateTime(_start.year - 5));
      if (d == null) return;
      final days = CalendarMath.day(_end).difference(CalendarMath.day(_start)).inHours ~/ 24;
      _update(() {
        _start = CalendarMath.day(d);
        _end = CalendarMath.addDays(_start, days < 1 ? 1 : days);
        _timeError = null;
      });
      return;
    }
    final t = await pickDateTime(context, initial: _start);
    if (t == null) return;
    _update(() {
      _start = t;
      _end = t.add(duration.isNegative ? const Duration(hours: 1) : duration);
      _timeError = null;
    });
  }

  Future<void> _pickEnd() async {
    if (_allDay) {
      final d = await pickDate(context, initial: _lastAllDay, first: DateTime(_start.year - 5));
      if (d == null) return;
      _update(() {
        _end = CalendarMath.addDays(CalendarMath.day(d), 1);
        _timeError = null;
      });
      return;
    }
    final t = await pickDateTime(context, initial: _end);
    if (t == null) return;
    _update(() {
      _end = t;
      _timeError = null;
    });
  }

  Future<void> _pickRepeat() async {
    final r = await pickRecurrence(context, current: _recurrence);
    if (r == null || !mounted) return;
    _update(() {
      _recurrence = r.isEmpty ? null : r;
      _repeatError = null;
    });
  }

  Future<void> _pickTask() async {
    final t = await pickTask(context);
    if (t == null || !mounted) return;
    _applyTask(t);
  }

  // ---------- persistence

  bool _validate() {
    final l10n = context.l10n;
    _update(() {
      _titleError = _title.text.trim().isEmpty ? l10n.validationTitleRequired : null;
      _timeError = _end.isAfter(_start) ? null : l10n.validationEndBeforeStart;
      _repeatError = _recurrence != null && RecurrenceRule.tryParse(_recurrence) == null
          ? l10n.validationInvalidRepeat
          : null;
    });
    return _titleError == null && _timeError == null && _repeatError == null;
  }

  Future<void> _save() async {
    if (_saving || !_validate()) return;
    final l10n = context.l10n;
    final draft = EventDraft(
      title: _title.text,
      description: _description.text.trim(),
      start: _start,
      end: _end,
      allDay: _allDay,
      kind: _kind,
      recurrence: _recurrence,
      reminderMinutes: _reminder,
      taskId: _taskId,
      color: _color,
      timeZone: _timeZone,
    );
    _update(() => _saving = true);
    final repo = ref.read(eventsRepositoryProvider);
    try {
      if (_isEdit) {
        await repo.update(widget.eventId!, draft);
      } else {
        await repo.create(draft);
      }
    } on EventValidationException catch (e) {
      if (!mounted) return;
      _update(() {
        _saving = false;
        switch (e.code) {
          case 'titleRequired':
            _titleError = l10n.validationTitleRequired;
          case 'endBeforeStart':
            _timeError = l10n.validationEndBeforeStart;
          default:
            _repeatError = l10n.validationInvalidRepeat;
        }
      });
      return;
    } on Exception {
      if (!mounted) return;
      _update(() => _saving = false);
      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(SnackBar(content: Text(l10n.errorSaveFailed)));
      return;
    }
    if (!mounted) return;
    leaveScreen(context, Routes.calendar);
  }

  Future<void> _delete() async {
    final id = widget.eventId;
    if (id == null) return;
    final l10n = context.l10n;
    final repo = ref.read(eventsRepositoryProvider);
    final messenger = ScaffoldMessenger.maybeOf(context);
    await repo.softDelete(id);
    if (!mounted) return;
    leaveScreen(context, Routes.calendar);
    messenger
      ?..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(l10n.calendarEventDeleted),
          action: SnackBarAction(label: l10n.actionUndo, onPressed: () => repo.restore(id)),
        ),
      );
  }

  // ---------- UI

  String _reminderLabel(int? m) {
    final l10n = context.l10n;
    if (m == null) return l10n.reminderNone;
    if (m == 0) return l10n.reminderAtTime;
    if (m == 1440) return l10n.reminderDayBefore;
    if (m % 60 == 0) return l10n.reminderHoursBefore(m ~/ 60);
    return l10n.reminderMinutesBefore(m);
  }
}
