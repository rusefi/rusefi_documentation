# Download

For beginners, [download rusEFI tuner for Windows](https://rusefi.com/installer/rusEFI_Universal_Updater.exe)
to connect to and tune the ECU. See the [rusEFI tuner guide](Console) for the interface
and first-connection steps.

The standard universal installer uses the snapshot channel for firmware updates.
To stay on Release/LTS firmware, choose the appropriate bundle; see
[Release vs. Snapshot](Release-Snapshot-Latest-firmware). Installing the tuning
application does not itself flash the ECU.

The board-specific rusEFI bundle includes firmware, the definition file used
by TunerStudio for that ECU and firmware version, rusEFI tuner,
drivers, and other utilities. Choose the bundle for your ECU when you need
these board-specific files or tools.

It does not include TunerStudio or MegaLogViewer.

rusEFI tuner includes a [Log Viewer](Console#log-viewer) for beginner log review.
For professional/advanced workflows, TunerStudio provides tuning tools and
MegaLogViewer provides additional log-analysis workflows. Neither is required
to start tuning or reviewing logs with rusEFI tuner.

[Download TunerStudio](HOWTO-create-tunerstudio-project#download-and-install)  
[Download MegaLogViewer](https://www.efianalytics.com/MegaLogViewer/)

*If you haven't already, check out the [Quick Start](HOWTO-quick-start) guide for instructions on how to use your rusEFI bundle.*

## Common Boards

Quick release links. For latest, visit specific board page. [ℹ️Release vs Snapshotℹ️](Release-Snapshot-Latest-firmware)

[Download rusEFI tuner for Windows](https://rusefi.com/installer/rusEFI_Universal_Updater.exe)

[uaEFI](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_uaefi.zip)

[uaEFI121](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_uaefi121.zip)

[super-uaEFI](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_super-uaefi.zip)

[microRusEFI](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_mre_f4.zip)

[Proteus](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_proteus_f7.zip)

See specific board page for [other universal boards](Hardware)

## Hellen Family Boards

[Honda OBD1](uaEFI-Honda-OBD1)

[Honda K](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen-honda-k.zip)

[Nissan 121 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen121nissan.zip)

[VAG 121 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen121vag.zip)

[Mercedes 128 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen128.zip)

[Miata NB2 72 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen72.zip)

[Miata NA6 64 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellenNA6.zip)

## Advanced

[Release vs. Snapshot](https://wiki.rusefi.com/Release-Snapshot-Latest-firmware)

[Older Releases](https://github.com/rusefi/rusefi/releases?q=prerelease%3Afalse)

[Nightly Builds](https://github.com/rusefi/rusefi/releases?q=prerelease%3Atrue)

[Snapshot Builds](https://rusefi.com/build_server/)

[Virtual Simulator](Virtual-simulator)

## FAQ

*__Q:__ I see that something interesting was just changed in the firmware? How do I use the latest version?*  
__A:__ Most snapshot builds take about 30 minutes to get updated on at [Snapshot builds](https://rusefi.com/build_server/)
