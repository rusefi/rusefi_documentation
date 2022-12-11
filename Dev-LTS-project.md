# Maybe prerequisite
Nathan wonders what the hell does current automation even do. Could this be clarified with minor code comments on top of key files?
Nathan reminds that some code generation could/should be integrated into Makefile

# Current state

* Manual github "latest" release (1. Manual full build without skips, 2. manual download from build server, 3. manual release upload)
* Automated master branch snapshot upload
* Console can update to master snapshot
* Bundle .zip has confusing folder name with timestamp


# Desired state

* How does github fit with non-linear release flow?
* More automated github release process?
* Smarter console autoupdate options - update within relese VS update to snapshot? Rollback?