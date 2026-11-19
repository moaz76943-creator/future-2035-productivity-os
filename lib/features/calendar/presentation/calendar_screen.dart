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

part 'calendar_screen/calendar_screen_state.dart';

/// Month / week / day calendar backed by the local events table and the
/// due dates of tasks. Nothing here syncs with external calendars.
class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

/// Segment labels stay on one line; long translations shrink instead of
/// wrapping into a two-line segment.
Widget _segLabel(String text) =>
    FittedBox(fit: BoxFit.scaleDown, child: Text(text, maxLines: 1, softWrap: false));
