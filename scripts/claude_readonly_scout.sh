#!/usr/bin/env bash
set -euo pipefail

timeout 60s git fetch origin claude-dev >/dev/null 2>&1 || true
mkdir -p docs

if ! git rev-parse --verify origin/claude-dev >/dev/null 2>&1; then
  echo ">>> [Claude Scout] origin/claude-dev not found; skipping intel extract."
  exit 0
fi

CLAUDE_HEAD=$(git rev-parse --short origin/claude-dev)
HERMES_HEAD=$(git rev-parse --short HEAD)

if [ -f docs/CLAUDE_INTEL_REPORT.md ] && grep -q "Claude Reference Commit (READ-ONLY): \`$CLAUDE_HEAD\`" docs/CLAUDE_INTEL_REPORT.md; then
  echo ">>> [Claude Scout] origin/claude-dev unchanged ($CLAUDE_HEAD); skipping rewrite to avoid empty commits."
  exit 0
fi

{
  echo "# Claude Branch Intelligence Report (Read-Only for Hermes)"
  echo "- Generated (UTC): $(date -u '+%Y-%m-%d %H:%M:%S')"
  echo "- Hermes Branch Commit: \`$HERMES_HEAD\`"
  echo "- Claude Reference Commit (READ-ONLY): \`$CLAUDE_HEAD\`"
  echo "- Scope Policy: See \`docs/MERGE_PRIORITIES.md\` (Full feature adoption + style/test study + <=400 lines + zero dead buttons)."
  echo ""
  echo "## Recent Commits on origin/claude-dev (Reference Only)"
  git log -n 20 --oneline origin/claude-dev
  echo ""
  echo "## Files & Diff Summary vs origin/claude-dev"
  git diff --stat "HEAD..origin/claude-dev" 2>/dev/null | head -n 90 || true
  echo ""
  echo "## Candidate Feature & Test Areas in origin/claude-dev"
  git diff --name-only "HEAD..origin/claude-dev" 2>/dev/null | grep -E "flashcard|audio|record|anki|excel|prayer|note|widget|tour|l10n|test" | head -n 80 || true
  echo ""
  echo "## Strict Rules"
  echo "1. NEVER modify or push to origin/claude-dev."
  echo "2. Port & adapt all valuable features, UX polish, and tests into hermes/future-2035-upgrade."
  echo "3. Enforce <= 400 lines per file and zero dead buttons/handlers before completing phases."
} > docs/CLAUDE_INTEL_REPORT.md

echo ">>> [Claude Scout] Intel updated for new origin/claude-dev ($CLAUDE_HEAD) -> docs/CLAUDE_INTEL_REPORT.md"
