# Oil Pressure (and other linear analog sensors)

rusEFI reads oil pressure from a **linear analog sensor** — one whose output voltage is proportional to pressure. The same configuration pattern is used for fuel pressure and other auxiliary linear sensors.

## Calibration

A linear sensor is calibrated with two points that map voltage to the measured value:

- `oilPressure.hwChannel` — the analog input the sensor is connected to.
- `v1` / `value1` — the first point: at voltage `v1` the sensor reads pressure `value1`.
- `v2` / `value2` — the second point: at voltage `v2` the sensor reads pressure `value2`.

Take the two points from the sensor datasheet — for example, a typical sensor might output 0.5 V at zero pressure and 4.5 V at full scale. rusEFI draws a straight line through the two points.

## Low oil pressure protection

`minOilPressureAfterStart` sets the minimum oil pressure rusEFI expects once the engine has started. If oil pressure stays below it after starting, that points to a problem — no oil pressure, a wrong calibration, or a wiring fault.

> Oil pressure is critical to engine survival. Confirm the sensor reads correctly (zero with the engine off, normal pressure once running) before depending on any oil-pressure logic.

## Other linear sensors

The same `linear_sensor_s` two-point calibration is used for other analog sensors, including fuel pressure and general-purpose auxiliary linear inputs — configure them the same way.

## Setting it up

1. Wire the sensor to an analog input, sensor 5 V, and sensor ground — see the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections).
2. Select the input channel in TunerStudio.
3. Enter the two calibration points (voltage and pressure) from the datasheet.
4. Verify: the sensor should read zero (or ambient) with the engine off, and normal pressure once running.

## Related pages

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — sensor wiring and grounds.
- [Vault of Sensors](Vault-Of-Sensors) — includes a combined pressure/temperature sensor.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `oilPressure` (`linear_sensor_s`: `hwChannel`, `v1`, `value1`, `v2`, `value2`) and `minOilPressureAfterStart`.
