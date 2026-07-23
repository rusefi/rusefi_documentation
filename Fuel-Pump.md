# Fuel Pump

rusEFI controls the fuel pump through a relay. It primes the fuel system at key-on, keeps the pump running while the engine is turning, and — importantly for safety — shuts the pump off when the engine stops.

## How rusEFI controls the pump

- **Prime at key-on:** when rusEFI detects ignition voltage it runs the pump briefly to build fuel pressure before cranking. The duration is `startUpFuelPumpDuration`, described in the firmware as "on IGN voltage detection turn fuel pump on to build fuel pressure" (seconds).
- **Running:** the pump stays on while the engine is cranking or running.
- **Safety shutoff:** if the engine is not turning (for example after a stall or a crash), rusEFI turns the pump off, so it does not keep pushing fuel with the engine stopped.

## Wiring

A fuel pump draws too much current to switch directly from an ECU output, so it is switched through a **relay**:

- `fuelPumpPin` (with `fuelPumpPinMode`) is a low-side output that energizes the fuel pump relay coil.
- The relay's contacts switch fused battery power to the fuel pump itself.

Select the output pin for the pump relay in TunerStudio, then verify that the pump primes for a moment at key-on and stops shortly afterwards if the engine does not start.

## Related pages

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — outputs and the main relay.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `fuelPumpPin`, `fuelPumpPinMode`, `startUpFuelPumpDuration` ("on IGN voltage detection turn fuel pump on to build fuel pressure", seconds).
