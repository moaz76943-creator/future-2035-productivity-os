#!/usr/bin/env python3
"""Localization quality gate. Exit code 1 on any error.

Checks every lib/l10n/app_*.arb against the English template:
  * valid JSON, @@locale matches file name
  * no missing and no extra keys
  * identical placeholder sets
  * ICU plural/select syntax balanced, required 'other' branch present
  * plural branches only use categories valid for the locale
  * no non-Western digits (Arabic-Indic, Persian, Devanagari)
  * no empty values; values not identical to English unless allow-listed
  * language list uses no flag emoji (regional indicator symbols)
"""
import json, re, sys, pathlib

ROOT = pathlib.Path(__file__).resolve().parent.parent
L10N = ROOT / 'lib' / 'l10n'
REQUIRED = ['ar', 'en', 'zh', 'es', 'ru', 'fr', 'pt', 'hi']
PLURAL_CATS = {
    'en': {'one', 'other'}, 'es': {'one', 'many', 'other'}, 'fr': {'one', 'many', 'other'},
    'pt': {'one', 'many', 'other'}, 'ru': {'one', 'few', 'many', 'other'},
    'ar': {'zero', 'one', 'two', 'few', 'many', 'other'}, 'zh': {'other'}, 'hi': {'one', 'other'},
}
# Keys that may legitimately equal English in some locales.
SAME_OK = {'appName', 'percentValue', 'taskSubtaskProgress', 'durationHours', 'durationMinutes',
           'durationHoursMinutes', 'settingsMinutesValue', 'focusModePomodoro', 'statSessionsDetail',
           'dashFocusOfTarget', 'reviewProgress', 'goalProgressOf', 'intervalMinutes', 'habitCountToday',
           'notifEventBody', 'weekdaysShort', 'focusPlanTotal', 'flashcardsAudio', 'soundsNature', 'flashcardsImage',
           'templateFieldPlural',
           # Pure placeholder/format strings: nothing to translate.
           'analyticsBarValue', 'assistantTimeRange', 'calendarTimeRange', 'calendarWeekRange',
           'goalsAmountWithUnit', 'notesTagFilter', 'notesUpdatedAt', 'calendarDaySemantics',
           'calendarEventSemantics', 'focusHistoryItem', 'goalsCardSemantics',
           # Words that are spelled the same in some target languages (es "Color", fr "Notes").
           'calendarEventColor', 'habitsColor', 'notesNotebookColor', 'projectLinkedNotes',
           'repeatCountLabel', 'calendarAgenda'}
BAD_DIGITS = re.compile('[\u0660-\u0669\u06F0-\u06F9\u0966-\u096F]')
FLAG = re.compile('[\U0001F1E6-\U0001F1FF]')

def placeholders(text):
    """Top-level {name} and ICU argument names."""
    names = set()
    depth = 0
    i = 0
    while i < len(text):
        c = text[i]
        if c == '{':
            if depth == 0 or (depth % 2 == 0):
                m = re.match(r'\{\s*([A-Za-z_][A-Za-z0-9_]*)\s*(,|\})', text[i:])
                if m:
                    names.add(m.group(1))
            depth += 1
        elif c == '}':
            depth -= 1
        i += 1
    return names

def balanced(text):
    d = 0
    for c in text:
        if c == '{': d += 1
        elif c == '}':
            d -= 1
            if d < 0: return False
    return d == 0

def plural_cats(text):
    cats = []
    for m in re.finditer(r'\{\s*\w+\s*,\s*plural\s*,', text):
        # scan branches
        i = m.end(); depth = 1; buf = ''
        while i < len(text) and depth > 0:
            c = text[i]
            if c == '{':
                if depth == 1:
                    cats.append(buf.strip()); buf = ''
                depth += 1
            elif c == '}':
                depth -= 1
            elif depth == 1:
                buf += c
            i += 1
    return cats

def main():
    errors = []
    en = json.loads((L10N / 'app_en.arb').read_text(encoding='utf-8'))
    keys = [k for k in en if not k.startswith('@')]
    present = {p.stem[4:]: p for p in L10N.glob('app_*.arb')}
    for loc in REQUIRED:
        if loc not in present:
            errors.append(f'missing locale file app_{loc}.arb')
    for loc, path in sorted(present.items()):
        try:
            data = json.loads(path.read_text(encoding='utf-8'))
        except Exception as e:
            errors.append(f'{path.name}: invalid JSON: {e}'); continue
        if data.get('@@locale') != loc:
            errors.append(f'{path.name}: @@locale must be "{loc}"')
        vals = {k: v for k, v in data.items() if not k.startswith('@')}
        for k in keys:
            if k not in vals:
                errors.append(f'{path.name}: missing key {k}'); continue
            v = vals[k]; ev = en[k]
            if not isinstance(v, str) or not v.strip():
                errors.append(f'{path.name}:{k}: empty value'); continue
            if not balanced(v):
                errors.append(f'{path.name}:{k}: unbalanced braces')
            if placeholders(v) != placeholders(ev):
                errors.append(f'{path.name}:{k}: placeholders {sorted(placeholders(v))} != {sorted(placeholders(ev))}')
            if 'plural' in ev:
                cats = plural_cats(v)
                if 'other' not in cats:
                    errors.append(f"{path.name}:{k}: plural without 'other'")
                allowed = PLURAL_CATS.get(loc, {'one', 'other'})
                for c in cats:
                    if not c.startswith('=') and c not in allowed:
                        errors.append(f"{path.name}:{k}: plural category '{c}' invalid for {loc}")
            if BAD_DIGITS.search(v):
                errors.append(f'{path.name}:{k}: non-Western digits')
            if FLAG.search(v):
                errors.append(f'{path.name}:{k}: flag emoji')
            if loc != 'en' and v == ev and k not in SAME_OK and len(ev) > 3:
                errors.append(f'{path.name}:{k}: identical to English (untranslated?)')
            if k == 'weekdaysShort' and len(v.split(',')) != 7:
                errors.append(f'{path.name}:{k}: must have 7 comma-separated items')
        for k in vals:
            if k not in en:
                errors.append(f'{path.name}: unknown key {k}')
    if errors:
        print('\n'.join(errors)); print(f'\n{len(errors)} localization error(s)'); sys.exit(1)
    print(f'Localization OK: {len(present)} locales x {len(keys)} keys')

if __name__ == '__main__':
    main()
