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

### Rough sizing figures

These are **planning estimates, not a specification.** They exist so you can tell whether
you are in the right order of magnitude before buying, and they are only as good as the
assumptions listed under them.

Fuel flow per injector converts to mass flow as `cc/min x 0.0986 = lb/hr` for gasoline
(that is, cc/min divided by about 10.15). Supportable power is then that mass flow,
multiplied by a duty-cycle allowance, divided by [BSFC](#the-assumptions-behind-those-numbers).

Crank horsepower supported **per injector** at 85% duty cycle:

| Injector | Gasoline, NA | Gasoline, boosted | E85 | Methanol |
| ---: | ---: | ---: | ---: | ---: |
| 250 cc/min | 40 | 35 | 25 | 15 |
| 440 cc/min | 75 | 60 | 45 | 30 |
| 550 cc/min | 90 | 75 | 55 | 35 |
| 750 cc/min | 125 | 105 | 80 | 50 |
| 1000 cc/min | 170 | 140 | 105 | 65 |
| 1300 cc/min | 220 | 180 | 135 | 85 |
| 2000 cc/min | 335 | 280 | 205 | 135 |

Multiply by your cylinder count for a one-injector-per-cylinder setup. Four 550 cc/min
injectors on a boosted engine come out around 300 hp by this table, or around 370 hp on the
naturally aspirated column.

### The assumptions behind those numbers

- **BSFC** (brake specific fuel consumption, lb of fuel per hp per hour) of **0.50 naturally
  aspirated** and **0.60 boosted** on gasoline. This is the assumption that moves the answer
  most: changing BSFC by 0.05 moves the result about 10%. Published injector charts commonly
  assume something nearer 0.45-0.50, which is why they quote larger numbers than the boosted
  column here - the same four 550 cc/min injectors come out at 409 hp at BSFC 0.45 and 307 hp
  at 0.60.
- **85% duty cycle**, leaving headroom below the [duty cycle limits](#duty-cycle-limits).
- **Gasoline density 0.745 kg/L.**
- **Crank horsepower**, not wheel horsepower.
- Injector flow is taken **at your actual fuel pressure**, not the advertised rating - see
  [the reference pressure section above](#the-three-numbers-that-must-agree).

The alcohol columns divide the boosted gasoline figure by a fuel factor - about **1.35 for
E85** and **2.1 for methanol**. Those factors are derived rather than quoted; the derivation
and its uncertainty are set out under
[fuel type and flow demand](Fuel-System#fuel-type-and-flow-demand) on the Fuel System page.
Alcohol fuels are also frequently run richer than stoichiometric for charge cooling, which
pushes real demand above these figures.

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
