# Getting Started

This page is an ordered roadmap for going from zero to a running, tunable rusEFI setup. Each step links to the detailed page for that topic. If you already have your ECU and just want the short version, see the [Quick Start](HOWTO-quick-start).

> New to the project? Skim the [rusEFI overview on the Home page](Home) first to see what rusEFI is and whether it fits your project.

> Hitting unfamiliar abbreviations? EFI documentation is dense with them — CLT, MAP, TPS, ETB, baro, VVT and so on. They are all spelled out in [Acronyms & Terminology](Vault-Of-Terminology).

## 1. Choose your hardware

Decide which ECU suits your engine and the features you need. rusEFI runs on two broad categories of hardware:

- **Universal ECUs** — you wire them to your engine yourself.
- **Plug-and-play (PnP) ECUs** — they connect to a specific factory harness.

See the [Hardware overview](Hardware) for the supported boards, the [ECU Comparison](ECU-Comparison) for a spec-by-spec table, and [Other Hardware](Other-Hardware) for additional options. You can also design your own board.

> Running a carburettor? The engine needs injection hardware before an ECU is any use — see [Converting an Engine to Fuel Injection](how-to-convert-from-carburetor-to-EFI) for what that involves.

## 2. Get the software

- [Download rusEFI tuner for Windows](https://rusefi.com/installer/rusEFI_Universal_Updater.exe)
  for a beginner-friendly way to connect and tune. Start at the [rusEFI tuner
  guide](Console).
- [Download the rusEFI bundle](Download) for your specific ECU when you need its
  firmware, definition file, drivers, or other board-specific utilities.
- TunerStudio is a supported professional/advanced alternative. See the
  [TunerStudio project guide](HOWTO-create-tunerstudio-project) for its setup.

## 3. Update the firmware

Official boards ship with firmware already installed, but it should be updated before you start.

Check [Release vs. Snapshot](Release-Snapshot-Latest-firmware) before updating:
the standard universal installer uses snapshots by default. Use the appropriate
Release/LTS bundle if you want to remain on that firmware channel.

- [How to Update Firmware](HOWTO-Update-Firmware)
- [How to DFU](HOWTO-DFU) — used for updates and for recovery if a normal update does not work.

## 4. Wire it up (universal ECUs)

If you are using a universal ECU, plan and build the engine wiring, including power, grounds, sensors, injectors, and ignition.

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections)

## 5. Connect to your ECU

- [rusEFI tuner](Console) — connect over USB, edit the tune, and use diagnostics.
- [TunerStudio Connectivity](Tunerstudio-Connectivity) — connect TunerStudio
  if you are using that professional/advanced alternative.

## 6. Configure the essentials

Set up the parts that must be correct before the engine can run — most importantly the trigger.

- [Trigger Configuration Guide](Trigger-Configuration-Guide)
- [Setting Trigger Offset](How-Do-I-Set-My-Trigger-Offset)

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

- [Logging Guide](Logging-Guide) — how to record proper log files (essential for any troubleshooting or tuning help).
- [rusEFI tuner Log Viewer](Console#log-viewer) — open and inspect saved logs without another application or an ECU connection.
- [rusEFI Online](Online) — share and compare your tune and logs with the community.

## If something goes wrong

- [Troubleshooting](Troubleshooting) — a symptom-based starting point for diagnosing common problems.
- [Support & Community](Support) — where to ask for help.
