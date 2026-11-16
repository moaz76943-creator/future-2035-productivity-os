import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/recurrence/recurrence_rule.dart';
import '../data/events_repository.dart';

/// Visual identity of event kinds, shared by the calendar views and editor.
abstract final class EventStyle {
  static Color kindColor(EventKind k) => switch (k) {
    EventKind.event => Palette.aurora,
    EventKind.timeBlock => Palette.violet,
    EventKind.focus => Palette.turquoise,
    EventKind.goal => Palette.emerald,
  };

  static IconData kindIcon(EventKind k) => switch (k) {
    EventKind.event => Icons.event_rounded,
    EventKind.timeBlock => Icons.hourglass_bottom_rounded,
    EventKind.focus => Icons.center_focus_strong_rounded,
    EventKind.goal => Icons.flag_rounded,
  };

  static String kindLabel(BuildContext context, EventKind k) {
    final l10n = context.l10n;
    return switch (k) {
      EventKind.event => l10n.eventKindEvent,
      EventKind.timeBlock => l10n.eventKindTimeBlock,
      EventKind.focus => l10n.eventKindFocus,
      EventKind.goal => l10n.eventKindGoal,
    };
  }

  static EventKind kindOf(EventRow e) => EventKind.values.asNameMap()[e.kind] ?? EventKind.event;

  static Color colorOf(EventRow e) => e.color != null ? Color(e.color!) : kindColor(kindOf(e));

  static bool isRecurring(EventRow e) => RecurrenceRule.tryParse(e.recurrence) != null;

  /// "9:00 AM – 10:00 AM", with dates when the occurrence spans days.
  static String timeRange(BuildContext context, EventOccurrence o) {
    final fmt = context.fmt;
    final sameDay =
        o.start.year == o.end.year && o.start.month == o.end.month && o.start.day == o.end.day;
    if (o.event.allDay) {
      final lastDay = DateTime(o.end.year, o.end.month, o.end.day - 1);
      final single =
          lastDay.year == o.start.year &&
          lastDay.month == o.start.month &&
          lastDay.day == o.start.day;
      if (single) return context.l10n.calendarAllDay;
      return context.l10n.calendarTimeRange(fmt.dayShort(o.start), fmt.dayShort(lastDay));
    }
    if (sameDay) return context.l10n.calendarTimeRange(fmt.time(o.start), fmt.time(o.end));
    return context.l10n.calendarTimeRange(fmt.dateTime(o.start), fmt.dateTime(o.end));
  }
}

/// Diagonal hatching used to make time blocks visually distinct from events.
class TimeBlockHatch extends CustomPainter {
  const TimeBlockHatch(this.color);
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint()
      ..color = color.withValues(alpha: 0.14)
      ..strokeWidth = 1.2;
    const gap = 9.0;
    for (var x = -size.height; x < size.width; x += gap) {
      canvas.drawLine(Offset(x, size.height), Offset(x + size.height, 0), p);
    }
  }

  @override
  bool shouldRepaint(TimeBlockHatch old) => old.color != color;
}
