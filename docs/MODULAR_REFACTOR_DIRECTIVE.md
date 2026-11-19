# MODULAR ARCHITECTURE, AGENT-FRIENDLY REFACTOR & IP COMPLIANCE DIRECTIVE

## 0. Hard Rules (Zero Breakage)
- Work strictly on branch `hermes/future-2035-upgrade` (NEVER touch `main`).
- Never rewrite working business logic from scratch; split and refactor incrementally one feature/file at a time.
- Keep Western digits (`0123456789`), zero Hebrew (`he`/`iw`), and zero dead buttons (`CONTROL_INVENTORY.md` + `control_inventory_test.dart`).
- After EVERY refactored module, `flutter analyze --no-fatal-infos`, `flutter test`, and `python3 tool/l10n_manager.py audit` MUST pass 100%.

## 1. Agent-Friendly Modularity & 400-Line File Cap
- Scan `lib/` for any Dart file exceeding 400 lines (e.g., large screens, controllers, repositories).
- Split oversized files cleanly into cohesive, single-responsibility sub-files inside their own feature folder (`data/`, `domain/`, `presentation/widgets/`, `presentation/sheets/`).
- Enforce typed models (no untyped `Map<String, dynamic>` passed across feature layers) and clean repository interfaces so adding/removing features requires minimal edits.
- Clean up unused imports, dead functions, forgotten `TODO`s, `print()` calls, and ensure every `StreamController`, `AnimationController`, and `Timer` is properly disposed.

## 2. Live Maintainability Docs & IP/Licensing Audit
- Generate and keep up to date:
  - `docs/REPO_MAP.md`: Concise map of all 18 feature modules, core services, and key entry points.
  - `docs/ADR.md`: Architecture Decision Records explaining key design/signing/L10n/FSRS choices.
  - `THIRD_PARTY_LICENSES.md`: Audit of `pubspec.yaml` dependencies and assets verifying commercial-safe licenses (`MIT`, `BSD`, `Apache-2.0`, `ISC`, `CC0`, `SIL OFL`) with zero `GPL`/`AGPL` violations, plus `showLicensePage` wired in Settings.
