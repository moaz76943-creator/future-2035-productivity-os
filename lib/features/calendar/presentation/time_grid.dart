import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../application/calendar_layout.dart';
import '../data/events_repository.dart';
import 'event_style.dart';

const double kHourHeight = 56;
const double _gutter = 52;

/// Week / day time grid: day headers (week only), an all-day row, hour rows
/// with positioned events, a "now" line and drag-to-reschedule.
class TimeGrid extends StatefulWidget {
  const TimeGrid({
    super.key,
    required this.days,
    required this.occurrences,
    required this.tasks,
    required this.conflicts,
    required this.now,
    required this.onOpenEvent,
    required this.onOpenTask,
    required this.onCreateAt,
    required this.onMove,
    this.onDayTap,
    this.scrollRequest = 0,
  });

  final List<DateTime> days;
  final List<EventOccurrence> occurrences;
  final List<TaskRow> tasks;
  final Set<EventOccurrence> conflicts;
  final DateTime now;
  final ValueChanged<EventOccurrence> onOpenEvent;
  final ValueChanged<TaskRow> onOpenTask;
  final ValueChanged<DateTime> onCreateAt;
  final void Function(EventOccurrence occurrence, DateTime newStart) onMove;
  final ValueChanged<DateTime>? onDayTap;

  /// Changing this value scrolls the enclosing scrollable to the working
  /// hours (or to just before now on today). It also happens on first build.
  final int scrollRequest;

  @override
  State<TimeGrid> createState() => _TimeGridState();
}

