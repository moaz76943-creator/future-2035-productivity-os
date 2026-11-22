#!/usr/bin/env python3
"""Adds or updates texts in all 8 languages at once.

    python3 tool/l10n_add_keys.py spec.json
    flutter gen-l10n && python3 tool/check_l10n.py

spec.json:
    {"myKey": {"meta": {"description": "Where it shows"},
               "en": "...", "ar": "...", "es": "...", "fr": "...",
               "hi": "...", "pt": "...", "ru": "...", "zh": "..."}}

Every language is required (the app never shows English inside another
language). Placeholders go in meta: {"placeholders": {"count": {"type": "int"}}}.
"""
import collections
import json
import os
import sys

LANGS = ['en', 'ar', 'es', 'fr', 'hi', 'pt', 'ru', 'zh']
ROOT = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'lib', 'l10n')

spec = json.load(open(sys.argv[1], encoding='utf-8'), object_pairs_hook=collections.OrderedDict)
missing = [f'{k}:{l}' for k, v in spec.items() for l in LANGS if not str(v.get(l, '')).strip()]
if missing:
    sys.exit('missing translations: ' + ', '.join(missing))
for lang in LANGS:
    p = os.path.join(ROOT, f'app_{lang}.arb')
    d = json.load(open(p, encoding='utf-8'), object_pairs_hook=collections.OrderedDict)
    for k, v in spec.items():
        d[k] = v[lang]
        if lang == 'en':
            d['@' + k] = v.get('meta') or {'description': k}
    with open(p, 'w', encoding='utf-8') as f:
        f.write(json.dumps(d, ensure_ascii=False, indent=2) + '\n')
print('added', len(spec))
