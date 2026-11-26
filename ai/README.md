# Helper-model drafts

Helper models (Gemini, OpenRouter free models, Groq, NVIDIA) write drafts only.
They never change app code and never push to `claude-dev`, `main`, `release/*` or `hermes/*`.

1. On a branch `ai-trigger/<task>` made from `claude-dev`, add `ai/requests/<task>.json`
   (an `l10n_add_keys` spec with English and `meta`), then push the branch.
2. The `DF AI draft` workflow reuses existing translations first (no API call), asks the
   models for the rest, rejects malformed answers, applies the draft and runs the
   translation checks, then pushes `ai-drafts/<task>-<run>` with `ai/reports/<task>.md`.
3. Claude reviews the draft and brings the correct parts into `claude-dev`.

Models and their order: `tool/ai/models.json` (no lite models; paid OpenRouter models
only with `allow_paid`). Keys come from the `DF_*` repository secrets and are never printed.

## Daily review (runs without Claude)

`DF AI daily` reviews a few languages every day (rotation, about two weeks for all) and
pushes `ai-drafts/daily-<date>-<run>` with `ai/reports/review-<date>.md` and the full test
status in the commit title. Nothing reaches `claude-dev` on its own.

Claude, when back: `git fetch origin 'refs/heads/ai-drafts/*:refs/remotes/origin/ai-drafts/*'`,
read the reports, keep only drafts whose tests passed, check each fix (one sample per
language is enough when the reasons are sound), bring them over with
`git checkout origin/ai-drafts/<name> -- lib/l10n/app_<code>.arb`, run
`bash tool/check_l10n_fast.sh`, commit, then delete nothing (drafts stay as history).
