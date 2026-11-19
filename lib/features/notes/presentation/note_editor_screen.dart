import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/mic_button.dart';
import '../../../shared/widgets/task_picker.dart';
import '../../projects/application/projects_providers.dart';
import '../application/note_text.dart';
import '../../../core/platform/media_picker.dart';
import '../data/note_images.dart';
import 'note_editing_controller.dart';
import 'note_templates.dart';
import 'notes_transfer_sheet.dart';
import '../application/notes_providers.dart';
import '../data/notes_repository.dart';
import 'markdown_preview.dart';
import 'note_actions.dart';

part 'note_editor_screen/note_editor_screen_state.dart';
part 'note_editor_screen/directional_field.dart';
part 'note_editor_screen/note_editor_actions.dart';

enum NoteSaveStatus { saved, unsaved, saving, failed }

/// Markdown note editor with debounced autosave, preview, backlinks,
/// linked tasks, project and notebook links.
class NoteEditorScreen extends ConsumerStatefulWidget {
  const NoteEditorScreen({super.key, required this.noteId});
  final String noteId;

  /// Delay between the last keystroke and the automatic save.
  static const autosaveDelay = Duration(milliseconds: 800);

  @override
  ConsumerState<NoteEditorScreen> createState() => _NoteEditorScreenState();
}
