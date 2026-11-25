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
  * every ARB language is in lib/l10n/languages.json (and the other way round)
    with plural rules, a date locale intl knows and a writing system that agrees
    with the right-to-left list (tool/gen_languages.py), and its own Android
    res/values-<code>/ copy of every *_strings.xml with the same names
  * a language intl has no plural rules for always takes 'other', so its
    plurals must spell out =1 wherever the language has a 'one' form
  * no unused keys: every message is referenced from lib/ (a dead string is
    work for every translator and every future language)
"""
import json, re, sys, pathlib

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
from gen_languages import problems  # noqa: E402
from l10n_common import (PLURAL_CATS, android_folder, android_strings, base_code, languages,  # noqa: E402
                         load_arb, load_manifest, overlays, support_data)

ROOT = pathlib.Path(__file__).resolve().parent.parent
L10N = ROOT / 'lib' / 'l10n'
REQUIRED = languages()
OVERLAYS = overlays()
INTL_PLURALS = set(support_data()['intl_plurals'])
# Keys that may legitimately equal English in some locales.
SAME_OK = {'appName', 'percentValue', 'taskSubtaskProgress', 'durationHours', 'durationMinutes',
           'durationHoursMinutes', 'settingsMinutesValue', 'focusModePomodoro', 'statSessionsDetail',
           'dashFocusOfTarget', 'reviewProgress', 'goalProgressOf', 'intervalMinutes', 'habitCountToday',
           'notifEventBody', 'weekdaysShort', 'focusPlanTotal', 'flashcardsAudio', 'soundsNature', 'speechSeconds', 'flashcardsImage',
           'templateFieldPlural',
           # Hijri month names are proper nouns (same spelling in several languages).
           *(f'hijriMonth{i}' for i in range(1, 13)),
           # Country names used as prayer-method names.
           'prayerMethodKuwait', 'prayerMethodQatar', 'prayerMethodFrance',
           # Pure placeholder/format strings: nothing to translate.
           'analyticsBarValue', 'assistantTimeRange', 'calendarTimeRange', 'calendarWeekRange',
           'goalsAmountWithUnit', 'notesTagFilter', 'notesUpdatedAt', 'calendarDaySemantics',
           'calendarEventSemantics', 'focusHistoryItem', 'goalsCardSemantics',
           # Words that are spelled the same in some target languages (es "Color", fr "Notes").
           'calendarEventColor', 'habitsColor', 'notesNotebookColor', 'projectLinkedNotes',
           'repeatCountLabel', 'calendarAgenda', 'guardWeekPaused', 'wordsOriginal'}
BAD_DIGITS = re.compile('[\u0660-\u0669\u06F0-\u06F9\u0966-\u096F\u09E6-\u09EF\u0A66-\u0A6F\u0AE6-\u0AEF\u0BE6-\u0BEF\u0C66-\u0C6F\u0CE6-\u0CEF\u0D66-\u0D6F\u0E50-\u0E59\u0ED0-\u0ED9\u1040-\u1049\u17E0-\u17E9\uFF10-\uFF19]')
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

def same_ok(loc):
    """Per-language texts that are rightly the same as English (lib/l10n/same_as_english.json)."""
    p = ROOT / 'lib' / 'l10n' / 'same_as_english.json'
    if not p.exists():
        return set()
    return set(json.loads(p.read_text(encoding='utf-8')).get(loc, []))

def project_checks(keys):
    """Everything outside the ARB files that a language needs."""
    errors = []
    langs = set(REQUIRED)
    errors += problems(load_manifest())
    base = android_strings('values')
    for c in sorted(langs - {'en'} - set(OVERLAYS)):  # a variant may use its base's
        got = android_strings(android_folder(c))
        for f, names in base.items():
            if f not in got:
                errors.append(f'android res/{android_folder(c)}/{f} missing (copy values/{f} and translate)')
            elif set(got[f]) != set(names):
                errors.append(f'android res/{android_folder(c)}/{f}: names differ from values/{f}')
    src = '\n'.join(
        p.read_text(encoding='utf-8') for p in (ROOT / 'lib').rglob('*.dart')
        if '/l10n/gen/' not in p.as_posix() and not p.name.endswith('.g.dart'))
    used = set(re.findall(r'\b[a-z][A-Za-z0-9]*\b', src))
    for k in keys:
        if k not in used:
            errors.append(f'unused key {k}: remove it with python3 tool/l10n_remove_keys.py {k}')
    return errors

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
        base = load_arb(OVERLAYS[loc]) if loc in OVERLAYS else None
        for k in keys:
            if k not in vals:
                if base is None:
                    errors.append(f'{path.name}: missing key {k}')
                continue
            v = vals[k]; ev = en[k]
            if base is not None and v == base.get(k):
                errors.append(f'{path.name}:{k}: same as {OVERLAYS[loc]}: remove it (a variant holds only differences)')
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
                allowed = PLURAL_CATS.get(base_code(loc), {'one', 'other'})
                for c in cats:
                    if not c.startswith('=') and c not in allowed:
                        errors.append(f"{path.name}:{k}: plural category '{c}' invalid for {loc}")
                if base_code(loc) not in INTL_PLURALS and 'one' in allowed and '=1' not in cats:
                    errors.append(f"{path.name}:{k}: intl has no plural rules for {loc}: add an =1 branch")
            if BAD_DIGITS.search(v):
                errors.append(f'{path.name}:{k}: non-Western digits')
            if FLAG.search(v):
                errors.append(f'{path.name}:{k}: flag emoji')
            if loc != 'en' and base is None and v == ev and k not in SAME_OK and k not in same_ok(loc) and len(ev) > 3:
                errors.append(f'{path.name}:{k}: identical to English (untranslated?)')
            if k == 'weekdaysShort' and len(v.split(',')) != 7:
                errors.append(f'{path.name}:{k}: must have 7 comma-separated items')
        for k in vals:
            if k not in en:
                errors.append(f'{path.name}: unknown key {k}')
    errors += project_checks(keys)
    if errors:
        print('\n'.join(errors)); print(f'\n{len(errors)} localization error(s)'); sys.exit(1)
    print(f'Localization OK: {len(present)} locales x {len(keys)} keys')

if __name__ == '__main__':
    main()
