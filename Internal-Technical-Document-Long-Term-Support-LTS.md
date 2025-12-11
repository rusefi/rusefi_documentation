# rusEFI LTS Instructions

* Only branches with "lts" prefix are suitable for long term support: GitHub release web functionality creates _tags_, a human creates a lts_yyyymmXXX branch from that tag. Note: no dots in branch names!
* We pick commits from master into LTS branches
* After each commit is picked we add/pick Changelog.md
* Use https://github.com/rusefi/rusefi/actions/workflows/build-firmware.yaml to trigger builds (use "LTS build" checkbox to get LTS handling)
* See https://rusefi.com/build_server/lts/ for LTS artifacts

See https://github.com/rusefi/rusefi/labels/LTS
