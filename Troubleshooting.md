# Troubleshooting

Use this page to find help for common rusEFI problems. Pick the symptom below
that matches yours. You can start even if you cannot connect or collect a log.

| Symptom | First check | Next route |
|---|---|---|
| Cannot connect | Check your application's connection setup and the board's documented LED state. | [rusEFI tuner connection help](Console#why-wont-rusefi-tuner-connect-to-my-ecu), [TunerStudio connectivity troubleshooting](Tunerstudio-Connectivity#troubleshooting-tuner-studio-connectivity), or [LED states](LED-states) |
| Engine will not start | Check engine setup, trigger, and timing in order. | [First-start roadmap](HOWTO-Start-An-Engine#first-start-roadmap) |
| Trigger or synchronization error | Check trigger input diagnosis and configuration. | [Trigger troubleshooting](Trigger#troubleshooting-trigger-input) |
| Firmware update or recovery problem | Start with the update troubleshooting steps. | [Firmware update troubleshooting](HOWTO-Update-Firmware#troubleshooting) |
| Sensor reading looks wrong | Identify the sensor and check its wiring, input assignment, and calibration. | [Sensors and Calibration](Sensors-and-Calibration) |
| Output does not work as expected | Check the output assignment and wiring against your ECU documentation before testing it. | [Bench testing precautions and checks](Bench-Testing) |
| Error code or warning | Look up the code and check whether engine protection acted. | [Error codes](Error-Codes) and [Engine Protection](Engine-Protection) |
| CAN or external device problem | Check CAN usage and the connection route in use. | [CAN Bus](CAN) or [TS over CAN](TS-over-CAN) |

If you can connect, use rusEFI tuner or TunerStudio to view live data and logs;
see [rusEFI tuner](Console) and [TunerStudio Connectivity](Tunerstudio-Connectivity).
When asking for help, share a log if you have one — see the [Logging Guide](Logging-Guide)
and [Support & Community](Support). You do not need a log to troubleshoot a connection problem.

## Can't connect to the ECU

- [TunerStudio connectivity - Troubleshooting](Tunerstudio-Connectivity#troubleshooting-tuner-studio-connectivity) - COM port, baud rate, and connection problems.
- [LED states](LED-states) - what the board LEDs indicate, including [the blue LED not blinking](LED-states#the-blue-led-is-not-blinking) and [the blue LED blinking but nothing in Device Manager](LED-states#the-blue-led-is-blinking-but-nothing-in-device-manager).
- [How to DFU](HOWTO-DFU) - USB/DFU driver issues that also affect normal communication.
- [rusEFI tuner](Console) - application overview and connecting.

## Engine won't start

- [First Start - Diagnostics and Troubleshooting](HOWTO-Start-An-Engine#diagnostics-and-troubleshooting-of-your-engine) - systematic first-start diagnosis, including [onboard hardware diagnostics](HOWTO-Start-An-Engine#onboard-hardware-diagnostics).
- [Cranking](Cranking) - cranking fuel and related settings.
- [Get Running With a Universal ECU](HOWTO-Get-Running) - end-to-end setup walkthrough.

## Trigger and synchronization errors

- [Triggers - Troubleshooting Trigger Input](Trigger#troubleshooting-trigger-input) - diagnosing trigger errors with logs, rusEFI tuner, and TunerStudio.
- [Trigger Configuration Guide](Trigger-Configuration-Guide) - sensor wiring, polarity, and gap settings.
- [Unknown Trigger](Unknown-Trigger) - when your trigger pattern is not yet supported.

## Firmware flashing and recovery

- [How to Update Firmware - Troubleshooting](HOWTO-Update-Firmware#troubleshooting) - update problems and recovery steps.
- [How to DFU](HOWTO-DFU) - DFU mode and driver setup.
- [Hardware Validation Failed](HARDWARE-VALIDATION-FAILED) - the "HARDWARE VALIDATION FAILED" startup error.
- [F7 Requires Full Erase](F7-requires-full-erase) - some F7 Proteus units need a full erase before an update.

## Sensor and output problems

- [Bench Testing Outputs](Bench-Testing) - confirming each injector, coil, pump and relay is on the channel you think it is.
- [Hardware Validation Failed](HARDWARE-VALIDATION-FAILED) - checking pins with the `readpin`, `bench_setpin`, and `bench_clearpin` console commands.
- [Electronic Throttle Body - Troubleshooting](Electronic-Throttle-Body-Configuration-Guide#troubleshooting) - electronic throttle (DBW) diagnosis.
- [Knock Sensing](knock-sensing) - knock detection setup and verification.

## Error codes and warnings

- [rusEFI Error Codes](Error-Codes) - OBD codes, cut codes, and ETB error codes.
- [Engine Protection](Engine-Protection) - if the ECU is cutting deliberately, this explains which protection acted and why.
- [LED states](LED-states) - LED meanings, including the [fatal error](LED-states#fatal-error) state.

## CAN and external devices

- [CAN Bus](CAN) - CAN usage, IDs, and hardware options.
- [TS over CAN](TS-over-CAN) - connecting TunerStudio over CAN.

## Related pages

- [Logging Guide](Logging-Guide) - collecting logs to share when asking for help.
- [Support & Community](Support) - where to ask for help.
