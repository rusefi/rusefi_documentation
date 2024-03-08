## rusEFI LTS Instructions

* Only branches with "lts" prefix are suitable for long term support: GitHub release web functionality creates _tags_, human create lts_yyyy.mmXXX branch from that tag.
* we pick commits from master into LTS branches
* after each commit if picked we add/pick Changelog.md
* use https://github.com/rusefi/rusefi/actions/workflows/build-firmware.yaml to trigger builds

See https://github.com/rusefi/rusefi/labels/LTS
