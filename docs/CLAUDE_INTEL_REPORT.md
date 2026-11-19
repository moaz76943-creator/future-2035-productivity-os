# Claude Branch Intelligence Report (Read-Only for Hermes)
- Generated (UTC): 2026-11-19 14:32:46
- Hermes Branch Commit: `76bd009`
- Claude Reference Commit (READ-ONLY): `da8ff2a`
- Scope Policy: See `docs/MERGE_PRIORITIES.md` (Full feature adoption + style/test study + <=400 lines + zero dead buttons).

## Recent Commits on origin/claude-dev (Reference Only)
da8ff2a New task form folds rare sections; fix deck-name overflow in card search
feed0a4 Calmer home: flashcards first, empty sections hidden, apps menu; tasks: 4 views + more; focus: Sounds label
e5c6796 Quick-add widget, new-note route, help text for reorder and speaker buttons, ADR
0c4a909 Monthly report, storage page, battery guide, what's new, weekly backup check, smart review time
acc5d14 Speaker button beside the question and the translation, speech settings in the review menu, softer sound cards, stress test with 20k cards and 5k notes
27c56e9 Every language on the first screen; speech language detected from the text when a deck has none; drag to reorder cards (schema v9); calmer sound tone and level
1839d4e Exam date per deck with a daily plan; share-deck and Google Drive hints; AGENTS.md with rules for every contributor, tool/check_all.sh and tool/l10n_add_keys.py in the repo; ADR-022..024
696eb40 Import and export for tasks, notes and decks (Excel, CSV, Word, PDF, Markdown, text) from one schema per section with round-trip tests; note templates; pictures in notes (schema v8, kept in backups); note editor split
c23dcae Notes show formatting instead of symbols: hidden markers, real check boxes and bullets, lists continue on Enter, buttons toggle and light up; habit icon without a person; Help in Spaces
babc9e9 Emulator integration tests in CI, brand name Deep Focus in all texts, Russian plural fixes, docs for the new features
6788365 Prayer times, Anki and Excel import with template, starter decks, accent colour and card text size, home screen widget, help and first-run tour from one feature guide with coverage test; mic message visible above sheets
725455f Focus sounds and saved mixes, review reminder switch, app icon shortcuts, notification deep links, Start my day, Hijri dates, study streak and weekly summary, Do Not Disturb during focus, voice typing, prayer times engine
7d066ba diagnostics: private local error log (type and code location only), view/share/clear in settings
582a80c backup: quiet daily automatic backups (no setup, last 7 kept, restore from settings)
64a9807 revert app lock, relay hardening, Dependabot and the per-push R8 check at the owner's request (keep it simple); settings model split into parts
99a73d5 hardening: hermes relay cannot push outside its branch; predictive back; Dependabot; CI gates for file size and R8 release shrinking; inventory test split under 400 lines
b76a974 sounds: ask for notification permission on first play (Android 13+ hides playback controls without it); refresh store screenshots
e61b9ed sounds: fade in once a recording finishes decoding; decode from a cache copy if an asset is ever compressed
c12af75 sounds: real CC0 nature recordings instead of synthesis, played with random cross-faded read heads so they never audibly loop; real bird and stream end tones; rain in the forest replaces wind
0c7e341 flashcards: table view with per-row speech, swap columns, sort, cards/table views; hands-free listen mode; paste cards from clipboard; every world language with the phone's voices first and a link to download more; pause between repeats and example after the answer; today's activity, language pairs and quick study on decks; categorized deck menu

## Files & Diff Summary vs origin/claude-dev
 .github/copilot-instructions.md                    |    3 +
 .github/workflows/android-apk-ci.yml               |    1 +
 .github/workflows/android-emulator-tests.yml       |   68 +
 .github/workflows/hermes-auto-resume.yml           |    2 +-
 .github/workflows/hermes-parallel-boost.yml        |   42 -
 .github/workflows/hermes-relay.yml                 |   15 -
 AGENTS.md                                          |   63 +
 CLAUDE.md                                          |    3 +
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
 lib/app/routing/app_router.dart                    |    6 +
 lib/app/routing/deep_links.dart                    |   72 +
 lib/app/routing/routes.dart                        |    3 +
 lib/core/database/app_database.dart                |   15 +-
 lib/core/database/app_database.g.dart              | 2118 ++++++++++++++------
 lib/core/database/tables/projects.dart             |   17 +
 lib/core/design_system/app_theme.dart              |   19 +-

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
lib/features/flashcards/data/flashcards_repository/media.dart
lib/features/flashcards/data/flashcards_repository/study.dart
lib/features/flashcards/domain/card_field_labels.dart
lib/features/flashcards/domain/card_import.dart
lib/features/flashcards/domain/card_layout.dart
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
lib/features/flashcards/presentation/widgets/card_form_sheet.dart
lib/features/flashcards/presentation/widgets/card_form_sheet/card_form_sheet_state.dart
lib/features/flashcards/presentation/widgets/card_table.dart
lib/features/flashcards/presentation/widgets/exam_line.dart
lib/features/flashcards/presentation/widgets/language_picker.dart
lib/features/flashcards/presentation/widgets/listen_bar.dart
lib/features/flashcards/presentation/widgets/starter_sheet.dart
lib/features/flashcards/presentation/widgets/study_summary.dart
lib/features/help/presentation/tour_sheet.dart
lib/features/notes/application/note_text.dart
lib/features/notes/data/note_images.dart
lib/features/notes/data/notes_transfer.dart
lib/features/notes/presentation/markdown_preview.dart
lib/features/notes/presentation/new_note_screen.dart
lib/features/notes/presentation/note_editing_controller.dart
lib/features/notes/presentation/note_editor_screen.dart
lib/features/notes/presentation/note_editor_screen/directional_field.dart
lib/features/notes/presentation/note_editor_screen/note_editor_actions.dart
lib/features/notes/presentation/note_editor_screen/note_editor_screen_state.dart

## Strict Rules
1. NEVER modify or push to origin/claude-dev.
2. Port & adapt all valuable features, UX polish, and tests into hermes/future-2035-upgrade.
3. Enforce <= 400 lines per file and zero dead buttons/handlers before completing phases.
