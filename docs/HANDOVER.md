# Handover: everything a new Claude session needs (read fully, once)

Read this first, then `AGENTS.md` (project rules) and `docs/design-system/README.md` (where to
change visuals). Do not re-read large parts of the code "to understand"; use these docs and
`docs/REPO_MAP.md`, then open only the files a task needs.

## 1. The owner and how to work with him

- Replies **in Arabic**, short and simple (he often says "مش فاهم" to long or technical text).
  Lists with plain words; no English status reports; no jargon, file paths or commands unless asked.
- **Act without asking.** No questions, no y/n prompts in scripts. Decide sensibly, then say what
  you decided. Exception: anything irreversible and ambiguous.
- He is busy: do everything that does not need him; leave his items for the end, clearly marked.
- **Save tokens, keep quality.** Read only what you need; batch commands; small edits with
  python/sed replacements instead of rewriting files; don't print big logs (grep/tail them).
- **Don't wait on long CI builds** (it burns his data). Push, then give the build link:
  `https://github.com/moaz76943-creator/future-2035-productivity-os/releases/tag/qa-<7-char sha>`
  Say honestly that you did not wait for it.
- **Don't schedule check-backs on yourself.** He says "افحصهم" when he wants the agents reviewed.
- Always propose likely future problems and fix them proactively; adopt good suggestions as standing
  practice; be honest about anything unverified.
- When something burns many tokens, find a cheaper way (scripts, agents, caching) and apply it.
- Termux script blocks (if you ever give him one) start with `cd` into the repo, no prompts.
- Values: family-friendly and within Islamic guidelines. **No music** (not even the word
  "music" in the UI: the own-audio feature says "Your audio"/"ملفك الصوتي"), no images of living
  beings (people/animals) in app art or emoji, no romance, alcohol, pork, gambling, magic.

## 2. Repository, branches, protected things

- Repo `moaz76943-creator/future-2035-productivity-os`; **default and working branch: `claude-dev`**
  (permanent). Never create a branch per task, never force-push, never push to `main`, never
  merge `hermes/*` automatically, never delete `main`, `claude-dev`, `hermes*`, `release/*`.
- Other branches: `content-packs` (data only: word packs + owner's seed CSVs), `ai-drafts/day-*`
  (agent drafts, review before merging), `ai-drafts/smoke-test-1` (old test, ignore).
- **Never touch**: banner ads (`lib/core/ads/`, `BottomBannerAdWidget`, ad unit IDs, consent,
  AD_ID permission, ProGuard keep rules), signing (`android/key.properties`, keystore, alias via
  `FUTURE_UPLOAD_KEY_ALIAS`, never create a keystore), `applicationId com.deepfocus.study`
  (Kotlin namespace is `app.future2035.future_os`), no Play Store release.
- Version in `pubspec.yaml` (currently `667.0.0+41389`); CI builds a `qa-<sha>` release per push.

## 3. Environment (cloud container)

- `export PATH=/opt/fl/flutter/bin:$PATH`. Network for pub/npm is OFF: never `pub get`; run
  `flutter test --no-pub`. `bash tool/check_all.sh` fails here only because it runs pub; run its
  parts instead: `dart analyze lib test`, `python3 tool/check_file_size.py`,
  `python3 tool/check_l10n.py`, `flutter test --no-pub --reporter compact <paths>`.
- Full suite ≈ 35 min including `test/widget/inventory/control_inventory_test.dart` (≈ 20 min,
  taps every visible control). Run it in the background and wait with an until-loop.
- Before every commit check the lockfile is unchanged (CI uses `--enforce-lockfile`).
- The public GitHub API works unauthenticated with curl (runs, jobs, job logs). Secrets, branch
  deletion and dispatch are 403 from here; AI provider hosts are unreachable from here.
- Commit trailer (both lines, every commit):
  `Co-Authored-By: Claude <model> <noreply@anthropic.com>` and the `Claude-Session:` line given by
  the session. Push with `git -c push.negotiate=true push -q origin claude-dev`.

## 4. Rules the code must keep (checked by tests/CI)

- ≤ 400 lines per hand-written file; split by responsibility into `part` files.
- Every UI text in all 71 locales (67 full + overlays en_GB, pt_PT, es_419, fr_CA). Add with a
  spec: `python3 tool/l10n_reuse.py spec.json` (fills from existing identical texts), translate
  only what is left, `python3 tool/l10n_add_keys.py spec.json`, then
  `flutter gen-l10n && python3 tool/gen_l10n_custom.py`. Remove unused keys with
  `python3 tool/l10n_remove_keys.py k1 k2`. Western digits; no Hebrew.
- Bottom sheets: `useRootNavigator: true`, bottom padding `sheetBottomInset(context)`.
- Never weaken or delete a test to pass; when a feature moves, update the test to the new path.
- Controls ≥ 48dp, labelled (tooltip/semantics), never under the nav bar (`NavClearFab`).
- RTL first-class: `EdgeInsetsDirectional`/`AlignmentDirectional`; large text without overflow.

## 5. Design (Future Premium — Calm Light UI)

- Default accent teal `Palette.lagoon #10787C`; tokens in `lib/core/design_system/tokens.dart`;
  colours/shadows/fonts in `app_theme/lux_colors.dart`; component themes in `app_theme.dart`;
  shared widgets in `components/`; nature art `components/landscape.dart` (vector, no images).
  Full map: `docs/design-system/README.md`. Gemini brief: `docs/design-system/GEMINI_BRIEF.md`.
- Six bottom destinations stay: Home, Tasks, Flashcards, Focus, Calendar, Spaces; banner ad under
  the bar (`lib/app/shell/app_shell.dart`).
- Owner's decisions so far: tasks main chips Today/Overdue/Completed/All (Inbox, Upcoming under
  More); task editor = essentials + two folded rows (Planning, Organize incl. notes); subtasks open
  on saved tasks; filter sheet hides empty project row; goals = title + period (amount/unit/deadline
  only on goals that already use them); notes empty state "Start writing", tags/backlinks/linked
  tasks in the ⋮ menu sheet; focus screen without daily/weekly target rings.
