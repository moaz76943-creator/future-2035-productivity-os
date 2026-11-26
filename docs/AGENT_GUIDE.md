# Guide for any AI agent (Claude, Gemini, GPT, others) continuing this project

Goal: your work must read as a continuation of the previous Claude sessions: same quality bar,
same rules, same habits. Read this file fully, then `docs/HANDOVER.md` (owner, state, decisions),
`AGENTS.md` (enforced rules), `docs/design-system/README.md` (where to change visuals) and
`docs/REPO_MAP.md`. Open other files only when the task needs them.

## 1. Operating procedure (follow in order)

1. **Understand the request in one sentence.** If the owner's words conflict with a rule below,
   follow the rule and say why in one line. Do not ask questions the repo can answer.
2. **Read little, precisely.** Find the file with `docs/REPO_MAP.md` or grep; read only needed ranges.
3. **Plan in 3-5 bullets** for anything touching more than one file; skip for small fixes.
4. **Change the smallest thing that solves it.** Reuse existing widgets, tokens and l10n keys.
5. **Verify yourself before saying done** (see 3). Never report success you did not observe.
6. **Commit to `claude-dev`** (the permanent working branch; never force-push, never push `main`).
7. **Report in Arabic, short and simple**: what changed, what you did not verify, the build link
   `https://github.com/moaz76943-creator/future-2035-productivity-os/releases/tag/qa-<7-char sha>`
   (do not wait for the build; say so). Hand the owner any needed shell command as a ready block that
   starts with `cd` into the repo and has no prompts.

## 2. The owner

Busy, non-technical in places, wants results without questions. Replies in Arabic with plain words
(he says "مش فاهم" to jargon). Act without asking; decide sensibly and say what you decided.
Save tokens and his mobile data: no long CI waits, no big log dumps, small edits.
Values: family-friendly, within Islamic guidelines: no music (the UI says "Your audio"), no images of
living beings in art or emoji, no romance, alcohol, pork, gambling, magic.

## 3. Quality bar (what "as good as Claude" means here)

- **Never remove a feature, key or test** to make something pass. Moving a feature = update its test
  to the new path. Never weaken a test.
- **Before commit** (parts that work without network): `dart analyze lib test`,
  `python3 tool/check_file_size.py`, `python3 tool/check_l10n.py`,
  `flutter test --no-pub --reporter compact <affected tests>`. After changing screens or buttons also
  run `test/widget/inventory/control_inventory_test.dart` (about 20 minutes, in the background).
- Lockfile must stay identical unless dependencies changed on purpose (CI uses `--enforce-lockfile`).
- UI: calm "future premium", nature, few controls per row, one clear primary action; controls at least
  48dp and labelled; never under the bottom navigation (`NavClearFab`); sheets with
  `useRootNavigator: true` and `sheetBottomInset`; RTL-safe (`EdgeInsetsDirectional`); large text
  without overflow; colours/spacing/radii only from tokens (`lib/core/design_system/tokens.dart`).
- Every user-facing text in all 71 locales through `tool/l10n_reuse.py` then `tool/l10n_add_keys.py`
  (`AGENTS.md` has the full recipe). Western digits only, no Hebrew.
- Files at most 400 lines (split into `part` files). No new packages without need.
- Screenshots: `df-goldens.yml` compares the main tabs in ar and en. A red run means a screen changed;
  if intended, push a change to `ai/run/goldens-update.txt` to refresh the images.

## 4. Never touch

Ads (`lib/core/ads/`, `BottomBannerAdWidget`, ad IDs, consent, AD_ID permission, ProGuard rules),
signing (`android/key.properties`, keystore, `FUTURE_UPLOAD_KEY_ALIAS`), `applicationId
com.deepfocus.study`, Play Store release, `main`, `hermes*`, `release/*`, secrets. Do not edit
`ai/tasks.md` (owner/Claude queue). Never print or commit keys.

## 5. Working next to other agents

- Helper agents (free models in GitHub Actions) write drafts to `ai/reports/*` and branches
  `ai-drafts/day-*`; **nothing from there is merged without review**. When asked to review them, follow
  `.claude/commands/review-agents.md`.
- Shared notes: read `ai/reports/notes.md` before starting (what others touched and found); the helper
  agents append there. Do not work on a file another agent just noted unless your task is that file.
- Task queue: `ai/tasks.md`; the helpers take open items in rotation. Tick an item only after it is
  merged and verified.
- Environment: Termux (owner's phone) has no Dart/Flutter. Dependency changes go through
  `df-devtools.yml`. A cloud session cannot dispatch workflows (403) but a push to a watched path starts
  one. Free model quotas reset at 08:00 UTC; busy agent hours are 08-19 UTC.

## 6. When unsure

Choose the option that is reversible, keep the owner's rules, state the assumption in one line, and
continue. Irreversible and ambiguous (deleting data, publishing, spending, security): stop and ask.
Be honest about everything unverified. Prefer a cheaper way (script, cache, agent) whenever something
burns many tokens.
