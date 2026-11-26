#!/usr/bin/env python3
"""Writes unit tests for pure-Dart files, one file per run (drafts only).

    python3 tool/ai/tests_agent.py [--file lib/core/time/hijri.dart]

Picks the next file under lib/**/domain/ or lib/core/{time,recurrence,text} that has
no test in test/ai_generated/ yet (rotation by day). The model gets the source and
must write a flutter_test file that uses only the public API. The test must pass
twice in a row (no flakiness) and analyze cleanly; one retry gets the error back.
A test that keeps failing is NOT kept: its failure goes to the report, because it
may show a real bug or a wrong assumption, and Claude decides which.
"""
import datetime
import glob
import json
import os
import re
import subprocess
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from router import NoModelAvailable, Router  # noqa: E402

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
OUT = 'test/ai_generated'
SYSTEM = (
    'You write Dart unit tests with package:flutter_test for a Flutter app whose package '
    'name is future_os. Test only the public API of the given file, deterministically: no '
    'network, no real clock (pass fixed DateTime values), no randomness, no sleeps. Cover '
    'normal cases, edge cases and boundaries. Keep the file under 200 lines. Answer with '
    'the complete Dart file only, no explanations.'
)


def candidates():
    files = sorted(glob.glob('lib/features/*/domain/*.dart') +
                   [f for d in ('time', 'recurrence', 'text') for f in glob.glob(f'lib/core/{d}/*.dart')])
    done = {os.path.basename(f).replace('_ai_test.dart', '.dart') for f in glob.glob(f'{OUT}/*.dart')}
    files = [f for f in files if os.path.basename(f) not in done and not f.endswith('.g.dart')
             and 'part of' not in open(f, encoding='utf-8').read(300)]
    day = datetime.date.today().toordinal()
    return files[day % len(files):] + files[:day % len(files)] if files else []


def run(cmd):
    r = subprocess.run(cmd, shell=True, capture_output=True, text=True, cwd=ROOT)
    return r.returncode, (r.stdout + r.stderr)[-2500:]


def strip_fence(text):
    return re.sub(r'^```(?:dart)?\s*|```\s*$', '', text.strip(), flags=re.M).strip() + '\n'


def main():
    os.chdir(ROOT)
    pick = sys.argv[sys.argv.index('--file') + 1] if '--file' in sys.argv else (candidates() or [None])[0]
    report = {'file': pick, 'kept': False, 'notes': []}
    if not pick:
        print(json.dumps(report))
        return 0
    source = open(pick, encoding='utf-8').read()[:24000]
    pkg = 'package:future_os/' + pick[len('lib/'):]
    target = f'{OUT}/{os.path.basename(pick)[:-5]}_ai_test.dart'
    os.makedirs(OUT, exist_ok=True)
    router = Router()
    prompt = f'Import it as: {pkg}\nFile {pick}:\n```dart\n{source}\n```'

    def check(text):
        return None if 'void main' in text and 'test(' in text else 'no test file'

    for attempt in range(2):
        try:
            text, label = router.ask(SYSTEM, prompt, check)
        except NoModelAvailable:
            report['notes'].append('no model available')
            break
        code = strip_fence(text)
        if code.count('\n') > 220:
            report['notes'].append(f'{label}: too long')
            continue
        open(target, 'w', encoding='utf-8').write(code)
        run(f'dart fix --apply {target} && dart format {target}')  # tidy lints the model missed
        rc1, out1 = run(f'flutter analyze {target}')
        rc2, out2 = run(f'flutter test --reporter compact {target}') if rc1 == 0 else (1, '')
        rc3, _ = run(f'flutter test --reporter compact {target}') if rc2 == 0 else (1, '')
        if rc1 == 0 and rc2 == 0 and rc3 == 0:
            report.update(kept=True, model=label)
            break
        err = out1 if rc1 else out2
        report['notes'].append(f'{label}: attempt {attempt + 1} failed: {err[-700:]}')
        prompt += f'\n\nYour previous test failed with:\n{err[-1500:]}\nFix the test (not the app).'
    if not report['kept'] and os.path.exists(target):
        os.remove(target)
    router.save()
    os.makedirs('ai/reports', exist_ok=True)
    with open(f'ai/reports/tests-{datetime.date.today().isoformat()}.md', 'a', encoding='utf-8') as f:
        f.write(f"## {pick}: {'kept ' + report.get('model', '') if report['kept'] else 'not kept'}\n")
        for n in report['notes']:
            f.write(f'- {n.strip()}\n')
    print(json.dumps({k: v for k, v in report.items() if k != 'notes'}))
    return 0


if __name__ == '__main__':
    sys.exit(main())
