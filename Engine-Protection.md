# Engine Protection

rusEFI can cut fuel, cut spark or hold RPM down when something looks dangerous. This page collects those protections in one place — what each one watches, and what it does when it acts.

None of this replaces a conservative tune. Protection is what catches the case you did not anticipate; it is not permission to lean on a map you have not checked.

## How a protection shows up

Every protection that stops the engine firing reports a **cut code**. That code is the ECU telling you which protection acted, and it is the fastest way to tell "the engine is broken" from "the engine is being protected".

Cut codes are visible in TunerStudio and in logs. The full list is on [Error Codes](Error-Codes); finding them in a log is covered by [Diagnostics and Logging](Diagnostics-and-Logging).

## The protections

### Rev limit

Cut code `HardLimit`. The headline limiter — see [Rev Limiter](Rev-Limiter) for the limit itself and whether it cuts spark, fuel or both.

### Overboost

Cut code `BoostCut`. Cuts when manifold pressure exceeds what you allowed. Configured alongside the rest of boost control — see [Boost Control](Boost-Control).

### Oil pressure

Cut code `OilPressure`. Controlled by `minOilPressureAfterStart`:

> *"Expected oil pressure after starting the engine. If oil pressure does not reach this level within 5 seconds of engine start, fuel will be cut. Set to 0 to disable and always allow starting."*

This is the protection most worth wiring up on any engine you care about, and it needs an [oil pressure sensor](Oil-Pressure-Sensor) to work.

### Lean protection

Cut code `LambdaProtection`. Watches measured lambda and acts if the engine goes lean when it is loaded up — the condition that melts pistons. It needs a working [wideband sensor](Wide-Band-Sensors).

It is deliberately hard to trigger by accident. The settings form three groups:

| Setting group | Purpose |
|---|---|
| `lambdaProtectionEnable` | Turns the whole feature on |
| `lambdaProtectionMinRpm`, `lambdaProtectionMinLoad`, `lambdaProtectionMinTps` | Arm it only above these — lean at idle or on overrun is not the dangerous case |
| `lambdaProtectionThreshold` | How lean is too lean |
| `lambdaProtectionTimeout` | *"Only respond once lambda is out of range for this period of time. Use to avoid transients triggering lambda protection when not needed"* |
| `lambdaProtectionRestoreRpm`, `lambdaProtectionRestoreLoad`, `lambdaProtectionRestoreTps` | Conditions for coming back out of protection |

The timeout matters. A momentary lean spike during a fast transient is normal; sustained lean under load is not, and the timeout is what separates the two.

### Injector duty cycle

Cut code `InjectorDutyCycle`. Injectors that never close cannot deliver more fuel, and an engine asking for more than the injectors can flow will go lean at the worst moment. There are two levels: `injectorDutyCycleWarning` raises a warning, and `injectorDutyCycleCritical` is where the engine is stopped.

If you are hitting these, the injectors are undersized for what the engine is now asking for — see [Fuel Overview](Fuel-Overview).

### Electronic throttle jam

Cut code `EtbJammedRevLimit`, described in firmware as *"means 1500 RPM limit in ETB jam was detected"*. Rather than cutting out entirely, rusEFI holds the engine to a low RPM so a jammed throttle cannot run away with the car. A separate `EtbProblem` cut code covers other throttle faults — see [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide).

### After a fatal error

Cut code `FatalErrorRevLimit`. A reduced RPM limit imposed after a firmware fatal error, so a controller that has already failed once cannot be revved hard.

### Knock

Knock is handled differently — instead of cutting, rusEFI retards timing and then restores it. That makes it a continuous correction rather than an on/off protection, so it has no cut code of its own. See [Knock Sensing](knock-sensing).

## Other cuts that are not protections

Several cut codes exist that are working as intended rather than protecting anything: `LaunchCut` for [launch control](HOWTO-Launch-Control), `FloodClear` while clearing a flooded engine, `IgnitionOff`, `Lua` when a script requests a cut, and `EnginePhase` when the ECU has not worked out crank position yet. Do not chase these as faults. [Error Codes](Error-Codes) lists all of them.

## Related pages

* [Error Codes](Error-Codes) — every cut code and what it means
* [Diagnostics and Logging](Diagnostics-and-Logging) — finding a cut in a log
* [Troubleshooting](Troubleshooting) — symptom-first help
* [Rev Limiter](Rev-Limiter), [Boost Control](Boost-Control), [Oil Pressure Sensor](Oil-Pressure-Sensor), [Knock Sensing](knock-sensing)
* [Ignition](Ignition) — why excessive advance is the underlying risk behind several of these

## Technical sources

Cut code names are the `ClearReason` enumeration in [`firmware/controllers/limp_manager.h`](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/limp_manager.h). Setting names and the quoted descriptions come from `firmware/integration/rusefi_config.txt` and the generated configuration headers in the same repository.
