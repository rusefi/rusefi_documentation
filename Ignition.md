# Ignition

The ignition system decides two things for every power stroke: **when** to fire the spark, and **how long** to charge the coil before firing it. Timing is the "when", dwell is the "how long".

This page covers those two, plus the corrections applied on top. For how coils are wired and fired, see [Ignition Modes](Ignition-Modes); for coil and igniter hardware, see the [Ignition FAQ](FAQ-Ignition).

## Timing advance

Timing is controlled by a single 16x16 table based on RPM and engine load, with 3D interpolation. Values are ignition advance in degrees before top dead center (BTDC) — a larger number fires the spark earlier.

Two situations use their own timing rather than the main table:

- **Idle.** `useSeparateAdvanceForIdle` — *"This activates a separate ignition timing table for idle conditions"*. Idle often wants different advance than the main table would give at the same RPM and load, and a separate table lets idle speed be stabilised with timing.
- **Cranking.** `crankingTimingAngle` — *"Ignition advance angle used during engine cranking, 5-10 degrees will work as a base setting for most engines"*. Whether the usual corrections also apply while cranking is controlled by `useAdvanceCorrectionsForCranking` — *"This enables the various ignition corrections during cranking"*. Cranking behaviour is covered in more detail on the [Cranking](Cranking) page.

## Corrections

On top of the main table, rusEFI applies coolant temperature (CLT) and intake air temperature (IAT) based timing correction tables. These trim advance for conditions the main table does not know about — for example pulling timing when intake air is hot and the engine is more prone to knock.

## Dwell

Dwell is how long the coil is charged before the spark fires, in milliseconds. Too little dwell gives a weak spark; too much wastes energy and overheats the coil.

While running, dwell is controlled by a curve by RPM. The curve has eight points (`DWELL_CURVE_SIZE`).

Cranking uses its own value rather than the curve: `ignitionDwellForCrankingMs` — *"Dwell duration while cranking"*, in milliseconds.

## Getting the timing reference right

Everything above assumes rusEFI knows where the crankshaft actually is. That reference comes from the trigger, via `globalTriggerAngleOffset` — *"Angle between Top Dead Center (TDC) and the first trigger event."*

If this offset is wrong, every number in the timing table is wrong by the same amount, and the engine may run poorly or not at all even though the tables look sensible.

> **Verify your timing with a timing light before tuning anything else.** See [How Do I Set My Trigger Offset](How-Do-I-Set-My-Trigger-Offset) and the [Trigger Configuration Guide](Trigger-Configuration-Guide).

## When timing is wrong

Excessive advance causes knock (detonation), which can destroy an engine quickly and at any RPM. rusEFI can detect it on boards with a knock input — see [Knock Sensing](knock-sensing). Knock detection is a safety net, not a substitute for a conservative timing map and a timing light.

## Related pages

* [Ignition Modes](Ignition-Modes) — single coil, wasted spark, sequential, two distributors
* [Multispark Ignition](Multi-Spark) — firing more than once per power stroke
* [Knock Sensing](knock-sensing) — detecting and responding to detonation
* [Rev Limiter](Rev-Limiter) — cutting spark or fuel at the RPM limit
* [Ignition FAQ](FAQ-Ignition) — coils, igniters and what hardware to buy
* [Vault of Ignition Parts](Vault-Of-Ignition-Parts) — tested coils, modules and IGBTs
* [Master list of Ignition pages](Pages-Ignition)

## Technical sources

Field names and quoted descriptions are taken from `firmware/integration/rusefi_config.txt` in the [rusEFI firmware](https://github.com/rusefi/rusefi): `crankingTimingAngle`, `useSeparateAdvanceForIdle`, `useAdvanceCorrectionsForCranking`, `ignitionDwellForCrankingMs`, `globalTriggerAngleOffset`, and `DWELL_CURVE_SIZE`.
