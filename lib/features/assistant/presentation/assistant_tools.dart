import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../calendar/application/calendar_providers.dart';
import '../../calendar/data/events_repository.dart';
import '../../flashcards/application/flashcards_providers.dart';
import '../../notes/application/notes_providers.dart';
import '../../notes/data/notes_repository.dart';
import '../../settings/application/settings_providers.dart';
import '../../tasks/application/tasks_providers.dart';
import '../../tasks/data/tasks_repository.dart';
import '../application/assistant_providers.dart';
import '../data/remote_assistant.dart';
import '../domain/day_planner.dart';
import '../domain/note_extractors.dart';
import '../domain/workload.dart';

part 'assistant_tools/plan_day_sheet.dart';
part 'assistant_tools/make_cards_sheet.dart';
part 'assistant_tools/summarize_sheet_state.dart';

/// Opens a tool in a tall bottom sheet.
Future<void> showToolSheet(BuildContext context, Widget child) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  isScrollControlled: true,
  showDragHandle: true,
  useSafeArea: true,
  builder: (_) => FractionallySizedBox(heightFactor: 0.92, child: child),
);

/// Common layout for tool sheets: title, scrollable body, optional footer.
class ToolSheetFrame extends StatelessWidget {
  const ToolSheetFrame({super.key, required this.title, required this.children, this.footer});
  final String title;
  final List<Widget> children;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.sm),
          child: Semantics(header: true, child: Text(title, style: context.text.titleLarge)),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsetsDirectional.fromSTEB(Space.page, 0, Space.page, Space.lg),
            children: children,
          ),
        ),
        if (footer != null)
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                Space.page,
                Space.xs,
                Space.page,
                Space.md,
              ),
              child: footer,
            ),
          ),
      ],
    );
  }
}

String _taskSubtitle(BuildContext context, PlanTask t, DateTime now) {
  final fmt = context.fmt;
  final parts = <String>[
    if (t.isOverdue(now)) context.l10n.tasksViewOverdue,
    if (t.dueAt != null && !t.isOverdue(now))
      t.dueHasTime ? fmt.dateTime(t.dueAt!) : fmt.relativeDay(t.dueAt!, now),
    if (t.estimateMinutes != null) fmt.minutes(t.estimateMinutes!),
  ];
  return parts.join(' · ');
}

const _sectionPad = EdgeInsetsDirectional.fromSTEB(0, Space.lg, 0, Space.xs);

// ---------------------------------------------------------------------------
// Note chooser shared by the note tools

final _allNotesProvider = Provider.autoDispose<AsyncValue<List<NoteRow>>>(
  (ref) => ref.watch(notesListProvider((view: NotesView.all, notebookId: null, tag: null))),
);

// ---------------------------------------------------------------------------
// Summarize (remote, optional)

/// Consent dialog shown before any content leaves the device.
Future<ConsentDecision?> showConsentDialog(BuildContext context, String host) {
  return showDialog<ConsentDecision>(
    context: context,
    builder: (ctx) => _ConsentDialog(host: host),
  );
}
