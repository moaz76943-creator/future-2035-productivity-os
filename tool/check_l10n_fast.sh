#!/usr/bin/env bash
# Quick gate for translation-only changes (seconds instead of the full suite):
#   bash tool/check_l10n_fast.sh
# Refuses when anything besides translations changed: then run bash tool/check_all.sh.
set -euo pipefail
cd "$(dirname "$0")/.."

changed=$( { git diff --name-only HEAD; git ls-files --others --exclude-standard; } | sort -u)
other=$(grep -vE '^(lib/l10n/|android/app/src/main/res/(values-[^/]+/[a-z_]+_strings\.xml|xml/locales_config\.xml)$|lib/app/localization/app_languages\.g\.dart$|lib/core/design_system/app_theme/language_fonts\.g\.dart$|build/)' <<<"$changed" || true)
if [[ -n "$other" ]]; then
  echo "Not translation-only. Run: bash tool/check_all.sh" >&2
  echo "$other" >&2
  exit 1
fi

flutter gen-l10n >/dev/null
python3 tool/gen_l10n_custom.py >/dev/null
python3 tool/gen_languages.py >/dev/null
python3 tool/gen_languages.py --check
python3 tool/check_l10n.py
dart analyze lib/l10n lib/app/localization
flutter test --no-pub --reporter compact test/unit/l10n
echo "Translation checks passed."
