import 'dart:async';
import 'dart:math' as math;
import 'dart:typed_data';

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
import '../../../core/speech/audio_service.dart';
import '../../../core/speech/tts_service.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../settings/application/settings_providers.dart';
import '../application/flashcards_providers.dart';
import '../data/flashcards_repository.dart';
import '../domain/card_extras.dart';
import '../domain/card_layout.dart';
import '../domain/srs_scheduler.dart';
import '../domain/speech_language.dart';
import '../domain/study.dart';
import 'widgets/card_form_sheet.dart' show cardFieldLabel, showCardForm;

part 'review_screen/review_screen_state.dart';
part 'review_screen/flip_card.dart';
part 'review_screen/rating_button.dart';
part 'review_screen/review_actions.dart';
part 'review_screen/review_views.dart';

const _hue = ModuleHue.flashcards;

/// Learning cards that come due again within this window are shown again
/// in the same session.
const _sameSessionWindow = Duration(minutes: 20);

String studyModeLabel(AppLocalizations l10n, StudyMode m) => switch (m) {
  StudyMode.classic => l10n.studyModeClassic,
  StudyMode.reverse => l10n.studyModeReverse,
  StudyMode.mixed => l10n.studyModeMixed,
  StudyMode.typed => l10n.studyModeTyped,
  StudyMode.choice => l10n.studyModeChoice,
  StudyMode.listening => l10n.studyModeListening,
};

/// A study session over one deck.
///
/// [StudyScope.scheduled] rates cards and updates their schedule; practice
/// scopes never touch scheduling and only count right / wrong. Every mode
/// ends with a summary listing the cards that were missed, which can be
/// repeated straight away as a practice round.
class ReviewScreen extends ConsumerStatefulWidget {
  const ReviewScreen({
    super.key,
    required this.deckId,
    this.mode,
    this.scope = StudyScope.scheduled,
    this.cards,
  });
  final String deckId;

  /// Null: the last mode chosen in settings.
  final StudyMode? mode;
  final StudyScope scope;

  /// Fixed card list (used for "repeat mistakes"); loads from the deck when null.
  final List<CardRow>? cards;

  @override
  ConsumerState<ReviewScreen> createState() => _ReviewScreenState();
}

/// Undo snackbar shared by the study screen.
void showUndoSnackBar(BuildContext context, String message, VoidCallback onUndo) {
  ScaffoldMessenger.maybeOf(context)
    ?..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(label: context.l10n.actionUndo, onPressed: onUndo),
      ),
    );
}

String _ratingLabel(AppLocalizations l10n, ReviewRating r) => switch (r) {
  ReviewRating.again => l10n.reviewAgain,
  ReviewRating.hard => l10n.reviewHard,
  ReviewRating.good => l10n.reviewGood,
  ReviewRating.easy => l10n.reviewEasy,
};
