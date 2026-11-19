# Lessons Learned & Engineering Standards (Auto-Updated)
- Always use bounded `settle()` in widget tests instead of infinite `pumpAndSettle()`.
- Never push to `main`, `claude-dev`, or stray `repair/*` branches; work strictly on `hermes/future-2035-upgrade`.
- Read `origin/claude-dev` strictly as read-only reference to extract high-value features, UX polish, and tests without altering Claude's branch.
- Keep Dart files modular and within <= 400 lines; eliminate dead buttons (`onPressed: null` / empty `{}`) and `UnimplementedError`.
- Continue advancing remaining phases in `state/future2035_phases.json` (`PHASE_FC_*`, `PHASE_L10N_*`, `PHASE_ARCH_*`).
