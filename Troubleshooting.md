# Troubleshooting

This page is a starting point for diagnosing common rusEFI problems. It gathers the troubleshooting information that lives on the individual topic pages so you can find it from one place. Pick the symptom below that matches what you are seeing.

It helps to have rusEFI Console and/or TunerStudio connected first, so you can read live data and logs while you diagnose. See [rusEFI Console](Console) and [TunerStudio Connectivity](Tunerstudio-Connectivity). When asking the community for help, attach a log — see the [Logging Guide](Logging-Guide) and [Support & Community](Support).

## Can't connect to the ECU

- [TunerStudio connectivity - Troubleshooting](Tunerstudio-Connectivity#troubleshooting-tuner-studio-connectivity) - COM port, baud rate, and connection problems.
- [LED states](LED-states) - what the board LEDs indicate, including [the blue LED not blinking](LED-states#the-blue-led-is-not-blinking) and [the blue LED blinking but nothing in Device Manager](LED-states#the-blue-led-is-blinking-but-nothing-in-device-manager).
- [How to DFU](HOWTO-DFU) - USB/DFU driver issues that also affect normal communication.
- [rusEFI Console](Console) - console overview and connecting.

## Engine won't start

- [First Start - Diagnostics and Troubleshooting](HOWTO-Start-An-Engine#diagnostics-and-troubleshooting-of-your-engine) - systematic first-start diagnosis, including [onboard hardware diagnostics](HOWTO-Start-An-Engine#onboard-hardware-diagnostics).
- [Cranking](Cranking) - cranking fuel and related settings.
- [Get Running With a Universal ECU](HOWTO-Get-Running) - end-to-end setup walkthrough.

## Trigger and synchronization errors

- [Triggers - Troubleshooting Trigger Input](Trigger#troubleshooting-trigger-input) - diagnosing trigger errors with logs, rusEFI Console, and TunerStudio.
- [Trigger Configuration Guide](Trigger-Configuration-Guide) - sensor wiring, polarity, and gap settings.
- [Unknown Trigger](Unknown-Trigger) - when your trigger pattern is not yet supported.

## Firmware flashing and recovery

- [How to Update Firmware - Troubleshooting](HOWTO-Update-Firmware#troubleshooting) - update problems and recovery steps.
- [How to DFU](HOWTO-DFU) - DFU mode and driver setup.
- [Hardware Validation Failed](HARDWARE-VALIDATION-FAILED) - the "HARDWARE VALIDATION FAILED" startup error.
- [F7 Requires Full Erase](F7-requires-full-erase) - some F7 Proteus units need a full erase before an update.

## Sensor and output problems

- [Hardware Validation Failed](HARDWARE-VALIDATION-FAILED) - checking pins with the `readpin`, `bench_setpin`, and `bench_clearpin` console commands.
- [Electronic Throttle Body - Troubleshooting](Electronic-Throttle-Body-Configuration-Guide#troubleshooting) - electronic throttle (DBW) diagnosis.
- [Knock Sensing](knock-sensing) - knock detection setup and verification.

## Error codes and warnings

- [rusEFI Error Codes](Error-Codes) - OBD codes, cut codes, and ETB error codes.
- [LED states](LED-states) - LED meanings, including the [fatal error](LED-states#fatal-error) state.

## CAN and external devices

- [CAN Bus](CAN) - CAN usage, IDs, and hardware options.
- [TS over CAN](TS-over-CAN) - connecting TunerStudio over CAN.

## Related pages

- [Logging Guide](Logging-Guide) - collecting logs to share when asking for help.
- [Support & Community](Support) - where to ask for help.
