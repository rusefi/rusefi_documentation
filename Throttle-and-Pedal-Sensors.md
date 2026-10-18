# Throttle Position and Pedal Sensors (TPS and APP)

The throttle position sensor (TPS) reports how far the throttle is open. On drive-by-wire (electronic throttle) setups there is also an accelerator pedal position (APP) sensor that reports how far the driver is pressing the pedal. Both are potentiometers read on analog inputs and calibrated by their closed and wide-open voltages.

## Throttle position sensor (TPS)

- **Input:** `tps1_1AdcChannel` — "First analog throttle body, first sensor." Analog TPS inputs have a 200 Hz low-pass cutoff.
- **Calibration:** `tpsMin` — "Closed voltage for primary throttle position sensor"; `tpsMax` — "Fully opened voltage for primary throttle position sensor". Record the sensor voltage at closed throttle and at wide-open throttle so rusEFI can scale the reading to 0–100 %.
- **Second sensors / second throttle body:** a second sensor on the same throttle body (`tps1_2AdcChannel`) and a second throttle body (`tps2_1AdcChannel`, `tps2_2AdcChannel`) are supported, each with its own closed/open calibration (`tps1SecondaryMin`/`tps1SecondaryMax`, `tps2Min`/`tps2Max`, and so on).

## Accelerator pedal (APP)

The pedal sensor is used for electronic throttle (drive-by-wire); a cable throttle does not need it.

- **Inputs:** `throttlePedalPositionAdcChannel` ("Electronic throttle pedal position first channel") and `throttlePedalPositionSecondAdcChannel` (second channel — pedals use two sensors for redundancy).
- **Calibration:** `throttlePedalUpVoltage` — "Fully released pedal position"; `throttlePedalWOTVoltage` — "Pedal in the floor" (both in volts), with secondary versions for the second channel.

## Optional TPS smoothing

The TPS settings include a **TPS Smoothing (TPS1 & TPS2)** panel. TPS1 and TPS2
have independent filter histories but share these settings:

- **Smoothing alpha (1 = off)** (`tpsExpAverageAlpha`): defaults to 1, which passes readings through. Values between 0 and 1 smooth fluctuations and add feedback delay. This affects TPS consumers including electronic throttle control and acceleration enrichment.
- **Fast-change reset threshold** (`tpsExpAverageResetThreshold`): change in percentage points required to jump directly to a new reading.
- **Fast-change reset time window** (`tpsExpAverageResetTimeMs`): the change must occur in less than this many milliseconds. Both reset settings must be positive to enable this behavior; they default to zero (disabled).

The average advances whenever firmware reads the resolved TPS value, so alpha
does not specify a fixed time constant or cutoff frequency. Redundant-channel
agreement checks happen before smoothing. Sensor faults pass through immediately,
and recovery starts a fresh average. Analog TPS, Ford/Toyota split-range TPS and
SENT TPS use this path. Direct OBD/CAN/Lua TPS providers bypass it.

## Setting it up

1. Wire the sensor(s) to analog inputs, sensor 5 V, and sensor ground — see the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections).
2. Select the TPS (and pedal, for drive-by-wire) input channels in TunerStudio.
3. Calibrate: with the throttle closed, capture the closed voltage; at wide-open throttle, capture the open voltage. Do the same for the pedal (released and floored). TunerStudio provides a calibration helper.
4. Verify the TPS reads 0 % closed and 100 % at wide-open throttle, and that any second sensor or channel agrees with the first.

> On electronic throttle, TPS and pedal are safety-critical: rusEFI compares the two channels and raises a fault if they disagree. Calibrate both channels correctly, and see the [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide) for the full drive-by-wire setup.

## Related pages

- [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide) — drive-by-wire setup uses TPS and pedal.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — sensor wiring and grounds.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `tps1_1AdcChannel`, `tps1_2AdcChannel`, `tps2_1AdcChannel`, `tpsMin`, `tpsMax`, `tps1SecondaryMin`/`tps1SecondaryMax`, `throttlePedalPositionAdcChannel`, `throttlePedalPositionSecondAdcChannel`, `throttlePedalUpVoltage`, `throttlePedalWOTVoltage`.
- TPS smoothing behavior: `firmware/init/sensor/init_tps.cpp`, `firmware/controllers/sensors/tps_smoothing.h`, and `firmware/controllers/algo/defaults/default_base_engine.cpp`; verified against the report 13 port on top of `3dd620b8d5b` in `rusefi.5`.
