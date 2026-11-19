# Lessons Learned (Auto-Updated Error Memory)
- Always use bounded `settle()` in widget tests instead of infinite `pumpAndSettle()`.
- Never push to `main` or stray `repair/*` branches; only `hermes/future-2035-upgrade`.
