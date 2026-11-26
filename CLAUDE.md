# Instructions

Read and follow [AGENTS.md](AGENTS.md): rules, product constraints and architecture.

## Validation gates (never skip)

- `bash tool/check_all.sh` before every commit. It runs the analyzer (`dart analyze`, same
  rules as `flutter analyze`), `flutter test`, `python3 tool/check_l10n.py`, the 400-line
  file-size check and the license check.
- After changing buttons or screens, also run the control crawl it skips:
  `flutter test test/widget/inventory/control_inventory_test.dart` (about 15 minutes).
- Every user-facing text in every app language (one `lib/l10n/app_<code>.arb` each), added only
  with `python3 tool/l10n_add_keys.py spec.json` then `flutter gen-l10n && python3 tool/gen_l10n_custom.py`.
  No Hebrew; Western digits only. Guide: `docs/localization/localization_guide.md`.
- Never weaken or delete a test to make it pass: fix the code.

## Efficiency Rules

- New texts: write the English in a spec, run `python3 tool/l10n_reuse.py spec.json` (fills
  every language from identical existing texts), translate only what it lists, then
  `python3 tool/l10n_add_keys.py spec.json`. Translate only new or changed keys, never whole files.
- Translation-only changes: `bash tool/check_l10n_fast.sh` (seconds). It refuses when code
  changed; then the full `bash tool/check_all.sh` is required.
- Regional variants (en_GB, pt_PT, ...) hold only the texts that differ from their base.

- Use compact test output by default (`flutter test --reporter compact`); only print verbose logs for failing tests.
- Read only the specific files and line ranges relevant to the task; avoid scanning unrelated directories.
- For multi-file or architectural changes, outline a brief 3–5 bullet plan before editing.
- **Quality Guardrail:** Never skip validation gates, never cut corners on edge cases, and never trade correctness for brevity.
