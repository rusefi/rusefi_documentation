# Rev Limiter (RPM Limit)

rusEFI enforces a maximum engine speed to protect the engine from over-revving. When RPM reaches the limit, rusEFI cuts fuel and/or spark to hold it there.

## The RPM limit

- `rpmHardLimit` — the hard RPM limit, in rpm.
- `useCltBasedRpmLimit` — "If enabled, use a curve for RPM limit (based on coolant temperature) instead of a constant value." This lets you enforce a lower limit while the engine is still cold.

## Cut method

You choose whether the limiter cuts fuel, spark, or both:

- `cutFuelOnHardLimit` — cuts the fuel at the limit. From the firmware: "Cutting fuel provides a smoother limiting action; however, it may lead to slightly higher combustion chamber temperatures since unburned fuel is not present to cool the combustion process."
- `cutSparkOnHardLimit` — cuts the spark at the limit. From the firmware: "Cutting spark can produce flames from the exhaust due to unburned fuel igniting in the exhaust system."

Pick the method that suits your engine and goals.

> Set the RPM limit safely below the engine's mechanical limit, and confirm it actually engages (on a log, and safely) before relying on it.

## Related pages

- [Launch Control](HOWTO-Launch-Control) — uses its own launch RPM to hold engine speed off the line.
- [Ignition Modes](Ignition-Modes) — how spark is delivered.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `rpmHardLimit`, `cutFuelOnHardLimit`, `cutSparkOnHardLimit`, `useCltBasedRpmLimit`.
