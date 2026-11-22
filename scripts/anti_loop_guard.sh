#!/usr/bin/env bash
set -euo pipefail

NOW=$(date +%s)
LAST_CODE_COMMIT=$(git log -1 --format=%ct -- lib/ test/ android/ scripts/ .github/ state/ 2>/dev/null || echo 0)
AGE=$((NOW - LAST_CODE_COMMIT))

echo ">>> [Smart Anti-Loop Guard] Last REAL progress commit was ${AGE}s ago."

if [ "$AGE" -gt 2700 ]; then
  echo ">>> [CIRCUIT BREAKER] No real code/phase progress in 45m. Halting relay chain!"
  if [ -n "${GITHUB_ENV:-}" ]; then
    echo "RELAY_DONE=0" >> "$GITHUB_ENV"
    echo "RELAY_HALTED=1" >> "$GITHUB_ENV"
  fi
  exit 0
fi

echo ">>> [OK] Real progress confirmed."
