# Traction Control

> ⚠️ **Advanced, safety-relevant feature.** Traction control changes how the engine delivers power based on wheel-speed measurements. Set it up carefully, verify your wheel-speed inputs first, and test in a safe, controlled environment. It reduces power to limit wheel slip — it is not a substitute for careful driving, appropriate tyres, or a mechanical safety margin.

rusEFI includes a traction control feature that reduces engine torque when it detects wheel slip. The intervention is a reduction of the **electronic throttle** opening, so traction control requires a configured electronic throttle body (ETB).

## How it works

Traction control compares two wheel speeds to compute a **slip ratio** — a driven-wheel speed against a reference (non-driven / vehicle) speed. When the driven wheels are turning faster than the reference by more than the configured amount, rusEFI reduces the electronic throttle opening to cut torque until slip comes back under control.

The amount of throttle reduction comes from the `tractionControlEtbDrop` table, indexed by:

- wheel **slip ratio** — axis `tractionControlSlipBins`, and
- **vehicle speed** — axis `tractionControlSpeedBins`.

## Wheel-speed inputs

Traction control needs at least two wheel-speed signals so it can compare a driven wheel against a reference:

- The **vehicle speed sensor**: `vehicleSpeedSensorInputPin`, configured with `vssToothCount` and `vssGearRatio`.
- **Auxiliary speed sensors**: `auxSpeedSensorInputPin`.
- `useAuxSpeedForSlipRatio` and `useVssAsSecondWheelSpeed` select which speed sources are used as the two "wheels" for the slip ratio.

Configure and confirm these speed inputs before enabling traction control — the feature cannot behave correctly if the wheel speeds are wrong.

## Requirements and cautions

- Requires an **electronic throttle body** — the intervention is a throttle reduction (`tractionControlEtbDrop`).
- Requires correctly configured and **verified wheel-speed inputs**.
- Introduce it gradually and confirm behaviour on a live [log](Logging-Guide) before relying on it.

## Related pages

- [Electronic Throttle Body](Electronic-Throttle-Body) — the throttle used for the intervention.
- [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide)
- [Logging Guide](Logging-Guide)

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `tractionControlEtbDrop`, `tractionControlSlipBins`, `tractionControlSpeedBins`, `vehicleSpeedSensorInputPin`, `auxSpeedSensorInputPin`, `useAuxSpeedForSlipRatio`, `useVssAsSecondWheelSpeed`.
