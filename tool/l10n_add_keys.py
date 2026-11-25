#!/usr/bin/env python3
"""Adds or updates texts in every app language at once.

    python3 tool/l10n_add_keys.py spec.json
    python3 tool/l10n_add_keys.py --pending spec.json   # English (and any others) now,
        # the rest in one batch: python3 tool/l10n_lines.py missing / import-all
    flutter gen-l10n && python3 tool/check_l10n.py

spec.json:
    {"myKey": {"meta": {"description": "Where it shows"},
               "en": "...", "ar": "...", "es": "...", "fr": "...",
               "hi": "...", "pt": "...", "ru": "...", "zh": "..."}}

Every language that has a lib/l10n/app_<code>.arb file is required (the app
never shows English inside another language); the list comes from the files,
so a newly added language is required automatically. Placeholders go in meta: {"placeholders": {"count": {"type": "int"}}}.
"""
import collections
import json
import sys

from l10n_common import full_languages, languages, load_arb, save_arb

LANGS = full_languages()  # regional variants inherit from their base

args = [a for a in sys.argv[1:] if a != '--pending']
pending = '--pending' in sys.argv
spec = json.load(open(args[0], encoding='utf-8'), object_pairs_hook=collections.OrderedDict)
need = ['en'] if pending else LANGS
missing = [f'{k}:{l}' for k, v in spec.items() for l in need if not str(v.get(l, '')).strip()]
if missing:
    sys.exit('missing translations: ' + ', '.join(missing))
unknown = sorted({l for v in spec.values() for l in v if l != 'meta' and l not in languages()})
if unknown:
    sys.exit('no app_<code>.arb for: ' + ', '.join(unknown))
for lang in languages():
    d = load_arb(lang)
    for k, v in spec.items():
        if not str(v.get(lang, '')).strip():
            continue  # pending: listed by tool/l10n_lines.py missing
        d[k] = v[lang]
        if lang == 'en':
            d['@' + k] = v.get('meta') or {'description': k}
    save_arb(lang, d)
print('added', len(spec))
