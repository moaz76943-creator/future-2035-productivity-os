import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../shared/widgets/dialogs.dart';
import '../../application/flashcards_providers.dart';
import '../../application/media_picker.dart';
import '../../data/flashcards_repository.dart';
import '../../domain/card_layout.dart';
import '../../domain/card_extras.dart';
import '../../../../l10n/gen/app_localizations.dart';

part 'card_form_sheet/show_card_form.dart';
part 'card_form_sheet/card_form_sheet_state.dart';

/// Bottom sheet to add cards to [deckId] or edit [initial]. Persists
/// directly through the repository.
Future<void> showCardForm(BuildContext context, {required String deckId, CardRow? initial}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    builder: (ctx) => _CardFormSheet(deckId: deckId, initial: initial),
  );
}

String cardFieldLabel(AppLocalizations l10n, CardField f) => switch (f) {
  CardField.example => l10n.cardFieldExample,
  CardField.explanation => l10n.cardFieldExplanation,
  CardField.pronunciation => l10n.cardFieldPronunciation,
  CardField.notes => l10n.cardFieldNotes,
};
