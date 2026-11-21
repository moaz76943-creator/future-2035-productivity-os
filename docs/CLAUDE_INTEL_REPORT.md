# Claude Branch Intelligence Report (Read-Only for Hermes)
- Generated (UTC): 2026-11-21 12:41:06
- Hermes Branch Commit: `88a75b5`
- Claude Reference Commit (READ-ONLY): `d79de87`
- Scope Policy: See `docs/MERGE_PRIORITIES.md` (Full feature adoption + style/test study + <=400 lines + zero dead buttons).

## Recent Commits on origin/claude-dev (Reference Only)
d79de87 Fix: the review page route was an absolute path under the flashcards tab, so Study opened the error page
86b02cf Claude settings: deny reading build output, generated code and binary assets
a4144d5 Token efficiency: .claudeignore for build output, generated code and binaries; CLAUDE.md with validation gates and efficiency rules
afe3640 Regression test: many jumps between tabs and full-screen pages keep one shell
91cd60e Flashcards: speakers on card tiles, tap a column language to change it, quiet filters, calmer study sheet; focus session sheet with presets and end sound; title and description first in tasks and goals; clipboard guard for pasted cards
ff605c3 Flashcards tab beside Focus; speech sliders; 'Automatic' voice; deck menu as side panel
d6853b6 Flashcards: speaker for the translation column; speech settings button on the deck bar
9e4458c Decks screen: search icon plus one menu for starter decks and settings
cd19adc Notes: backlinks and linked tasks in a folded group; focus timer card tinted
a886a0d Home: one plus button for task, note, event, card
69c1d0a Screen-reader names for note body and pictures; control crawl uses a fake picker and passes
da8ff2a New task form folds rare sections; fix deck-name overflow in card search
feed0a4 Calmer home: flashcards first, empty sections hidden, apps menu; tasks: 4 views + more; focus: Sounds label
e5c6796 Quick-add widget, new-note route, help text for reorder and speaker buttons, ADR
0c4a909 Monthly report, storage page, battery guide, what's new, weekly backup check, smart review time
acc5d14 Speaker button beside the question and the translation, speech settings in the review menu, softer sound cards, stress test with 20k cards and 5k notes
27c56e9 Every language on the first screen; speech language detected from the text when a deck has none; drag to reorder cards (schema v9); calmer sound tone and level
1839d4e Exam date per deck with a daily plan; share-deck and Google Drive hints; AGENTS.md with rules for every contributor, tool/check_all.sh and tool/l10n_add_keys.py in the repo; ADR-022..024
696eb40 Import and export for tasks, notes and decks (Excel, CSV, Word, PDF, Markdown, text) from one schema per section with round-trip tests; note templates; pictures in notes (schema v8, kept in backups); note editor split
c23dcae Notes show formatting instead of symbols: hidden markers, real check boxes and bullets, lists continue on Enter, buttons toggle and light up; habit icon without a person; Help in Spaces

