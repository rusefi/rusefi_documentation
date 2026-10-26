# Throttle Position and Pedal Sensors (TPS and PPS)

<a id="throttle-position-and-pedal-sensors-tps-and-app"></a>

The throttle position sensor (TPS) reports how far the throttle is open. On drive-by-wire (electronic throttle) setups there is also a pedal position sensor (PPS) that reports how far the driver is pressing the pedal. Both are potentiometers read on analog inputs and calibrated by their closed and wide-open voltages.

## Setting it up

For a cable throttle, set up the TPS. For electronic throttle, also follow the
full [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide).

1. Check sensor type, power, ground, and input wiring against your ECU and sensor
   manuals. See the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections).
2. Select the TPS inputs in your tuning application, plus pedal inputs for
   electronic throttle. Field names are listed below.
3. Calibrate closed and fully open throttle. For electronic throttle, also
   calibrate released and fully pressed pedal, following the full guide.
   TunerStudio provides a calibration helper.
4. With the engine stopped, check that TPS moves smoothly from 0 % closed to
   100 % fully open. Check both sensor channels as the electronic throttle guide
   directs. Fix unexpected readings before starting.

> Electronic throttle checks both sensor channels and reports a fault if they
> disagree. Calibrate both correctly and keep clear of the throttle during tests.

The sections below explain the settings in more detail.

## Throttle position sensor (TPS)

- **Input:** `tps1_1AdcChannel` — "First analog throttle body, first sensor." Analog TPS inputs have a 200 Hz low-pass cutoff.
- **Calibration:** `tpsMin` — "Closed voltage for primary throttle position sensor"; `tpsMax` — "Fully opened voltage for primary throttle position sensor". Record the sensor voltage at closed throttle and at wide-open throttle so rusEFI can scale the reading to 0–100 %.
- **Second sensors / second throttle body:** a second sensor on the same throttle body (`tps1_2AdcChannel`) and a second throttle body (`tps2_1AdcChannel`, `tps2_2AdcChannel`) are supported, each with its own closed/open calibration (`tps1SecondaryMin`/`tps1SecondaryMax`, `tps2Min`/`tps2Max`, and so on).

<a id="accelerator-pedal-app"></a>

## Pedal position sensor (PPS)

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

## Related pages

- [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide) — drive-by-wire setup uses TPS and pedal.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — sensor wiring and grounds.
