import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/navigation.dart';
import '../../../app/routing/routes.dart';
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

part 'event_editor_screen/event_editor_screen_state.dart';
part 'event_editor_screen/event_actions.dart';
part 'event_editor_screen/event_views.dart';

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
