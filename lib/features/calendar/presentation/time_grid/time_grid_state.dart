part of '../time_grid.dart';

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
