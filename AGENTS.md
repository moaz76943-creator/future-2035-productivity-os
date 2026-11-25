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
- Data stays on the phone; the internet is used only by features the user turns on, plus the
  AdMob banner (consent first where required; it never sees user content).

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
