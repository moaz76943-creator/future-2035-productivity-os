#!/usr/bin/env python3
"""Drafts translations for new texts with helper models (never trusted as-is).

    python3 tool/ai/translate_draft.py ai/requests/<task>.json [--allow-paid]

The request is an l10n_add_keys spec with English (and meta) filled in. Steps:
1. tool/l10n_reuse.py fills everything the app already translated (no API call).
2. For each language still missing, one request per batch of keys; the answer
   must be JSON {key: text} and pass validation (same placeholders, same ICU
   plural/select structure, no ASCII apostrophes, no Hebrew, Western digits).
3. Writes the filled spec back and ai/reports/<task>.md listing which model
   drafted what and anything left untranslated.
A reviewer (Claude) checks the draft before it reaches claude-dev.
"""
import json
import os
import re
import subprocess
import sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
sys.path.insert(0, os.path.join(ROOT, 'tool'))
sys.path.insert(0, os.path.dirname(__file__))
from l10n_common import full_languages, load_arb  # noqa: E402
from router import NoModelAvailable, Router  # noqa: E402

BATCH = 40
PH = re.compile(r'\{(\w+)[,}]')
ICU = re.compile(r'\{(\w+),\s*(plural|select),')
BAD = [(re.compile(r"'"), 'ASCII apostrophe (use ’)'),
       (re.compile(r'[֐-׿]'), 'Hebrew letters'),
       (re.compile(r'[٠-٩۰-۹०-९০-৯]'), 'non-Western digits')]
SAMPLE_KEYS = ['navTasks', 'navFocus', 'actionSave', 'actionDelete', 'flashcardsTitle', 'settingsTitle']


def problems(en, text):
    if not isinstance(text, str) or not text.strip():
        return 'empty'
    if set(PH.findall(en)) != set(PH.findall(text)):
        return 'placeholders differ'
    if [m[1] for m in ICU.findall(en)] != [m[1] for m in ICU.findall(text)]:
        return 'plural/select structure differs'
    if text.count('{') != text.count('}'):
        return 'unbalanced braces'
    if ('other{' in en.replace(' ', '')) and 'other{' not in text.replace(' ', ''):
        return 'missing other branch'
    for rx, why in BAD:
        if rx.search(text):
            return why
    return None


def language_names():
    rows = json.load(open(os.path.join(ROOT, 'lib/l10n/languages.json'), encoding='utf-8'))
    return {r['code']: f"{r['english']} ({r['native']}, {r['tag']})" for r in rows}


SYSTEM = (
    'You translate user-interface texts of Deep Focus, a calm study and focus app '
    '(tasks, focus timer, flashcards, notes, habits, goals, calendar). Translate like a '
    'native UI writer: short, natural, consistent with the existing terms given. Keep every '
    '{placeholder} exactly. Keep ICU messages valid: translate only the text inside the '
    'branches, keep the selector words (=0, =1, one, few, many, other) and add the '
    'branches the language needs. Use typographic apostrophes, Western digits 0-9, and '
    'keep brand names (Deep Focus, Anki, Excel, Word, PDF, Android) as is. '
    'Answer with one JSON object mapping each key to its translation and nothing else.'
)


def ask_language(router, lang, name, items, arb, log):
    sample = {k: arb[k] for k in SAMPLE_KEYS if k in arb}
    payload = {k: {'en': v['en'], 'context': v.get('meta', {}).get('description', '')} for k, v in items}
    prompt = (f'Target language: {name}.\nExisting app terms for consistency: '
              f'{json.dumps(sample, ensure_ascii=False)}\nTexts to translate:\n'
              f'{json.dumps(payload, ensure_ascii=False, indent=1)}')

    def check(text):
        try:
            out = json.loads(re.sub(r'^```(?:json)?|```$', '', text.strip(), flags=re.M))
        except ValueError:
            return 'not JSON'
        if not isinstance(out, dict):
            return 'not an object'
        bad = [k for k, v in items if problems(v['en'], out.get(k))]
        return f'{len(bad)} invalid' if len(bad) > len(items) // 4 else None

    text, label = router.ask(SYSTEM, prompt, check)
    out = json.loads(re.sub(r'^```(?:json)?|```$', '', text.strip(), flags=re.M))
    good = {k: out[k] for k, v in items if not problems(v['en'], out.get(k))}
    log(f'  {lang}: {len(good)}/{len(items)} from {label}')
    return good, label


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    if not args:
        sys.exit(__doc__)
    path = args[0]
    subprocess.run([sys.executable, os.path.join(ROOT, 'tool/l10n_reuse.py'), path], check=True)
    spec = json.load(open(path, encoding='utf-8'))
    names = language_names()
    router = Router(allow_paid='--allow-paid' in sys.argv)
    report, left = [], []
    for lang in [l for l in full_languages() if l != 'en']:
        todo = [(k, v) for k, v in spec.items() if not str(v.get(lang, '')).strip()]
        if not todo:
            continue
        arb = load_arb(lang)
        for i in range(0, len(todo), BATCH):
            chunk = todo[i:i + BATCH]
            try:
                good, label = ask_language(router, lang, names.get(lang, lang), chunk, arb, print)
            except NoModelAvailable:
                left += [f'{k}:{lang}' for k, _ in chunk]
                continue
            for k, t in good.items():
                spec[k][lang] = t
            report.append(f'| {lang} | {len(good)}/{len(chunk)} | {label} |')
            left += [f'{k}:{lang}' for k, _ in chunk if k not in good]
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(spec, f, ensure_ascii=False, indent=2)
        f.write('\n')
    task = os.path.splitext(os.path.basename(path))[0]
    os.makedirs(os.path.join(ROOT, 'ai/reports'), exist_ok=True)
    with open(os.path.join(ROOT, f'ai/reports/{task}.md'), 'w', encoding='utf-8') as f:
        f.write(f'# Draft: {task}\n\nUnreviewed machine draft. Check before merging.\n\n'
                '| Language | Accepted | Model |\n|---|---|---|\n' + '\n'.join(report) + '\n')
        if left:
            f.write(f'\n## Still missing ({len(left)})\n\n' + '\n'.join(f'- {x}' for x in left) + '\n')
    print(f'drafted; {len(left)} still missing')
    return 0


if __name__ == '__main__':
    sys.exit(main())
