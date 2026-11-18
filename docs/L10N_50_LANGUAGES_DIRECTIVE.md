# 50-LANGUAGE ZERO-LEAK LOCALIZATION DIRECTIVE FOR HERMES

## 0. Hard Constraints
- **Zero Hebrew:** NEVER include `he` or `iw` anywhere in ARB files, registries, tests, or TTS defaults.
- **Western Digits Only:** Enforce ASCII digits (`0123456789`) across ALL 50 locales (including `ar`, `fa`, `ur`, `hi`, `bn`, `ta`, `te`, `mr`, `ne`, `my`, `km`).
- **Idiomatic UI Translation (No Literal Machine Translation):** Every button, tab, tooltip, dialog, and snackbar MUST use natural, concise UI phrasing native to each language. Include `@key` context descriptions in `lib/l10n/app_en.arb` before translating.
- **Zero Hardcoded Strings / Zero Leaks:** Every user-visible string in `lib/` MUST come from `AppLocalizations` (except technical brand/format tokens like `Deep Focus`, `FSRS-4.5`, `CSV`, `TSV`, `JSON`, `TTS`).

## 1. Easy Maintenance Architecture
Create `tool/languages_registry.json` as the single source of truth for all 50 enabled locales:
`en, ar, es, fr, de, pt, ru, zh, ja, ko, hi, bn, ur, fa, tr, id, ms, vi, th, it, nl, pl, uk, ro, cs, el, sv, da, fi, nb, hu, sk, bg, hr, sr, sl, lt, lv, et, sw, am, ta, te, mr, fil, my, km, ne, uz, az`

Create `tool/l10n_manager.py` supporting:
- `audit`: Detects missing keys, placeholder mismatches (`{count}`, etc.), untranslated English leaks inside non-English `.arb` files, hardcoded user-facing strings in `lib/`, forbidden `he`/`iw`, and non-ASCII digits.
- `sync`: Syncs keys and `@key` metadata across all enabled locales in `tool/languages_registry.json` cleanly.
- `add-locale <code>` / `remove-locale <code>`: Enables or removes a locale in one command.

## 2. Quality, Zero Dead Buttons & Layout Gate
- Run `flutter gen-l10n` cleanly across all 50 locales.
- Expand widget/responsive tests to verify zero `RenderFlex` overflow across narrow (`320px`) and tablet (`840px`) widths in longest-string locales (`de`, `ru`, `fi`) and RTL locales (`ar`, `fa`, `ur`).
- Verify `docs/qa/CONTROL_INVENTORY.md` + `test/widget/control_inventory_test.dart` (0 dead buttons) + `flutter analyze --no-fatal-infos` + `flutter test` + `python3 tool/l10n_manager.py audit` all pass 100%.
