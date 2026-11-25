#!/usr/bin/env python3
"""Adds a new app language in one step.

    python3 tool/l10n_add_language.py nl "Nederlands" --english Dutch --script Latn
    python3 tool/l10n_add_language.py en_GB "English (UK)" --english "English (UK)" --script Latn \\
        --base en --country GB --regions GB,IE,AU,NZ,ZA --intl en_GB
    python3 tool/l10n_add_language.py zh_Hant "繁體中文" --english "Chinese (Traditional)" \\
        --script Hant --tag zh-TW --locale-script Hant --country TW --intl zh_TW

It adds the language to lib/l10n/languages.json (the one list of languages) and
creates, filled with English to translate:
  * lib/l10n/app_<code>.arb
  * android/app/src/main/res/values-<code>/*_strings.xml (widgets, guard, tile)
Then:
  1. python3 tool/l10n_lines.py missing          # one file with every text to translate
  2. python3 tool/l10n_lines.py import-all <files>
  3. translate the Android *_strings.xml files of values-<code>/
  4. python3 tool/gen_languages.py && flutter gen-l10n && python3 tool/check_l10n.py
"""
import argparse
import re
import shutil
import sys

from l10n_common import (L10N, PLURAL_CATS, RES, RTL, RTL_SCRIPTS, android_folder, base_code,
                         languages, load_arb, load_manifest, save_arb, save_manifest, support_data)

ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
ap.add_argument('code', help='ARB code: ISO 639 language (de, ckb) or language_Script (zh_Hant)')
ap.add_argument('native', help='the language name written in the language itself (no flag)')
ap.add_argument('--english', required=True, help='the language name in English (for search)')
ap.add_argument('--script', required=True, help='ISO 15924 writing system: Latn, Cyrl, Arab, Deva, ...')
ap.add_argument('--tag', help='BCP-47 tag kept in settings (default: code)')
ap.add_argument('--locale-script', help='script subtag of the Flutter locale, e.g. Hant')
ap.add_argument('--country', help='region of the Flutter locale, e.g. BR')
ap.add_argument('--intl', help='intl locale for dates and numbers (default: the code)')
ap.add_argument('--base', help='regional variant of this language: its ARB holds only differences')
ap.add_argument('--regions', help='comma-separated countries whose phones get this language')
a = ap.parse_args()

code, lang = a.code, base_code(a.code)
if not re.fullmatch(r'[a-z]{2,3}(_([A-Z][a-z]{3}|[A-Z]{2}|[0-9]{3}))?', code):
    sys.exit('code must be 2-3 lowercase letters, optionally _Script (zh_Hant) or _REGION (en_GB)')
if a.base and a.base not in languages():
    sys.exit(f'base {a.base} is not an app language')
if a.base and not a.regions:
    sys.exit('a regional variant needs --regions')
if lang in ('he', 'iw'):
    sys.exit('Hebrew is not part of this app')
if code in languages():
    sys.exit(f'{code} already exists: edit it with tool/l10n_lines.py')
if lang not in PLURAL_CATS:
    sys.exit(f'add the CLDR plural categories of {lang} to PLURAL_CATS in tool/l10n_common.py first')
if (a.script in RTL_SCRIPTS) != (lang in RTL):
    sys.exit(f'{a.script} and the RTL list in tool/l10n_common.py disagree: fix RTL first')
intl = a.intl or code
dates = support_data()['intl_dates']
if intl not in dates:
    near = [d for d in dates if d.split('_')[0] == lang]
    sys.exit(f'intl has no date data for {intl}: pass --intl ' + (near[0] if near else 'en'))

# 1. The list of languages.
row = {'code': code, 'tag': a.tag or code.replace('_', '-'), 'native': a.native,
       'english': a.english, 'script': a.script, 'intl': intl}
if a.locale_script:
    row['localeScript'] = a.locale_script
if a.country:
    row['country'] = a.country
if a.base:
    row['base'] = a.base
if a.regions:
    row['regions'] = [r.strip() for r in a.regions.split(',') if r.strip()]
row['reviewed'] = False
save_manifest(load_manifest() + [row])

# 2. ARB: English values to translate (a variant starts empty: it inherits its base).
en = load_arb('en')
arb = {'@@locale': code}
if not a.base:
    arb.update({k: v for k, v in en.items() if not k.startswith('@')})
save_arb(code, arb)

# 3. Android strings (a variant uses its base's).
if not a.base:
    dst = RES / android_folder(code)
    dst.mkdir(exist_ok=True)
    for f in sorted((RES / 'values').glob('*_strings.xml')):
        if not (dst / f.name).exists():
            shutil.copy(f, dst / f.name)

print(f'added {code}: {L10N.name}/languages.json, app_{code}.arb'
      + ('' if a.base else f', res/{android_folder(code)}/'))
if support_data()['intl_plurals'] and lang not in support_data()['intl_plurals']:
    print(f'intl has no plural rules for {lang}: plurals need an =1 branch (check_l10n says where)')
if lang not in support_data()['material']:
    print(f'Flutter has no {lang} texts for its own widgets (copy/paste menu, date picker): '
          'they show in English, the app texts are all yours')
print('next: python3 tool/l10n_lines.py missing   (see the steps at the top of this file)')
