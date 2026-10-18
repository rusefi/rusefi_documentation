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

## Injection timing reference

The **Injection Timing** table uses crankshaft degrees relative to each
cylinder's **compression TDC**, the top dead center between compression and
power strokes. **Zero is compression TDC, negative values are before it, and
positive values are after it.** The ECU applies each cylinder's firing-order
offset automatically.

In **Injection** settings, **Injection timing control mode** selects which
point of the nominal injector pulse follows the table:

| Timing control mode | Meaning of the table value |
| --- | --- |
| Start of injection | Pulse starts at this angle. |
| Center of injection | Pulse starts half a pulse duration before this angle. |
| End of injection | Pulse starts a full pulse duration before this angle. |

Check this setting when comparing tunes: a table value of zero places the
selected pulse point at compression TDC. For example, with a nominal pulse
lasting 60 crank degrees and a table value of `-250`, the start is `-250` in
Start mode, `-280` in Center mode, or `-310` in End mode. End and Center modes
move the start earlier as the calculated pulse duration grows.

On a four-stroke engine the cycle repeats every **720 crank degrees**. These
table values describe the following positions of the selected pulse point:

| Table value | Equivalent angle in the 0-720 cycle | Position |
| --- | --- | --- |
| `0` | `0` | Compression TDC |
| `-400` | `320` | 40 degrees before exhaust/intake TDC |
| `-360` or `+360` | `360` | Exhaust/intake TDC |
| `-250` | `470` | 110 degrees after exhaust/intake TDC, during the intake stroke |
| `+400` (equivalent to `-320`) | `400` | 40 degrees after exhaust/intake TDC |
| `-720` or `+720` | `0` | Same phase as compression TDC |

Increasing the table value moves the selected point later, with wraparound at
the cycle boundary. Spark timing depends on ignition advance. Intake-valve
opening and closing depend on the camshaft and VVT, so the examples above do
not imply that a valve is always open or closed at a particular table value.
They explain the coordinate system, not an optimum injection angle.

These are nominal commanded injector-pulse timings; injector dynamics and
fuel travel affect when fuel reaches the valve. The per-cylinder examples
assume synchronized **sequential** injection. Batch and simultaneous modes
group or repeat pulses, so they do not provide the same individual-cylinder
phasing.

The log field **Fuel: Injection timing SOI** (`injectionOffset`) reports the
calculated start angle, wrapped into the engine cycle. It can therefore differ
from the signed table value, especially in Center or End mode.

<!-- [tag:injection_timing_reference] Verified against rusEFI b566577a276 on 2026-10-16:
fuel_math.cpp::getInjectionOffset(), fuel_schedule.cpp::computeInjectionAngle(),
engine_math.cpp::getPerCylinderFiringOrderOffset(), and rusefi_config.txt.
The scheduling duration comes from engine2.cpp before per-event wall-wetting adjustment. -->

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
