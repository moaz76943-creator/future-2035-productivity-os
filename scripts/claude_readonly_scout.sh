#!/usr/bin/env bash
set -euo pipefail

git fetch origin --tags >/dev/null 2>&1 || true
mkdir -p docs

if ! git rev-parse --verify origin/claude-dev >/dev/null 2>&1; then
  echo ">>> [Claude Scout] origin/claude-dev not found; skipping intel extract."
  exit 0
fi

# قراءة فقط من origin/claude-dev دون أي تعديل عليه
CLAUDE_HEAD=$(git rev-parse --short origin/claude-dev)
HERMES_HEAD=$(git rev-parse --short HEAD)

{
  echo "# Claude Branch Intelligence Report (Read-Only for Hermes)"
  echo "- Generated (UTC): $(date -u '+%Y-%m-%d %H:%M:%S')"
  echo "- Hermes Branch Commit: \`$HERMES_HEAD\`"
  echo "- Claude Reference Commit (READ-ONLY): \`$CLAUDE_HEAD\`"
  echo ""
  echo "## Recent Commits on origin/claude-dev (Reference Only)"
  git log -n 12 --oneline origin/claude-dev
  echo ""
  echo "## Files Touched on origin/claude-dev (Top 60)"
  git diff --stat "HEAD..origin/claude-dev" 2>/dev/null | head -n 65 || true
  echo ""
  echo "## Integration Rules for Hermes"
  echo "1. NEVER push to or mutate claude-dev or its refs."
  echo "2. Adopt best features/patterns (e.g., audio recording, Anki/Excel import, prayer times, notes UX, tests) into hermes/future-2035-upgrade."
  echo "3. Enforce <= 400 lines per code file, zero dead buttons/handlers, and full test/analyze pass."
} > docs/CLAUDE_INTEL_REPORT.md

echo ">>> [Claude Scout] Report updated from origin/claude-dev ($CLAUDE_HEAD) -> docs/CLAUDE_INTEL_REPORT.md"
