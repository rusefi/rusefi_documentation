# Getting Started

Use this roadmap to plan your rusEFI installation. Each stage links to a guide.
If you already have your ECU, start with [Quick Start](HOWTO-quick-start).

| Where you are now | Your next step |
| --- | --- |
| Still planning or choosing parts | Start at [Choose your hardware](#1-choose-your-hardware). |
| ECU has arrived; not connected yet | Follow [Quick Start](HOWTO-quick-start) to connect. |
| Connected and ready to configure an installation | Follow the [universal ECU](HOWTO-Get-Running) or [plug-and-play ECU](HOWTO-Get-Running-PnP) guide. |
| Something is not working | Start with [Troubleshooting](Troubleshooting); ask for help before continuing past a failed safety check. |

> New to the project? Skim the [rusEFI overview on the Home page](Home) first to see what rusEFI is and whether it fits your project.
>
> Need a term explained? See [Acronyms & Terminology](Vault-Of-Terminology).

## 1. Choose your hardware

Decide which ECU suits your engine and the features you need. rusEFI runs on two broad categories of hardware:

- **Universal ECUs** — you wire them to your engine yourself.
- **Plug-and-play (PnP) ECUs** — they connect to a specific factory harness.

See the [Hardware overview](Hardware) for the supported boards, the [ECU Comparison](ECU-Comparison) for a spec-by-spec table, and [Other Hardware](Other-Hardware) for additional options. You can also design your own board.

> Running a carburettor? The engine needs injection hardware before an ECU is any use — see [Converting an Engine to Fuel Injection](how-to-convert-from-carburetor-to-EFI) for what that involves.

## 2. Get the software

**Recommended:** [download rusEFI tuner for Windows](https://rusefi.com/installer/rusEFI_Universal_Updater.exe),
then follow [Quick Start](HOWTO-quick-start). It includes tuning and log viewing,
so you do not need another application to connect.

Other options:

- Use a [board-specific bundle](Download) for Release/LTS firmware or other
  board-specific files. You do not need both downloads for a first connection.
- TunerStudio is a supported professional/advanced alternative. See the
  [TunerStudio project guide](HOWTO-create-tunerstudio-project) for its setup.

## 3. Update the firmware

Firmware is the software running on the ECU. Official boards ship with it
installed, so you can connect without flashing the ECU.

Before setting up the engine, check your board's update guidance and save a copy
of any existing tune. If an update is needed, connect the ECU and follow
[How to Update Firmware](HOWTO-Update-Firmware); you do not need to choose a
programming protocol for a normal supported update.

Check [Release vs. Snapshot](Release-Snapshot-Latest-firmware) before updating:
the standard universal installer uses snapshots by default. Use the appropriate
Release/LTS bundle if you want to remain on that firmware channel.

- [How to Update Firmware](HOWTO-Update-Firmware)
- [Recovery / emergency programming (DFU)](HOWTO-DFU) — only when your ECU's
  instructions call for it. If a normal update fails, check troubleshooting
  before considering recovery.

## 4. Wire it up (universal ECUs)

If you are using a universal ECU, plan and build the engine wiring, including power, grounds, sensors, injectors, and ignition.

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections)

## 5. Connect to your ECU

- [rusEFI tuner](Console) — connect over USB, edit the tune, and use diagnostics.
- [TunerStudio Connectivity](Tunerstudio-Connectivity) — connect TunerStudio
  if you are using that professional/advanced alternative.

## 6. Configure the essentials

Before starting, follow your installation guide to check sensor readings,
output assignments, and engine position sensing. The **trigger** is the crank/cam
sensor pattern the ECU uses to determine engine position and speed.

- [Trigger Configuration Guide](Trigger-Configuration-Guide)
- [Setting Trigger Offset](How-Do-I-Set-My-Trigger-Offset)
- [Sensors and Calibration](Sensors-and-Calibration)

The Get Running guides below walk through sensor and output configuration in context.

## 7. Get it running (first start)

Follow the guide that matches your hardware:

- [Get Running With a Universal ECU](HOWTO-Get-Running)
- [Get Running With a Plug-and-Play ECU](HOWTO-Get-Running-PnP)
- [Performing the First Start on a New rusEFI Install](HOWTO-Start-An-Engine)

## 8. Tune it

- Beginners: start with [rusEFI tuner](Console).
- TunerStudio users: follow [Get Tuning with TunerStudio](Get-tuning-with-TunerStudio-and-your-rusEFI).

## 9. Log and share

- [Logging Guide](Logging-Guide) — record engine data to help with tuning and diagnosis.
- [rusEFI tuner Log Viewer](Console#log-viewer) — open and inspect saved logs without another application or an ECU connection.
- [rusEFI Online](Online) — share and compare your tune and logs with the community.

## If something goes wrong

- [Troubleshooting](Troubleshooting) — a symptom-based starting point for diagnosing common problems.
- [Support & Community](Support) — where to ask for help.

If you cannot connect, share the error message and what you tried. You can ask
for help without a recording.
