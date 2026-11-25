#!/usr/bin/env python3
"""Adds a new app language in one step.

    python3 tool/l10n_add_language.py de "Deutsch"
    python3 tool/l10n_add_language.py pt "Português (Brasil)" --tag pt-BR --country BR --intl pt_BR

It creates everything the language needs, filled with English to translate:
  * lib/l10n/app_<code>.arb
  * android/app/src/main/res/values-<code>/*_strings.xml (widgets, guard, tile)
  * the entry in AppLocales.all (lib/app/localization/app_locales.dart)
and writes build/l10n/<code>.json, the list to translate. Then:
  1. translate build/l10n/<code>.json (any editor or a translator);
  2. python3 tool/l10n_import.py <code> build/l10n/<code>.json
  3. translate the Android *_strings.xml files of values-<code>/
  4. flutter gen-l10n && python3 tool/check_l10n.py   (lists anything still English)
"""
import argparse
import re
import shutil
import sys

from l10n_common import L10N, LOCALES_DART, PLURAL_CATS, RES, RTL, android_folder, languages, load_arb, save_arb
from l10n_export import export

SCRIPTS_WITH_FONT = 'Latin, Cyrillic, Greek (Manrope), Arabic (Readex Pro), Devanagari (Noto), CJK (system)'

ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
ap.add_argument('code', help='ISO 639 language code, e.g. de, tr, ur')
ap.add_argument('native', help='the language name written in the language itself (no flag)')
ap.add_argument('--tag', help='BCP-47 tag kept in settings (default: code)')
ap.add_argument('--country', help='region for Locale(code, country), e.g. BR')
ap.add_argument('--intl', help='intl locale for dates and numbers (default: code)')
a = ap.parse_args()

code = a.code.lower()
if not re.fullmatch(r'[a-z]{2,3}', code):
    sys.exit('code must be 2 or 3 lowercase letters')
if code == 'he':
    sys.exit('Hebrew is not part of this app')
if code in languages():
    sys.exit(f'{code} already exists: edit it with tool/l10n_export.py / tool/l10n_import.py')
if code not in PLURAL_CATS:
    sys.exit(f'add the CLDR plural categories of {code} to PLURAL_CATS in tool/l10n_common.py first')

# 1. ARB: English values to translate.
en = load_arb('en')
arb = {'@@locale': code}
arb.update({k: v for k, v in en.items() if not k.startswith('@')})
save_arb(code, arb)

# 2. Android strings.
dst = RES / android_folder(code)
dst.mkdir(exist_ok=True)
for f in sorted((RES / 'values').glob('*_strings.xml')):
    if not (dst / f.name).exists():
        shutil.copy(f, dst / f.name)

# 3. AppLocales.all
tag = a.tag or code
locale = f"Locale('{code}', '{a.country}')" if a.country else f"Locale('{code}')"
entry = (f"    SupportedLanguage(tag: '{tag}', locale: {locale}, "
         f"nativeName: '{a.native}', intlLocale: '{a.intl or code}'),\n")
text = LOCALES_DART.read_text(encoding='utf-8')
start = text.index('static const all')
end = text.index('];', start)
LOCALES_DART.write_text(text[:end].rstrip(' ') + entry + '  ' + text[end:], encoding='utf-8')

# 4. Work file for the translator.
out = export(code)
print(f'added {code}: {L10N.name}/app_{code}.arb, res/values-{code}/, AppLocales.all')
print(f'translate {out} then: python3 tool/l10n_import.py {code} {out}')
if code in RTL:
    print('right to left: layouts mirror automatically')
print(f'fonts bundled for: {SCRIPTS_WITH_FONT}. Another script needs a font in assets/fonts and '
      'AppFonts (lib/core/design_system/app_theme/lux_colors.dart).')
