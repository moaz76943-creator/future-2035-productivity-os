import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/recurrence/recurrence_rule.dart';
import '../../../shared/widgets/pickers.dart';
import '../../../shared/widgets/recurrence_picker.dart';
import '../../../shared/widgets/task_picker.dart';
import '../../tasks/application/tasks_providers.dart';
import '../application/calendar_layout.dart';
import '../application/calendar_providers.dart';
import '../data/events_repository.dart';
import 'event_style.dart';

/// Reminder offsets offered in the editor (minutes before start).
const eventReminderOptions = <int>[0, 5, 10, 15, 30, 60, 1440];

/// Resolves the device's IANA zone name; falls back to UTC.
Future<String> localTimeZoneName() async {
  try {
    final info = await FlutterTimezone.getLocalTimezone();
    final id = info.identifier;
    return id.isEmpty ? 'UTC' : id;
  } catch (_) {
    return 'UTC';
  }
}

/// Creates or edits an event. [start] prefills a new event's start time and
/// [taskId] links a task ("schedule as time block").
class EventEditorScreen extends ConsumerStatefulWidget {
  const EventEditorScreen({super.key, this.eventId, this.start, this.taskId});
  final String? eventId;
  final DateTime? start;
  final String? taskId;

  @override
  ConsumerState<EventEditorScreen> createState() => _EventEditorScreenState();
}

class _EventEditorScreenState extends ConsumerState<EventEditorScreen> {
  final _title = TextEditingController();
  final _description = TextEditingController();
  EventKind _kind = EventKind.event;
  bool _allDay = false;
  late DateTime _start;
  late DateTime _end;
  String? _recurrence;
  int? _reminder;
  int? _color;
  String? _taskId;
  String _timeZone = 'UTC';

  bool _loading = true;
  bool _notFound = false;
  bool _saving = false;
  String? _titleError;
  String? _timeError;
  String? _repeatError;

  bool get _isEdit => widget.eventId != null;

  @override
  void initState() {
    super.initState();
    final now = ref.read(clockProvider).now();
    _start = widget.start ?? CalendarMath.atMinute(CalendarMath.day(now), (now.hour + 1) * 60);
    _end = _start.add(const Duration(hours: 1));
    _taskId = widget.taskId;
    _load();
  }

