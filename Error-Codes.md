# rusEFI Error Codes

If the engine will not fire, rusEFI usually knows why and is telling you. The **cut code** is the single most useful number when troubleshooting a no-start: it is the ECU's own answer to "why am I not firing the engine right now".

Cut codes and ETB codes are visible in TunerStudio and in your logs. See [Diagnostics and Logging](Diagnostics-and-Logging) for where to find them, and [Troubleshooting](Troubleshooting) for symptom-based help.

If the code turns out to be a protection doing its job, [Engine Protection](Engine-Protection) explains what each one watches and how it is configured.

## Cut codes

A non-zero cut code means the ECU has deliberately stopped fuel, spark or both. `None` (0) means nothing is being cut.

| # | Code | What it means |
|---|---|---|
| 0 | `None` | Nothing is being cut. This is the normal running value. |
| 1 | `Fatal` | A firmware fatal error has occurred. |
| 2 | `Settings` | The configuration is not valid enough to run the engine. |
| 3 | `HardLimit` | The hard RPM limit was reached — see [Rev Limiter](Rev-Limiter). |
| 4 | `EtbJammedRevLimit` | *"means 1500 RPM limit in ETB jam was detected"* — the electronic throttle is jammed, so RPM is held low. See [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide). |
| 5 | `BoostCut` | Boost exceeded the configured limit — see [Boost Control](Boost-Control). |
| 6 | `OilPressure` | Oil pressure protection triggered — see [Oil Pressure Sensor](Oil-Pressure-Sensor). |
| 7 | `StopRequested` | A stop was requested. |
| 8 | `EtbProblem` | A fault in the electronic throttle system. Check the ETB code below. |
| 9 | `LaunchCut` | Launch control is cutting — see [Launch Control](HOWTO-Launch-Control). |
| 10 | `InjectorDutyCycle` | Injector duty cycle exceeded its limit. |
| 11 | `FloodClear` | Flood clear is active — fuel is deliberately cut while cranking with the throttle held open. See [Cranking](Cranking). |
| 12 | `EnginePhase` | The engine phase is not known, so rusEFI cannot decide which cylinder to fire. Usually a trigger or cam sync problem — see [Trigger Configuration Guide](Trigger-Configuration-Guide). |
| 13 | `KickStart` | Kick start related cut. |
| 14 | `IgnitionOff` | The ignition input is not seen as on. |
| 15 | `Lua` | A [Lua script](Lua-Scripting) requested the cut. |
| 16 | `ACR` | *"Harley Automatic Compression Release"* |
| 17 | `LambdaProtection` | Lambda protection triggered — the mixture went outside the configured safe window. |
| 18 | `GdiComms` | A GDI communication fault — see [GDI status](GDI-status). |
| 19 | `PleaseBrake` | The brake input is required and was not seen. |
| 20 | `FatalErrorRevLimit` | A reduced RPM limit imposed after a fatal error. |
| 21 | `GdiLimits` | A GDI limit was exceeded — see [GDI status](GDI-status). |
| 22 | `GdiPumpLimit` | A GDI high pressure pump limit was exceeded — see [GDI status](GDI-status). |

## Electronic throttle codes

If the cut code is `EtbProblem` (8), this second code says what the throttle system is unhappy about. `None` (0) means no fault.

| # | Code | What it means |
|---|---|---|
| 0 | `None` | No fault. |
| 1 | `EngineStopped` | The engine is stopped, so the throttle is not being driven closed-loop. |
| 2 | `TpsError` | Throttle position sensor fault. |
| 3 | `PpsError` | Pedal position sensor fault. |
| 4 | `IntermittentTps` | The throttle position signal is dropping out intermittently. |
| 5 | `AutoTune` | ETB auto-tune is running. |
| 6 | `Lua` | A [Lua script](Lua-Scripting) is driving the throttle. |
| 7 | `AutoCalibrate` | Auto-calibration is running. |
| 8 | `NotConfigured` | The electronic throttle is not configured. |
| 9 | `Redundancy` | A redundancy check between the two sensor channels failed. |
| 10 | `IntermittentPps` | The pedal position signal is dropping out intermittently. |
| 11 | `JamDetected` | The throttle is jammed. See also cut code 4. |

Throttle and pedal sensors are covered on [Throttle and Pedal Sensors](Throttle-and-Pedal-Sensors), and setup on the [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide).

## OBD2 error codes

rusEFI also uses standard OBD2 P-codes, which drive the [check engine light](Warning-and-Check-Engine-Light). The full list is generated from the firmware and is long, so it is not duplicated here: see the [OBD error codes header](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/algo/obd_error_codes.h).

<img width="1403" alt="Cut codes shown in TunerStudio" src="https://github.com/user-attachments/assets/270b6e74-c4a6-4797-abbc-e986c1d37d4e" />

## Related pages

* [Troubleshooting](Troubleshooting) — start here if you do not know which code you have
* [Diagnostics and Logging](Diagnostics-and-Logging) — finding these values in logs
* [Warning and Check-Engine Light](Warning-and-Check-Engine-Light)

## Technical sources

The cut codes are the `ClearReason` enumeration and the electronic throttle codes are the `EtbStatus` enumeration, both in [`firmware/controllers/limp_manager.h`](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/limp_manager.h). Names and numbers are taken from that file. Where the firmware carries its own comment for a code it is quoted in italics above; the remaining descriptions are plain-English restatements of the code name and should be corrected if any of them misstate the behaviour.
