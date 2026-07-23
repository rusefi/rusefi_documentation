# Injection Modes

rusEFI can fire the fuel injectors in several different ways, selected by the `injectionMode` setting. This controls how the ECU groups and times the injector outputs. Choose the mode that matches your injectors and what your trigger setup can support.

## Available modes

The `injectionMode` setting offers these options (labels as shown in TunerStudio):

### Simultaneous

All injectors open at the same time. This is the simplest arrangement and does not require the ECU to know which cylinder is on its intake stroke.

### Batch

Injectors fire in groups (banks) rather than individually, typically delivering fuel more than once per engine cycle. Batch injection does not require a camshaft (phase) signal, which makes it a common choice when only a crankshaft signal is available.

### Sequential

Each injector is fired individually, timed to its own cylinder's cycle. Sequential injection needs **camshaft synchronization** so the firmware knows each cylinder's position in the four-stroke cycle. This is the mode to use for fully sequential fuelling.

### Single Point

A single injector (or a small number of injectors) mounted at a central location, such as a throttle body, feeds all cylinders — the arrangement used by throttle-body injection (TBI) systems.

## Choosing a mode

- Match the mode to your injectors and manifold. Sequential requires one injector per cylinder and a cam signal; batch and simultaneous can run from a crank signal alone.
- Wire each injector output according to your board's pinout — see the [injector wiring section](FAQ-Basic-Wiring-and-Connections#fuel-injectors).
- To add a second set of injectors that stage in at higher demand, see [Staged Injection](Staged-Injection).
- After setup, verify fuelling on a live [log](Logging-Guide) across the RPM and load range.

## Related pages

- [Fuel Overview](Fuel-Overview) — how rusEFI calculates fuel.
- [Staged Injection](Staged-Injection) — using primary plus secondary injector sets.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — injector wiring.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` (`injectionMode`, enum `injection_mode_e`).
