#!/usr/bin/env bash
set -uo pipefail

echo ">>> [Verify Gate] Running flutter analyze..."
if ! flutter analyze --no-fatal-infos > /tmp/analyze.log 2>&1; then
  ERR=$(tail -n 5 /tmp/analyze.log | tr '\n' ' ')
  echo "- [$(date -u +%F)] Analyze fail: ${ERR:0:180}" >> docs/LESSONS_LEARNED.md
  echo ">>> [Verify Gate] FAILED analyze (logged to LESSONS_LEARNED.md)"
  exit 1
fi

echo ">>> [Verify Gate] Running flutter test..."
if ! flutter test > /tmp/test.log 2>&1; then
  ERR=$(tail -n 5 /tmp/test.log | tr '\n' ' ')
  echo "- [$(date -u +%F)] Test fail: ${ERR:0:180}" >> docs/LESSONS_LEARNED.md
  echo ">>> [Verify Gate] FAILED tests (logged to LESSONS_LEARNED.md)"
  exit 1
fi

echo ">>> [Verify Gate] PASSED 100%!"
