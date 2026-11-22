#!/usr/bin/env bash
set -uo pipefail

mkdir -p docs
FAIL=0
WRITE_LESSONS="${WRITE_LESSONS:-0}"

log_lesson() {
  if [ "$WRITE_LESSONS" = "1" ]; then
    echo "- [$(date -u +%F)] $1" >> docs/LESSONS_LEARNED.md
  fi
}

echo ">>> [Verify Gate] 1/5 Checking <= 400 lines rule on manual Dart files..."
OVERSIZED=$(awk 'FNR > 400 { print FILENAME ":" FNR " (exceeds 400 lines)"; nextfile }' \
  $(find lib -name "*.dart" ! -path "*/gen/*" ! -name "*.g.dart" ! -name "*.freezed.dart" 2>/dev/null) 2>/dev/null || true)
if [ -n "$OVERSIZED" ]; then
  echo ">>> [400-Line FAIL] Files exceeding 400 lines:"
  echo "$OVERSIZED" | head -n 25
  log_lesson "400-line check failed; split oversized Dart files into modular parts <=400 lines."
  FAIL=1
fi

echo ">>> [Verify Gate] 2/5 Checking ARB parity, @resource metadata & Western digits..."
if ! python3 - <<'PY'
import json, re, sys
from pathlib import Path

arbs = sorted(p for p in Path("lib").rglob("*.arb") if "gen" not in p.parts)
if not arbs:
    print("No ARB files found.")
    sys.exit(0)

non_western = re.compile(r'[\u0660-\u0669\u06F0-\u06F9]')
en_path = next((p for p in arbs if p.name == "app_en.arb"), None)
if en_path is None:
    print("ERROR: lib/l10n/app_en.arb not found.")
    sys.exit(1)

en_data = json.loads(en_path.read_text(encoding="utf-8"))
en_keys = {k for k in en_data if not k.startswith("@")}
en_meta = {k[1:] for k in en_data if k.startswith("@") and not k.startswith("@@")}
errors = []

missing_meta = sorted(en_keys - en_meta)
if missing_meta:
    errors.append(f"app_en.arb missing @metadata for {len(missing_meta)} keys: {missing_meta[:10]}")

for arb in arbs:
    raw = arb.read_text(encoding="utf-8")
    if non_western.search(raw):
        errors.append(f"{arb.name}: contains non-Western Arabic/Persian digits")
    data = json.loads(raw)
    keys = {k for k in data if not k.startswith("@")}
    missing = sorted(en_keys - keys)
    extra = sorted(keys - en_keys)
    empty = sorted(k for k in keys if isinstance(data[k], str) and not data[k].strip())
    if missing:
        errors.append(f"{arb.name}: missing {len(missing)} keys: {missing[:10]}")
    if extra:
        errors.append(f"{arb.name}: extra {len(extra)} keys: {extra[:10]}")
    if empty:
        errors.append(f"{arb.name}: empty values for {len(empty)} keys: {empty[:10]}")

if errors:
    for e in errors:
        print("ARB ERROR:", e)
    sys.exit(1)
print(f"ARB OK: {len(arbs)} files, {len(en_keys)} keys, 100% @metadata & Western digits.")
PY
then
  log_lesson "ARB parity/@metadata/Western-digits check failed."
  FAIL=1
fi

echo ">>> [Verify Gate] 3/5 Checking for empty dead UI handlers..."
DEAD_HANDLERS=$(grep -rnE "(onPressed|onTap)\s*:\s*\(\s*\)\s*\{\s*\}" lib/ 2>/dev/null | head -n 25 || true)
if [ -n "$DEAD_HANDLERS" ]; then
  echo ">>> [Dead UI Alert] Found empty handlers:"
  echo "$DEAD_HANDLERS"
  log_lesson "Empty onPressed/onTap handler detected in lib/."
  FAIL=1
fi

echo ">>> [Verify Gate] 4/5 Running flutter analyze..."
if command -v flutter >/dev/null 2>&1; then
  if ! flutter gen-l10n > /tmp/gen_l10n.log 2>&1; then
    ERR=$(tail -n 6 /tmp/gen_l10n.log | tr '\n' ' ')
    log_lesson "gen-l10n fail: ${ERR:0:200}"
    echo ">>> [Verify Gate] FAILED flutter gen-l10n"
    tail -n 20 /tmp/gen_l10n.log
    FAIL=1
  fi
  if ! flutter analyze --no-fatal-infos > /tmp/analyze.log 2>&1; then
    ERR=$(tail -n 6 /tmp/analyze.log | tr '\n' ' ')
    log_lesson "Analyze fail: ${ERR:0:200}"
    echo ">>> [Verify Gate] FAILED flutter analyze"
    tail -n 30 /tmp/analyze.log
    FAIL=1
  fi

  echo ">>> [Verify Gate] 5/5 Running flutter test..."
  if [ "${SKIP_TESTS:-0}" != "1" ]; then
    if ! timeout 240s flutter test --concurrency=2 > /tmp/test.log 2>&1; then
      ERR=$(tail -n 6 /tmp/test.log | tr '\n' ' ')
      log_lesson "Test fail: ${ERR:0:200}"
      echo ">>> [Verify Gate] FAILED flutter test"
      tail -n 30 /tmp/test.log
      FAIL=1
    fi
  fi
else
  echo ">>> [Verify Gate] flutter CLI not in local shell (runs in GitHub Actions)."
fi

if [ "$FAIL" -ne 0 ]; then
  exit 1
fi

echo ">>> [Verify Gate] PASSED all checks cleanly!"
