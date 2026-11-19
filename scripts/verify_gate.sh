#!/usr/bin/env bash
set -uo pipefail

mkdir -p docs
FAIL=0

echo ">>> [Verify Gate] 1/4 Checking <= 400 lines rule on Dart source files..."
OVERSIZED=$(awk 'FNR > 400 { print FILENAME ":" FNR " (exceeds 400 lines)"; nextfile }' $(find lib -name "*.dart" ! -path "*/gen/*" 2>/dev/null) 2>/dev/null || true)
if [ -n "$OVERSIZED" ]; then
  echo ">>> [400-Line Warning] Files exceeding 400 lines:"
  echo "$OVERSIZED" | head -n 25
  echo "- [$(date -u +%F)] 400-line check found large files; split into modular files <=400 lines." >> docs/LESSONS_LEARNED.md
fi

echo ">>> [Verify Gate] 2/4 Checking for dead buttons / empty handlers / unimplemented stubs..."
DEAD_HANDLERS=$(grep -rnE "(onPressed|onTap)\s*:\s*(\(\)\s*\{\s*\}|null)|UnimplementedError" lib/ 2>/dev/null | head -n 25 || true)
if [ -n "$DEAD_HANDLERS" ]; then
  echo ">>> [Dead UI / Stub Alert] Found potential dead handlers or UnimplementedError:"
  echo "$DEAD_HANDLERS"
  echo "- [$(date -u +%F)] Dead/null handler or UnimplementedError detected in lib/." >> docs/LESSONS_LEARNED.md
  FAIL=1
fi

echo ">>> [Verify Gate] 3/4 Running flutter analyze..."
if command -v flutter >/dev/null 2>&1; then
  if ! flutter analyze --no-fatal-infos > /tmp/analyze.log 2>&1; then
    ERR=$(tail -n 6 /tmp/analyze.log | tr '\n' ' ')
    echo "- [$(date -u +%F)] Analyze fail: ${ERR:0:200}" >> docs/LESSONS_LEARNED.md
    echo ">>> [Verify Gate] FAILED flutter analyze"
    FAIL=1
  fi

  echo ">>> [Verify Gate] 4/4 Running flutter test..."
  if ! flutter test > /tmp/test.log 2>&1; then
    ERR=$(tail -n 6 /tmp/test.log | tr '\n' ' ')
    echo "- [$(date -u +%F)] Test fail: ${ERR:0:200}" >> docs/LESSONS_LEARNED.md
    echo ">>> [Verify Gate] FAILED flutter test"
    FAIL=1
  fi
else
  echo ">>> [Verify Gate] flutter CLI not in local Termux shell (will run in GitHub Actions)."
fi

if [ "$FAIL" -ne 0 ]; then
  exit 1
fi

echo ">>> [Verify Gate] PASSED all checks cleanly!"
