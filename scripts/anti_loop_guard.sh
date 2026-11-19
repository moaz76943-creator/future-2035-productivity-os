#!/usr/bin/env bash
set -euo pipefail

NOW=$(date +%s)
LAST_COMMIT=$(git log -1 --format=%ct 2>/dev/null || echo 0)
AGE=$((NOW - LAST_COMMIT))

echo ">>> [Anti-Loop Guard] Last commit was ${AGE}s ago."

# إذا مر أكثر من 45 دقيقة (2700 ثانية) بدون أي Commit جديد، أوقف الـ Relay فوراً
if [ "$AGE" -gt 2700 ]; then
  echo ">>> [CIRCUIT BREAKER] No real code progress detected. Stopping relay chain!"
  if [ -n "${GITHUB_ENV:-}" ]; then
    echo "RELAY_DONE=true" >> "$GITHUB_ENV"
  fi
  exit 0
fi

echo ">>> [OK] Real progress detected. Relay may continue if needed."
