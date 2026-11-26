import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/design_system/components/surfaces.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/speech/audio_recorder.dart';
import '../../../../shared/widgets/dialogs.dart';
import '../../../../shared/widgets/mic_button.dart';
import '../../application/flashcards_providers.dart';
import '../../../../core/platform/media_picker.dart';
import '../../data/flashcards_repository.dart';
import '../../domain/card_layout.dart';
import '../../domain/card_extras.dart';
import 'record_sheet.dart';

import '../../domain/card_field_labels.dart';

export '../../domain/card_field_labels.dart';

part 'card_form_sheet/show_card_form.dart';
part 'card_form_sheet/card_form_sheet_state.dart';
part 'card_form_sheet/media.dart';

/// Bottom sheet to add cards to [deckId] or edit [initial]. Persists
/// directly through the repository.
Future<void> showCardForm(BuildContext context, {required String deckId, CardRow? initial}) {
  return showModalBottomSheet<void>(
    useRootNavigator: true,
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    builder: (ctx) => _CardFormSheet(deckId: deckId, initial: initial),
  );
}
