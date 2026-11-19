import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../../backup/application/backup_ui.dart';
import '../../../core/speech/tts_service.dart';
import '../../settings/application/settings_providers.dart';
import '../application/deck_view_prefs.dart';
import '../application/flashcards_providers.dart';
import '../application/listen_controller.dart';
import '../domain/world_languages.dart';
import 'widgets/card_table.dart';
import 'widgets/language_picker.dart' show languageLabelOf;
import 'widgets/listen_bar.dart';
import '../domain/card_import.dart';
import '../domain/study.dart';
import 'study_sheets.dart';
import '../data/card_file_import.dart';
import '../data/flashcards_repository.dart';
import 'widgets/card_form_sheet.dart';
import 'widgets/deck_form_sheet.dart';

part 'deck_screen/deck_screen_state.dart';
part 'deck_screen/deck_header.dart';
part 'deck_screen/import_dialog_state.dart';
part 'deck_screen/deck_actions.dart';
part 'deck_screen/deck_cards.dart';
part 'deck_screen/deck_menu.dart';

const _hue = ModuleHue.flashcards;

enum _DeckMenu { paste, importFile, exportJson, exportCsv, edit, stats, layout, speech, delete }

/// Card list filters.
enum _CardFilter { all, newCards, due, hard, favorites, suspended }

enum _CardAction { favorite, duplicate, move, suspend }

class DeckScreen extends ConsumerStatefulWidget {
  const DeckScreen({super.key, required this.deckId});
  final String deckId;

  @override
  ConsumerState<DeckScreen> createState() => _DeckScreenState();
}
