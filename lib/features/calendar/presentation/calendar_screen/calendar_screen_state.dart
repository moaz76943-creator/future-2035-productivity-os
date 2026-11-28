part of '../calendar_screen.dart';

class _CalendarScreenState extends ConsumerState<CalendarScreen> {
  bool get _hijri => ref.watch(settingsProvider).showHijri(context.language.tag);

  /// Gregorian is the default; the Hijri month grid is a separate view the
  /// user switches to by tapping the Hijri month under the title.
  bool _hijriMode = false;
  bool get _showHijri => _hijri && _hijriMode;

  void _toggleHijri() => setState(() {
    _hijriMode = !_hijriMode;
    _anchor = _selected;
  });

  /// The day's long date in the calendar being shown.
  String _dayTitle(DateTime d) =>
      (_showHijri ? HijriDay.of(d)?.long(context.l10n) : null) ?? context.fmt.dayLong(d);

  CalendarView _view = CalendarView.month;
  late DateTime _anchor;
  late DateTime _selected;
  late DateTime _now;
  Timer? _ticker;
  int _scrollRequest = 0;

  @override
  void initState() {
    super.initState();
    _now = ref.read(clockProvider).now();
    _anchor = _selected = CalendarMath.day(_now);
    _ticker = Timer.periodic(const Duration(minutes: 1), (_) {
      if (mounted) setState(() => _now = ref.read(clockProvider).now());
    });
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  void _setView(CalendarView v) {
    setState(() {
      _view = v;
      _anchor = _selected;
    });
    if (v != CalendarView.month) _scheduleScroll();
  }

  void _scheduleScroll() => setState(() => _scrollRequest++);

  void _step(int direction) {
    if (_showHijri && _view == CalendarView.month) {
      setState(() {
        _anchor = HijriMonth.step(_anchor, direction);
        _selected = HijriMonth.pick(_anchor, _now);
        _anchor = _selected;
      });
      return;
    }
    setState(() {
      _anchor = CalendarMath.step(_view, _anchor, direction);
      _selected = _view == CalendarView.month
          ? DateTime(_anchor.year, _anchor.month)
          : CalendarMath.day(_anchor);
      if (_view == CalendarView.month && _anchor.year == _now.year && _anchor.month == _now.month) {
        _selected = CalendarMath.day(_now);
      }
    });
  }

  void _today() {
    setState(() {
      _now = ref.read(clockProvider).now();
      _anchor = _selected = CalendarMath.day(_now);
    });
    if (_view != CalendarView.month) _scheduleScroll();
  }

  DateTime _defaultStart() {
    if (CalendarMath.sameDay(_selected, _now)) {
      return CalendarMath.atMinute(_selected, (_now.hour + 1).clamp(0, 23) * 60);
    }
    return CalendarMath.atMinute(_selected, 9 * 60);
  }

  void _newEvent(DateTime start, {String? taskId}) {
    context.push(
      Uri(
        path: Routes.eventNew,
        queryParameters: {'start': start.toIso8601String(), 'task': ?taskId},
      ).toString(),
    );
  }

  void _openEvent(EventOccurrence o) => context.push(Routes.event(o.event.id));

  void _openTask(TaskRow t) => context.push(Routes.task(t.id));

  void _scheduleTask(TaskRow t) => _newEvent(_defaultStart(), taskId: t.id);

  Future<void> _move(EventOccurrence o, DateTime newStart) async {
    final l10n = context.l10n;
    final repo = ref.read(eventsRepositoryProvider);
    // Apply the wall-clock change to the stored (series) start so that the
    // event keeps its local time even if the series crosses a DST change.
    final day = CalendarMath.day(newStart);
    final wallDelta =
        CalendarMath.wallMinute(newStart, day) - CalendarMath.wallMinute(o.start, day);
    final base = o.event.startAt.toLocal();
    final newBase = DateTime(base.year, base.month, base.day, base.hour, base.minute + wallDelta);
    final delta = newBase.difference(base);
    if (delta == Duration.zero) return;
    try {
      await repo.shift(o.event.id, delta);
    } on Exception {
      if (mounted) showMessage(context, l10n.errorSaveFailed);
      return;
    }
    if (!mounted) return;
    showUndoSnack(
      context,
      EventStyle.isRecurring(o.event) ? l10n.calendarSeriesMoved : l10n.calendarRescheduled,
      onUndo: () => repo.shift(o.event.id, -delta),
    );
  }

  String _title(BuildContext context) {
    final fmt = context.fmt;
    return switch (_view) {
      CalendarView.month =>
        _showHijri ? HijriMonth.title(context.l10n, _anchor) : fmt.monthYear(_anchor),
      CalendarView.week => () {
        final days = CalendarMath.weekDays(_anchor);
        return context.l10n.calendarWeekRange(fmt.dayShort(days.first), fmt.dayShort(days.last));
      }(),
      CalendarView.day => fmt.dayLong(_anchor),
      CalendarView.agenda => context.l10n.calendarWeekRange(
        fmt.dayShort(_anchor),
        fmt.dayShort(CalendarMath.addDays(_anchor, kAgendaDays - 1)),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final range = _showHijri && _view == CalendarView.month
        ? HijriMonth.range(_anchor)
        : CalendarMath.rangeFor(_view, _anchor);
    final occ = ref.watch(occurrencesProvider(range));
    final tasks = ref.watch(tasksDueProvider(range));
    final milestones = ref.watch(milestonesDueProvider(range)).value ?? const [];

    return ModuleScaffold(
      title: l10n.calendarTitle,
      hue: ModuleHue.calendar,
      frostedBar: true,
      actions: [
        // Replaces the floating +, which crowded the bottom of the screen.
        IconButton(
          key: const Key('calendarNewEvent'),
          tooltip: l10n.eventNew,
          icon: const Icon(Icons.add_rounded),
          onPressed: () => _newEvent(_defaultStart()),
        ),
        TextButton(
          // Disabled while today is already shown, so the tap is never silently ignored.
          onPressed:
              CalendarMath.sameDay(_selected, _now) &&
                  CalendarMath.sameDay(_anchor, CalendarMath.day(_now))
              ? null
              : _today,
          child: Text(l10n.calendarToday),
        ),
      ],
      slivers: [
        SliverToBoxAdapter(child: _toolbar(context)),
        SliverToBoxAdapter(
          child: AsyncValueView<List<EventOccurrence>>(
            value: occ,
            onRetry: () => ref.invalidate(occurrencesProvider(range)),
            data: (events) => AsyncValueView<List<TaskRow>>(
              value: tasks,
              onRetry: () => ref.invalidate(tasksDueProvider(range)),
              data: (dueTasks) => _body(context, events, dueTasks, milestones),
            ),
          ),
        ),
      ],
    );
  }

  Widget _toolbar(BuildContext context) => _CalendarToolbar(
    view: _view,
    title: _title(context),
    switchLabel: _hijri && _view == CalendarView.month
        ? (_showHijri
              ? context.fmt.monthYear(_anchor)
              : HijriMonth.title(context.l10n, DateTime(_anchor.year, _anchor.month, 15)))
        : null,
    onView: _setView,
    onStep: _step,
    onSwitch: _toggleHijri,
  );

  List<(MilestoneRow, ProjectRow)> _milestonesOn(
    List<(MilestoneRow, ProjectRow)> all,
    DateTime day,
  ) => [
    for (final e in all)
      if (e.$1.dueAt != null && CalendarMath.sameDay(e.$1.dueAt!.toLocal(), day)) e,
  ];

  void _openProject(String id) => context.push(Routes.project(id));

  Widget _body(
    BuildContext context,
    List<EventOccurrence> events,
    List<TaskRow> tasks,
    List<(MilestoneRow, ProjectRow)> milestones,
  ) {
    final conflicts = conflictingOccurrences(events);
    switch (_view) {
      case CalendarView.month:
        final dayEvents = itemsOnDay(events, _selected, start: (o) => o.start, end: (o) => o.end);
        final dayTasks = [
          for (final t in tasks)
            if (t.dueAt != null && CalendarMath.sameDay(t.dueAt!.toLocal(), _selected)) t,
        ];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MonthGrid(
              month: _anchor,
              selected: _selected,
              today: _now,
              occurrences: events,
              tasks: tasks,
              onSelect: (d) => setState(() => _selected = d),
              hijri: _showHijri,
              days: _showHijri ? HijriMonth.gridDays(_anchor) : null,
              inMonth: _showHijri ? (d) => HijriMonth.inMonth(_anchor, d) : null,
            ),
            SectionHeader(title: _dayTitle(_selected)),
            DayAgenda(
              events: dayEvents,
              tasks: dayTasks,
              milestones: _milestonesOn(milestones, _selected),
              onOpenProject: _openProject,
              conflicts: conflicts,
              onOpenEvent: _openEvent,
              onOpenTask: _openTask,
              onScheduleTask: _scheduleTask,
              onNewEvent: () => _newEvent(_defaultStart()),
            ),
          ],
        );
      case CalendarView.agenda:
        return _agenda(context, events, tasks, conflicts, milestones);
      case CalendarView.week:
      case CalendarView.day:
        final days = _view == CalendarView.week
            ? CalendarMath.weekDays(_anchor)
            : [CalendarMath.day(_anchor)];
        final dayConflict =
            _view == CalendarView.day &&
            events.any((o) => conflicts.contains(o) && CalendarMath.sameDay(o.start, _anchor));
        final hasRecurring = events.any((o) => EventStyle.isRecurring(o.event));
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.calendarDragHint,
                    style: context.text.bodySmall?.copyWith(color: context.lux.ink3),
                  ),
                  if (hasRecurring)
                    Text(
                      context.l10n.calendarDragHintSeries,
                      style: context.text.bodySmall?.copyWith(color: context.lux.ink3),
                    ),
                ],
              ),
            ),
            if (dayConflict) const ConflictBanner(),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: Space.xs),
              child: TimeGrid(
                days: days,
                occurrences: events,
                tasks: tasks,
                conflicts: conflicts,
                now: _now,
                scrollRequest: _scrollRequest,
                onOpenEvent: _openEvent,
                onOpenTask: _openTask,
                onCreateAt: _newEvent,
                onMove: _move,
                onDayTap: (d) {
                  setState(() {
                    _selected = d;
                    _anchor = d;
                    _view = CalendarView.day;
                  });
                  _scheduleScroll();
                },
              ),
            ),
          ],
        );
    }
  }

  /// Upcoming events and due tasks for the next [kAgendaDays] days, grouped by
  /// day. Days with nothing scheduled are skipped.
  Widget _agenda(
    BuildContext context,
    List<EventOccurrence> events,
    List<TaskRow> tasks,
    Set<EventOccurrence> conflicts,
    List<(MilestoneRow, ProjectRow)> milestones,
  ) {
    final sections = <Widget>[];
    for (var i = 0; i < kAgendaDays; i++) {
      final d = CalendarMath.addDays(_anchor, i);
      final dayEvents = itemsOnDay(events, d, start: (o) => o.start, end: (o) => o.end);
      final dayTasks = [
        for (final t in tasks)
          if (t.dueAt != null && CalendarMath.sameDay(t.dueAt!.toLocal(), d)) t,
      ];
      final dayMilestones = _milestonesOn(milestones, d);
      if (dayEvents.isEmpty && dayTasks.isEmpty && dayMilestones.isEmpty) continue;
      sections
        ..add(SectionHeader(title: _dayTitle(d)))
        ..add(
          DayAgenda(
            events: dayEvents,
            tasks: dayTasks,
            milestones: dayMilestones,
            onOpenProject: _openProject,
            conflicts: conflicts,
            onOpenEvent: _openEvent,
            onOpenTask: _openTask,
            onScheduleTask: _scheduleTask,
            onNewEvent: () => _newEvent(CalendarMath.atMinute(d, 9 * 60)),
          ),
        );
    }
    if (sections.isEmpty) {
      // Same empty state as a free day, with a create action.
      return DayAgenda(
        events: const [],
        tasks: const [],
        conflicts: conflicts,
        onOpenEvent: _openEvent,
        onOpenTask: _openTask,
        onScheduleTask: _scheduleTask,
        onNewEvent: () => _newEvent(_defaultStart()),
      );
    }
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: sections);
  }
}
