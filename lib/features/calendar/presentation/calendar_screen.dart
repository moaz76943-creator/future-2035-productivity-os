import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/calendar_layout.dart';
import '../application/calendar_providers.dart';
import '../data/events_repository.dart';
import 'day_agenda.dart';
import 'event_style.dart';
import 'month_view.dart';
import 'time_grid.dart';

/// Month / week / day calendar backed by the local events table and the
/// due dates of tasks. Nothing here syncs with external calendars.
class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends ConsumerState<CalendarScreen> {
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
      CalendarView.month => fmt.monthYear(_anchor),
      CalendarView.week => () {
        final days = CalendarMath.weekDays(_anchor);
        return context.l10n.calendarWeekRange(fmt.dayShort(days.first), fmt.dayShort(days.last));
      }(),
      CalendarView.day => fmt.dayLong(_anchor),
    };
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final range = CalendarMath.rangeFor(_view, _anchor);
    final occ = ref.watch(occurrencesProvider(range));
    final tasks = ref.watch(tasksDueProvider(range));

    return ModuleScaffold(
      title: l10n.calendarTitle,
      hue: ModuleHue.calendar,
      actions: [
        TextButton(
          // Disabled while today is already shown, so the tap is never silently ignored.
          onPressed: CalendarMath.sameDay(_selected, _now) &&
                  CalendarMath.sameDay(_anchor, CalendarMath.day(_now))
              ? null
              : _today,
          child: Text(l10n.calendarToday),
        ),
      ],
      floatingActionButton: FloatingActionButton(
        heroTag: 'calendar-fab',
        tooltip: l10n.eventNew,
        onPressed: () => _newEvent(_defaultStart()),
        child: const Icon(Icons.add_rounded),
      ),
      slivers: [
        SliverToBoxAdapter(child: _toolbar(context)),
        SliverToBoxAdapter(
          child: AsyncValueView<List<EventOccurrence>>(
            value: occ,
            onRetry: () => ref.invalidate(occurrencesProvider(range)),
            data: (events) => AsyncValueView<List<TaskRow>>(
              value: tasks,
              onRetry: () => ref.invalidate(tasksDueProvider(range)),
              data: (dueTasks) => _body(context, events, dueTasks),
            ),
          ),
        ),
      ],
    );
  }

  Widget _toolbar(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SegmentedButton<CalendarView>(
            showSelectedIcon: false,
            segments: [
              ButtonSegment(value: CalendarView.month, label: Text(l10n.calendarMonth)),
              ButtonSegment(value: CalendarView.week, label: Text(l10n.calendarWeek)),
              ButtonSegment(value: CalendarView.day, label: Text(l10n.calendarDay)),
            ],
            selected: {_view},
            onSelectionChanged: (s) => _setView(s.first),
          ),
          const SizedBox(height: Space.sm),
          Row(
            children: [
              IconButton(
                tooltip: l10n.calendarPrevious,
                icon: const Icon(Icons.chevron_left_rounded),
                onPressed: () => _step(-1),
              ),
              Expanded(
                child: Semantics(
                  liveRegion: true,
                  header: true,
                  child: Text(
                    _title(context),
                    textAlign: TextAlign.center,
                    style: context.text.titleMedium,
                  ),
                ),
              ),
              IconButton(
                tooltip: l10n.calendarNext,
                icon: const Icon(Icons.chevron_right_rounded),
                onPressed: () => _step(1),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context, List<EventOccurrence> events, List<TaskRow> tasks) {
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
            ),
            SectionHeader(title: context.fmt.dayLong(_selected)),
            DayAgenda(
              events: dayEvents,
              tasks: dayTasks,
              conflicts: conflicts,
              onOpenEvent: _openEvent,
              onOpenTask: _openTask,
              onScheduleTask: _scheduleTask,
              onNewEvent: () => _newEvent(_defaultStart()),
            ),
          ],
        );
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
                onCreateAt: (t) => _newEvent(t),
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
}
