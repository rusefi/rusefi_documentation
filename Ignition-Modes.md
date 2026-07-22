# Ignition Modes

rusEFI can drive several different ignition output arrangements, selected by the `ignitionMode` setting. This controls how the ECU's ignition outputs map to the engine's coils. Choose the mode that matches the coils and igniters physically fitted to your engine.

## Available modes

The `ignitionMode` setting offers these options (labels as shown in TunerStudio):

### Single Coil

A single ignition coil feeds all cylinders through a mechanical **distributor**. The firmware describes this option as "Single coil = distributor". Only one ignition output is used.

### Wasted Spark

One coil serves a **pair of cylinders**, firing both at the same time — one cylinder near the end of its compression stroke and its partner on its exhaust stroke. The spark on the exhaust-stroke cylinder does no work, which is where the name "wasted spark" comes from. Wasted spark does not require a camshaft (phase) signal.

### Individual Coils (Sequential)

**One coil per cylinder** (coil-on-plug). When the engine has camshaft synchronization, rusEFI can fire each coil sequentially at the correct point in that cylinder's cycle. This is the mode to use for fully sequential ignition.

### Two Distributors

Two coils, each feeding its own distributor. This is used on engines that were built with two distributors.

## Choosing and wiring a mode

- Select the mode that matches your physical coils/igniters, and connect each ignition output to its coil or igniter driver. See the [Ignition FAQ](FAQ-Ignition) and [ignition wiring](FAQ-Basic-Wiring-and-Connections#coils).
- Sequential ignition (Individual Coils) needs a camshaft signal so the firmware knows which cylinder is on its compression stroke.

> ⚠️ **Verify timing after any change.** After selecting an ignition mode and wiring the coils, confirm ignition timing with a timing light before running the engine under load — incorrect timing can damage an engine. See [Setting Trigger Offset](How-Do-I-Set-My-Trigger-Offset).

## Related pages

- [Ignition FAQ](FAQ-Ignition)
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections)
- [Multi-Spark](Multi-Spark) — firing the coil multiple times per event at low RPM.
- [Setting Trigger Offset](How-Do-I-Set-My-Trigger-Offset)

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` (`ignitionMode`, enum `ignition_mode_e`).