  Future<void> _load() async {
    if (_isEdit) {
      final e = await ref.read(eventsRepositoryProvider).byId(widget.eventId!);
      if (!mounted) return;
      if (e == null || e.deletedAt != null) {
        setState(() {
          _notFound = true;
          _loading = false;
        });
        return;
      }
      setState(() {
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
    if (mounted) setState(() => _loading = false);
    final zone = await localTimeZoneName();
    if (mounted) _timeZone = zone;
  }

  void _applyTask(TaskRow task, {bool scheduling = false}) {
    setState(() {
      _taskId = task.id;
      if (_title.text.trim().isEmpty) _title.text = task.title;
      if (scheduling) {
        _kind = EventKind.timeBlock;
        final minutes = task.estimateMinutes;
        if (minutes != null && minutes > 0) _end = _start.add(Duration(minutes: minutes));
      }
    });
  }

  @override
  void dispose() {
    _title.dispose();
    _description.dispose();
    super.dispose();
  }

  // ---------- date handling

  DateTime get _lastAllDay => CalendarMath.addDays(CalendarMath.day(_end), -1);

  void _setAllDay(bool v) {
    setState(() {
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
      setState(() {
        _start = CalendarMath.day(d);
        _end = CalendarMath.addDays(_start, days < 1 ? 1 : days);
        _timeError = null;
      });
      return;
    }
    final t = await pickDateTime(context, initial: _start);
    if (t == null) return;
    setState(() {
      _start = t;
      _end = t.add(duration.isNegative ? const Duration(hours: 1) : duration);
      _timeError = null;
    });
  }

  Future<void> _pickEnd() async {
    if (_allDay) {
      final d = await pickDate(context, initial: _lastAllDay, first: DateTime(_start.year - 5));
      if (d == null) return;
      setState(() {
        _end = CalendarMath.addDays(CalendarMath.day(d), 1);
        _timeError = null;
      });
      return;
    }
    final t = await pickDateTime(context, initial: _end);
    if (t == null) return;
    setState(() {
      _end = t;
      _timeError = null;
    });
  }

  Future<void> _pickRepeat() async {
    final r = await pickRecurrence(context, current: _recurrence);
    if (r == null || !mounted) return;
    setState(() {
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
    setState(() {
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
    setState(() => _saving = true);
    final repo = ref.read(eventsRepositoryProvider);
    try {
      if (_isEdit) {
        await repo.update(widget.eventId!, draft);
      } else {
        await repo.create(draft);
      }
    } on EventValidationException catch (e) {
      if (!mounted) return;
      setState(() {
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
      setState(() => _saving = false);
      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(SnackBar(content: Text(l10n.errorSaveFailed)));
      return;
    }
    if (!mounted) return;
    await Navigator.of(context).maybePop();
  }

  Future<void> _delete() async {
    final id = widget.eventId;
    if (id == null) return;
    final l10n = context.l10n;
    final repo = ref.read(eventsRepositoryProvider);
    final messenger = ScaffoldMessenger.maybeOf(context);
    await repo.softDelete(id);
    if (!mounted) return;
    await Navigator.of(context).maybePop();
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

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final title = _isEdit ? l10n.eventEdit : l10n.eventNew;
    if (_loading || _notFound) {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: _notFound
            ? EmptyState(
                icon: Icons.event_busy_rounded,
                hue: ModuleHue.calendar,
                title: l10n.calendarEventNotFound,
                message: l10n.errorLoadFailed,
              )
            : LoadingState(label: l10n.stateLoading),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
        actions: [
          if (_isEdit)
            IconButton(
              tooltip: l10n.actionDelete,
              icon: const Icon(Icons.delete_outline_rounded),
              onPressed: _delete,
            ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: Space.xs),
            child: FilledButton(onPressed: _saving ? null : _save, child: Text(l10n.actionSave)),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, Space.xxxl),
        children: [
          TextField(
            controller: _title,
            autofocus: !_isEdit && widget.taskId == null,
            textCapitalization: TextCapitalization.sentences,
            maxLength: 300,
            style: context.text.titleLarge,
            decoration: InputDecoration(
              hintText: l10n.eventTitleHint,
              errorText: _titleError,
              counterText: '',
            ),
            onChanged: (_) {
              if (_titleError != null) setState(() => _titleError = null);
            },
          ),
          const SizedBox(height: Space.md),
          _label(context, l10n.eventKind),
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final k in EventKind.values)
                ChoiceChip(
                  avatar: Icon(EventStyle.kindIcon(k), size: 18, color: EventStyle.kindColor(k)),
                  label: Text(EventStyle.kindLabel(context, k)),
                  selected: _kind == k,
                  onSelected: (_) => setState(() => _kind = k),
                ),
            ],
          ),
          const SizedBox(height: Space.md),
          _timesCard(context),
          const SizedBox(height: Space.sm),
          _conflictWarning(context),
          LuxCard(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.repeat_rounded),
                  title: Text(l10n.calendarEventRepeat),
                  subtitle: Text(
                    _repeatError ?? describeRecurrence(context, _recurrence),
                    style: _repeatError == null ? null : TextStyle(color: context.lux.danger),
                  ),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: _pickRepeat,
                ),
                if (_isEdit && _recurrence != null)
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(72, 0, Space.md, Space.sm),
                    child: Text(
                      l10n.calendarSeriesEditNote,
                      style: context.text.bodySmall?.copyWith(color: context.lux.ink3),
                    ),
                  ),
                const Divider(height: 1),
                PopupMenuButton<int>(
                  tooltip: l10n.calendarEventReminder,
                  initialValue: _reminder ?? -1,
                  onSelected: (v) => setState(() => _reminder = v < 0 ? null : v),
                  itemBuilder: (_) => [
                    for (final m in [-1, ...eventReminderOptions])
                      PopupMenuItem(value: m, child: Text(_reminderLabel(m < 0 ? null : m))),
                  ],
                  child: ListTile(
                    leading: const Icon(Icons.notifications_none_rounded),
                    title: Text(l10n.calendarEventReminder),
                    subtitle: Text(_reminderLabel(_reminder)),
                    trailing: const Icon(Icons.arrow_drop_down_rounded),
                  ),
                ),
                const Divider(height: 1),
                _linkedTaskTile(context),
              ],
            ),
          ),
          const SizedBox(height: Space.md),
          Row(
            children: [
              Expanded(child: _label(context, l10n.calendarEventColor)),
              if (_color != null)
                TextButton(
                  onPressed: () => setState(() => _color = null),
                  child: Text(l10n.calendarDefaultColor),
                ),
            ],
          ),
          ColorSwatchPicker(
            value: _color ?? EventStyle.kindColor(_kind).toARGB32(),
            onChanged: (c) => setState(() => _color = c),
          ),
          const SizedBox(height: Space.md),
          TextField(
            controller: _description,
            minLines: 3,
            maxLines: 8,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: l10n.eventDescription,
              alignLabelWithHint: true,
              border: const OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _label(BuildContext context, String text) => Padding(
    padding: const EdgeInsets.only(bottom: Space.xs),
    child: Text(text, style: context.text.labelLarge?.copyWith(color: context.lux.ink2)),
  );

  Widget _timesCard(BuildContext context) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final lux = context.lux;
    return LuxCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.wb_sunny_outlined),
            title: Text(l10n.calendarAllDay),
            value: _allDay,
            onChanged: _setAllDay,
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.play_arrow_rounded),
            title: Text(l10n.eventStarts),
            subtitle: Text(_allDay ? fmt.dayLong(_start) : fmt.dateTime(_start)),
            onTap: _pickStart,
          ),
          ListTile(
            leading: const Icon(Icons.stop_rounded),
            title: Text(l10n.eventEnds),
            subtitle: Text(_allDay ? fmt.dayLong(_lastAllDay) : fmt.dateTime(_end)),
            onTap: _pickEnd,
          ),
          if (_timeError != null)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(Space.md, 0, Space.md, Space.sm),
              child: Semantics(
                liveRegion: true,
                child: Text(
                  _timeError!,
                  style: context.text.bodySmall?.copyWith(color: lux.danger),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(Space.md, 0, Space.md, Space.sm),
            child: Text(
              l10n.calendarEventLocalTime,
              style: context.text.bodySmall?.copyWith(color: lux.ink3),
            ),
          ),
        ],
      ),
    );
  }

