# Working on Deep Focus (for AI agents and people)

Flutter app for Android (package `com.deepfocus.study`). Read this before changing anything.
Details: `docs/REPO_MAP.md` (where things are), `docs/ADR.md` (why), `docs/FLASHCARDS.md`.

## Before every commit

```bash
bash tool/check_all.sh          # analyze, file size, translations, licenses, tests
```

CI (`.github/workflows/`) runs the same checks plus the APK build and an emulator test.
Never push with a failing check. Never weaken or delete a test to make it pass: fix the code.

## Rules that the checks enforce

1. **400 lines per file at most** (`tool/check_file_size.py`, Dart, Kotlin, Java). Split a big
   screen into `part` files in a folder named after it (example:
   `lib/features/notes/presentation/note_editor_screen/`). Code in a part that changes state
   lives in an `extension` on the State class (see `note_editor_actions.dart`).
2. **Every text in 8 languages** (en, ar, es, fr, hi, pt, ru, zh). Add texts only with
   `python3 tool/l10n_add_keys.py spec.json`, then `flutter gen-l10n`. Never type a text
   directly in a widget. No Hebrew. Western digits (0-9) only. `tool/check_l10n.py` fails on
   missing or untranslated texts.
3. **Help stays true** (`test/unit/help/feature_guide_test.dart`): every screen in the router
   needs an entry in `lib/features/help/domain/feature_guide.dart` (question, answer, route).
   When a feature changes, update its answer texts too.
4. **Files in and out stay compatible** (`test/unit/transfer/`): each section has ONE schema
   (`taskSchema`, `noteSchema`, `cardSchema`) used for both export and import. Add a column
   there, never in the export or import alone. Column ids never change; labels may.
5. **Database changes**: bump `schemaVersion` in `lib/core/database/app_database.dart`, add one
   `if (from < N)` step that only adds (never drops user data), add new tables to
   `tablesAddedIn`, and extend `test/unit/database/migration_v2_test.dart`. Run
   `dart run build_runner build` and commit the generated `.g.dart`.
6. **Every button does something** (`test/widget/inventory/`): no dead controls. At most 3-4
   main buttons per screen; the rest goes in a menu or sheet.
7. **Licenses**: only packages and assets free for commercial use; run
   `python3 tool/third_party_licenses.py` after changing dependencies.

## Product rules

- No music anywhere and no bells (nature recordings and soft tones only).
- Calm design: white luxury in light mode, true black (AMOLED) in dark mode. Use the tokens in
  `lib/core/design_system/` (`Space`, `Radii`, `ModuleHue`, `context.lux`), never raw values.
- Right-to-left must work: test Arabic (`localeTag: 'ar'`) in widget tests.
- Data stays on the phone; the internet is used only by features the user turns on.

## How the code is built

- `lib/features/<feature>/{domain,data,application,presentation}`: domain is pure Dart,
  data talks to the database (Drift), application holds Riverpod providers.
- Phone features (speech, sounds, shortcuts, Do Not Disturb, widget, PDF, pictures) go through
  a small Kotlin bridge in `android/app/src/main/kotlin/...` and a Dart interface with an
  in-memory version for tests (`Platform.isAndroid ? Channel… : Memory…`). Kotlin compiles
  only in CI, so keep it simple and check the CI build.
- Tests: `test/helpers.dart` (`TestEnv`: in-memory database, fixed clock) and
  `test/widget/widget_helpers.dart` (`pumpScreen`, `settle`, `closeEnv`).

## Git

- Work on the `claude-dev` branch (or a branch from it). The owner merges into `main`.
- Never force-push, never rewrite history, never commit keystores, passwords or keys.
- Format only the files you changed (`dart format <files>`), not whole folders.

