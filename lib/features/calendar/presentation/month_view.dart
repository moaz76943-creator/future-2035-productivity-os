import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/tokens.dart';
import '../application/calendar_layout.dart';
import '../data/events_repository.dart';
import 'event_style.dart';

/// Monday-first month grid with event dots and task-due markers.
class MonthGrid extends StatelessWidget {
  const MonthGrid({
    super.key,
    required this.month,
    required this.selected,
    required this.today,
    required this.occurrences,
    required this.tasks,
    required this.onSelect,
  });

  final DateTime month;
  final DateTime selected;
  final DateTime today;
  final List<EventOccurrence> occurrences;
  final List<TaskRow> tasks;
  final ValueChanged<DateTime> onSelect;

  @override
  Widget build(BuildContext context) {
    final fmt = context.fmt;
    final days = CalendarMath.monthGridDays(month);
    final tasksByDay = <int, int>{};
    for (final t in tasks) {
      final due = t.dueAt;
      if (due == null) continue;
      final k = CalendarMath.dayKey(due.toLocal());
      tasksByDay[k] = (tasksByDay[k] ?? 0) + 1;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.sm),
      child: Column(
        children: [
          ExcludeSemantics(
            child: Row(
              children: [
                for (final d in days.take(7))
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: Space.xs),
                      child: Text(
                        fmt.weekdayShort(d),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.labelSmall?.copyWith(color: context.lux.ink3),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          for (var w = 0; w < days.length ~/ 7; w++)
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (final d in days.skip(w * 7).take(7))
                    Expanded(
                      child: _DayCell(
                        day: d,
                        inMonth: d.month == month.month,
                        selected: CalendarMath.sameDay(d, selected),
                        today: CalendarMath.sameDay(d, today),
                        events: itemsOnDay(
                          occurrences,
                          d,
                          start: (o) => o.start,
                          end: (o) => o.end,
                        ),
                        tasksDue: tasksByDay[CalendarMath.dayKey(d)] ?? 0,
                        onTap: () => onSelect(d),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _DayCell extends StatelessWidget {
  const _DayCell({
    required this.day,
    required this.inMonth,
    required this.selected,
    required this.today,
    required this.events,
    required this.tasksDue,
    required this.onTap,
  });

  final DateTime day;
  final bool inMonth;
  final bool selected;
  final bool today;
  final List<EventOccurrence> events;
  final int tasksDue;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final fmt = context.fmt;
    final l10n = context.l10n;
    final hue = ModuleHue.calendar;
    final numberColor = selected
        ? Colors.white
        : inMonth
        ? lux.ink
        : lux.ink3;
    final shownDots = events.take(3).toList();
    return Semantics(
      button: true,
      selected: selected,
      label: l10n.calendarDaySemantics(
        fmt.dayLong(day),
        l10n.calendarEventsCount(events.length),
        l10n.calendarTasksDueCount(tasksDue),
      ),
      child: ExcludeSemantics(
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(Radii.sm),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 56),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: Space.xxs),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selected ? hue.b : null,
                      border: today && !selected ? Border.all(color: hue.b, width: 1.5) : null,
                    ),
                    child: Text(
                      fmt.dayOfMonth(day),
                      style: context.text.bodyMedium?.copyWith(
                        color: numberColor,
                        fontWeight: today || selected ? FontWeight.w700 : FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 3,
                    runSpacing: 3,
                    children: [
                      for (final o in shownDots)
                        GlowDot(color: EventStyle.colorOf(o.event), size: 6),
                      if (events.length > shownDots.length)
                        Text(
                          '+',
                          style: context.text.labelSmall?.copyWith(color: lux.ink3, height: 0.8),
                        ),
                      if (tasksDue > 0)
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(color: ModuleHue.tasks.a, width: 1.5),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
