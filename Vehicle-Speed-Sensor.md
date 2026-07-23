# Vehicle Speed Sensor (VSS)

rusEFI can read road speed from a vehicle speed sensor (VSS) — a sensor that produces pulses as the driveshaft, transmission output, or a wheel turns. Road speed is used for features such as a speed readout, gear detection, and traction control.

## Configuration

- `vehicleSpeedSensorInputPin` — the input the VSS is connected to.
- `vssToothCount` — the number of pulses the sensor produces per revolution (teeth on the reluctor or trigger).
- `vssGearRatio` — the ratio between the sensor and the road wheels, used to convert the pulse rate into road speed.

Set these so the reported speed matches actual road speed.

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