- Owner wants: "an app from the future", calm, nature, high visual comfort, no clutter, strong
  features. Open idea: remove duplicated "New …" buttons (empty-state button + FAB).
- A floating book-cover/video bubble on his screenshots is another app on his phone, not ours.

## 6. Features added recently (don't lose them)

- Sounds: own audio file (mp3…) via system picker, URI only (no copy/upload), loops under nature
  sounds, follows pause/focus/sleep fade. Native `sound/MusicTrack.kt`, Dart `MusicCard`.
- Flashcards "Learn languages": downloads one language file from
  `raw.githubusercontent.com/.../content-packs/packs/<code>.json`, one button adds the whole pack
  (one deck per branch), pronunciation line on the back. Missing languages show "being prepared".
- Word-pack tree follows the owner's CSVs (`content-packs:packs/seed/*.csv`, 13 languages,
  720 English concepts with Arabic meanings, levels, pronunciation). Word-pack agents are
  **paused** (the owner has another source); `df-packs` only runs by hand.

## 7. Helper agents (free GitHub Actions + 13 `DF_*` keys: Gemini×9, OpenRouter×2, Groq, NVIDIA)

- GitHub's cron never fired on this repo, so `df-heartbeat.yml` is the clock: a ~5h40m job that
  starts `df-ai-agents` every hour (rotating job + a `task` job in parallel) and `df-ai-watch`
  every 2 h, then restarts itself. A push touching `tool/ai/**` or the heartbeat file starts it.
- `df-ai-agents.yml` jobs: `review` (translations of 2 languages), `tests` (new unit tests),
  `improve` (one file: findings + at most one patch), `task` (next item of `ai/tasks.md`),
  plus idea runs (`ai/reports/ideas-*.md`, suggestions only). After the queue they keep
  improving files under the house rules in `tool/ai/improve_agent.py`.
- Safety: critic from another provider (or another model), `tool/ai/gates.py` (allowed paths,
  protected areas, no edits to existing tests, secrets scan, 400 lines, analyze, affected tests).
  Drafts land on `ai-drafts/day-YYYYMMDD`; only gate-passing translation fixes auto-merge.
- Router `tool/ai/router.py`: smartest model first across providers (scores in
  `tool/ai/models.json`), all keys before the next model, rests on 429/503/timeouts, remembers
  daily quotas, discovers new Gemini pro/flash models (never lite).
- Known: Groq key returned 403 (maybe blocked/invalid; router rests it); NVIDIA often times out.
- **Cheap review ("افحصهم")**: list runs via API; `git fetch origin 'ai-drafts/*'`; read
  `ai/reports/*.md` and `git diff origin/claude-dev...origin/ai-drafts/day-…` per file; merge the
  good parts (cherry-pick or apply), run affected tests + inventory, tick `ai/tasks.md`; reject the
  rest with one line in the reply. Never merge unreviewed code.

## 7b. Tools installed (use them, don't reinstall)

- Dev-only packages in `pubspec.yaml`: `alchemist` (golden screenshot tests) and `very_good_analysis`
  (stricter lints; NOT enabled in `analysis_options.yaml` yet: enabling gives many warnings, do it
  gradually). Termux has no Flutter: change dependencies through the manual workflow
  `df-devtools.yml` (`gh workflow run df-devtools.yml`), which also lists unused code (`fcheck`).
- CI: `df-secrets.yml` (gitleaks), Dependabot weekly PRs, app builds skipped for docs/agent-only pushes.
- Slash commands: `/review-agents`, `/ship` (`.claude/commands/`).
- Golden screens: `test/golden/screens_golden_test.dart` (plain flutter_test goldens, main tabs, ar+en),
  run only by `df-goldens.yml` (off locally unless `--dart-define=GOLDEN=true`). Red run = a screen
  changed; if intended: `gh workflow run df-goldens.yml -f update=true`. First run must be an update. Claude cannot dispatch workflows (403): to refresh the images, commit a change to `ai/run/goldens-update.txt` (any text) and push; the push starts an update run.

## 8. Open items

1. Review the agents' drafts when the owner asks.
2. Duplicate "New" buttons (offered, waiting for his yes).
3. Owner must enable GitHub two-factor auth (deadline 27 Nov 2026) or the account gets restricted.
4. Translate the new "Learn languages" title into the other 65 languages (only en/ar changed).
5. Unmatched words in the owner's CSVs (≈300 per language) could become new concepts later.

## 9. Model choice (token saving)

Sonnet for routine work (reviews, merges, small fixes, translations); Opus for big redesigns,
architecture or hard bugs. Medium effort is enough for most turns.
