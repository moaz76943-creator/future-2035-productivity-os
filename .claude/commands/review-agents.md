Review the helper agents' work cheaply (the owner said "افحصهم"):
1. Runs: `curl -s "https://api.github.com/repos/moaz76943-creator/future-2035-productivity-os/actions/workflows/df-ai-agents.yml/runs?per_page=10"` (status/conclusion only). For a failure, read only the failing step's last error lines from the job log.
2. `git fetch -q origin '+refs/heads/ai-drafts/*:refs/remotes/origin/ai-drafts/*'`; list commits of today's `ai-drafts/day-*` branch; read `ai/reports/*.md` there (results only).
3. For each kept change: `git diff origin/claude-dev...<branch> -- <file>`; judge against docs/HANDOVER.md rules (calm design, no clutter, no removed features, 400 lines, no new strings). Apply the good ones onto claude-dev; skip the rest.
4. Run analyze + the affected tests (+ inventory crawl if UI changed), commit, push, tick finished items in `ai/tasks.md`.
5. Reply in short Arabic: what was merged, what was rejected and why (one line each), the qa link.
