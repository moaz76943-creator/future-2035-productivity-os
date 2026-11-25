#!/usr/bin/env python3
"""Where the language plan stands: the target list (tool/data/language_order.txt)
against the languages the app has (lib/l10n/languages.json).

    python3 tool/l10n_status.py
"""
from l10n_common import language_order, load_manifest

have = {l['code']: l for l in load_manifest()}
target = language_order()
done = [c for c in target if c in have]
todo = [c for c in target if c not in have]
extra = [c for c in have if c not in target]
print(f'{len(done)}/{len(target)} languages in the app')
print('reviewed by a native speaker:', ' '.join(c for c in done if have[c].get('reviewed')) or '-')
print('still to add:', ' '.join(todo) or '-')
if extra:
    print('in the app but not in the plan (add them to language_order.txt):', ' '.join(extra))
