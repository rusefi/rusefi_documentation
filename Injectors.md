# Injectors

Injector data is the single most load-bearing calibration in a fuel setup. Everything the
fuel model calculates ends up as a pulse width sent to an injector, so if rusEFI has the
wrong idea about your injectors, every cell of your fuel table is wrong by the same factor
- and it will be wrong in the same direction everywhere, which makes it hard to spot by
tuning around it.

This page covers choosing injectors and telling rusEFI about them. For how the fuel mass
is calculated in the first place, see [Fuelling](Fuel-Overview).

## The three numbers that must agree

rusEFI needs your injector flow, the units that flow is in, and the pressure that flow was
measured at. They are separate settings and they must describe the same thing.

| Setting | What the firmware says |
| --- | --- |
| Injector flow | "This is your injector flow at the fuel pressure used in the vehicle. See units setting below" |
| `injectorFlowAsMassFlow` | "Select whether to configure injector flow in volumetric flow (default, cc/min) or mass flow (g/s)." |
| `fuelReferencePressure` | "This is the pressure at which your injector flow is known. For example if your injectors flow 400cc/min at 3.5 bar, enter 350kpa/50.7psi here. This is gauge pressure/in reference to atmospheric." |

**This is the most common way to get injectors wrong.** Injectors are advertised at a
rating pressure - 3 bar and 43.5 psi are the usual ones, and they are the same number in
different units. A set sold as "550cc" is 550cc *at its rating pressure*. If you run a
different fuel pressure, the flow is different, and rusEFI needs the pair of numbers that
belong together: the flow figure and the pressure it was measured at.

Note the firmware's wording: reference pressure is **gauge** pressure, relative to
atmosphere.

## Choosing injector size

There is no single right answer, and rusEFI does not prescribe one. What is useful is
knowing what each kind of wrong feels like.

**Too small** is the dangerous direction. As the engine asks for more fuel the injectors
approach 100% duty cycle, and an injector that never closes cannot flow any more fuel. The
engine goes lean exactly when it is under the most load. rusEFI will cut before that
becomes destructive - see [duty cycle limits](#duty-cycle-limits) below - but a cut at wide
open throttle is not a tuning strategy.

**Too big** is not free either. A very large injector spends its whole idle and cruise
life in short pulses, where injectors stop behaving linearly. That costs you resolution
and repeatability where the engine spends most of its time, and it is why the flow
linearization table below exists.

Set `isForcedInduction` - "Does the vehicle have a turbo or supercharger?" - honestly,
since a boosted engine's fuel demand is not related to displacement the way an atmospheric
one's is.

**The most practical sanity check** is other people's cars. Browse the
[rusEFI Online](Online) tune library for your engine code and see what injectors people
are actually running on a similar build - engine code, displacement, compression and
aspiration are all listed. See [Does This Come With a Base Map?](Basemap) for how to read
someone else's tune without inheriting their mistakes.

## Dead time

An injector does not open the instant it is commanded, and does not close the instant it
is released. The difference is dead time (also called injector lag), and rusEFI corrects
for it with `battLagCorrTable` - "ms delay between injector open and close dead times".

The table is two-dimensional: dead time is corrected against **battery voltage**
(`battLagCorrBattBins`, 8 breakpoints) and against **pressure**
(`battLagCorrPressBins`, "Injector correction pressure"). Voltage matters because a
solenoid opens more slowly on a weak supply; pressure matters because the fuel pressure
differential is what the injector is working against.

Dead time errors are easiest to spot when switching between injection modes - see
[Injector Lag Tuning](Injector-Lag-Autotune), which explains why batch mode exaggerates a
wrong lag value while sequential mode hides it.

## Small pulses

At very short pulse widths the delivered fuel stops being proportional to pulse width.
`useInjectorFlowLinearizationTable` enables a correction table, `injectorFlowLinearization`,
indexed by fuel mass and pressure, to describe that non-linear region. There are also
dedicated small-pulse settings for the Ford style of correction,
`fordInjectorSmallPulseBreakPoint` and `fordInjectorSmallPulseSlope`.

If your idle and light-cruise fuelling is inconsistent in a way that does not follow the
fuel table, this is a place to look - particularly with large injectors.

## Duty cycle limits

Three settings bound how hard the injectors may be worked:

| Setting | What the firmware says | Range |
| --- | --- | --- |
| `maxInjectorDutyInstant` | "This sets an immediate limit on injector duty cycle. If this threshold is reached, the system will immediately cut the injectors." | 50 - 200 % |
| `maxInjectorDutySustained` | "This limit allows injectors to operate up to the specified duty cycle percentage for a short period (as defined by the delay). After this delay, if the duty cycle remains above the limit, it will trigger a cut." | 50 - 120 % |
| `maxInjectorDutySustainedTimeout` | "Timeout period for duty cycle over the sustained limit to trigger duty cycle protection." | 0 - 5 s |

The resulting cut appears as the `InjectorDutyCycle` cut code - see
[Engine Protection](Engine-Protection#injector-duty-cycle) and [Error Codes](Error-Codes).
Hitting it repeatedly is the engine telling you the injectors are undersized for what it
is now being asked to do.

## Staged injection

A second set of injectors has its own flow and its own reference pressure
(`injectorSecondary`, `secondaryInjectorFuelReferencePressure`), because the secondaries
are frequently a different part running on the same rail. See
[Staged Injection](Staged-Injection).

## What the hardware requires

- **High impedance only.** rusEFI's injector drivers are saturated drivers for
  high-impedance (>8 ohm) injectors. Low-impedance injectors need a series ballast
  resistor per injector.
- **Low-side switching.** One injector terminal goes to switched 12 V, the other to the
  ECU output, which pulses it to ground. Flyback protection is on the board.
- **Any output drives any injector.** Firing order and phasing are set in software, so
  injector #1 on the connector does not have to be cylinder #1.

All three are covered in more detail under
[Fuel Injectors](FAQ-Basic-Wiring-and-Connections#fuel-injectors) in the wiring overview.
Verify each output with [Bench Testing](Bench-Testing) before the engine runs.

## Related pages

- [Fuelling](Fuel-Overview) - how the required fuel mass is calculated.
- [Injection Modes](Injection-Modes) - sequential, batch and single point.
- [Injector Lag Tuning](Injector-Lag-Autotune) - diagnosing a wrong dead time.
- [Staged Injection](Staged-Injection) - running a second set of injectors.
- [Fuel Pressure](Fuel-Pressure) - measuring and referencing fuel pressure.
- [Engine Protection](Engine-Protection) - the duty cycle cut and the rest of the limits.
- [Basic Injector Wiring](FAQ-Basic-Wiring-and-Connections#fuel-injectors) - impedance, wiring and drivers.

## Technical sources

- `firmware/integration/rusefi_config.txt` - `injector_s` (flow, `battLagCorrBattBins`,
  `battLagCorrPressBins`, `battLagCorrTable`), `injectorFlowAsMassFlow`,
  `fuelReferencePressure`, `secondaryInjectorFuelReferencePressure`,
  `useInjectorFlowLinearizationTable`, `injectorFlowLinearization`,
  `fordInjectorSmallPulseBreakPoint`, `fordInjectorSmallPulseSlope`,
  `maxInjectorDutyInstant`, `maxInjectorDutySustained`,
  `maxInjectorDutySustainedTimeout`, `isForcedInduction`.