## Global Engineering Rule: 400-line modular rule
- Strictly keep every manually written code file (Dart/Kotlin/Java) <= 400 lines (target 150-350 lines for headroom); ignore generated files (*.g.dart, *.freezed.dart, */gen/*).
- Split by cohesive responsibility, never blindly: use `part` files in a dedicated folder for large screens, and place state-mutating handlers in an `extension` on the State class.
- Always preserve public APIs/imports, keep init/dispose lifecycle centralized to prevent leaks, and run `bash tool/check_all.sh` (plus control inventory tests on UI changes) after each refactor.

## Periodic Claude Branch Learning & Selective Porting (Permanent Rule)
- **Frequency:** Run a selective audit of `origin/claude-dev` (read-only; NEVER modify, merge into, or push to `main`, `origin/main`, or `origin/claude-dev`) every **3 completed phases** in `state/future2035_phases.json` (or whenever `origin/claude-dev` advances beyond the last audited commit recorded in `state/claude_sync_state.json`).
- **Best-of-Both Selection:** Compare `origin/claude-dev` against `hermes/future-2035-upgrade`. Port ONLY high-value features, UX improvements, or bug fixes that are missing or demonstrably superior. If Hermes already has a cleaner or stronger implementation, keep Hermes's version.
- **UX, Visual & Structural Discipline:** Never dump features chaotically. Preserve maximum screen simplicity, smart button placement, and progressive disclosure (no toolbar clutter or dead buttons), strictly apply `lib/core/design_system`, and enforce <= 400 lines per manual code file with safe modular splits.
- **State Tracking:** Update `state/claude_sync_state.json` with the latest audited `origin/claude-dev` commit hash and summary of ported vs. skipped items.

## Continuous Deep-Audit & Self-Evolution Loop (Never Stop Rule)
- **Branch Isolation (Absolute):** Work ONLY on `hermes/future-2035-upgrade`. NEVER modify, merge into, or push to `main`, `origin/main`, `origin/claude-dev`, or `release/play-store`.
- **When Base Roadmap Completes:** Once all phases in `state/future2035_phases.json` reach `COMPLETED`, DO NOT halt permanently. Perform a deep architectural, UX, performance, security/bug, and test audit across the entire app (`lib/`, `test/`, `docs/`, `l10n/`).
- **Generate Next Evolution Wave:** Append 2–3 focused, high-impact phases (named `PHASE_EVO_<N>_<TOPIC>` with status `PENDING`) to `state/future2035_phases.json` covering:
  1. Bug fixes, edge-case hardening, memory/stream leaks, and error resilience.
  2. High-value feature upgrades or smart refinements to existing screens without UI clutter.
  3. Visual/UX polish using `lib/core/design_system`, smart button placement, progressive disclosure, and regression tests.
- **Safety & Quality Gates:** Keep manual code files <= 400 lines (safe modular splits), ensure zero dead buttons/handlers, run `flutter analyze` and relevant `flutter test` before committing, and leave a clean working tree on `hermes/future-2035-upgrade`.

## Engineering Hardening, Smart UX & Evolution Log (Permanent Rule)
- **Strict Branch Isolation:** Work ONLY on `hermes/future-2035-upgrade`. NEVER modify, merge into, or push to `main`, `origin/main`, `origin/claude-dev`, or `release/play-store`.
- **File Size & Modularity Guard:** Keep every manually written code file `<= 400` lines (target `150–350` lines; exempt generated files like `*.g.dart`, `*.freezed.dart`, `*/gen/*`). Split large files safely into cohesive `part` files or clean helper modules without breaking public APIs or exports.
- **Zero Dead Controls & Resilient States:** Every interactive button/control must have a real handler; every data/async screen must handle loading, empty, and error states gracefully and dispose streams, timers, controllers, and audio/TTS sessions cleanly.
- **Design System & Smart UX:** Strictly follow `lib/core/design_system` (`app_theme.dart`, `tokens.dart`, components, and theme colors). Keep primary screens calm and focused using smart button placement and progressive disclosure instead of crowding toolbars.
- **Regression & Layout Safety:** Add or maintain focused tests for critical flows (`FSRS` review, search, import, sound/TTS, locale/`RTL`/`LTR`) and edge cases (long text, empty collections, service errors) while preventing text/layout overflow.
- **Evolution Log:** Maintain a concise record in `docs/HERMES_EVOLUTION_LOG.md` documenting key improvements, why specific `claude-dev` patterns or Hermes implementations were chosen or skipped for UX/architectural cleanliness, and quality check outcomes.
