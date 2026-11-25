#!/usr/bin/env bash
# Everything CI checks, in one command. Run before every commit:
#   bash tool/check_all.sh          # fast: no widget "tap every control" crawl
#   bash tool/check_all.sh --full   # also the long inventory test
set -euo pipefail
cd "$(dirname "$0")/.."

flutter gen-l10n
python3 tool/gen_languages.py >/dev/null
python3 tool/gen_l10n_custom.py >/dev/null
dart run build_runner build --delete-conflicting-outputs >/dev/null
dart analyze lib test integration_test
python3 tool/check_file_size.py
python3 tool/check_l10n.py
python3 tool/third_party_licenses.py --check

if [[ "${1:-}" == "--full" ]]; then
  flutter test
else
  flutter test $(find test -name '*_test.dart' -not -path '*/inventory/*' -not -path '*/_preview/*')
fi
echo "All checks passed."