class _TimeGridState extends State<TimeGrid> {
  final _scrollTarget = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scheduleScroll();
  }

  @override
  void didUpdateWidget(TimeGrid old) {
    super.didUpdateWidget(old);
    if (old.scrollRequest != widget.scrollRequest) _scheduleScroll();
  }

  void _scheduleScroll() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final ctx = _scrollTarget.currentContext;
      if (ctx == null || !mounted) return;
      Scrollable.ensureVisible(
        ctx,
        alignment: 0.05,
        duration: context.reduceMotion ? Duration.zero : Motion.medium,
        curve: Motion.emphasized,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final days = widget.days;
    final occurrences = widget.occurrences;
    final tasks = widget.tasks;
    final now = widget.now;
    final onDayTap = widget.onDayTap;
    final onOpenEvent = widget.onOpenEvent;
    final onOpenTask = widget.onOpenTask;
    final conflicts = widget.conflicts;
    final lux = context.lux;
    final fmt = context.fmt;
    final l10n = context.l10n;
    final allDay = occurrences.where((o) => o.event.allDay).toList();
    final timed = occurrences.where((o) => !o.event.allDay).toList();
    final tasksByDay = <int, List<TaskRow>>{};
    for (final t in tasks) {
      if (t.dueAt == null) continue;
      (tasksByDay[CalendarMath.dayKey(t.dueAt!.toLocal())] ??= []).add(t);
    }
    final hasAllDayRow = allDay.isNotEmpty || tasksByDay.isNotEmpty;
    final scrollHour = days.any((d) => CalendarMath.sameDay(d, now))
        ? (now.hour - 1).clamp(0, 23)
        : 8;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (days.length > 1)
          Row(
            children: [
              const SizedBox(width: _gutter),
              for (final d in days)
                Expanded(
                  child: _DayHeader(
                    day: d,
                    today: CalendarMath.sameDay(d, now),
                    onTap: onDayTap == null ? null : () => onDayTap(d),
                  ),
                ),
            ],
          ),
        if (hasAllDayRow)
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: lux.hairline)),
            ),
            padding: const EdgeInsets.symmetric(vertical: Space.xxs),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: _gutter,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: Space.xs, top: 4),
                    child: Text(
                      l10n.calendarAllDay,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.labelSmall?.copyWith(color: lux.ink3),
                    ),
                  ),
                ),
                for (final d in days)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          for (final o in itemsOnDay(
                            allDay,
                            d,
                            start: (o) => o.start,
                            end: (o) => o.end,
                          ))
                            _AllDayChip(
                              label: o.event.title,
                              color: EventStyle.colorOf(o.event),
                              semantics: l10n.calendarEventSemantics(
                                o.event.title,
                                EventStyle.timeRange(context, o),
                              ),
                              onTap: () => onOpenEvent(o),
                            ),
                          for (final t in tasksByDay[CalendarMath.dayKey(d)] ?? const <TaskRow>[])
                            _AllDayChip(
                              label: t.title,
                              color: ModuleHue.tasks.a,
                              icon: t.done
                                  ? Icons.check_circle_rounded
                                  : Icons.radio_button_unchecked_rounded,
                              outlined: true,
                              semantics: l10n.calendarTaskDueSemantics(t.title),
                              onTap: () => onOpenTask(t),
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        SizedBox(
          height: 24 * kHourHeight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: _gutter,
                child: ExcludeSemantics(
                  child: Stack(
                    children: [
                      for (var h = 0; h < 24; h++)
                        PositionedDirectional(
                          key: h == scrollHour ? _scrollTarget : null,
                          top: h == 0 ? 0 : h * kHourHeight - 7,
                          start: 0,
                          end: Space.xxs,
                          height: h == 0 ? kHourHeight : 16,
                          child: h == 0
                              ? const SizedBox.shrink()
                              : FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: AlignmentDirectional.topEnd,
                                  child: Text(
                                    fmt.time(days.first.copyWith(hour: h)),
                                    style: context.text.labelSmall?.copyWith(color: lux.ink3),
                                  ),
                                ),
                        ),
                    ],
                  ),
                ),
              ),
              for (final d in days)
                Expanded(
                  child: DayColumn(
                    day: d,
                    occurrences: timed,
                    conflicts: conflicts,
                    now: now,
                    compact: days.length > 1,
                    onOpen: onOpenEvent,
                    onCreateAt: widget.onCreateAt,
                    onMove: widget.onMove,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DayHeader extends StatelessWidget {
  const _DayHeader({required this.day, required this.today, this.onTap});
  final DateTime day;
  final bool today;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final fmt = context.fmt;
    final hue = ModuleHue.calendar;
    return Semantics(
      button: onTap != null,
      label: fmt.dayLong(day),
      child: ExcludeSemantics(
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(Radii.sm),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: Space.xxs),
            child: Column(
              children: [
                Text(
                  fmt.weekdayShort(day),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.labelSmall?.copyWith(color: context.lux.ink3),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  constraints: const BoxConstraints(minWidth: 28, minHeight: 28),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: today ? hue.b : null),
                  child: Text(
                    fmt.dayOfMonth(day),
                    style: context.text.labelLarge?.copyWith(
                      color: today ? Colors.white : context.lux.ink,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AllDayChip extends StatelessWidget {
  const _AllDayChip({
    required this.label,
    required this.color,
    required this.semantics,
    required this.onTap,
    this.icon,
    this.outlined = false,
  });
  final String label;
  final Color color;
  final String semantics;
  final VoidCallback onTap;
  final IconData? icon;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: semantics,
      child: ExcludeSemantics(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Material(
            color: outlined ? Colors.transparent : color.withValues(alpha: 0.16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side: outlined ? BorderSide(color: color.withValues(alpha: 0.6)) : BorderSide.none,
            ),
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(6),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                child: Row(
                  children: [
                    if (icon != null) ...[
                      Icon(icon, size: 11, color: color),
                      const SizedBox(width: 2),
                    ],
                    Expanded(
                      child: Text(
                        label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.labelSmall?.copyWith(color: context.lux.ink),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// One day's hour column. Holds the drag state for rescheduling.
class DayColumn extends StatefulWidget {
  const DayColumn({
    super.key,
    required this.day,
    required this.occurrences,
    required this.conflicts,
    required this.now,
    required this.onOpen,
    required this.onCreateAt,
    required this.onMove,
    this.compact = false,
  });

  final DateTime day;
  final List<EventOccurrence> occurrences;
  final Set<EventOccurrence> conflicts;
  final DateTime now;
  final bool compact;
  final ValueChanged<EventOccurrence> onOpen;
  final ValueChanged<DateTime> onCreateAt;
  final void Function(EventOccurrence occurrence, DateTime newStart) onMove;

  @override
  State<DayColumn> createState() => _DayColumnState();
}

class _DayColumnState extends State<DayColumn> {
  EventOccurrence? _dragging;
  double _dragDy = 0;

  int get _dragMinutes => CalendarMath.snap(_dragDy / kHourHeight * 60);

  void _endDrag() {
    final o = _dragging;
    final delta = _dragMinutes;
    setState(() {
      _dragging = null;
      _dragDy = 0;
    });
    if (o == null || delta == 0) return;
    final newStart = CalendarMath.draggedStart(
      o.start,
      widget.day,
      delta,
      durationMinutes: o.end.difference(o.start).inMinutes,
    );
    if (newStart != o.start) widget.onMove(o, newStart);
  }

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final l10n = context.l10n;
    final slots = layoutDay(
      widget.occurrences,
      widget.day,
      start: (o) => o.start,
      end: (o) => o.end,
    );
    final isToday = CalendarMath.sameDay(widget.day, widget.now);
    return LayoutBuilder(
      builder: (context, c) {
        final width = c.maxWidth;
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapUp: (d) {
            final minute = ((d.localPosition.dy / kHourHeight * 60) ~/ 30) * 30;
            widget.onCreateAt(
              CalendarMath.atMinute(widget.day, minute.clamp(0, CalendarMath.minutesPerDay - 30)),
            );
          },
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Column(
                  children: [
                    for (var h = 0; h < 24; h++)
                      Expanded(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: BorderDirectional(
                              top: BorderSide(color: lux.hairline),
                              start: BorderSide(color: lux.hairline),
                            ),
                          ),
                          child: const SizedBox.expand(),
                        ),
                      ),
                  ],
                ),
              ),
              for (final s in slots) _block(context, s, width),
              if (isToday)
                PositionedDirectional(
                  top: CalendarMath.wallMinute(widget.now, widget.day) * kHourHeight / 60 - 4,
                  start: 0,
                  end: 0,
                  height: 8,
                  child: Semantics(
                    label: '${l10n.calendarNow} ${context.fmt.time(widget.now)}',
                    child: IgnorePointer(
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(color: lux.danger, shape: BoxShape.circle),
                          ),
                          Expanded(child: Container(height: 2, color: lux.danger)),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _block(BuildContext context, GridSlot<EventOccurrence> s, double width) {
    final o = s.item;
    final dragging = identical(_dragging, o);
    final colW = width / s.columns;
    var top = s.startMinute * kHourHeight / 60;
    final height = (s.endMinute - s.startMinute) * kHourHeight / 60;
    DateTime? previewStart;
    if (dragging) {
      previewStart = CalendarMath.draggedStart(
        o.start,
        widget.day,
        _dragMinutes,
        durationMinutes: o.end.difference(o.start).inMinutes,
      );
      top = CalendarMath.wallMinute(previewStart, widget.day) * kHourHeight / 60;
    }
    return PositionedDirectional(
      key: ValueKey('${o.event.id}@${o.start.toIso8601String()}'),
      top: top,
      height: height,
      start: s.column * colW + 1,
      width: colW - 2,
      child: GestureDetector(
        onTap: () => widget.onOpen(o),
        onLongPressStart: (_) {
          HapticFeedback.selectionClick();
          setState(() {
            _dragging = o;
            _dragDy = 0;
          });
        },
        onLongPressMoveUpdate: (d) {
          final before = _dragMinutes;
          setState(() => _dragDy = d.offsetFromOrigin.dy);
          if (_dragMinutes != before) HapticFeedback.selectionClick();
        },
        onLongPressEnd: (_) => _endDrag(),
        onLongPressCancel: () => setState(() {
          _dragging = null;
          _dragDy = 0;
        }),
        child: EventBlock(
          occurrence: o,
          conflict: widget.conflicts.contains(o),
          compact: widget.compact,
          dragging: dragging,
          previewStart: previewStart,
        ),
      ),
    );
  }
}

/// Visual block of a timed occurrence in the grid.
class EventBlock extends StatelessWidget {
  const EventBlock({
    super.key,
    required this.occurrence,
    required this.conflict,
    this.compact = false,
    this.dragging = false,
    this.previewStart,
  });

  final EventOccurrence occurrence;
  final bool conflict;
  final bool compact;
  final bool dragging;
  final DateTime? previewStart;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final l10n = context.l10n;
    final e = occurrence.event;
    final kind = EventStyle.kindOf(e);
    final color = EventStyle.colorOf(e);
    final timeBlock = kind == EventKind.timeBlock;
    final time = previewStart != null
        ? context.fmt.time(previewStart!)
        : EventStyle.timeRange(context, occurrence);
    final label = [
      l10n.calendarEventSemantics(e.title, EventStyle.timeRange(context, occurrence)),
      if (kind != EventKind.event) EventStyle.kindLabel(context, kind),
      if (EventStyle.isRecurring(e)) l10n.calendarRecurring,
      if (conflict) l10n.calendarConflictMarker,
    ].join('. ');
    final br = BorderRadius.circular(8);
    return Semantics(
      button: true,
      label: label,
      hint: l10n.calendarDragHint,
      child: ExcludeSemantics(
        child: AnimatedContainer(
          duration: Duration.zero,
          decoration: BoxDecoration(
            borderRadius: br,
            color: Color.alphaBlend(color.withValues(alpha: timeBlock ? 0.08 : 0.18), lux.surface),
            border: timeBlock ? Border.all(color: color.withValues(alpha: 0.7), width: 1.2) : null,
            boxShadow: dragging
                ? [BoxShadow(color: lux.shadow, blurRadius: 16, offset: const Offset(0, 6))]
                : null,
          ),
          child: ClipRRect(
            borderRadius: br,
            child: CustomPaint(
              painter: timeBlock ? TimeBlockHatch(color) : null,
              child: LayoutBuilder(
                builder: (context, c) {
                  final tall = c.maxHeight >= 34;
                  final content = Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(4, 2, 2, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (timeBlock && !compact) ...[
                              Icon(EventStyle.kindIcon(kind), size: 12, color: color),
                              const SizedBox(width: 2),
                            ],
                            Expanded(
                              child: Text(
                                e.title,
                                maxLines: tall ? 2 : 1,
                                overflow: TextOverflow.ellipsis,
                                style: context.text.labelMedium?.copyWith(
                                  color: lux.ink,
                                  fontWeight: FontWeight.w600,
                                  height: 1.15,
                                ),
                              ),
                            ),
                            if (conflict)
                              Icon(Icons.warning_amber_rounded, size: 12, color: lux.warning),
                          ],
                        ),
                        if (tall && (!compact || dragging))
                          Flexible(
                            child: Text(
                              time,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.text.labelSmall?.copyWith(color: lux.ink2),
                            ),
                          ),
                      ],
                    ),
                  );
                  if (timeBlock) return content;
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(width: 3, color: color),
                      Expanded(child: content),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
