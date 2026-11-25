"""Shared helpers for the localization tools (tool/l10n_*.py, tool/check_l10n.py).

lib/l10n/languages.json is the one list of app languages (name, tag, writing
system, date locale); each has a `lib/l10n/app_<code>.arb`. Add one with
`python3 tool/l10n_add_language.py`; tool/gen_languages.py generates the rest.
"""
import collections
import json
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
L10N = ROOT / 'lib' / 'l10n'
RES = ROOT / 'android' / 'app' / 'src' / 'main' / 'res'
MANIFEST = L10N / 'languages.json'
SUPPORT = ROOT / 'tool' / 'data' / 'l10n_support.json'
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
    'fil': {'one', 'other'}, 'is': {'one', 'other'}, 'mn': {'one', 'other'},
    'eu': {'one', 'other'}, 'gl': {'one', 'other'},
}

# Written right to left (generated into AppLocales.rtlLanguages). No Hebrew in this app.
RTL = {'ar', 'fa', 'ur', 'ps', 'sd', 'ug', 'ckb', 'dv', 'yi'}
# Writing systems (ISO 15924) that run right to left.
RTL_SCRIPTS = {'Arab', 'Hebr', 'Thaa', 'Syrc', 'Nkoo', 'Adlm', 'Rohg'}


def base_code(code):
    """Language of an ARB code: 'zh_Hant' -> 'zh'."""
    return code.split('_')[0]


def load_manifest():
    return json.loads(MANIFEST.read_text(encoding='utf-8'))


def language_order():
    """Codes in picker order (tool/data/language_order.txt)."""
    text = (ROOT / 'tool' / 'data' / 'language_order.txt').read_text(encoding='utf-8')
    return [c for line in text.splitlines() if not line.startswith('#') for c in line.split()]


def save_manifest(rows):
    order = {c: i for i, c in enumerate(language_order())}
    rows = sorted(rows, key=lambda r: order.get(r['code'], len(order)))
    MANIFEST.write_text('[\n' + ',\n'.join('  ' + json.dumps(r, ensure_ascii=False) for r in rows)
                        + '\n]\n', encoding='utf-8')


def support_data():
    """What the bundled fonts and the libraries support (tool/gen_l10n_support_data.py)."""
    return json.loads(SUPPORT.read_text(encoding='utf-8'))


# Android resource folders use the old codes for a few languages.
_ANDROID_CODE = {'id': 'in', 'yi': 'ji'}


def android_folder(code):
    """res/values-<x> folder of an ARB code (Indonesian is values-in, zh_Hant values-b+zh+Hant)."""
    parts = code.split('_')
    parts[0] = _ANDROID_CODE.get(parts[0], parts[0])
    return f'values-{parts[0]}' if len(parts) == 1 else 'values-b+' + '+'.join(parts)


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


def overlays():
    """{variant code: base code} for regional variants (en_GB over en) in languages.json.

    A variant's ARB holds only the texts that differ; the rest comes from its base."""
    return {l['code']: l['base'] for l in load_manifest() if l.get('base')}


def full_languages():
    """Languages whose ARB must hold every text (all but the regional variants)."""
    ov = overlays()
    return [c for c in languages() if c not in ov]


def registered_languages():
    """ARB codes listed in lib/l10n/languages.json."""
    return {l['code'] for l in load_manifest()}


def android_strings(folder):
    """{file name: [string names]} for one res/values* folder (app strings only)."""
    out = {}
    d = RES / folder
    if not d.is_dir():
        return out
    for f in sorted(d.glob('*_strings.xml')):
        out[f.name] = re.findall(r'<string name="([^"]+)"', f.read_text(encoding='utf-8'))
    return out
