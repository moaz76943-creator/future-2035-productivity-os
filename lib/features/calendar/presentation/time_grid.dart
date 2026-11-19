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

part 'time_grid/time_grid_state.dart';
part 'time_grid/day_column_state.dart';

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
