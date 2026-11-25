"""Shared helpers for the localization tools (tool/l10n_*.py, tool/check_l10n.py).

The languages are whatever `lib/l10n/app_<code>.arb` files exist: adding a file
(with `python3 tool/l10n_add_language.py`) is all the tools need to know.
"""
import collections
import json
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
L10N = ROOT / 'lib' / 'l10n'
RES = ROOT / 'android' / 'app' / 'src' / 'main' / 'res'
LOCALES_DART = ROOT / 'lib' / 'app' / 'localization' / 'app_locales.dart'
TEMPLATE = 'en'

# CLDR plural categories (cardinal) for the languages most likely to be added.
# A new language must be listed here so check_l10n can verify its plurals.
PLURAL_CATS = {
    'en': {'one', 'other'}, 'es': {'one', 'many', 'other'}, 'fr': {'one', 'many', 'other'},
    'pt': {'one', 'many', 'other'}, 'it': {'one', 'many', 'other'}, 'ca': {'one', 'many', 'other'},
    'ru': {'one', 'few', 'many', 'other'}, 'uk': {'one', 'few', 'many', 'other'},
    'be': {'one', 'few', 'many', 'other'}, 'pl': {'one', 'few', 'many', 'other'},
    'cs': {'one', 'few', 'many', 'other'}, 'sk': {'one', 'few', 'many', 'other'},
    'lt': {'one', 'few', 'many', 'other'}, 'ro': {'one', 'few', 'other'},
    'hr': {'one', 'few', 'other'}, 'sr': {'one', 'few', 'other'}, 'bs': {'one', 'few', 'other'},
    'sl': {'one', 'two', 'few', 'other'}, 'lv': {'zero', 'one', 'other'},
    'ar': {'zero', 'one', 'two', 'few', 'many', 'other'}, 'cy': {'zero', 'one', 'two', 'few', 'many', 'other'},
    'ga': {'one', 'two', 'few', 'many', 'other'},
    'de': {'one', 'other'}, 'nl': {'one', 'other'}, 'sv': {'one', 'other'}, 'da': {'one', 'other'},
    'nb': {'one', 'other'}, 'fi': {'one', 'other'}, 'et': {'one', 'other'}, 'el': {'one', 'other'},
    'hu': {'one', 'other'}, 'tr': {'one', 'other'}, 'az': {'one', 'other'}, 'kk': {'one', 'other'},
    'uz': {'one', 'other'}, 'ky': {'one', 'other'}, 'tk': {'one', 'other'}, 'bg': {'one', 'other'},
    'ka': {'one', 'other'}, 'hy': {'one', 'other'}, 'sq': {'one', 'other'}, 'mk': {'one', 'other'},
    'hi': {'one', 'other'}, 'bn': {'one', 'other'}, 'ur': {'one', 'other'}, 'fa': {'one', 'other'},
    'ps': {'one', 'other'}, 'ta': {'one', 'other'}, 'te': {'one', 'other'}, 'mr': {'one', 'other'},
    'gu': {'one', 'other'}, 'kn': {'one', 'other'}, 'ml': {'one', 'other'}, 'pa': {'one', 'other'},
    'ne': {'one', 'other'}, 'si': {'one', 'other'}, 'sw': {'one', 'other'}, 'am': {'one', 'other'},
    'ha': {'one', 'other'}, 'so': {'one', 'other'}, 'zu': {'one', 'other'}, 'af': {'one', 'other'},
    'ku': {'one', 'other'}, 'ckb': {'one', 'other'}, 'ug': {'one', 'other'}, 'sd': {'one', 'other'},
    'zh': {'other'}, 'ja': {'other'}, 'ko': {'other'}, 'id': {'other'}, 'ms': {'other'},
    'th': {'other'}, 'vi': {'other'}, 'my': {'other'}, 'km': {'other'}, 'lo': {'other'},
    'yo': {'other'}, 'ig': {'other'},
}

# Written right to left (mirrors AppLocales.rtlLanguages in Dart). No Hebrew in this app.
RTL = {'ar', 'fa', 'ur', 'ps', 'sd', 'ug', 'ckb', 'dv', 'yi'}


# Android resource folders use the old codes for a few languages.
_ANDROID_CODE = {'id': 'in', 'yi': 'ji'}


def android_folder(code):
    """res/values-<x> folder name of a language (Indonesian is values-in)."""
    return f'values-{_ANDROID_CODE.get(code, code)}'


def load_arb(code):
    p = L10N / f'app_{code}.arb'
    return json.loads(p.read_text(encoding='utf-8'), object_pairs_hook=collections.OrderedDict)


def save_arb(code, data):
    p = L10N / f'app_{code}.arb'
    p.write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')


def languages():
    """Language codes with an ARB file, English first."""
    codes = sorted(p.stem[4:] for p in L10N.glob('app_*.arb'))
    return [TEMPLATE] + [c for c in codes if c != TEMPLATE]


def message_keys(data):
    return [k for k in data if not k.startswith('@')]


def registered_languages():
    """Language codes registered in AppLocales.all (lib/app/localization/app_locales.dart)."""
    text = LOCALES_DART.read_text(encoding='utf-8')
    body = text[text.index('static const all'):]
    body = body[:body.index('];')]
    codes = set(re.findall(r"languageCode: '([a-z]{2,3})'", body))
    codes |= set(re.findall(r"locale: Locale\('([a-z]{2,3})'", body))
    if 'english' in body:
        codes.add('en')
    return codes


def android_strings(folder):
    """{file name: [string names]} for one res/values* folder (app strings only)."""
    out = {}
    d = RES / folder
    if not d.is_dir():
        return out
    for f in sorted(d.glob('*_strings.xml')):
        out[f.name] = re.findall(r'<string name="([^"]+)"', f.read_text(encoding='utf-8'))
    return out