## Files & Diff Summary vs origin/claude-dev
 .claude/settings.json                              |   24 +
 .claudeignore                                      |   31 +
 .github/copilot-instructions.md                    |    3 +
 .github/workflows/android-apk-ci.yml               |    1 +
 .github/workflows/android-emulator-tests.yml       |   68 +
 .github/workflows/claude-periodic-sync.yml         |   41 -
 .github/workflows/hermes-auto-resume.yml           |    2 +-
 .github/workflows/hermes-daily-evolution.yml       |   43 -
 .github/workflows/hermes-parallel-boost.yml        |   42 -
 .github/workflows/hermes-relay.yml                 |  103 +-
 AGENTS.md                                          |   28 -
 CLAUDE.md                                          |   21 +
 GEMINI.md                                          |    3 +
 THIRD_PARTY_LICENSES.md                            |   27 +
 android/app/src/main/AndroidManifest.xml           |   37 +
 android/app/src/main/assets/sounds/fire.ogg        |  Bin 0 -> 531629 bytes
 android/app/src/main/assets/sounds/forest.ogg      |  Bin 0 -> 465585 bytes
 android/app/src/main/assets/sounds/forestrain.ogg  |  Bin 0 -> 384812 bytes
 android/app/src/main/assets/sounds/night.ogg       |  Bin 0 -> 481156 bytes
 android/app/src/main/assets/sounds/ocean.ogg       |  Bin 0 -> 473998 bytes
 android/app/src/main/assets/sounds/rain.ogg        |  Bin 0 -> 657011 bytes
 android/app/src/main/assets/sounds/river.ogg       |  Bin 0 -> 577736 bytes
 android/app/src/main/assets/sounds/storm.ogg       |  Bin 0 -> 317158 bytes
 .../java/app/future2035/future_os/sound/Air.java   |   46 +
 .../java/app/future2035/future_os/sound/Dsp.java   |  134 ++
 .../java/app/future2035/future_os/sound/Mixer.java |  125 ++
 .../future2035/future_os/sound/SampleVoice.java    |  180 ++
 .../java/app/future2035/future_os/sound/Voice.java |   38 +
 .../kotlin/app/future2035/future_os/DndBridge.kt   |  107 +
 .../kotlin/app/future2035/future_os/HomeWidget.kt  |  101 +
 .../kotlin/app/future2035/future_os/ImageShrink.kt |   67 +
 .../app/future2035/future_os/MainActivity.kt       |  217 +-
 .../kotlin/app/future2035/future_os/PdfExport.kt   |  165 ++
 .../kotlin/app/future2035/future_os/PhoneCare.kt   |   65 +
 .../app/future2035/future_os/QuickAddWidget.kt     |   32 +
 .../app/future2035/future_os/ShortcutsBridge.kt    |   67 +
 .../app/future2035/future_os/sound/AssetSamples.kt |  125 ++
 .../app/future2035/future_os/sound/SoundEngine.kt  |  243 +++
 .../future_os/sound/SoundscapeChannel.kt           |   86 +
 .../future_os/sound/SoundscapeService.kt           |  173 ++
 .../app/future2035/future_os/speech/TtsBridge.kt   |  186 ++
 .../app/src/main/res/drawable/home_widget_bg.xml   |    6 +
 .../src/main/res/drawable/home_widget_button.xml   |    5 +
 .../src/main/res/drawable/ic_shortcut_focus.xml    |    9 +
 .../src/main/res/drawable/ic_shortcut_review.xml   |    9 +
 .../src/main/res/drawable/ic_shortcut_sounds.xml   |    9 +
 .../app/src/main/res/drawable/ic_shortcut_task.xml |    9 +
 android/app/src/main/res/layout/home_widget.xml    |   63 +
 .../app/src/main/res/layout/quick_add_widget.xml   |   49 +
 android/app/src/main/res/raw/alarm_beeps.ogg       |  Bin 0 -> 5139 bytes
 android/app/src/main/res/raw/alarm_bird.ogg        |  Bin 0 -> 27390 bytes
 android/app/src/main/res/raw/alarm_gentle.ogg      |  Bin 0 -> 5214 bytes
 android/app/src/main/res/raw/alarm_stream.ogg      |  Bin 0 -> 33380 bytes
 android/app/src/main/res/raw/alarm_wood.ogg        |  Bin 0 -> 8059 bytes
 android/app/src/main/res/raw/keep.xml              |    7 +-
 .../src/main/res/values-ar/home_widget_strings.xml |    7 +
 .../src/main/res/values-es/home_widget_strings.xml |    7 +
 .../src/main/res/values-fr/home_widget_strings.xml |    7 +
 .../src/main/res/values-hi/home_widget_strings.xml |    7 +
 .../main/res/values-night/home_widget_colors.xml   |    7 +
 .../src/main/res/values-pt/home_widget_strings.xml |    7 +
 .../src/main/res/values-ru/home_widget_strings.xml |    7 +
 .../src/main/res/values-zh/home_widget_strings.xml |    7 +
 .../app/src/main/res/values/home_widget_colors.xml |    7 +
 .../src/main/res/values/home_widget_strings.xml    |    7 +
 android/app/src/main/res/xml/home_widget_info.xml  |   11 +
 .../app/src/main/res/xml/quick_add_widget_info.xml |   11 +
 docs/ADR.md                                        |   79 +
 docs/CLAUDE_INTEL_REPORT.md                        |  206 --
 docs/FLASHCARDS.md                                 |   23 +
 docs/FLASHCARDS_MASTER_DIRECTIVE.md                |   64 -
 docs/HERMES_EVOLUTION_LOG.md                       |    3 -
 docs/L10N_50_LANGUAGES_DIRECTIVE.md                |   21 -
 docs/LESSONS_LEARNED.md                            |    6 -
 docs/MASTER_DIRECTIVE_V1.md                        |    3 -
 docs/MERGE_PRIORITIES.md                           |   20 -
 docs/MODULAR_REFACTOR_DIRECTIVE.md                 |   19 -
 docs/REPO_MAP.md                                   |   35 +-
 docs/qa/CONTROL_INVENTORY.md                       |   51 +-
 docs/store/DATA_SAFETY.md                          |    1 +
 docs/store/screenshots/ar/05-focus.png             |  Bin 340523 -> 344631 bytes
 docs/store/screenshots/ar/07-flashcards.png        |  Bin 318585 -> 299072 bytes
 docs/store/screenshots/en/05-focus.png             |  Bin 391629 -> 395465 bytes
 docs/store/screenshots/en/07-flashcards.png        |  Bin 321986 -> 304161 bytes
 integration_test/app_flow_test.dart                |  111 +
 lib/app/app.dart                                   |   31 +-
 lib/app/bootstrap/bootstrap.dart                   |   20 +-
 lib/app/home_widget_link.dart                      |  115 ++
 lib/app/routing/app_router.dart                    |   41 +-
 lib/app/routing/deep_links.dart                    |   72 +

