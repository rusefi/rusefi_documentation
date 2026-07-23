# Cooling Fan Control

rusEFI can switch one or two radiator cooling fans based on coolant temperature, using separate on and off temperatures so a fan does not chatter around a single threshold.

## How it works

Each fan turns on when coolant temperature rises to its **on** temperature and turns off when it falls back to its **off** temperature. Setting the off temperature a few degrees below the on temperature provides hysteresis, so the fan runs steadily instead of cycling rapidly.

- Fan 1: `fanPin`, `fanOnTemperature` ("Coolant temperature at which the fan turns on"), `fanOffTemperature` ("Coolant temperature at which the fan turns off").
- Fan 2: `fan2Pin`, `fan2OnTemperature`, `fan2OffTemperature` — a second fan (or a second stage) with its own thresholds.

## Options

- `enableFan1WithAc` / `enableFan2WithAc` — "Turn on this fan when AC is on", so a fan also runs whenever the air conditioning is on.
- `disableFan1WhenStopped` / `disableFan2WhenStopped` — disable the fan while the engine is stopped.
- `fan1ExtraIdle` — "Additional idle % when fan #1 is active", to raise idle slightly and compensate for the extra electrical load.

## Wiring

A radiator fan draws far too much current to switch directly from an ECU output, so it is controlled through a **relay**:

- `fanPin` (or `fan2Pin`) is an output that energizes the fan relay coil.
- The relay's contacts switch fused battery power to the fan motor.

Set the fan output pin and the on/off temperatures in TunerStudio, and confirm the fan switches on and off at the expected coolant temperatures.

## Related pages

- [Temperature Sensors (CLT and IAT)](Temperature-Sensors) — the coolant sensor the fan logic uses; it must read correctly for the fan to switch at the right temperature.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — outputs and relays.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `fanPin`, `fan2Pin`, `fanOnTemperature`, `fanOffTemperature`, `fan2OnTemperature`, `fan2OffTemperature`, `enableFan1WithAc`, `enableFan2WithAc`, `disableFan1WhenStopped`, `disableFan2WhenStopped`, `fan1ExtraIdle`.
