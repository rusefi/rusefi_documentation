#!/usr/bin/env bash
STATUS=0
CHANGED=$(git diff --name-only HEAD HEAD~1 | grep -v -e '^.github' -e '^_')
markdownlint -i '_*' --disable MD033 MD034 MD013 MD024 MD036 -- $CHANGED
if [ $? -ne 0 ]; then
  STATUS=1
fi
exit $STATUS
