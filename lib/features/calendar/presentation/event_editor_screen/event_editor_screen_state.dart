part of '../event_editor_screen.dart';

class _EventEditorScreenState extends ConsumerState<EventEditorScreen> {
  /// setState for the extension parts (keeps setState protected).
  void _update(VoidCallback fn) => setState(fn);

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

  @override
  void dispose() {
    _title.dispose();
    _description.dispose();
    super.dispose();
  }

  // ---------- date handling

  DateTime get _lastAllDay => CalendarMath.addDays(CalendarMath.day(_end), -1);

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
}
