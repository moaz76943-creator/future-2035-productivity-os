#!/usr/bin/env python3
"""Fails when a source file is longer than the project limit (400 lines).

    python3 tool/check_file_size.py

Covers Dart (lib/, test/) and the Android Kotlin/Java sources. Generated code
(lib/l10n/gen, *.g.dart) is skipped. Split large libraries into `part` files
in a folder named after them (docs/ADR.md, ADR-004).
"""
import os
import sys

LIMIT = 400
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DIRS = ['lib', 'test', 'android/app/src/main/kotlin', 'android/app/src/main/java']
SKIP = ('.g.dart', '.freezed.dart')

too_long = []
for d in DIRS:
    for base, _, files in os.walk(os.path.join(ROOT, d)):
        if os.sep + 'gen' in base or '_preview' in base:
            continue
        for f in files:
            if not f.endswith(('.dart', '.kt', '.java')) or f.endswith(SKIP):
                continue
            p = os.path.join(base, f)
            n = sum(1 for _ in open(p, encoding='utf-8'))
            if n > LIMIT:
                too_long.append((n, os.path.relpath(p, ROOT)))

if too_long:
    print(f'Files over {LIMIT} lines:')
    for n, p in sorted(too_long, reverse=True):
        print(f'  {n:5d}  {p}')
    sys.exit(1)
print(f'file sizes OK (limit {LIMIT} lines)')
