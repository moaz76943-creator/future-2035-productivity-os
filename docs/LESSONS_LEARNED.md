# Lessons Learned & Engineering Standards (Auto-Updated)
- Always use bounded `settle()` in widget tests instead of infinite `pumpAndSettle()`.
- Never push to `main`, `claude-dev`, or stray `repair/*` branches; work strictly on `hermes/future-2035-upgrade`.
- Read `origin/claude-dev` strictly as read-only reference per `docs/MERGE_PRIORITIES.md` to adopt all high-value features (Anki/Excel import, starter decks, voice recording, notes formatting, prayer times, customization, home widget, tour, tests) and strong coding/formatting patterns without touching `claude-dev`.
- Keep Dart files modular and within <= 400 lines; eliminate dead buttons (`onPressed`/`onTap` empty or null on active controls) and `UnimplementedError`.
- Continue advancing remaining phases in `state/future2035_phases.json` (`PHASE_FC_*`, `PHASE_L10N_*`, `PHASE_ARCH_*`).
