#!/usr/bin/env python3
"""Translation memory: fills a new-texts spec from translations the app already has.

    python3 tool/l10n_reuse.py spec.json          # fills spec.json in place
    python3 tool/l10n_reuse.py spec.json --dry    # only reports

For every key in spec.json whose English text (and placeholders) is identical to an
existing key's English, each language that is still empty in the spec gets that
key's existing translation. Nothing already written in the spec is changed.
Then the report lists what still has to be translated, so only truly new
sentences cost work. Finish with: python3 tool/l10n_add_keys.py spec.json
"""
import collections
import json
import re
import sys

from l10n_common import full_languages, load_arb

args = [a for a in sys.argv[1:] if not a.startswith('--')]
if not args:
    sys.exit(__doc__)
dry = '--dry' in sys.argv
path = args[0]
spec = json.load(open(path, encoding='utf-8'), object_pairs_hook=collections.OrderedDict)
LANGS = full_languages()
PH = re.compile(r'\{(\w+)')


def norm(s):
    return ' '.join(str(s).split())


en = load_arb('en')
by_text = collections.defaultdict(list)
for k, v in en.items():
    if not k.startswith('@') and isinstance(v, str):
        by_text[norm(v)].append(k)

arbs = {l: load_arb(l) for l in LANGS}
filled, todo = 0, collections.defaultdict(list)
for key, entry in spec.items():
    text = norm(entry.get('en', ''))
    if not text:
        sys.exit(f'{key}: needs its English text first')
    sources = [k for k in by_text.get(text, []) if k != key]
    for lang in LANGS:
        if str(entry.get(lang, '')).strip():
            continue
        found = next((arbs[lang][s] for s in sources
                      if str(arbs[lang].get(s, '')).strip()
                      and set(PH.findall(arbs[lang][s])) == set(PH.findall(entry['en']))), None)
        if found is not None:
            entry[lang] = found
            filled += 1
        else:
            todo[key].append(lang)

if not dry:
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(spec, f, ensure_ascii=False, indent=2)
        f.write('\n')
print(f'reused {filled} existing translations' + (' (dry run)' if dry else ''))
for key, langs in todo.items():
    print(f'  {key}: still to translate in {len(langs)} languages')
if not todo:
    print('everything is filled: python3 tool/l10n_add_keys.py ' + path)
