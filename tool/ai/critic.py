"""Second opinion: a model from a DIFFERENT provider checks a draft and assumes it is wrong.

Anything the critic flags is dropped (never "fixed" by the critic), so two
independent models plus the deterministic gates must agree before a draft is
offered for review. If no other provider answers, the draft is kept but marked
"unchecked" in the report instead of failing the whole run.
"""
import json
import re

from router import NoModelAvailable

SYSTEM = (
    'You are a strict reviewer. Assume the draft contains mistakes. For each item, decide '
    'whether the draft is correct, natural and faithful to the English for a mobile study app. '
    'Answer with one JSON object {"bad": ["key", ...], "notes": {"key": "short reason"}} '
    'listing only items that are wrong. Answer {"bad": []} if all are good.'
)


def critique(router, language, items, drafted_by):
    """items: {key: {'en': str, 'draft': str}}. Returns (bad_keys, notes, checker or None)."""
    if not items:
        return set(), {}, None
    prompt = f'Language: {language}\nItems:\n{json.dumps(items, ensure_ascii=False, indent=1)}'

    def check(text):
        try:
            out = json.loads(re.sub(r'^```(?:json)?|```$', '', text.strip(), flags=re.M))
        except ValueError:
            return 'not JSON'
        return None if isinstance(out, dict) and isinstance(out.get('bad', []), list) else 'bad shape'

    try:
        text, label = router.ask(SYSTEM, prompt, check, avoid=drafted_by)
    except NoModelAvailable:
        return set(), {}, None
    out = json.loads(re.sub(r'^```(?:json)?|```$', '', text.strip(), flags=re.M))
    bad = {k for k in out.get('bad', []) if k in items}
    notes = {k: str(v)[:160] for k, v in (out.get('notes') or {}).items() if k in bad}
    return bad, notes, label
