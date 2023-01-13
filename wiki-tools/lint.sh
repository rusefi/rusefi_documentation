#!/usr/bin/env bash
CHANGED=$(git diff --name-only HEAD HEAD~1 | grep -v '^_' | grep '.md$')
if [ "$CHANGED" == "" ]; then
  exit 0
fi
markdownlint -i '_*' --disable MD033 MD034 MD013 MD024 MD036 -- $CHANGED
