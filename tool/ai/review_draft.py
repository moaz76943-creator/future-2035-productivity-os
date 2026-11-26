#!/usr/bin/env python3
"""Daily translation review by helper models (drafts only, Claude reviews later).

    python3 tool/ai/review_draft.py [--langs ar,de] [--per-day 6] [--max-fixes 40]

Without --langs it picks --per-day languages by rotation (day of the year), so
every language is reviewed every couple of weeks. For each one, batches of
English + current text go to the models, which return ONLY texts that are wrong
or unnatural, with a reason. Every fix passes the same validation as drafts
(placeholders, plural/select structure, apostrophes, digits); the rest is
dropped. Accepted fixes are written into lib/l10n/app_<code>.arb and listed in
ai/reports/review-<date>.md (old -> new, model, reason) for review.
"""
import datetime
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from translate_draft import ROOT, language_names, problems  # noqa: E402
from l10n_common import full_languages, load_arb, save_arb  # noqa: E402
from router import NoModelAvailable, Router  # noqa: E402
from critic import critique  # noqa: E402

BATCH = 60
PROTECTED = {'appName'}  # brand and other texts the models must never touch
SYSTEM = (
    'You are a native-speaker UI editor reviewing translations of Deep Focus, a calm study '
    'and focus app. For each item you get the English source and the current translation. '
    'Return ONLY items whose translation is wrong, ungrammatical, unnatural for a mobile app, '
    'inconsistent with the other items, or in the wrong language. Keep {placeholders} and ICU '
    'plural/select syntax exactly; use typographic apostrophes and Western digits 0-9. '
    'Answer with one JSON object {"key": {"text": "corrected translation", "why": "short reason in English"}}. '
    'Answer {} if everything is fine. Never change correct texts for style alone.'
)


def arg(name, default):
    if name in sys.argv:
        return sys.argv[sys.argv.index(name) + 1]
    return default


def pick_languages():
    chosen = arg('--langs', '')
    if chosen:
        return chosen.split(',')
    langs = [l for l in full_languages() if l != 'en']
    per_day = int(arg('--per-day', '6'))
    # DF_SLOT (e.g. the hour) moves the window so hourly runs cover different languages.
    slot = datetime.date.today().timetuple().tm_yday * 24 + int(os.environ.get('DF_SLOT', '0'))
    start = (slot * per_day) % len(langs)
    return [langs[(start + i) % len(langs)] for i in range(per_day)]


def parse(text):
    out = json.loads(re.sub(r'^```(?:json)?|```$', '', text.strip(), flags=re.M))
    if not isinstance(out, dict):
        raise ValueError('not an object')
    return out


def review_language(router, lang, name, en, max_fixes, log):
    arb = load_arb(lang)
    keys = [k for k in en if not k.startswith('@') and k not in PROTECTED and isinstance(arb.get(k), str)]
    fixes = []
    for i in range(0, len(keys), BATCH):
        chunk = keys[i:i + BATCH]
        payload = {k: {'en': en[k], 'now': arb[k]} for k in chunk}
        prompt = f'Language: {name}\nItems:\n{json.dumps(payload, ensure_ascii=False, indent=1)}'

        def check(text):
            try:
                parse(text)
            except ValueError:
                return 'not JSON'
            return None

        try:
            text, label = router.ask(SYSTEM, prompt, check)
        except NoModelAvailable:
            log(f'  {lang}: no model left, stopping this language')
            break
        for k, v in parse(text).items():
            if k not in payload or not isinstance(v, dict):
                continue
            new, why = v.get('text'), str(v.get('why', ''))[:160]
            if not isinstance(new, str) or new == arb[k] or problems(en[k], new):
                continue
            fixes.append((k, arb[k], new, label, why))
        if len(fixes) >= max_fixes:
            break
    fixes = fixes[:max_fixes]
    if fixes:
        # A second model from another provider must agree, or the fix is dropped.
        items = {k: {'en': en[k], 'draft': new} for k, _, new, _, _ in fixes}
        bad, notes, checker = critique(router, name, items, fixes[0][3])
        dropped = [f for f in fixes if f[0] in bad]
        fixes = [(k, o, n, f'{lbl} + {checker or "unchecked"}', w) for k, o, n, lbl, w in fixes
                 if k not in bad]
        if dropped:
            log(f'  {lang}: critic dropped {len(dropped)}: ' + ', '.join(notes.get(f[0], f[0]) for f in dropped)[:300])
    for k, _, new, _, _ in fixes:
        arb[k] = new
    if fixes:
        save_arb(lang, arb)
    log(f'  {lang}: {len(fixes)} fixes')
    return fixes


def main():
    names = language_names()
    en = load_arb('en')
    router = Router(allow_paid=False)
    max_fixes = int(arg('--max-fixes', '40'))
    day = datetime.date.today().isoformat()
    lines = [f'# Translation review {day}', '',
             'Unreviewed helper-model suggestions. Claude checks them before claude-dev.', '']
    total = 0
    for lang in pick_languages():
        fixes = review_language(router, lang, names.get(lang, lang), en, max_fixes, print)
        total += len(fixes)
        lines.append(f'## {lang} ({len(fixes)})')
        for k, old, new, label, why in fixes:
            lines.append(f'- `{k}` ({label}): {why}\n  - was: {old}\n  - now: {new}')
        lines.append('')
    os.makedirs(os.path.join(ROOT, 'ai/reports'), exist_ok=True)
    with open(os.path.join(ROOT, f'ai/reports/review-{day}.md'), 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines) + '\n')
    router.save()
    print(f'review done: {total} suggested fixes')
    return 0


if __name__ == '__main__':
    sys.exit(main())
