#!/usr/bin/env python3
"""Writes tool/data/l10n_support.json: what the bundled fonts and the
localization libraries support, so the language checks run anywhere (CI
included) without fontTools or a pub cache.

    python3 tool/gen_l10n_support_data.py

Run it again after changing a font in assets/fonts or upgrading intl,
material_ui or cupertino_ui (test/unit/l10n/language_support_test.dart
fails when the libraries and this file disagree).
"""
import json
import os
import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
OUT = ROOT / 'tool' / 'data' / 'l10n_support.json'
FONTS = {'Manrope': 'Manrope.ttf', 'ReadexPro': 'ReadexPro.ttf',
         'NotoSansDevanagari': 'NotoSansDevanagari.ttf'}


def locked_version(name):
    lock = (ROOT / 'pubspec.lock').read_text(encoding='utf-8')
    m = re.search(rf'\n  {name}:\n(?:    .*\n)*?    version: "([^"]+)"', lock)
    if not m:
        sys.exit(f'{name} not in pubspec.lock')
    return m.group(1)


def package_dir(name):
    cache = pathlib.Path(os.environ.get('PUB_CACHE', pathlib.Path.home() / '.pub-cache'))
    want = cache / 'hosted' / 'pub.dev' / f'{name}-{locked_version(name)}'
    if want.is_dir():
        return want
    found = sorted((cache / 'hosted' / 'pub.dev').glob(f'{name}-*'))
    if not found:
        sys.exit(f'{name} is not in the pub cache: run flutter pub get')
    print(f'note: {want.name} not cached, reading {found[-1].name}')
    return found[-1]


def ranges(codes):
    out, start, prev = [], None, None
    for c in sorted(codes):
        if start is None:
            start = prev = c
        elif c == prev + 1:
            prev = c
        else:
            out.append([start, prev])
            start = prev = c
    if start is not None:
        out.append([start, prev])
    return out


def supported_languages(path, const):
    text = path.read_text(encoding='utf-8')
    body = text[text.index(const):]
    body = body[:body.index('}')]
    return sorted(set(re.findall(r"'([a-z]{2,3})'", body)))


def main():
    from fontTools.ttLib import TTFont  # only needed here
    intl = package_dir('intl') / 'lib' / 'src'
    dates = sorted(set(re.findall(r"'([A-Za-z_]+)'", (intl / 'data' / 'dates' / 'locale_list.dart')
                                  .read_text(encoding='utf-8'))))
    rules = (intl / 'plural_rules.dart').read_text(encoding='utf-8')
    plurals = sorted(set(re.findall(r"^  '([A-Za-z_]+)': _", rules, re.M)) - {'default'})
    material = supported_languages(
        package_dir('material_ui') / 'lib' / 'src' / 'l10n' / 'generated_material_localizations.dart',
        'kMaterialSupportedLanguages')
    cupertino = supported_languages(
        package_dir('cupertino_ui') / 'lib' / 'src' / 'l10n' / 'generated_cupertino_localizations.dart',
        'kCupertinoSupportedLanguages')
    fonts = {name: ranges(TTFont(ROOT / 'assets' / 'fonts' / f).getBestCmap())
             for name, f in FONTS.items()}
    data = {'intl_dates': dates, 'intl_plurals': plurals, 'material': material,
            'cupertino': cupertino, 'fonts': fonts}
    OUT.parent.mkdir(exist_ok=True)
    OUT.write_text(json.dumps(data, separators=(',', ':')) + '\n', encoding='utf-8')
    print(f'wrote {OUT.relative_to(ROOT)}: {len(dates)} date locales, {len(plurals)} plural rules, '
          f'{len(material)} Material and {len(cupertino)} Cupertino languages')


if __name__ == '__main__':
    main()
