#!/usr/bin/env bash
set -euo pipefailuo pipefail

TARGET_BRANCH="hermes/future-2035-upgrade"
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

echo ">>> [Branch Guard] Current: $CURRENT_BRANCH | Required: $TARGET_BRANCH"

# 1. حفظ أي تعديلات غير ملتزم بها قبل الترحيل
if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -m "chore(guard): auto-save work before migrating to $TARGET_BRANCH"
fi

# 2. إذا كان الوكيل على فرع آخر (وليس main)، رحّل عمله فوراً للفرع الخاص
if [ "$CURRENT_BRANCH" != "$TARGET_BRANCH" ]; then
  if [ "$CURRENT_BRANCH" = "main" ] || [ "$CURRENT_BRANCH" = "master" ]; then
    echo ">>> [BLOCKED] Refusing to migrate from protected branch ($CURRENT_BRANCH). Switching directly."
    git checkout "$TARGET_BRANCH"
  else
    echo ">>> [MIGRATE] Moving commits from $CURRENT_BRANCH -> $TARGET_BRANCH"
    timeout 60s git fetch origin "$TARGET_BRANCH" || true
    git checkout "$TARGET_BRANCH"
    git merge --no-edit "$CURRENT_BRANCH"
    git branch -D "$CURRENT_BRANCH"
    echo ">>> [CLEANUP] Deleted stray local branch: $CURRENT_BRANCH"
  fi
fi

echo ">>> [OK] Repository is strictly locked on $TARGET_BRANCH"
