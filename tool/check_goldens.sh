#!/usr/bin/env bash
# Golden (screenshot) tests only, on demand.
#   bash tool/check_goldens.sh            # compare against the reference images
#   bash tool/check_goldens.sh --update   # rewrite the reference images
set -euo pipefail
cd "$(dirname "$0")/.."

args=(--reporter compact --tags=golden --dart-define=GOLDEN=true)
if [[ "${1:-}" == "--update" ]]; then
  args+=(--update-goldens)
fi
flutter test "${args[@]}" test/golden
