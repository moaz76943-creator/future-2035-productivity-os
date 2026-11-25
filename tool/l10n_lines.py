#!/usr/bin/env python3
"""The cheapest way for an agent (or a person) to translate: one numbered line per text.

    python3 tool/l10n_lines.py source            # build/l10n/source.txt: N<TAB>English<TAB>note
    python3 tool/l10n_lines.py import de file.txt  # file lines: N<TAB>translation
    flutter gen-l10n && python3 tool/gen_l10n_custom.py && python3 tool/check_l10n.py

Numbers follow the English file, so no key names have to be written. A line
break inside a text is written as \\n. Lines may come in any order and in several
files; only the numbers given are changed, the rest stays as it is. Keep
{placeholders} and the plural/select structure; translate the words inside.
"""
import sys

from l10n_common import ROOT, languages, load_arb, message_keys, save_arb


# The app shows Western digits only: native digits in a translation are converted.
_ZEROS = [0x0660, 0x06F0, 0x0966, 0x09E6, 0x0A66, 0x0AE6, 0x0BE6, 0x0C66, 0x0CE6, 0x0D66,
          0x0E50, 0x0ED0, 0x1040, 0x17E0, 0xFF10]
_DIGITS = {z + i: str(i) for z in _ZEROS for i in range(10)}


def western(text):
    return text.translate(_DIGITS)


def keys():
    return message_keys(load_arb('en'))


def source():
    en = load_arb('en')
    out = ROOT / 'build' / 'l10n' / 'source.txt'
    out.parent.mkdir(parents=True, exist_ok=True)
    rows = []
    for i, k in enumerate(message_keys(en), 1):
        note = (en.get('@' + k) or {}).get('description', '')
        note = '' if note == k else note
        rows.append(f'{i}\t{en[k]!s}'.replace('\n', '\\n') + (f'\t{note}' if note else ''))
    out.write_text('\n'.join(rows) + '\n', encoding='utf-8')
    return out


def import_lines(code, paths):
    if code not in languages():
        sys.exit(f'no app_{code}.arb: add the language with tool/l10n_add_language.py')
    ks = keys()
    data = load_arb(code)
    n = 0
    for p in paths:
        for line in open(p, encoding='utf-8'):
            line = line.rstrip('\n')
            if not line.strip():
                continue
            num, _, text = line.partition('\t')
            if not num.strip().isdigit() or not (1 <= int(num) <= len(ks)):
                sys.exit(f'{p}: bad line number in: {line[:60]}')
            # Not stripped: a separator such as ', ' keeps its space.
            text = western(text.split('\t')[0].replace('\\n', '\n').rstrip('\r'))
            if not text.strip():
                sys.exit(f'{p}: empty text for line {num}')
            data[ks[int(num) - 1]] = text
            n += 1
    ordered = {'@@locale': code, **{k: data[k] for k in ks if k in data}}
    save_arb(code, ordered)
    print(f'{code}: {n} lines imported')


if __name__ == '__main__':
    if sys.argv[1:2] == ['source']:
        print('wrote', source())
    elif sys.argv[1:2] == ['import'] and len(sys.argv) >= 4:
        import_lines(sys.argv[2], sys.argv[3:])
    else:
        sys.exit(__doc__)
