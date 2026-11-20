# Instructions

Read and follow [AGENTS.md](AGENTS.md): rules, product constraints and architecture.

## Validation gates (never skip)

- `bash tool/check_all.sh` before every commit. It runs the analyzer (`dart analyze`, same
  rules as `flutter analyze`), `flutter test`, `python3 tool/check_l10n.py`, the 400-line
  file-size check and the license check.
- After changing buttons or screens, also run the control crawl it skips:
  `flutter test test/widget/inventory/control_inventory_test.dart` (about 15 minutes).
- Every user-facing text in all 8 languages (en, ar, es, fr, hi, pt, ru, zh), added only with
  `python3 tool/l10n_add_keys.py spec.json` then `flutter gen-l10n`. No Hebrew; Western digits only.
- Never weaken or delete a test to make it pass: fix the code.

## Efficiency Rules

- Use compact test output by default (`flutter test --reporter compact`); only print verbose logs for failing tests.
- Read only the specific files and line ranges relevant to the task; avoid scanning unrelated directories.
- For multi-file or architectural changes, outline a brief 3–5 bullet plan before editing.
- **Quality Guardrail:** Never skip validation gates, never cut corners on edge cases, and never trade correctness for brevity.
