# Language plan

The target is the 67-language list in `tool/data/language_order.txt` (owner's choice,
2026-11-25: the most used and highest-income languages; no Hebrew, no Syriac). That file is
also the picker order. `python3 tool/l10n_status.py` shows what is done and what is left.

Regional variants are light: `en_GB`, `es_419`, `pt_PT` and `fr_CA` hold only the texts that
differ from their base language, and phones in those regions get them automatically
(`regions` in `lib/l10n/languages.json`). Traditional Chinese (`zh_Hant`) is a full language
and also serves Hong Kong and Macau.

Every language in the plan is fully supported by the libraries the app uses (dates, plurals
and Flutter's own widget texts; `tool/data/l10n_support.json`). Scripts without a bundled
font (Tamil, Telugu, Georgian, Armenian, Sinhala, ...) use the phone's font, which Android
ships for all of them.

## How each language is added

1. `python3 tool/l10n_add_language.py <code> "<native>" --english <name> --script <Script>`
2. `python3 tool/l10n_lines.py missing`, then translate `build/l10n/missing.txt` by meaning
   (calm, short, natural; not word for word) and `python3 tool/l10n_lines.py import-all`.
3. Translate `res/values-<code>/*_strings.xml`.
4. `bash tool/check_all.sh`: every text, plural, placeholder, font, direction and layout is
   checked in that language.

## Before publishing a language

Translations made without a native speaker carry `"reviewed": false`. Have a native speaker
read the main screens (Home, Focus, Cards, Settings) and set `"reviewed": true`.
