# Sensors and Calibration

Every rusEFI tune depends on the sensors reading correctly — the firmware can only be as accurate as the data it is given. This page is the starting point for setting up and calibrating the sensors on your engine.

For sensor wiring specifics, see the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections). For a list of tested sensors and their known values, see the [Vault of Sensors](Vault-Of-Sensors).

## Temperature

- [Coolant and Intake Air Temperature (CLT/IAT)](Temperature-Sensors) — thermistor bias resistor and three-point calibration.

## Pressure

- [MAP Sensor](MAP-Sensor) — manifold absolute pressure; sensor presets and two-point calibration.
- [Oil Pressure (and linear analog sensors)](Oil-Pressure-Sensor) — two-point voltage-to-pressure calibration, also used for fuel pressure and other linear sensors.

## Throttle

- [Throttle Position and Pedal (TPS/APP)](Throttle-and-Pedal-Sensors) — closed / wide-open calibration and drive-by-wire pedal redundancy.

## Air/fuel ratio (oxygen)

- [Wideband Oxygen Sensors](Wide-Band-Sensors) — wideband / lambda AFR measurement.
- [Medium Band Oxygen Sensor](Medium-band-oxygen) — Denso two-wire sensor.

## Position and combustion

- [Triggers](Trigger) — crank and cam position sensors and trigger setup.
- [Knock Sensing](knock-sensing) — detonation detection and response.

## See also

- [Vault of Sensors](Vault-Of-Sensors) — tested sensors and known calibration values.
- [Sensors and Actuators index](Pages-Sensors-and-Actuators) — the full list.
