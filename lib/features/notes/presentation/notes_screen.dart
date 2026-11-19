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
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/note_text.dart';
import '../application/notes_providers.dart';
import '../data/notes_repository.dart';
import 'note_actions.dart';

part 'notes_screen/notes_screen_state.dart';
part 'notes_screen/note_card.dart';

/// Notes home: views, notebook and tag filters, and a masonry of notes
/// with pinned notes first.
class NotesScreen extends ConsumerStatefulWidget {
  const NotesScreen({super.key});

  @override
  ConsumerState<NotesScreen> createState() => _NotesScreenState();
}

String _viewLabel(BuildContext context, NotesView v) => switch (v) {
  NotesView.pinned => context.l10n.notesViewPinned,
  NotesView.favorites => context.l10n.notesViewFavorites,
  NotesView.archived => context.l10n.notesViewArchived,
  _ => context.l10n.notesViewAll,
};

IconData _viewIcon(NotesView v) => switch (v) {
  NotesView.pinned => Icons.push_pin_outlined,
  NotesView.favorites => Icons.star_outline_rounded,
  NotesView.archived => Icons.archive_outlined,
  _ => Icons.notes_rounded,
};

int _previewLines(NoteRow n) {
  final len = n.body.length;
  if (len < 80) return 3;
  if (len < 300) return 5;
  return 8;
}
