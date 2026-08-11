# Fuel System

The fuel system has one job: deliver enough fuel to the injectors, at a pressure rusEFI
knows about and can rely on. Both halves matter. A system that flows plenty but at an
unknown or unstable pressure will not fuel the engine correctly, because
[injector](Injectors) flow is only meaningful relative to the pressure across the injector.

This page is about the plumbing - pump, lines, regulator, filter - and how the choices you
make there show up in the ECU configuration. For rusEFI's control of the pump relay see
[Fuel Pump](Fuel-Pump); for reading pressure see [Fuel Pressure](Fuel-Pressure).

## Which fuel system did you build?

This is not a detail. The firmware asks you directly, because the regulator you fitted
determines whether injector flow is constant or has to be corrected. The setting is
`injectorCompensationMode`, and its options are written as descriptions of the plumbing:

| Option | The firmware's own wording |
| --- | --- |
| None | "I have a MAP-referenced fuel pressure regulator" |
| Fixed rail pressure | "I have an atmosphere-referenced fuel pressure regulator (returnless, typically)" |
| Sensed rail pressure | "I have a fuel pressure sensor" |
| HPFP fuel mass compensation | "manual mode for GDI engines" |

### Why the regulator choice matters

An injector's flow depends on the pressure **difference** across it - rail pressure minus
manifold pressure.

- A **MAP-referenced regulator** has a vacuum/boost line to the manifold, so it raises and
  lowers rail pressure to track manifold pressure. The difference across the injector stays
  constant, and the injector's rated flow stays true everywhere. Nothing needs correcting,
  which is why this option is "None".
- An **atmosphere-referenced regulator** - the usual returnless arrangement - holds rail
  pressure fixed against atmosphere. Now the differential falls as boost rises and grows
  under vacuum, so actual flow moves away from rated flow. rusEFI corrects for this, but it
  can only do so if you tell it that is what you built.
- A **fuel pressure sensor** lets rusEFI use the measured pressure rather than an assumed
  one. This is the option that copes with a system whose pressure is not perfectly behaved.

Whichever you choose, the reference pressure you enter for the injectors must be the
pressure their flow figure was measured at - see [Injectors](Injectors).

Staged systems configure the secondary set separately with
`secondaryInjectorCompensationMode`.

## Sizing the pump

Pumps do not have a single flow number. **A pump flows less as the pressure it works
against rises**, and it draws more current doing it. That has an awkward consequence on a
boosted engine with a MAP-referenced regulator: rail pressure rises with boost, so the pump
is delivering its *lowest* flow exactly when the engine is asking for its *most* fuel.

Size the supply side against the demand at peak load, not at idle, and remember the pump
has to feed the return line as well on a return-style system.

You do not have to guess whether you got it right:

- **Log fuel pressure at wide open throttle.** If rail pressure sags as load comes on, the
  supply side is the limit - the pump, a restriction, or a clogged filter. This is the
  single most useful thing a [fuel pressure sensor](Fuel-Pressure) buys you.
- **Watch for the injector duty cycle cut.** If rusEFI is cutting on `InjectorDutyCycle`,
  the injectors are out of capacity - see [Engine Protection](Engine-Protection#injector-duty-cycle).
  That is a different problem from a pressure sag, and the log will tell you which you have.

## Lines, filters and the return

- **Restriction costs pressure.** Long runs, tight bends, undersized line and a tired
  filter all show up as pressure lost between pump and rail. The rail is where pressure
  matters, so that is where it is worth measuring.
- **A return line carries real flow** on a return-style system - it is not a drain, and
  undersizing it makes the regulator unable to hold its setpoint.
- **Filters have a direction and a rating.** A coarse pre-filter ahead of the pump protects
  the pump; a fine filter after it protects the injectors. A partially blocked filter looks
  exactly like an undersized pump in a log.

## Fuel starvation

A pump that is not submerged in fuel pumps air. Under sustained cornering, hard braking or
a low tank, a poorly baffled tank or a badly placed pickup will uncover the pump - the log
shows a pressure drop with no corresponding change in demand. A surge tank or a properly
baffled tank exists to solve exactly this. It is worth ruling out before assuming the pump
is too small.

## Measuring pressure

If you fit a sensor, tell rusEFI what kind it is with `fuelPressureSensorMode`:

| Mode | The firmware's own wording |
| --- | --- |
| Absolute | "Sensor reads ~100 kPa (14.7 psi) with engine off and no fuel pressure." |
| Gauge | "Sensor reads 0 with engine off and no fuel pressure (most common standard 0-10 bar / 0-150 psi sensors)." |
| Differential | "Sensor is connected to intake manifold vacuum and measures pressure difference directly." |

Getting this wrong offsets every pressure reading by roughly one atmosphere, which is
enough to make fuelling corrections actively harmful. See [Fuel Pressure](Fuel-Pressure).

## Ethanol and E85

Ethanol needs considerably more fuel mass for the same air mass. The firmware states the
stoichiometric ratios directly, as guidance on `stoichRatioPrimary`:

> E0 = 14.7, E10 = 14.1, E85 = 9.9, E100 = 9.0

Comparing the E0 and E85 figures implies roughly **50% more fuel mass** on E85 for the same
air - *(this ratio is derived from the two firmware values above rather than stated in the
firmware, so treat it as an order of magnitude)*. That demand lands on both halves of the
system: injectors big enough to flow it, and a pump able to supply it. A fuel system sized
for pump gas is often not an E85 fuel system.

Ethanol is also harder on materials - hoses, seals and older tank coatings not rated for it
will degrade. If you are running a flex sensor rather than a fixed blend, see
[Flex Fuel](Flex-Fuel).

## Before the first start

- Pressurise the system with the pump priming and **look for leaks** with the engine not
  running. rusEFI primes at key-on - see [Fuel Pump](Fuel-Pump).
- Confirm the pump stops when the engine is not turning. That shutoff is a safety feature,
  not a convenience.
- Check your rail pressure matches the reference pressure you entered for the injectors.

## Related pages

- [Injectors](Injectors) - flow, reference pressure and dead time.
- [Fuel Pump](Fuel-Pump) - how rusEFI controls the pump relay, priming and safety shutoff.
- [Fuel Pressure](Fuel-Pressure) - fuel pressure sensors and pressure compensation.
- [Fuelling](Fuel-Overview) - how the required fuel mass is calculated.
- [Flex Fuel](Flex-Fuel) - running a flex sensor and variable ethanol content.
- [Engine Protection](Engine-Protection) - the injector duty cycle cut and other limits.
- [Converting from a Carburettor](how-to-convert-from-carburetor-to-EFI) - building a fuel system from scratch.

## Technical sources

- `firmware/integration/rusefi_config.txt` - `injectorCompensationMode` and
  `secondaryInjectorCompensationMode` (regulator type), `fuelPressureSensorMode`
  (Absolute / Gauge / Differential), `fuelReferencePressure`, `stoichRatioPrimary` and
  `stoichRatioSecondary` (the ethanol stoichiometric ratios quoted above), `flexSensorPin`.
