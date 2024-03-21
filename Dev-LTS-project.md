# Long Term Support Project

## Terminology

`master` latest, most experimental and least reliable

`Long Term Support` a branch of code only with critical most reliable changes.

## Current state

* Manual github "latest" release (1. Manual full build without skips, 2. manual download from build server, 3. manual release upload)
* Automated master branch snapshot upload
* Console can update to master snapshot
* Bundle .zip has confusing folder name with timestamp

## Desired state

* How does github fit with non-linear release flow?
* More automated github release process?
* Smarter console autoupdate options - update within relese VS update to snapshot? Rollback?
