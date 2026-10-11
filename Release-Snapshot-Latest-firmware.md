# Firmware Versions

Every board page offers the firmware two ways — a Release bundle, or the Universal Updater with a beta snapshot. This page is what those choices mean.

**If you are not sure, take the Release.** Snapshots exist for people who need a change that has not been released yet, or who are helping test one.

## Release

The firmware version that has been more thoroughly tested.

A Release download is not necessarily frozen when you launch its Console. An LTS
(long-term support) bundle can automatically receive subsequent builds from its
LTS branch. Maintainers select changes from development for those branches; see
[LTS instructions](Internal-Technical-Document-Long-Term-Support-LTS).

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

The Universal bundle contains Console software without a board-specific firmware
image. When you request an ECU firmware update, it downloads firmware for the
selected board. For a running ECU, the board is identified from its firmware
signature. A board already in its bootloader may require board selection or
confirmation because it cannot report that signature.

Universal does not mean every board is accepted: the current standard build has
an explicit `board_compatibility` list. A board-specific bundle also accepts its
own target. Custom bundles can supply a different list or `*`; a matching firmware
download must also be available.

## What updates automatically?

**Software updates and ECU firmware updates are separate operations.** Normal
Console startup can download and install updated Console/bundle files on your
computer. It does not silently flash a connected ECU. Flashing starts when you
choose **Update ECU Firmware** or another explicit flashing action.

The update channel comes from `console/release.txt` in the downloaded bundle:

| Bundle metadata | Normal update channel |
|---|---|
| `release=development` | Snapshot builds, from the build server's `/autoupdate/` directory |
| `release=lts...` | Builds within that named branch, from `/lts/<release>/autoupdate/` |
| Standard Universal bundle | `release=development`, so snapshots by default |

The board comes from the ECU, but **on-demand firmware uses the Console bundle's
channel, not the ECU's currently installed release**. Using a development
Universal bundle to update an ECU running LTS therefore requests snapshot
firmware. Use the appropriate LTS bundle to remain on that channel.

For board-specific bundles, the bundle update also refreshes the firmware files
on your computer. For Universal or another compatible board, the firmware is
downloaded when needed. The older separate `rusefi_autoupdate` launcher can also
prefetch firmware for the last connected board.

Automatic software updates require both the user's **Auto-update Software**
setting and the distributor's `autoupdate_bundle` setting. Both default to enabled
in the standard build. This policy is shared across boards; neither Release nor
LTS inherently disables it. Custom bundles may disable it.

To keep your downloaded software unchanged on subsequent launches, clear
**Device > Auto-update Software** and exit Console normally to save the setting.
This preference is stored in the user's `.rusEFI/console_properties.xml`, so it
is shared by bundles run under that user account. **Update Software** remains an
explicit manual option. Disabling automatic software updates does not disable
on-demand firmware downloads after you request **Update ECU Firmware**.

If `release.txt` supplies `nextRelease`, the bundle download path asks before
moving a non-development bundle to that next branch. It does not automatically
follow GitHub's newest release. Update checks compare the cached ZIP's size and
modification time with the server, rather than comparing release version numbers.

An older separate `rusefi_autoupdate` entry point also accepts `release` as its
first argument to download from GitHub's latest release instead. That is a
separate path from normal Console startup and still honors the auto-update
settings and Caps Lock bypass.

## Caps Lock: skip a software update

**Turn Caps Lock ON before launching, and leave it on through startup**, to skip
the bundle update download and use the installed Console. This is the Caps Lock
toggle state, not Shift or Ctrl. Turn it off when you want downloads again.
The shortcut is also listed in Console's **F1** shortcut help.

The same check affects manual **Update Software** downloads. It is not an offline
mode: firmware downloads requested by **Update ECU Firmware** do not check Caps
Lock, and the older separate updater's last-board prefetch does not check it
either. Other network requests can still occur. The bypass depends on the host
Java/AWT implementation being able to read the Caps Lock state.

## LTS rollback

LTS builds can have a **Rollback Firmware** history picker, but it is disabled in
the current standard configuration (`firmware_rollback_enabled=false`). A bundle
that enables it must also have an `lts`-prefixed release, available build history,
and a supported live serial ECU connection. Do not assume every LTS download
exposes that button.

The behavior above was checked against rusEFI source revision
`8ce32a2d0212cc041e34a76f10fdf8a52edbad08` on 2026-10-10: `Autoupdate`,
`BundleInfoStrategy`, `Launcher`, `BoardCompatibility`, `FirmwareRollbackController`,
`shared_io.properties`, and the bundle assembly scripts. Older or customized
downloaded bundles may behave differently.

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