  Widget _conflictWarning(BuildContext context) {
    if (_allDay || !_end.isAfter(_start)) return const SizedBox.shrink();
    final range = DateRange(
      CalendarMath.day(_start),
      CalendarMath.addDays(CalendarMath.day(_end), 1),
    );
    final occ = ref.watch(occurrencesProvider(range)).value ?? const <EventOccurrence>[];
    final n = draftConflictCount(occ, _start, _end, excludeId: widget.eventId);
    if (n == 0) return const SizedBox.shrink();
    final lux = context.lux;
    return Padding(
      padding: const EdgeInsets.only(bottom: Space.sm),
      child: Semantics(
        liveRegion: true,
        child: LuxCard(
          elevated: false,
          color: lux.warning.withValues(alpha: 0.08),
          padding: const EdgeInsets.symmetric(horizontal: Space.md, vertical: Space.sm),
          child: Row(
            children: [
              Icon(Icons.warning_amber_rounded, color: lux.warning, size: 20),
              const SizedBox(width: Space.sm),
              Expanded(child: Text(context.l10n.eventConflict(n), style: context.text.bodyMedium)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _linkedTaskTile(BuildContext context) {
    final l10n = context.l10n;
    final id = _taskId;
    final task = id == null ? null : ref.watch(taskByIdProvider(id)).value;
    return ListTile(
      leading: const Icon(Icons.task_alt_rounded),
      title: Text(l10n.calendarEventLinkedTask),
      subtitle: Text(
        task?.title ?? l10n.calendarEventNoTask,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: id == null
          ? null
          : IconButton(
              tooltip: l10n.actionUnlink,
              icon: const Icon(Icons.link_off_rounded),
              onPressed: () => setState(() => _taskId = null),
            ),
      onTap: _pickTask,
    );
  }
}
