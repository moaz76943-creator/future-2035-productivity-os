# Claude Branch Intelligence Report (Read-Only for Hermes)
- Generated (UTC): 2026-11-19 09:19:42
- Hermes Branch Commit: `57ee97a`
- Claude Reference Commit (READ-ONLY): `c23dcae`

## Recent Commits on origin/claude-dev (Reference Only)
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

## Files Touched on origin/claude-dev (Top 60)
 .github/workflows/android-apk-ci.yml               |    1 +
 .github/workflows/android-emulator-tests.yml       |   68 +
 .github/workflows/hermes-auto-resume.yml           |    2 +-
 .github/workflows/hermes-parallel-boost.yml        |   42 -
 .github/workflows/hermes-relay.yml                 |   10 -
 THIRD_PARTY_LICENSES.md                            |   27 +
 android/app/src/main/AndroidManifest.xml           |   25 +
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
 .../future2035/future_os/sound/SampleVoice.java    |  155 +++
 .../java/app/future2035/future_os/sound/Voice.java |   38 +
 .../kotlin/app/future2035/future_os/DndBridge.kt   |  107 ++
 .../kotlin/app/future2035/future_os/HomeWidget.kt  |   99 ++
 .../app/future2035/future_os/MainActivity.kt       |  198 +--
 .../app/future2035/future_os/ShortcutsBridge.kt    |   67 +
 .../app/future2035/future_os/sound/AssetSamples.kt |  125 ++
 .../app/future2035/future_os/sound/SoundEngine.kt  |  243 ++++
 .../future_os/sound/SoundscapeChannel.kt           |   86 ++
 .../future_os/sound/SoundscapeService.kt           |  173 +++
 .../app/future2035/future_os/speech/TtsBridge.kt   |  186 +++
 .../app/src/main/res/drawable/home_widget_bg.xml   |    6 +
 .../src/main/res/drawable/home_widget_button.xml   |    5 +
 .../src/main/res/drawable/ic_shortcut_focus.xml    |    9 +
 .../src/main/res/drawable/ic_shortcut_review.xml   |    9 +
 .../src/main/res/drawable/ic_shortcut_sounds.xml   |    9 +
 .../app/src/main/res/drawable/ic_shortcut_task.xml |    9 +
 android/app/src/main/res/layout/home_widget.xml    |   63 +
 android/app/src/main/res/raw/alarm_beeps.ogg       |  Bin 0 -> 5139 bytes
 android/app/src/main/res/raw/alarm_bird.ogg        |  Bin 0 -> 27390 bytes
 android/app/src/main/res/raw/alarm_gentle.ogg      |  Bin 0 -> 5214 bytes
 android/app/src/main/res/raw/alarm_stream.ogg      |  Bin 0 -> 33380 bytes
 android/app/src/main/res/raw/alarm_wood.ogg        |  Bin 0 -> 8059 bytes
 android/app/src/main/res/raw/keep.xml              |    7 +-
 .../src/main/res/values-ar/home_widget_strings.xml |    5 +
 .../src/main/res/values-es/home_widget_strings.xml |    5 +
 .../src/main/res/values-fr/home_widget_strings.xml |    5 +
 .../src/main/res/values-hi/home_widget_strings.xml |    5 +
 .../main/res/values-night/home_widget_colors.xml   |    7 +
 .../src/main/res/values-pt/home_widget_strings.xml |    5 +
 .../src/main/res/values-ru/home_widget_strings.xml |    5 +
 .../src/main/res/values-zh/home_widget_strings.xml |    5 +
 .../app/src/main/res/values/home_widget_colors.xml |    7 +
 .../src/main/res/values/home_widget_strings.xml    |    5 +
 android/app/src/main/res/xml/home_widget_info.xml  |   11 +
 docs/ADR.md                                        |   53 +
 docs/FLASHCARDS.md                                 |   23 +
 docs/FLASHCARDS_MASTER_DIRECTIVE.md                |   64 -
 docs/L10N_50_LANGUAGES_DIRECTIVE.md                |   21 -
 docs/LESSONS_LEARNED.md                            |    3 -
 docs/MASTER_DIRECTIVE_V1.md                        |    3 -
 docs/MODULAR_REFACTOR_DIRECTIVE.md                 |   19 -
 docs/REPO_MAP.md                                   |   30 +-
 docs/qa/CONTROL_INVENTORY.md                       |   51 +-
 docs/store/DATA_SAFETY.md                          |    1 +
 docs/store/screenshots/ar/05-focus.png             |  Bin 340523 -> 344631 bytes
 docs/store/screenshots/ar/07-flashcards.png        |  Bin 318585 -> 299072 bytes

## Integration Rules for Hermes
1. NEVER push to or mutate claude-dev or its refs.
2. Adopt best features/patterns (e.g., audio recording, Anki/Excel import, prayer times, notes UX, tests) into hermes/future-2035-upgrade.
3. Enforce <= 400 lines per code file, zero dead buttons/handlers, and full test/analyze pass.
