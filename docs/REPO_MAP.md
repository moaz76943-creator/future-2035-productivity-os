# Repository map — Deep Focus

Deep Focus (`com.deepfocus.study`) is an offline-first study and productivity app built with
Flutter 3.50 / Dart 3.14. Data stays on the device and every core feature works without a
connection; the internet is used only by optional features (cloud assistant, Play Integrity).
Active development happens on the `claude-dev` branch (ADR-014). This file says where things live. Decisions and their reasons are in
[ADR.md](ADR.md).

## Top level

| Path | What it is |
|---|---|
| `lib/` | App source (see below) |
| `test/unit/` | Logic, repository and database tests, one folder per feature |
| `test/widget/` | Screen tests, including `inventory/` (zero dead buttons), `responsive/` (every route at phone/tablet widths, 200% text, RTL) and per-feature flows |
| `test/store/` | Generates the Play Store screenshots |
| `tool/` | `sounds/render_alarm_sounds.py` (generates the timer-end sounds), `check_l10n.py` (translation completeness, digits, no Hebrew), `en_strings.py` + `strings/` (string sources), `third_party_licenses.py` (license audit), `control_inventory_report.py` |
| `android/` | Android host: `MainActivity.kt` (card audio, recorder, integrity), `speech/TtsBridge.kt` (phone text-to-speech), `sound/` (nature sounds: Java `SampleVoice`, `Air`, `Dsp`, `Mixer`; Kotlin `AssetSamples`, `SoundEngine`, `SoundscapeService`, `SoundscapeChannel`), `assets/sounds/` (CC0 recordings), `res/raw/alarm_*.ogg` (timer-end sounds), Gradle and signing config (secrets only via CI) |
| `assets/fonts/` | Manrope, Readex Pro, Noto Sans Devanagari and their OFL texts |
| `docs/` | This map, ADRs, flashcards status, QA (audit, control inventory), store listing, localization brief |
| `.github/workflows/` | `android-apk-ci.yml` (analyze, l10n + license checks, tests, QA APK), `android-release.yml` (signed release), visual regression gate, and the owner's `hermes-*` automation |
| `THIRD_PARTY_LICENSES.md` | Generated license list (CI fails if it is stale or a license is not permissive) |

## `lib/`

```
lib/
  main.dart                  → app/bootstrap/bootstrap.dart
  app/
    bootstrap/               startup: database, secrets, settings, font licenses, error app
    localization/            AppFormat (context.fmt): dates, numbers, Western digits everywhere
    routing/                 Routes (all paths), GoRouter config, navigation helpers
    shell/                   AppShell: floating nav, ShellScope, NavClearFab
    app.dart                 MaterialApp, themes, locales
  core/
    database/                Drift schema (tables.dart + tables/), AppDatabase (migrations, v7), connection (sqlite3mc encryption)
    design_system/           tokens (Palette, ModuleHue, Space), app_theme (+ LuxColors light/AMOLED dark), components/
    backup/                  encrypted backup / restore (Argon2id in an isolate, AES-GCM)
    security/                SecretStore (database key), PlayIntegrityService (owner-added, unused by Dart code)
    speech/                  TtsService (device voices), AudioClipPlayer (card recordings)
    text/ time/ recurrence/  text normalisation for search, Clock, recurrence rules
    providers/               core providers (database, clock, …)
  shared/widgets/            ModuleScaffold, AsyncValueView, dialogs, pickers
  features/<feature>/
    data/                    repositories (Drift queries), one class per feature
    domain/                  pure logic and value types (no Flutter)
    application/             Riverpod providers and controllers
    presentation/            screens; sub-folders hold their widgets and sheets
  l10n/                      ARB files (ar, en, es, fr, hi, pt, ru, zh) and generated code (gen/)
```

Features: `analytics`, `assistant` (offline rules, no model download), `backup`, `calendar`,
`dashboard` (Start my day), `flashcards`, `focus` (+ Do Not Disturb link), `goals`, `habits`,
`help` (feature guide → FAQ and tour, ADR-018), `notes`, `notifications`, `onboarding`,
`prayer` (offline prayer times, ADR-019), `projects`, `search`, `settings`, `sounds` (nature
sounds, background playback, saved mixes), `tasks`.

Phone integrations (ADR-020): `app/routing/deep_links.dart` (notification taps, app icon
shortcuts), `app/home_widget_link.dart` (home screen widget), `core/platform/` (shortcuts, voice
typing), `shared/widgets/mic_button.dart`.

## Large screens: library + parts

No source file is longer than about 400 lines. A screen that needs more is one Dart library split
into `part` files in a folder named after it:

```
presentation/review_screen.dart          imports, public widget, small constants
presentation/review_screen/
  review_screen_state.dart               State: fields, lifecycle, build
  review_actions.dart                    extension _ReviewActions on the State (loading, rating, speech)
  review_views.dart                      extension _ReviewViews (question / answer / summary views)
  flip_card.dart, rating_button.dart     private widgets
```

Repositories follow the same pattern: `data/flashcards_repository.dart` keeps the class (decks
and cards); `data/flashcards_repository/` holds `study`, `transfer`, `insights`, `bulk`, `media`
extensions. Extensions are public, so importing the repository brings every method.

## Flashcards at a glance

| Piece | File |
|---|---|
| FSRS-4.5 scheduler | `features/flashcards/domain/srs_scheduler.dart` |
| Study modes, typed-answer check, search key | `domain/study.dart` |
| Card fields, custom fields, templates, per-deck layout | `domain/card_extras.dart`, `domain/card_layout.dart` |
| CSV/TSV/JSON import with preview and mapping | `domain/card_import.dart`, `data/flashcards_repository/transfer.dart` |
| Images and recordings (encrypted BLOBs) | `data/flashcards_repository/media.dart`, `application/media_picker.dart` |
| Screens | `presentation/decks_screen.dart`, `deck_screen.dart`, `review_screen.dart`, `deck_stats_screen.dart`, `card_search_screen.dart`, `study_sheets.dart`, `widgets/card_form_sheet.dart` |

| Table view, listen mode, view/sort prefs | `presentation/widgets/card_table.dart`, `widgets/listen_bar.dart`, `application/listen_controller.dart`, `application/deck_view_prefs.dart` |
| Every world language, phone voices first | `domain/world_languages.dart`, `presentation/widgets/language_picker.dart` |

Spec status: [FLASHCARDS.md](FLASHCARDS.md).

## Sounds at a glance

| Piece | File |
|---|---|
| CC0 recordings + never-loop playback | `android/app/src/main/assets/sounds/*.ogg`, `android/.../sound/SampleVoice.java`, `AssetSamples.kt` (decoding); noise colours in `Air.java` |
| Mixing, fades, playback thread, focus, sleep timer | `Mixer.java`, `SoundEngine.kt` |
| Background playback + notification | `SoundscapeService.kt` |
| App side | `lib/features/sounds/` (domain, data bridge, controller, screen with painted scenes) |
| Timer-end sounds | `tool/sounds/render_alarm_sounds.py` → `res/raw/alarm_*.ogg`; `lib/features/focus/domain/end_tone.dart` |

## Checks that must stay at 100%

```
flutter analyze                       # zero issues
flutter test                          # unit + widget (inventory, responsive, l10n, help coverage)
flutter test integration_test -d <emulator>   # on-device flow (CI: android-emulator-tests.yml)
python3 tool/check_l10n.py            # 8 locales complete, Western digits, no he/iw
python3 tool/third_party_licenses.py --check
```