## Candidate Feature & Test Areas in origin/claude-dev
.github/workflows/android-emulator-tests.yml
android/app/src/main/res/drawable/home_widget_bg.xml
android/app/src/main/res/drawable/home_widget_button.xml
android/app/src/main/res/layout/home_widget.xml
android/app/src/main/res/layout/quick_add_widget.xml
android/app/src/main/res/values-ar/home_widget_strings.xml
android/app/src/main/res/values-es/home_widget_strings.xml
android/app/src/main/res/values-fr/home_widget_strings.xml
android/app/src/main/res/values-hi/home_widget_strings.xml
android/app/src/main/res/values-night/home_widget_colors.xml
android/app/src/main/res/values-pt/home_widget_strings.xml
android/app/src/main/res/values-ru/home_widget_strings.xml
android/app/src/main/res/values-zh/home_widget_strings.xml
android/app/src/main/res/values/home_widget_colors.xml
android/app/src/main/res/values/home_widget_strings.xml
android/app/src/main/res/xml/home_widget_info.xml
android/app/src/main/res/xml/quick_add_widget_info.xml
docs/store/screenshots/ar/07-flashcards.png
docs/store/screenshots/en/07-flashcards.png
integration_test/app_flow_test.dart
lib/app/home_widget_link.dart
lib/core/speech/audio_service.dart
lib/features/flashcards/application/deck_view_prefs.dart
lib/features/flashcards/application/flashcards_providers.dart
lib/features/flashcards/application/listen_controller.dart
lib/features/flashcards/data/card_file_import.dart
lib/features/flashcards/data/cards_transfer.dart
lib/features/flashcards/data/flashcards_repository.dart
lib/features/flashcards/data/flashcards_repository/activity.dart
lib/features/flashcards/data/flashcards_repository/bulk.dart
lib/features/flashcards/data/flashcards_repository/duplicates.dart
lib/features/flashcards/data/flashcards_repository/media.dart
lib/features/flashcards/data/flashcards_repository/study.dart
lib/features/flashcards/domain/card_field_labels.dart
lib/features/flashcards/domain/card_import.dart
lib/features/flashcards/domain/card_layout.dart
lib/features/flashcards/domain/card_layout_fields.dart
lib/features/flashcards/domain/card_layout_templates.dart
lib/features/flashcards/domain/exam_plan.dart
lib/features/flashcards/domain/speech_language.dart
lib/features/flashcards/domain/srs_scheduler.dart
lib/features/flashcards/domain/starter_decks.dart
lib/features/flashcards/domain/study_habit.dart
lib/features/flashcards/domain/study_streak.dart
lib/features/flashcards/domain/world_languages.dart
lib/features/flashcards/presentation/card_search_screen.dart
lib/features/flashcards/presentation/deck_screen.dart
lib/features/flashcards/presentation/deck_screen/deck_actions.dart
lib/features/flashcards/presentation/deck_screen/deck_cards.dart
lib/features/flashcards/presentation/deck_screen/deck_header.dart
lib/features/flashcards/presentation/deck_screen/deck_menu.dart
lib/features/flashcards/presentation/deck_screen/deck_reorder.dart
lib/features/flashcards/presentation/deck_screen/deck_screen_state.dart
lib/features/flashcards/presentation/deck_screen/import_dialog_state.dart
lib/features/flashcards/presentation/decks_screen.dart
lib/features/flashcards/presentation/review_screen.dart
lib/features/flashcards/presentation/review_screen/flip_card.dart
lib/features/flashcards/presentation/review_screen/review_actions.dart
lib/features/flashcards/presentation/review_screen/review_screen_state.dart
lib/features/flashcards/presentation/review_screen/review_views.dart
lib/features/flashcards/presentation/study_sheets.dart
lib/features/flashcards/presentation/study_sheets/layout_sheet_state.dart
lib/features/flashcards/presentation/study_sheets/speech_sheet.dart
lib/features/flashcards/presentation/study_sheets/study_sheet.dart
lib/features/flashcards/presentation/tts_tester_screen.dart
lib/features/flashcards/presentation/widgets/card_form_sheet.dart
lib/features/flashcards/presentation/widgets/card_form_sheet/card_form_sheet_state.dart
lib/features/flashcards/presentation/widgets/card_table.dart
lib/features/flashcards/presentation/widgets/exam_line.dart
lib/features/flashcards/presentation/widgets/language_picker.dart
lib/features/flashcards/presentation/widgets/listen_bar.dart
lib/features/flashcards/presentation/widgets/starter_sheet.dart
lib/features/flashcards/presentation/widgets/study_summary.dart
lib/features/goals/presentation/widgets/goal_editor_sheet.dart
lib/features/help/presentation/tour_sheet.dart
lib/features/notes/application/note_text.dart
lib/features/notes/data/note_images.dart
lib/features/notes/data/notes_transfer.dart
lib/features/notes/presentation/markdown_preview.dart
lib/features/notes/presentation/new_note_screen.dart

## Strict Rules
1. NEVER modify or push to origin/claude-dev.
2. Port & adapt all valuable features, UX polish, and tests into hermes/future-2035-upgrade.
3. Enforce <= 400 lines per file and zero dead buttons/handlers before completing phases.
