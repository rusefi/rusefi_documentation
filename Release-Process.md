# rusEFI Firmware Release Process

We have three types of firmware builds in rusEFI:

* Release builds more tested monthly-ish. Those do not change often. You can find them on [the download page](Download).
* Nightly builds are available at [https://github.com/rusefi/rusefi/releases](https://github.com/rusefi/rusefi/releases) along with previous releases.
* Snapshot builds are available roughly 20 minutes after developers make changes, sometimes more broken. Anything "I've just changed XXX" is a snapshot build.
  The current snapshots are at [https://rusefi.com/build_server/](https://rusefi.com/build_server/).

## No such thing as Latest

We avoid the term "latest" since it could mean both "latest RELEASE" and "LATEST snapshot". Please do not use the term "latest" in context of rusEFI binaries.
