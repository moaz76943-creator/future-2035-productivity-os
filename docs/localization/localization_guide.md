# Localization guide

Two files hold everything about languages:

- `lib/l10n/languages.json`: the one list of app languages, in picker order: ARB `code`,
  settings `tag`, own name (`native`), `english` name (for search), writing system
  (`script`, ISO 15924), `intl` date locale, optional `localeScript`/`country`, and
  `reviewed` (a native speaker checked it).
- `lib/l10n/app_<code>.arb`: the texts of one language. English (`app_en.arb`) is the
  template and carries each text's description.

`python3 tool/gen_languages.py` turns the list into `AppLocales.all`
(`app_languages.g.dart`), the font table (`language_fonts.g.dart`) and Android's per-app
language list (`res/xml/locales_config.xml`). Never edit those by hand.

| Task | Command |
|---|---|
| New texts, translated now | `python3 tool/l10n_add_keys.py spec.json` |
| New texts, English now and every language in one batch | `python3 tool/l10n_add_keys.py --pending spec.json` |
| Everything any language still lacks, in one file | `python3 tool/l10n_lines.py missing` → `build/l10n/missing.txt` |
| Import the batch | `python3 tool/l10n_lines.py import-all answer1.txt answer2.txt` |
| Edit one language | `python3 tool/l10n_lines.py source` → `python3 tool/l10n_lines.py import de de.txt` |
| Remove texts no longer shown | `python3 tool/l10n_remove_keys.py key1 key2` |
| Add a language | `python3 tool/l10n_add_language.py nl "Nederlands" --english Dutch --script Latn` |
| After any of these | `python3 tool/gen_languages.py && flutter gen-l10n && python3 tool/gen_l10n_custom.py && python3 tool/check_l10n.py` |

`spec.json` for `l10n_add_keys.py` (every language, or only `en` with `--pending`):

```json
{"guardTitle": {"meta": {"description": "Where it shows"},
                "en": "Distraction guard", "ar": "حارس التشتت", "...": "..."}}
```

Placeholders go in `meta.placeholders` (`{"count": {"type": "int"}}`) and use ICU plurals:
`{count, plural, =1{1 card} other{{count} cards}}`.

## Translating cheaply

`missing.txt` lists each English text once with its number, then per language the numbers
it needs. The answer is one `## <code>` line per language followed by `N<TAB>translation`
lines: no key names and no English repeated. Native digits are turned into Western digits on
import. Translate the meaning for a calm study app, not word for word; keep `{placeholders}`,
the plural/select structure and `\n`. Texts that rightly stay English in one language (a
brand, "Timer" in German) go in `lib/l10n/same_as_english.json` under that language.

## Adding a language

```
python3 tool/l10n_add_language.py nl "Nederlands" --english Dutch --script Latn
python3 tool/l10n_add_language.py zh_Hant "繁體中文" --english "Chinese (Traditional)" \
    --script Hant --tag zh-TW --locale-script Hant --country TW --intl zh_TW
```

It adds the language to `languages.json`, creates `app_<code>.arb` (English to translate) and
`android/.../res/values-<code>/*_strings.xml` (home widgets, guard, Quick Settings tile).
Translate with `l10n_lines.py missing`, translate the Android files, run the commands above.

What each language gets automatically, and what the checks enforce:

- **Plurals**: CLDR categories per language in `tool/l10n_common.py` (`PLURAL_CATS`; add the
  language there first if the tool asks). Where the `intl` package has no plural rules for a
  language it always picks `other`, so `check_l10n.py` then requires an `=1` branch.
  Flutter merges `=1` with `one` (and `=0`/`zero`, `=2`/`two`) and keeps only the later one,
  so a language with a `one` branch (Croatian, Ukrainian, ...) never also carries `=1`.
- **Dates and numbers**: the `intl` locale must have date data (`gen_languages.py` refuses
  one that has none); all digits are shown as Western digits anyway.
- **Direction**: right to left follows the writing system (`RTL_SCRIPTS`, `RTL` in
  `l10n_common.py`). A language Flutter's own widgets do not know still gets the right
  direction and English texts for those widgets (copy/paste menu, date picker)
  (`fallback_localizations.dart`).
- **Fonts**: a language uses a bundled font (Manrope for Latin, Cyrillic and Greek, Readex Pro
  for Arabic, Noto Sans Devanagari) only if that font has every letter of its texts;
  otherwise the phone's font draws it (Persian, Urdu, Thai, Bengali, Japanese and Korean
  do). Chinese, Japanese and Korean each get their own system font variant. Joined and
  stacked scripts get no letter spacing and more line height (`AppFonts`).
- **Layout**: `test/widget/responsive/responsive_matrix_test.dart` opens every screen in
  every language on a small phone with larger text; an overflow fails the test.
- **Picker**: languages are searched by their own name, English name, name in the app
  language (from the phone) or code; the first screen shows only the likely ones.
- **Android 13+**: the language can also be picked in the phone's app settings.

Support data (`tool/data/l10n_support.json`: what the fonts and the `intl`, Material and
Cupertino packages cover) is regenerated with `python3 tool/gen_l10n_support_data.py` after
changing a font or upgrading those packages; `test/unit/l10n/language_support_test.dart`
fails when it is out of date. A new script that should look its best can get its own font in
`assets/fonts/` (with its licence in `THIRD_PARTY_LICENSES.md` and a line in `AppFonts`),
followed by both generators.

The plan for growing to 100 languages: `docs/localization/expansion_plan.md`.

## The user's own wording

Settings → Rename words lets the user change any plain text of the app (texts with numbers
or names inside stay translated). It is a layer over the translations:
`lib/l10n/custom/custom_words.dart` plus `custom_l10n.g.dart`, generated by
`tool/gen_l10n_custom.py` from the generated `AppLocalizations`, so new texts and new
languages need no extra work. The words are stored per language in the settings store
(key `l10n.custom`) and so are part of backups. Notifications, the home widget, app icon
shortcuts and the guard's pause screen use them too.
