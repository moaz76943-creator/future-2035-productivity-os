import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import '../../../core/design_system/components/surfaces.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../focus/presentation/session_plan.dart' show PlanStepper;
import '../../../core/speech/tts_service.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../settings/application/settings_providers.dart';
import '../application/flashcards_providers.dart';
import '../domain/study.dart';
import '../domain/card_extras.dart';
import '../domain/card_layout.dart';
import '../domain/world_languages.dart';
import 'widgets/language_picker.dart';
import 'review_screen.dart' show studyModeLabel;
import 'widgets/card_form_sheet.dart' show cardFieldLabel;
import '../data/flashcards_repository.dart';

part 'study_sheets/study_sheet.dart';
part 'study_sheets/speech_sheet.dart';
part 'study_sheets/layout_sheet_state.dart';

IconData studyModeIcon(StudyMode m) => switch (m) {
  StudyMode.classic => Icons.style_rounded,
  StudyMode.reverse => Icons.swap_horiz_rounded,
  StudyMode.mixed => Icons.shuffle_rounded,
  StudyMode.typed => Icons.keyboard_rounded,
  StudyMode.choice => Icons.checklist_rounded,
  StudyMode.listening => Icons.hearing_rounded,
};

/// Choose how to study a deck: mode, then due review or a practice round.
Future<void> showStudySheet(BuildContext context, DeckRow deck) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  isScrollControlled: true,
  useSafeArea: true,
  showDragHandle: true,
  builder: (_) => _StudySheet(deck: deck),
);

/// Speech languages of a deck plus shared speech preferences.
Future<void> showSpeechSheet(BuildContext context, DeckRow deck) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  isScrollControlled: true,
  useSafeArea: true,
  showDragHandle: true,
  builder: (_) => _SpeechSheet(deck: deck),
);

/// Card layout for one deck: rename, hide and reorder the optional fields,
/// and reveal them one at a time on the answer side. Content is never changed.
Future<void> showLayoutSheet(BuildContext context, DeckRow deck) => showModalBottomSheet<void>(
  useRootNavigator: true,
  context: context,
  isScrollControlled: true,
  useSafeArea: true,
  showDragHandle: true,
  builder: (_) => _LayoutSheet(deck: deck),
);

String templateName(AppLocalizations l10n, CardTemplate t) => switch (t) {
  CardTemplate.vocabulary => l10n.templateVocabulary,
  CardTemplate.twoTranslations => l10n.templateTwoTranslations,
  CardTemplate.questionAnswer => l10n.templateQuestionAnswer,
  CardTemplate.definition => l10n.templateDefinition,
  CardTemplate.grammar => l10n.templateGrammar,
};

String templateFieldName(AppLocalizations l10n, String key) => switch (key) {
  'plural' => l10n.templateFieldPlural,
  'translation2' => l10n.templateFieldTranslation2,
  'synonyms' => l10n.templateFieldSynonyms,
  'rule' => l10n.templateFieldRule,
  _ => key,
};
