#!/usr/bin/env python3
"""Adds or updates texts in every app language at once.

    python3 tool/l10n_add_keys.py spec.json
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

from l10n_common import languages, load_arb, save_arb

LANGS = languages()

spec = json.load(open(sys.argv[1], encoding='utf-8'), object_pairs_hook=collections.OrderedDict)
missing = [f'{k}:{l}' for k, v in spec.items() for l in LANGS if not str(v.get(l, '')).strip()]
if missing:
    sys.exit('missing translations: ' + ', '.join(missing))
unknown = sorted({l for v in spec.values() for l in v if l != 'meta' and l not in LANGS})
if unknown:
    sys.exit('no app_<code>.arb for: ' + ', '.join(unknown))
for lang in LANGS:
    d = load_arb(lang)
    for k, v in spec.items():
        d[k] = v[lang]
        if lang == 'en':
            d['@' + k] = v.get('meta') or {'description': k}
    save_arb(lang, d)
print('added', len(spec))
