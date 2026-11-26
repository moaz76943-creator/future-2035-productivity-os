# Helper-model drafts

Helper models (Gemini, OpenRouter free models, Groq, NVIDIA) write drafts only.
They never push to `main`, `release/*` or `hermes/*`. Only translation fixes that passed every gate
and were approved by a critic from another provider are auto-merged into `claude-dev`; code
drafts (tests, fixes, tasks from `ai/tasks.md`) always wait on `ai-drafts/*` for Claude's review.
The `DF AI watch` workflow keeps the issue "تقرير الوكلاء" up to date and comments on it when
the agents stall for 6 hours.

1. On a branch `ai-request/<task>` made from `claude-dev`, add `ai/requests/<task>.json`
   (an `l10n_add_keys` spec with English and `meta`), then push the branch.
2. The `DF AI draft` workflow reuses existing translations first (no API call), asks the
   models for the rest, rejects malformed answers, applies the draft and runs the
   translation checks, then pushes `ai-drafts/<task>-<run>` with `ai/reports/<task>.md`.
3. Claude reviews the draft and brings the correct parts into `claude-dev`.

Models and their order: `tool/ai/models.json` (no lite models; paid OpenRouter models
only with `allow_paid`). Keys come from the `DF_*` repository secrets and are never printed.

## Hourly agents (run without Claude)

`DF AI agents` runs every hour (`.github/workflows/df-ai-agents.yml`):
- even hours: `tool/ai/review_draft.py` reviews two languages (all languages every ~3 days);
- odd hours: `tool/ai/tests_agent.py` writes unit tests for one pure-Dart file.

Safety, assuming every model output is wrong until proven otherwise:
1. Worker model output must be valid JSON/Dart and pass the format checks.
2. A critic model from a different provider must agree (`tool/ai/critic.py`), or the item is dropped.
3. `tool/ai/gates.py --full`: allowed paths only (`lib/l10n`, `test/ai_generated`, `ai/`), no
   secret-looking text, 400-line rule, analyzer and the whole test suite. Failing jobs are dropped.
4. Results collect on `ai-drafts/day-YYYYMMDD`. Nothing reaches `claude-dev` without Claude.

Resilience: 13 keys across four providers, models that fail twice are skipped for the run,
a health memory (cached between runs) puts recently failing models last, every step has a
time limit, and a failed hour never blocks the next one.

## Reviewing drafts (Claude, when back)

`git fetch origin 'refs/heads/ai-drafts/*:refs/remotes/origin/ai-drafts/*'`, read
`ai/reports/` on each day branch (and `dropped.md` for what failed and why), spot-check fixes,
then bring good files over with `git checkout origin/ai-drafts/<day> -- <paths>`, run
`bash tool/check_l10n_fast.sh` (or `tool/check_all.sh` for tests) and commit.
