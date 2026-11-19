import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/navigation.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/pickers.dart';
import '../../../shared/widgets/recurrence_picker.dart';
import '../../../shared/widgets/task_picker.dart';
import '../../notes/application/notes_providers.dart';
import '../../projects/application/projects_providers.dart';
import '../application/tasks_providers.dart';
import '../data/tasks_repository.dart';
import 'widgets/task_tile.dart';
import 'widgets/task_visuals.dart';

part 'task_editor_screen/task_editor_screen_state.dart';
part 'task_editor_screen/section.dart';
part 'task_editor_screen/linked_notes.dart';
part 'task_editor_screen/task_editor_actions.dart';

final _notesForTaskProvider = StreamProvider.autoDispose.family<List<NoteRow>, String>(
  (ref, id) => ref.watch(notesRepositoryProvider).watchNotesForTask(id),
);

/// Relative reminder presets, in minutes before the due moment.
const _reminderPresets = [0, 5, 15, 30, 60, 1440];

class TaskEditorScreen extends ConsumerStatefulWidget {
  const TaskEditorScreen({super.key, this.taskId, this.parentId, this.projectId, this.initialDue});
  final String? taskId;
  final String? parentId;
  final String? projectId;
  final DateTime? initialDue;

  @override
  ConsumerState<TaskEditorScreen> createState() => _TaskEditorScreenState();
}
