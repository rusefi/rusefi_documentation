# Grounding

Good grounding is one of the most important — and most often overlooked — parts of an EFI installation. Poor grounds are a common cause of electrical noise, erratic sensor readings, and trigger (RPM) errors. rusEFI installations use several kinds of ground, and keeping them separate matters.

> This page describes general grounding practice. For which specific pins carry which ground on your board, always follow your board's pinout.

## Types of ground

- **Sensor ground** — a clean, low-current reference for the sensors (temperature, TPS, MAP and other analog sensors, and often the trigger sensor return). Sensor grounds should return to the ECU's sensor-ground pin, not to a random chassis point. Sharing the sensor ground with high-current returns shifts the reference voltage and corrupts readings.
- **Power ground** — the high-current return for the ECU's output drivers (injectors, ignition coils, solenoids, relays). This carries real current and needs a solid, adequately-sized connection to battery negative or the engine block.
- **Chassis ground** — the vehicle body. Useful for shielding and bonding, but not a substitute for a proper power ground back to the battery or engine.

## Grounding practice

- Run the ECU's power grounds directly to a solid ground point (engine block or battery negative) with wire heavy enough for the current.
- Keep sensor grounds separate from power grounds — return sensor grounds to the ECU's sensor-ground pins so every sensor shares the same clean reference.
- Make sure the engine block is bonded to the battery negative and to the chassis with heavy straps. A missing or corroded engine-to-battery ground strap is a very common source of trouble.
- For shielded sensors (VR and knock), ground the shield at one end only — normally the ECU end — to avoid ground loops.

## Symptoms of a grounding problem

- Noisy or jumpy sensor readings (temperature, MAP, TPS).
- Trigger / RPM errors or lost sync, especially under load or with accessories switched on.
- Readings that change when other electrical loads turn on.

If you see these, check your grounds before chasing the sensor itself. See [Troubleshooting](Troubleshooting).

## Related pages

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — inputs, outputs, and the main relay.
- [Troubleshooting](Troubleshooting) — diagnosing noise and trigger problems.
