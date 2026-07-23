# Boost Control

rusEFI can regulate turbocharger boost pressure by pulsing a **boost control solenoid** (a wastegate control valve, often called an N75 or MAC valve) or by driving an electronically controlled wastegate. This page explains how rusEFI's boost control works and the settings involved.

Exact TunerStudio menu locations and recommended values are not reproduced here because they are engine- and turbo-specific and change between firmware versions. Configure boost control in TunerStudio and confirm each setting against the built-in help and the official [TunerStudio settings guide](https://rusefi.com/docs/guide/).

> ⚠️ **Safety — risk of overboost and engine damage.**
> Incorrect boost control setup can cause overboost, which can destroy an engine very quickly.
> - Keep a **mechanical wastegate spring** rated at or near your minimum safe boost, so the turbo cannot overboost if the electronic control fails or is misconfigured. Electronic boost control can only add boost above the spring's mechanical minimum.
> - Do not enable boost control until the engine runs well and your sensors — especially the MAP sensor — are calibrated and trustworthy.
> - Start with conservative targets and low duty cycle, and verify behaviour on a live [log](Logging-Guide) before increasing boost.

## How rusEFI controls boost

Boost control outputs a **PWM signal** on a dedicated output pin (`boostControlPin`) at a configurable frequency (`boostPwmFrequency`, in Hz). That signal drives the boost control solenoid, which changes how much pressure reaches the wastegate actuator, allowing the ECU to raise boost above the wastegate spring's mechanical minimum.

rusEFI supports two control types, selected by `boostType`:

### Open Loop

In open-loop mode rusEFI looks up a **duty cycle** from a table (`boostTableOpenLoop`) indexed by RPM and load. It does not use manifold-pressure feedback. Coolant- and intake-air-temperature corrections (`cltBoostCorr`/`cltBoostAdder` and `iatBoostCorr`/`iatBoostAdder`) can trim the duty for temperature.

### Open + Closed Loop

In closed-loop mode rusEFI adds a **PID controller** (`boostPid`) on top of the open-loop base. The PID drives the measured manifold pressure toward a **target** taken from a target table (`boostTableClosedLoop`, indexed by RPM and load). Closed loop only engages once manifold pressure passes `minimumBoostClosedLoopMap` — described in the firmware as the "Minimum MAP before closed loop boost is enabled. Use to prevent misbehavior upon entering boost."

## Hardware and wiring

The boost control solenoid is an inductive load and is typically driven from a low-side PWM output. Like other solenoids it needs a **flyback (freewheeling) diode** to protect the output; several rusEFI boards provide this on their boost/wastegate output (for example, boards that label an output "Boost Control Output" or provide a "wastegate solenoid" driver). Check your board's pinout for a suitable output and its protection, and see the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections).

## Key settings

The main boost-control configuration items are listed below by their configuration names. Set them in TunerStudio; the values are engine- and turbo-specific, so this page intentionally does not prescribe numbers.

| Setting | Purpose |
|---|---|
| `isBoostControlEnabled` | Enables boost control. |
| `boostControlPin` / `boostControlPinMode` | Output pin driving the boost solenoid, and its drive mode. |
| `boostPwmFrequency` | PWM frequency for the solenoid, in Hz (range 0–3000). |
| `boostType` | Open Loop, or Open + Closed Loop. |
| `boostTableOpenLoop` | Open-loop duty-cycle table (RPM × load). |
| `boostTableClosedLoop` | Closed-loop boost target table (RPM × load). |
| `boostPid` | PID gains for closed-loop control. |
| `boostControlMinRpm`, `boostControlMinTps`, `boostControlMinMap` | Minimum conditions below which boost control is inhibited. |
| `minimumBoostClosedLoopMap` | Minimum MAP before closed loop engages. |
| `boostControlSafeDutyCycle` | Duty cycle used if a sensor fails; described in firmware as the duty that "should produce the minimum possible amount of boost." |

## Related pages

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — output types and solenoid wiring.
- [Logging Guide](Logging-Guide) — essential for tuning and verifying boost safely.
- [Lua Scripting](Lua-Scripting) — the `setBoostTargetAdd` and `setBoostTargetMult` functions can adjust the boost target from a script.
- [Nitrous](Nitrous) — another power-adder; rusEFI has no built-in nitrous controller, but it can be implemented with Lua scripting alongside boost.
- [Smart ECU (proposed overboost protection)](Vault-Smart-ECU) — proposed/future protection concepts, not current behaviour.

## Technical sources

- Firmware boost-control implementation: `firmware/controllers/actuators/boost_control.cpp`.
- Configuration field definitions: `firmware/integration/rusefi_config.txt`.
