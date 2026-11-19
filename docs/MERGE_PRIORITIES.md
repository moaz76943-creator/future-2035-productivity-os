# Full Feature & Code-Style Adoption Plan (Read-Only from origin/claude-dev)

## Golden Guardrails
- `origin/claude-dev` is STRICTLY READ-ONLY. Never push to, rebase, reset, or mutate `claude-dev` or its remote refs.
- All work, merges/ports, phase updates, and CI commits happen strictly on `hermes/future-2035-upgrade`.
- Preserve Hermes's existing progress and continue advancing `state/future2035_phases.json` (`PHASE_FC_*`, `PHASE_L10N_*`, `PHASE_ARCH_*`).
- Every Dart file in `lib/` (excluding generated `*/gen/*`) must stay **<= 400 lines** (split cleanly into modular files when needed).
- **Zero dead buttons / dead handlers**: no empty `onPressed: () {}` / `onTap: () {}`, no unintended `null` handlers on active controls, and no `UnimplementedError`.

## Complete Feature & Engineering Adoption Scope from Claude
1. **Flashcards Import & Starter Content**:
   - Adopt Anki and Excel import workflows with templates, starter decks, and clean integration with Hermes's SRS/card architecture (`PHASE_FC_*`).
2. **Voice Recording & Media Integration**:
   - Adopt in-app voice clip recording (native recorder, tap-triggered mic permission, inline error handling) and align cleanly with `media.dart` and card/study flows.
3. **Notes Formatting, UI Polish & Onboarding**:
   - Adopt rich note formatting (hidden markdown/syntax markers where appropriate, real checkboxes/bullets, Enter-to-continue lists), accent color & card text size controls, home screen widget, and first-run tour / help flows.
4. **Productivity Extras, L10n & Emulator/CI Tests**:
   - Inspect and adopt prayer times / productivity improvements, localization fixes (such as pluralization and `.arb`/generated sync), documentation/ADR notes, and emulator/integration/unit tests.
5. **Deep Code & Architecture Study**:
   - Study how `origin/claude-dev` structures state, widgets, error handling, tests, and analyzer rules. Whenever Claude's implementation or formatting is cleaner or stronger, adopt its patterns while refactoring any oversized files to **<= 400 lines** and wiring every control end-to-end.
