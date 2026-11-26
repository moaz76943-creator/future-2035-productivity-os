#!/usr/bin/env python3
"""Reviews one app file per run and proposes a small, safe fix (draft only).

    python3 tool/ai/improve_agent.py [--file lib/features/x/y.dart]

The worker model returns findings (bugs, crashes, accessibility, RTL, overflow,
dead code, confusing UI) and at most one minimal unified-diff patch. The patch
must apply cleanly, be approved by a critic from another provider, and then pass
tool/ai/gates.py --allow-code --full (protected areas, no edits to existing tests,
400 lines, analyzer, all tests). Findings are always written to the report, so
Claude learns from them even when the patch is dropped.
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
SKIP = re.compile(r'(\.g\.dart$|/l10n/|^lib/app/|^lib/core/(ads|security|database|backup|platform)/'
                  r'|^lib/features/(guard|backup)/)')
SYSTEM = (
    'You are a senior Flutter reviewer for Deep Focus, a calm offline study app (67 languages, '
    'RTL, accessibility, ads must stay). Review the file: list concrete findings (real bugs, '
    'crash risks, missing null checks, overflow on small screens or large text, RTL issues, '
    'accessibility labels, confusing UI, dead code). Then propose AT MOST ONE minimal fix as a '
    'unified diff against this exact file (paths a/<path> b/<path>), changing as few lines as '
    'possible, never adding packages, never removing features, ads or tests, no new user-facing '
    'strings. If unsure, give no patch. Answer JSON only: '
    '{"findings": ["..."], "patch": "diff text or empty", "why": "short reason for the patch"}'
)
CRITIC = (
    'You are a strict reviewer. Assume this patch is wrong. Reject it if it could change behaviour '
    'beyond its stated purpose, break something, remove a feature, or is not clearly better. '
    'Answer JSON only: {"approve": true|false, "reason": "short"}'
)


def run(cmd):
    r = subprocess.run(cmd, shell=True, capture_output=True, text=True, cwd=ROOT)
    return r.returncode, (r.stdout + r.stderr)[-1500:]


def parse(text):
    return json.loads(re.sub(r'^```(?:json)?|```$', '', text.strip(), flags=re.M))


def pick():
    if '--file' in sys.argv:
        return sys.argv[sys.argv.index('--file') + 1]
    files = sorted(f for f in glob.glob('lib/**/*.dart', recursive=True) if not SKIP.search(f))
    slot = datetime.date.today().toordinal() * 24 + datetime.datetime.utcnow().hour
    return files[slot % len(files)] if files else None


def main():
    os.chdir(ROOT)
    path = pick()
    if not path:
        return 0
    router = Router()
    source = open(path, encoding='utf-8').read()[:30000]
    note = {'file': path, 'kept': False}

    def check(text):
        try:
            out = parse(text)
        except ValueError:
            return 'not JSON'
        return None if isinstance(out, dict) and isinstance(out.get('findings', []), list) else 'bad shape'

    try:
        text, label = router.ask(SYSTEM, f'File {path}:\n```dart\n{source}\n```', check)
    except NoModelAvailable:
        print('no model available')
        return 0
    out = parse(text)
    findings = [str(f)[:300] for f in out.get('findings', [])][:12]
    patch = str(out.get('patch') or '').strip()
    verdict = 'no patch'
    if patch:
        open('/tmp/ai.patch', 'w', encoding='utf-8').write(patch + '\n')
        rc, err = run('git apply --check --recount /tmp/ai.patch')
        if rc:
            verdict = f'patch did not apply: {err[-200:]}'
        else:
            try:
                ctext, clabel = router.ask(CRITIC, f'Why: {out.get("why", "")}\nPatch:\n{patch[:12000]}',
                                           lambda t: None if 'approve' in t else 'bad shape',
                                           avoid=label.split('/')[0])
                c = parse(ctext)
            except (NoModelAvailable, ValueError):
                c = {'approve': False, 'reason': 'no independent critic available'}
            if c.get('approve') is True:
                run('git apply --recount /tmp/ai.patch')
                verdict = f'applied (critic {clabel}: {str(c.get("reason", ""))[:150]})'
                note['kept'] = True
            else:
                verdict = f'critic rejected: {str(c.get("reason", ""))[:200]}'
    router.save()
    os.makedirs('ai/reports', exist_ok=True)
    with open(f'ai/reports/improve-{datetime.date.today().isoformat()}.md', 'a', encoding='utf-8') as f:
        f.write(f'## {path} ({label})\n- patch: {verdict}\n- why: {str(out.get("why", ""))[:200]}\n')
        for x in findings:
            f.write(f'- finding: {x}\n')
        f.write('\n')
    print(json.dumps(note))
    return 0


if __name__ == '__main__':
    sys.exit(main())
