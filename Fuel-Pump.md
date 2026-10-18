# Fuel Pump

rusEFI supports a single relay, two staged relays, or PWM pressure control. Select the mode in **Setup → Fuel Pump Control**. The default is **Single relay**.

All modes use the same pump request: key-on priming for `startUpFuelPumpDuration`, followed by operation while trigger activity indicates that the engine is turning. After priming expires and the engine stops turning, both relays turn off and PWM duty becomes zero, even when a nonzero minimum active duty is configured.

## Wiring and setup

For relay modes, `fuelPumpPin` drives the primary relay coil. The relay contacts switch fused battery power to the pump. Dual mode uses a second relay on `fuelPump2Pin`. Set each output's polarity with its corresponding output-mode setting.

PWM mode uses `fuelPumpPin` to command a compatible pump controller or power driver. Use the frequency and polarity specified for that hardware; an ordinary mechanical relay is unsuitable for PWM. ECU outputs must not supply the pump motor's current directly.

Burn changes to mode, pins, polarity, or PWM frequency to apply them. Verify key-on priming, operation while cranking, and shutoff after the engine stops. The **Test Fuel Pump** button operates the primary output; automatic control yields during bench tests.

## Dual relay mode

The primary relay follows the normal pump request. The secondary relay engages only while the pump is requested and all three inputs **exceed** their activation settings:

- RPM: `secondaryFpActivationRpm`.
- Fueling load: `secondaryFpActivationLoad`. Speed Density uses MAP in kPa; other algorithms use their own fueling-load scale.
- TPS: `secondaryFpActivationTps`.

Once engaged, the secondary relay stays on until any input falls **below** its activation threshold minus its hysteresis. Invalid RPM, TPS, or load also releases the secondary relay. With the defaults, engagement requires more than 3000 RPM, 100 load, and 50% TPS; release occurs below 2500 RPM, 90 load, or 40% TPS. The second relay does not automatically prime alongside the first.

## PWM pressure control

Configure the existing low fuel-pressure sensor as described in [Fuel Pressure](Fuel-Pressure). The pressure target uses the same pressure reference as that sensor; the controller does not subtract manifold pressure automatically.

The controller combines two 4×4 tables:

- **Fuel Pressure Target:** target pressure in kPa versus RPM and fueling load.
- **Fuel Pump Base Duty:** feedforward duty versus RPM and target pressure.

With valid pressure feedback, PID adds a signed correction to the base duty. The PID minimum/maximum settings limit that correction, while **Minimum active duty** and **Maximum / prime duty** limit the final pump command. Separate integral limits bound the I term. Feedback runs at the fast-controller interval.

During key-on priming, the command is the configured maximum duty. If pressure feedback is missing or invalid, the controller resets feedback and uses the base-duty table. Tune that table for usable operation without feedback. The status panel shows requested duty, target/measured pressure, feedback activity, secondary relay state, and relief state.

Defaults are 100 Hz, a 350 kPa target, 50% base duty, and a 0–100% duty range. These are initial values to calibrate for the pump, driver, sensor, and fuel system.

### Low-demand pressure relief

The optional relief function is intended for returnless systems, where reducing pump output allows injector consumption to lower excess rail pressure. It does not operate a bleed valve.

Relief engages when injected fuel mass per cycle is below `fuelPumpReliefMaxInjectedMass` and pressure exceeds the target plus `fuelPumpReliefEngageOverpressure`. It holds the minimum active duty and resets PID while pressure falls. Feedback resumes at or below the target plus `fuelPumpReliefRecoverOverpressure`, or when fuel demand reaches the configured mass threshold. Set the recovery overpressure below the engagement overpressure. Disabling relief, losing the pressure signal, or ending the pump request also clears the relief latch.

## Related pages

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections)
- [Fuel System](Fuel-System)
- [Fuel Pressure](Fuel-Pressure)

## Technical sources

- `firmware/controllers/modules/fuel_pump/`: controller, settings, and table definitions.
- `unit_tests/tests/actuators/test_fuel_pump_pwm.cpp`: mode, feedback, relief, output, and reconfiguration coverage.
