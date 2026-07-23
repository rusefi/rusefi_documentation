# MAP Sensor (Manifold Absolute Pressure)

The MAP sensor measures absolute pressure in the intake manifold. It is the primary load input for the [Speed Density](Speed-Density) fuel algorithm and is used by boost control and several corrections, so an accurate MAP reading matters.

## Choosing the sensor

rusEFI has built-in presets for many common MAP sensors, selected with `map.sensor.type` (`air_pressure_sensor_type_e`). The options include **Custom** plus known sensors such as MPX4250, MPX4100, MPXH6400, MPXH6300, GM 1 Bar, GM 2 Bar, GM 3 Bar, Bosch 2.5, Bosch 3 Bar, and Honda 3 Bar, among others. Pick the preset that matches your sensor, or choose Custom to enter your own calibration.

## Calibration

For a Custom sensor (or to check a preset), rusEFI uses a straight-line, two-point transfer function:

- `map.sensor.lowValue` — "kPa/psi value at low volts".
- `map.sensor.highValue` — "kPa/psi value at high volts".

Enter the pressure the sensor reports at its low and high output voltages, taken from the sensor datasheet. The analog input is set by `map.sensor.hwChannel`.

## MAP averaging

Manifold pressure pulses with each intake event, so rusEFI averages the reading over a crank-angle window rather than taking a single sample. The window is defined by `samplingAngle` ("MAP averaging sampling start crank degree angle") and `samplingWindow` ("MAP averaging angle crank degree duration").

## Barometric sensor

An optional separate barometric (ambient) pressure sensor can be configured (`baroSensor`) for barometric/altitude compensation.

## Setting it up

1. Wire the sensor to an analog input, sensor 5 V, and sensor ground — see the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections).
2. Select the input channel and choose the sensor preset (or Custom) in TunerStudio.
3. For a Custom sensor, enter the low/high kPa values from the datasheet.
4. Verify the reading: with the engine off and the key on, MAP should read close to ambient barometric pressure (about 100 kPa at sea level).

## Related pages

- [Speed Density](Speed-Density) — uses MAP as its main load input.
- [GM Map sensor](GM-map-sensor) — notes on the common GM MAP sensors.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — sensor wiring and grounds.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `MAP_sensor_config_s` (`samplingAngle`, `samplingWindow`) and `air_pressure_sensor_config_s` (`type` / `air_pressure_sensor_type_e`, `lowValue`, `highValue`, `hwChannel`); `baroSensor`.
