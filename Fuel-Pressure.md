# Fuel Pressure

rusEFI can read fuel pressure and use it to keep fuelling accurate. There are two kinds of fuel pressure sensor.

## Low-side fuel pressure

A standard fuel-rail pressure sensor is a linear analog sensor. Wire it to an analog input and enter a two-point voltage-to-pressure calibration — the same mechanism used for oil pressure (see [Oil Pressure and linear analog sensors](Oil-Pressure-Sensor) for how the two-point calibration works).

## High-pressure (direct injection) fuel

Direct-injection (GDI) systems run a high-pressure fuel rail with its own sensor. The high-pressure sensor type is selected with `SentFuelHighPressureType`, with options "None", "GM type", and "Custom" (many are SENT-protocol sensors). See [GDI Status](GDI-status) for direct-injection specifics.

## Why fuel pressure matters

An injector's rated flow assumes a specific pressure difference across it. If the actual fuel pressure differs from that reference — for example with a fixed (non-manifold-referenced) regulator when the manifold goes into boost or vacuum — the real flow changes, and the injector dead time (opening lag) also shifts with pressure. rusEFI can compensate fuelling and injector dead time for fuel pressure so that the delivered fuel stays correct.

Configure the fuel-pressure compensation and its reference pressure in TunerStudio. See [Injector Lag Tuning](Injector-Lag-Autotune), which covers the pressure- and voltage-dependent injector dead time.

## Related pages

- [Oil Pressure (and linear analog sensors)](Oil-Pressure-Sensor) — the linear-sensor calibration used by the low-side fuel pressure sensor.
- [Injector Lag Tuning](Injector-Lag-Autotune) — injector dead time, which varies with fuel pressure.
- [GDI Status](GDI-status) — direct injection and its high-pressure fuel system.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `SentFuelHighPressureType` ("None" / "GM type" / "Custom"); the low-side fuel pressure sensor uses the linear analog sensor pattern (`linear_sensor_s`, see Oil Pressure); injector dead-time correction is pressure-dependent (`battLagCorrPressBins`).
