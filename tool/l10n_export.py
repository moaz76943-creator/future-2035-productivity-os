#!/usr/bin/env python3
"""Exports one language as an easy file to edit or send to a translator.

    python3 tool/l10n_export.py ar            # writes build/l10n/ar.json
    python3 tool/l10n_import.py ar build/l10n/ar.json

Each entry: {"key": {"en": "...", "text": "<current translation>", "note": "where it shows"}}.
Only "text" is read back. Keep {placeholders} and plural/select syntax as they are.
"""
import json
import sys

from l10n_common import ROOT, load_arb


def export(code):
    en = load_arb('en')
    cur = load_arb(code)
    rows = {}
    for k, v in en.items():
        if k.startswith('@'):
            continue
        meta = en.get('@' + k) or {}
        rows[k] = {'en': v, 'text': cur.get(k, v), 'note': meta.get('description', '')}
    out = ROOT / 'build' / 'l10n' / f'{code}.json'
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(rows, ensure_ascii=False, indent=1) + '\n', encoding='utf-8')
    return out


if __name__ == '__main__':
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    print('wrote', export(sys.argv[1]))
