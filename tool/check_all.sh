#!/usr/bin/env bash
# Fast gate. Run before every commit:
#   bash tool/check_all.sh          # fast: no goldens, no `slow` tests, no control crawl
#   bash tool/check_all.sh --full   # also the all-languages sweep and the control crawl
# Golden (screenshot) tests are separate: bash tool/check_goldens.sh [--update]
set -euo pipefail
cd "$(dirname "$0")/.."

# Generated sources first (the analyzer needs them).
flutter gen-l10n
python3 tool/gen_languages.py >/dev/null
python3 tool/gen_l10n_custom.py >/dev/null
dart run build_runner build --delete-conflicting-outputs >/dev/null

python3 tool/check_file_size.py
dart analyze lib test integration_test
if [[ "${1:-}" == "--full" ]]; then
  # Everything except goldens: all languages sweep and the control crawl too.
  flutter test --exclude-tags=golden --reporter compact
else
  flutter test --exclude-tags=golden,slow --reporter compact \
    $(find test -name '*_test.dart' -not -path '*/inventory/*' -not -path '*/_preview/*')
fi
python3 tool/check_assets.py
python3 tool/check_l10n.py
python3 tool/third_party_licenses.py --check
echo "All checks passed."
