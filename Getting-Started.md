# Getting Started

This page is an ordered roadmap for going from zero to a running, tunable rusEFI setup. Each step links to the detailed page for that topic. If you already have your ECU and just want the short version, see the [Quick Start](HOWTO-quick-start).

> New to the project? Skim the [rusEFI overview on the Home page](Home) first to see what rusEFI is and whether it fits your project.

## 1. Choose your hardware

Decide which ECU suits your engine and the features you need. rusEFI runs on two broad categories of hardware:

- **Universal ECUs** — you wire them to your engine yourself.
- **Plug-and-play (PnP) ECUs** — they connect to a specific factory harness.

See the [Hardware overview](Hardware) for the supported boards, and [Other Hardware](Other-Hardware) for additional options. You can also design your own board.

## 2. Get the software

- [Download the rusEFI bundle](Download) for your specific ECU. The bundle includes the firmware, the rusEFI Console, drivers, and the TunerStudio definition file.
- Install tuning software by [creating a TunerStudio project](HOWTO-create-tunerstudio-project).
- Learn what the [rusEFI Console](Console) is used for.

## 3. Update the firmware

Official boards ship with firmware already installed, but it should be updated before you start.

- [How to Update Firmware](HOWTO-Update-Firmware)
- [How to DFU](HOWTO-DFU) — used for updates and for recovery if a normal update does not work.

## 4. Wire it up (universal ECUs)

If you are using a universal ECU, plan and build the engine wiring, including power, grounds, sensors, injectors, and ignition.

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections)

## 5. Connect to your ECU

- [TunerStudio Connectivity](Tunerstudio-Connectivity) — connect TunerStudio to the ECU and resolve connection problems.
- [rusEFI Console](Console) — connect the console for monitoring and diagnostics.

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

- [Get Tuning with TunerStudio](Get-tuning-with-TunerStudio-and-your-rusEFI)

## 9. Log and share

- [Logging Guide](Logging-Guide) — how to record proper log files (essential for any troubleshooting or tuning help).
- [rusEFI Online](Online) — share and compare your tune and logs with the community.

## If something goes wrong

- [Troubleshooting](Troubleshooting) — a symptom-based starting point for diagnosing common problems.
- [Support & Community](Support) — where to ask for help.
