# Vehicle Speed Sensor (VSS)

rusEFI can read road speed from a vehicle speed sensor (VSS) — a sensor that produces pulses as the driveshaft, transmission output, or a wheel turns. Road speed is used for features such as a speed readout, gear detection, and traction control.

## Configuration

- `vehicleSpeedSensorInputPin` — the input the VSS is connected to.
- `vssToothCount` — the number of pulses the sensor produces per revolution (teeth on the reluctor or trigger).
- `vssGearRatio` — the ratio between the sensor and the road wheels, used to convert the pulse rate into road speed.

Set these so the reported speed matches actual road speed.

## Gear detection

The **Gear Detection** section in the speed-sensor dialog compares shaft RPM with the configured forward gear ratios. It reports the closest gear, or zero when no gear can be inferred. Configure the forward gear count and each gear ratio accurately.

**Speed Source** selects the reference:

- **Main Vehicle Speed** is the default. It converts road speed to driveshaft RPM using **Wheel revolutions per kilometer** and **Final drive ratio**. If an input-shaft-speed sensor is registered, its RPM is used automatically; otherwise engine RPM is used. Speeds below 3 km/h do not produce a ratio.
- **Output Shaft Speed** reads transmission output-shaft RPM directly. **RPM Source** then explicitly selects engine RPM or input-shaft RPM. Input-shaft RPM excludes upstream clutch or torque-converter slip from gear inference.

A configured clutch-down switch indicating a pressed pedal, or a configured clutch-up switch indicating the pedal is not fully released, clears the detected gear and ratio. Detection resumes when the clutch is engaged again. Unconfigured switches do not inhibit detection.

## Output-shaft speed input

Configure **Output Shaft Speed Pin**, **Tooth Count**, and **Filter** in Gear Detection. Tooth count is pulses per output-shaft revolution; conversion is `RPM = frequency × 60 / tooth count`. Filter is a low-pass reciprocal: a higher value averages more teeth. The reading expires after 500 ms without an update.

This is a separate input from the existing main VSS. Do not assign both functions to the same physical pin. For an external RPM source, leave the OSS pin unassigned and publish RPM through Lua's `Sensor.new("OutputShaftSpeed")`, for example from a CAN decoder. The **Output Shaft Speed** gauge shows the resulting RPM.

## Transmission slip estimate

With **Speed Source = Output Shaft Speed**, enable **Slip Detection** and choose **Slip RPM Source** independently of the RPM source used for gear detection:

- **Input Shaft Speed** measures the difference across the gearbox.
- **Engine RPM** also includes upstream clutch or torque-converter slip, including normal converter slip when it is unlocked.

The estimate is `100 × (actual RPM / expected RPM − 1)`, where expected RPM is output-shaft RPM multiplied by the detected gear's ratio. Positive values mean the selected RPM source is faster than expected; negative values mean it is slower.

A reading requires a detected gear, a valid OSS reference and selected RPM source, and valid main Vehicle Speed at or above **Slip Minimum Speed**. The default minimum is 5 km/h; a zero setting is reset to that default. Selecting OSS for gear detection does not replace the main Vehicle Speed provider, so configure VSS as well.

**Transmission Slip** reports the percentage. Check the **Transmission slip valid** log channel (`transmissionSlipValid`) before interpreting it: unavailable readings report zero with validity false. Clutch disengagement also clears slip and validity. Main Vehicle Speed alone cannot establish that its physical source is OSS, so slip reporting is unavailable in that gear-detection mode.

This is an estimate based on the inferred gear, not a mechanical fault diagnosis. Incorrect ratios and gear ambiguity can change the result. A sufficiently large mismatch can prevent gear detection entirely, making slip unavailable. This feature does not measure front-versus-rear tire slip or automatically adjust transmission pressure.

## Auxiliary speed sensors and wheel slip

For features that compare wheel speeds — such as [Traction Control](Traction-Control) — additional speed inputs are available:

- `auxSpeedSensorInputPin` — auxiliary speed sensor input(s).
- `useVssAsSecondWheelSpeed` — use the VSS as one of the two wheel speeds.
- `useAuxSpeedForSlipRatio` — use an auxiliary speed sensor as one of the wheels for the slip ratio.

## Setting it up

1. Wire the sensor to an input and a ground appropriate for its type (Hall or VR) — see the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections).
2. Set the input pin, tooth count, and gear ratio in TunerStudio.
3. Confirm the reported speed matches a known-good reference (for example a GPS speedometer) and adjust `vssToothCount` / `vssGearRatio` until it agrees.

## Related pages

- [Traction Control](Traction-Control) — uses vehicle and wheel speed.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — sensor wiring and grounds.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `vehicleSpeedSensorInputPin`, `vssToothCount`, `vssGearRatio`, `auxSpeedSensorInputPin`, `useVssAsSecondWheelSpeed`, `useAuxSpeedForSlipRatio`.
- Gear inference and slip: `firmware/controllers/modules/gear_detector/`; OSS acquisition: `firmware/init/sensor/init_output_shaft_speed_sensor.cpp`.
- Verified against the local report-36 port on rusEFI revision `5850da7bc7d`, adapting AlphaX beta revision `ebb877615ee1`.
