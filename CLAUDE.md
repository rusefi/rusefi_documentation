# CLAUDE.md

## Git

- Never run `git commit` or `git push`. Only the human commits and pushes — make file edits, then stop and report, leaving the working tree for the user.

## Related source repository

The rusEFI firmware and Console source repository is often available at `../rusefi`, relative to the root of this documentation checkout. Check whether that directory exists before looking elsewhere. Read its repository guidance before working there.

When reviewing technical documentation, verify commands, configuration fields, diagnostic meanings, and board limitations against the relevant source. If the checkout is unavailable, use the corresponding upstream source. Reference repository-relative source paths or symbols when useful to readers.

Follow the user's requested edit scope; a documentation review does not by itself authorize changes to the sibling repository.

## Current-state documentation

Describe current behavior, configuration, constraints and usage in present tense.
Do not include commit hashes, revision footers, local checkout folder names,
machine-specific paths, import/review chronology or narratives about earlier
implementations in ordinary documentation. Git records history. Use
repository-relative source paths, symbols, settings and test names when they
help explain the current behavior. Keep historical analysis in explicitly
requested historical reports, not in current-state documentation.
