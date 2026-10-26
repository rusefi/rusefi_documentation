# Download

## rusEFI tuner — recommended

**[🆕 Download rusEFI tuner for Windows 🆕](https://rusefi.com/installer/rusEFI_tuner_installer.exe)**

Use rusEFI tuner to connect to your ECU, tune settings, record logs, and review
them in the built-in Log Viewer. No separate tuning or log-viewer application
is needed to get started.

See the [rusEFI tuner guide](Console) for setup and first-connection steps.

The standard universal installer uses the snapshot channel for firmware updates.
To stay on Release/LTS firmware, choose the appropriate bundle; see
[Release vs. Snapshot](Release-Snapshot-Latest-firmware). Installing the tuning
application does not itself flash the ECU.

## Board-specific firmware bundles

Choose a bundle below if you want Release/LTS firmware or need board-specific
files. It includes rusEFI tuner, firmware for that ECU, its definition file,
drivers, and other utilities. It is not an additional download required to start
using the Windows installer above.

These links offer Release bundles. Choose the exact model of your ECU; see your
board's page if it is not listed. The [Quick Start](HOWTO-quick-start) guide
explains how to get connected.

### Common Boards

* [uaEFI](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_uaefi.zip)
* [uaEFI121](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_uaefi121.zip)
* [super-uaEFI](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_super-uaefi.zip)
* [microRusEFI](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_mre_f4.zip)
* [Proteus](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_proteus_f7.zip)

See the [hardware pages](Hardware) for other boards.

### Hellen Family Boards

* [Honda OBD1 — board page and downloads](uaEFI-Honda-OBD1)
* [Honda K](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen-honda-k.zip)
* [Nissan 121 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen121nissan.zip)
* [VAG 121 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen121vag.zip)
* [Mercedes 128 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen128.zip)
* [Miata NB2 72 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen72.zip)
* [Miata NA6 64 pin](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellenNA6.zip)

## Professional options — optional

TunerStudio and MegaLogViewer are separate applications for professional/advanced
workflows. Neither is required to tune or review logs with rusEFI tuner, and
neither is included in the rusEFI downloads above.

* [TunerStudio — download and project setup](HOWTO-create-tunerstudio-project#download-and-install)
* [MegaLogViewer — additional log-analysis tools](https://www.efianalytics.com/MegaLogViewer/)

<a id="faq"></a>

## Advanced

Need an older release or a recent firmware change? See
[Firmware Versions](Release-Snapshot-Latest-firmware) for Release/LTS, nightly,
and snapshot download options.
