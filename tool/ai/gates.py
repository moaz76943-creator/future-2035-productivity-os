#!/usr/bin/env python3
"""Deterministic gates every helper-model draft must pass (no model involved).

    python3 tool/ai/gates.py --base origin/claude-dev [--full]

Checks the files changed against --base:
  - only allowed paths changed (lib/l10n, test/ai_generated, ai/), never app code,
    workflows, Android config, signing, ads or pubspec files
  - no secret-looking strings (API keys, tokens, private keys)
  - every hand-written file stays at or under 400 lines
  - translation consistency (tool/check_l10n.py)
With --full it also runs gen-l10n, the analyzer and the tests.
Exit code 0 = pass. A short JSON verdict is printed for the report.
"""
import json
import re
import subprocess
import sys

ALLOWED = re.compile(r'^(lib/l10n/|test/ai_generated/|ai/)')
NEVER = re.compile(r'(^\.github/|^android/|pubspec\.|\.jks$|\.keystore$|key\.properties|'
                   r'^lib/core/ads/|^lib/app/|^tool/)')
SECRETS = re.compile(
    r'(AIza[0-9A-Za-z_\-]{30,}|AQ\.[0-9A-Za-z_\-]{30,}|sk-or-v1-[0-9a-f]{20,}|gsk_[0-9A-Za-z]{20,}'
    r'|nvapi-[0-9A-Za-z_\-]{20,}|ghp_[0-9A-Za-z]{30,}|github_pat_[0-9A-Za-z_]{30,}'
    r'|-----BEGIN [A-Z ]*PRIVATE KEY-----)')
GENERATED = re.compile(r'(\.g\.dart$|/gen/|app_localizations|\.arb$|\.json$|\.md$)')


def sh(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True)


def main():
    base = sys.argv[sys.argv.index('--base') + 1] if '--base' in sys.argv else 'origin/claude-dev'
    changed = [f for f in sh(f'git diff --name-only {base}...HEAD; git diff --name-only;'
                             f' git ls-files --others --exclude-standard').stdout.split() if f]
    changed = sorted(set(changed))
    problems = []
    for f in changed:
        if NEVER.search(f) or not ALLOWED.search(f):
            problems.append(f'not allowed for agents: {f}')
    for f in changed:
        try:
            text = open(f, encoding='utf-8', errors='ignore').read()
        except (FileNotFoundError, IsADirectoryError):
            continue
        if SECRETS.search(text):
            problems.append(f'secret-looking text in {f}')
        if not GENERATED.search(f) and text.count('\n') > 400:
            problems.append(f'{f} is over 400 lines')
    steps = ['python3 tool/check_l10n.py']
    if '--full' in sys.argv:
        steps = ['flutter gen-l10n', 'python3 tool/gen_l10n_custom.py', 'python3 tool/check_l10n.py',
                 'flutter analyze', 'flutter test --reporter compact --dart-define=ENABLE_ADS=false']
    for step in steps:
        if problems:
            break
        r = sh(step)
        if r.returncode != 0:
            problems.append(f'failed: {step}: ' + (r.stdout + r.stderr).strip()[-600:])
    print(json.dumps({'pass': not problems, 'changed': len(changed), 'problems': problems}, indent=1))
    return 0 if not problems else 1


if __name__ == '__main__':
    sys.exit(main())
