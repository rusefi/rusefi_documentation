# Firmware Versions

Every board page offers the firmware two ways — a Release bundle, or the Universal Updater with a beta snapshot. This page is what those choices mean.

**If you are not sure, take the Release.** Snapshots exist for people who need a change that has not been released yet, or who are helping test one.

## Release

The firmware version that has been more thoroughly tested.

## Snapshot

Potentially less stable version with all the most recent changes, sometimes known as "beta version". Probably fine. Just do not update to latest snapshot during fueling pitstop during a race, maybe do not update even at the end of first day of the race - make sure to update at least a week before your next race.

## Latest

"latest" is a bad term since it could be either "latest release" or "latest snapshot".

## Where each one comes from

There are three places builds appear, and they are not the same thing:

| Build | Where | Notes |
|---|---|---|
| Release | The board's own page, or [Download](Download) | The tested build. This is the default choice |
| Nightly / pre-release | [GitHub releases marked pre-release](https://github.com/rusefi/rusefi/releases?q=prerelease%3Atrue) | Automatic builds published as GitHub pre-releases |
| Snapshot | [rusEFI build server](https://rusefi.com/build_server/) | The most recent build of all. Per [Download](Download), a snapshot takes roughly 30 minutes to appear after a change |

[Older releases](https://github.com/rusefi/rusefi/releases?q=prerelease%3Afalse) are also kept, which is what you want if you need to go back to a version that worked.

## The Universal Updater

Board pages offer `rusEFI_Universal_Updater` as the route to a beta snapshot. It is a Windows installer, downloaded from `rusefi.com/installer`, rather than a bundle zip you unpack yourself.

Its detailed behaviour is not documented on this wiki. If you want to know exactly what it does before running it, ask on the [forum](https://rusefi.com/forum/) or [Discord](Discord) rather than assuming it matches the manual bundle route.

## Which one should I be on?

- **Building or troubleshooting an engine** — stay on Release. Debugging a no-start is hard enough without an unfamiliar firmware in the mix.
- **You have been told a fix is in a recent commit** — a snapshot is the point. Note which build you took, so you can say what you are running when reporting back.
- **Testing or contributing** — snapshots are what you want, and reporting problems against them is genuinely useful.

Whichever you take, the bundle contains more than firmware. See [rusEFI Bundle](rusEFI-bundle) for what is inside it, and [HOWTO Update Firmware](HOWTO-Update-Firmware) for flashing.

## Related pages

* [Download](Download) — bundles for each board
* [HOWTO Update Firmware](HOWTO-Update-Firmware) — flashing a bundle
* [HOWTO DFU](HOWTO-DFU) — recovery flashing when normal updating will not work
* [rusEFI Bundle](rusEFI-bundle) — what the bundle contains
* [Virtual Simulator](Virtual-simulator) — trying firmware without hardware
