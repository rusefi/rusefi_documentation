# Temperature Sensors (CLT and IAT)

rusEFI reads coolant temperature (CLT) and intake air temperature (IAT) from **thermistors** — resistors whose resistance changes with temperature. Both sensors are configured the same way.

## How a thermistor is read

A thermistor forms a voltage divider with a fixed **bias (pull-up) resistor** on the ECU. rusEFI measures the divider voltage on an analog input, converts it to a resistance, and then to a temperature using a calibration curve.

- `clt.adcChannel` / `iat.adcChannel` — the analog input each sensor is connected to.
- `bias_resistor` — described in the firmware as the "Pull-up resistor value on your board" (Ohm). This must match the actual pull-up resistor on your board or every temperature reading will be wrong.

## Calibration

rusEFI calibrates the thermistor from **three points**, each a temperature and the sensor's resistance at that temperature:

- `tempC_1`, `tempC_2`, `tempC_3` — three temperatures, in °C.
- `resistance_1`, `resistance_2`, `resistance_3` — the sensor's resistance, in Ohm, at each of those temperatures.

Choose three points spread across the operating range (for example cold, warm, and hot) from your sensor's datasheet or by measurement. Many common sensors have known values, and TunerStudio ships presets for popular sensors.

## Setting it up

1. Wire the sensor to an analog input and a sensor ground — see the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections).
2. Select the input channel for CLT and IAT in TunerStudio.
3. Set the `bias_resistor` value to match your board's pull-up resistor.
4. Enter the three calibration points, or select a preset for a known sensor.
5. Verify the reading is sensible — for example, that it matches ambient temperature when the engine is cold.

> A wrong coolant temperature reading affects warm-up fuelling, closed-loop enable, cooling fans, and more, so confirm it reads correctly before relying on it.

## Related pages

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — sensor wiring and grounds.
- [Vault of Sensors](Vault-Of-Sensors) — tested sensors and their values.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `clt.adcChannel`, `iat.adcChannel`, and `ThermistorConf` / `thermistor_conf_s` (`tempC_1/2/3`, `resistance_1/2/3`, `bias_resistor`).
