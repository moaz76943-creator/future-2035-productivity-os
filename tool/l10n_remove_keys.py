#!/usr/bin/env python3
"""Removes messages from every language at once.

    python3 tool/l10n_remove_keys.py key1 key2 ...
    flutter gen-l10n

Use it when a text is no longer shown anywhere; check_l10n.py reports unused keys.
"""
import sys

from l10n_common import languages, load_arb, save_arb

keys = sys.argv[1:]
if not keys:
    sys.exit(__doc__)
for lang in languages():
    d = load_arb(lang)
    for k in keys:
        d.pop(k, None)
        d.pop('@' + k, None)
    save_arb(lang, d)
print('removed', len(keys))
