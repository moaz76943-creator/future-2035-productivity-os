#!/usr/bin/env bash
set -euo pipefail

NOW=$(date +%s)
LAST_CODE_COMMIT=$(git log -1 --format=%ct -- lib/ test/ android/ scripts/ .github/ 2>/dev/null || echo 0)
AGE=$((NOW - LAST_CODE_COMMIT))

echo ">>> [Smart Anti-Loop Guard] Last REAL code commit was ${AGE}s ago."

if [ "$AGE" -gt 2700 ]; then
  echo ">>> [CIRCUIT BREAKER] No real code progress (lib/test/android) in 45m. Stopping relay!"
  if [ -n "${GITHUB_ENV:-}" ]; then
    echo "RELAY_DONE=true" >> "$GITHUB_ENV"
  fi
  exit 0
fi

echo ">>> [OK] Real code progress confirmed."
