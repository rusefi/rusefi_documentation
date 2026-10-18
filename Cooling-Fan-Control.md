# Cooling Fan Control

rusEFI controls one or two radiator fans independently, using either an on/off relay or a PWM fan controller. Each fan can also respond to the A/C compressor or high-side A/C pressure.

## How it works

In relay mode, each fan turns on when coolant temperature rises above its **on** temperature and turns off when it falls below its **off** temperature. Between the thresholds it keeps its previous state.

- Fan 1: `fanPin`, `fanOnTemperature` ("Coolant temperature at which the fan turns on"), `fanOffTemperature` ("Coolant temperature at which the fan turns off").
- Fan 2: `fan2Pin`, `fan2OnTemperature`, `fan2OffTemperature` — a second fan (or a second stage) with its own thresholds.

## PWM control

Enable **PWM mode** for a fan and configure its frequency and **Speed Demand Curve**. The curve specifies requested airflow from 0% to 100%, rather than electrical duty cycle. The relay on/off temperature settings do not control PWM output.

**PWM duty for fan OFF** (`fan1MinPwm` / `fan2MinPwm`) is the duty at 0% demand. **PWM duty for fan FULL speed** (`fan1MaxPwm` / `fan2MaxPwm`) is the duty at 100% demand. Intermediate demand is mapped linearly between them. For an inverted controller, the off duty can be higher than the full-speed duty: with 90% off and 10% full-speed duty, 50% demand produces 50% duty.

**Soft-start time** is the time needed to increase demand from 0% to 100%. It applies to both temperature and A/C requests, including inverted PWM outputs. Decreases in demand apply immediately. An invalid coolant sensor bypasses soft-start.

The first curve value supplies the demand during inhibition. The last curve value supplies the demand for a coolant-sensor fault, a board-forced fan request, or compressor-relay assistance. Set these values to **0% and 100%** for fully off and full-speed behavior. A curve ending at 80% limits the coolant-sensor-fault request to 80%; a curve starting at 20% continues to request 20% during inhibition.

## A/C assistance

Select **A/C control mode** independently for each fan (`fan1AcMode` / `fan2AcMode`):

- **Disabled**: coolant temperature alone requests airflow.
- **Relay**: an engaged compressor requests the fan on, or the last curve value in PWM mode.
- **Pressure**: high-side A/C pressure requests airflow even when the compressor is off. Configure the A/C pressure sensor and the fan's pressure thresholds.

In relay mode, pressure at or above **A/C pressure on / full speed** requests the fan on. Below **A/C pressure off**, pressure assistance ends. Between these thresholds, pressure assistance retains the previous fan state; coolant temperature can still request the fan.

In PWM mode, pressure demand increases linearly from 0% at the off pressure to 100% at the on pressure. The controller uses whichever demand is higher: pressure or coolant temperature. An invalid pressure sensor, or an on pressure no higher than the off pressure, contributes no PWM pressure demand.

Default pressure thresholds are 1400/1100 kPa for fan 1 and 1800/1400 kPa for fan 2. Both A/C modes default to Disabled unless the engine or board defaults enable compressor assistance.

## Inhibition and idle compensation

- Cranking inhibits both relay and PWM fan control.
- `disableFan1WhenStopped` / `disableFan2WhenStopped` inhibit the fan while the engine is stopped.
- **Disable above vehicle speed** inhibits the fan above its threshold. It becomes eligible again below that threshold minus **Disable speed hysteresis** (default 5 km/h). Zero disables the speed check; an invalid speed sensor also clears this inhibit.
- `fan1ExtraIdle` — "Additional idle % when fan #1 is active", to raise idle slightly and compensate for the extra electrical load.

These inhibits take priority over coolant-sensor failure and A/C demand. A board-specific forced-on request has higher priority. In PWM mode, inhibition uses the first curve value as described above.

## Updating an existing tune

The old minimum/maximum PWM settings were duty clamps. They now mean the off/full-speed duty endpoints, and the curve now means normalized demand. Review and recalibrate all three, including the first and last curve values. Default duty endpoints are now 0% and 100%.

The A/C PWM adder and the old **Enable with AC** toggles have been removed. When rusEFI Console migrates an older tune, each enabled toggle (`true` or `yes`) becomes **Relay**, and each disabled toggle (`false` or `no`) becomes **Disabled**. A tune that already uses the new A/C modes keeps its selected modes, including **Pressure**. The old PWM adder has no automatic conversion; review the resulting fan demand before use.

## Status indicators

The **Cooling Fans** dialog refreshes each fan's coolant-temperature, A/C, engine-state, vehicle-speed and coolant-sensor fault indicators in both on/off and PWM modes.

In PWM mode, **Fan speed target** is demand before soft-start, **Fan speed applied** is demand after soft-start, and **PWM duty applied** is the mapped electrical duty. These are commands, not measured fan speed. **Fan On/Off** follows whether requested demand is above zero, so an inverted controller can report Fan Off while output duty is high. The A/C and temperature flags describe their input conditions even when an inhibit prevents those requests from taking effect; radiator fan status reports the controlling reason.

## Wiring

A radiator fan draws far too much current to switch directly from an ECU output. In relay mode:

- `fanPin` (or `fan2Pin`) is an output that energizes the fan relay coil.
- The relay's contacts switch fused battery power to the fan motor.

Set the fan output pin and the on/off temperatures in TunerStudio, and confirm the fan switches on and off at the expected coolant temperatures.

For PWM operation, connect the output to a compatible fan controller's control input and configure its required frequency and off/full-speed duty values. The motor still needs its own suitable power supply and protection.

## Related pages

- [Temperature Sensors (CLT and IAT)](Temperature-Sensors) — the coolant sensor the fan logic uses; it must read correctly for the fan to switch at the right temperature.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — outputs and relays.

## Technical sources

- Configuration, live-data definitions and control logic: `firmware/controllers/modules/fan_control/`.
- Host regression coverage: `unit_tests/tests/actuators/test_fan_control.cpp`.
- Console tune migration: `FanAcModeMigrator.java` and `FanAcModeMigratorTest.java`, verified against rusEFI revision `d11f3cd68e0`.
- Verified against rusEFI revision `ac6d8cd9c73`, adapting AlphaX beta revision `ebb877615ee1`.
