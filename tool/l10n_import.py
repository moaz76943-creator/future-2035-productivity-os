#!/usr/bin/env python3
"""Writes translations for one language from a file made by l10n_export.py.

    python3 tool/l10n_import.py ar build/l10n/ar.json
    flutter gen-l10n && python3 tool/check_l10n.py

Accepts {"key": {"text": "..."}} or plain {"key": "..."}. Unknown keys are
refused, so a typo can never add a stray text; the key order of English is kept.
"""
import collections
import json
import sys

from l10n_common import languages, load_arb, save_arb

if len(sys.argv) != 3:
    sys.exit(__doc__)
code, path = sys.argv[1], sys.argv[2]
if code not in languages():
    sys.exit(f'no lib/l10n/app_{code}.arb: add the language with tool/l10n_add_language.py')
rows = json.load(open(path, encoding='utf-8'), object_pairs_hook=collections.OrderedDict)
en = load_arb('en')
unknown = [k for k in rows if k not in en or k.startswith('@')]
if unknown:
    sys.exit('unknown keys: ' + ', '.join(unknown[:20]))
cur = load_arb(code)
out = collections.OrderedDict({'@@locale': code})
changed = 0
for k, v in en.items():
    if k.startswith('@'):
        continue
    new = rows.get(k)
    text = new.get('text') if isinstance(new, dict) else new
    if isinstance(text, str) and text.strip():
        changed += text != cur.get(k)
        out[k] = text
    else:
        out[k] = cur.get(k, v)
save_arb(code, out)
print(f'{code}: {changed} texts changed')
