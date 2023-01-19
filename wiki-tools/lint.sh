#!/usr/bin/env bash
STATUS=0
CHANGED=$(git diff --name-only HEAD HEAD~1 | grep -v '^_' | grep '.md$')
if [ -n "$CHANGED" ]; then
  markdownlint -i '_*' --disable MD033 MD034 MD013 MD024 MD036 -- $CHANGED
fi
if [ "$?" -gt 0 ]; then
  STATUS=1
fi

if git diff --compact-summary HEAD~1 HEAD | grep -E "=>|\(new\)" >/dev/null; then
  bash wiki-tools/brokenlinks.sh -s
  if [ "$?" -gt 0 ]; then
    STATUS=1
  fi
else
  bash wiki-tools/brokenlinks.sh -s $CHANGED
fi

exit "$STATUS"
