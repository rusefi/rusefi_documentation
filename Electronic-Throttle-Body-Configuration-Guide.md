# Electronic Throttle Body Configuration Guide

***WARNING: An electronic throttle, if misconfigured or damaged, has the ability to open the throttle without your foot on the pedal, potentially leading to engine damage [or a crash](https://en.wikipedia.org/wiki/2009%E2%80%9311_Toyota_vehicle_recalls).  Proceed with caution!***

## Wiring

### Throttle Position Sensors

Electronic throttles always have two redundant throttle position signals (TPS).  The exact relationship between them is not restricted, but it is required that there are two signals present.

### Accelerator Pedal

Similar to TPS, accelerator pedals have two or three redundant position signals.  If you have three, leave one unconnected as rusEFI only requires two.

### Motor

rusEFI supports electronic throttles that use brushed DC motors.  This includes nearly all modern throttles, but excludes some very early ETB implementations (BMW, Toyota) that used a stepper motor instead.

Brushed DC motors have two wires.  When connected to power one way the throttle opens, and the other way it closes. The convention for wiring for ETBs with rusEFI is that when ETB+ is connected to battery+, and ETB- connected to battery-, the throttle should OPEN.  This generally agrees with the OEM wiring diagrams available for your vehicle.

Most throttles have one connector that contains both the position sensors and motor, but some use separate connectors. Electrically they are the same either way.

## Basic Setup

### Calibrate Sensors

#### Pedal position sensor

In TunerStudio, open the *"Accelerator pedal"* window from the *Sensors* menu.

1. Select the channels wired to your primary and secondary redundant pedal sensors.  Using both is a safety concern: this lets rusEFI detect a broken or shorted wire or failed sensor.
2. Restart the ECU: disconnect USB, and cycle the ignition off, then back on, and reconnect USB.
3. Ensure that both "Raw Pedal Primary" and "Raw Pedal Secondary" voltage gauges move smoothly as the pedal is depressed.
4. Record the primary/secondary voltages with your foot off the pedal in their respective "up voltage" fields.
5. Repeat with the pedal pressed all the way to the floor.
6. Press BURN, and ensure that the "Throttle pedal position" gauge moves smoothly to match the pedal's position.

#### Throttle position sensor

In TunerStudio, open the *"TPS"* window from the *Sensors* menu.

1. Remove intake plumbing such that you can see and touch the throttle plate in the throttle body to confirm proper operation.
2. Select the channels wired to your primary and secondary redundant throttle position sensors.  Using both is a safety concern: this lets rusEFI detect a broken or shorted wire or failed sensor.
3. Restart the ECU: disconnect USB, and cycle the ignition off, then back on, and reconnect USB.
4. Push the "auto calibrate ETB 1" button. The throttle should first OPEN, then CLOSE. If it does the inverse, your throttle motor is wired backwards, and ETB+ and ETB- wires must be physically swapped.
5. Press BURN. Ensure that the TPS gauge reads correctly for the full range of throttle positions.

Repeat this process for the second throttle, if present.

## Throttle Tuning

See [Tuning ETB PID - Forum](https://rusefi.com/forum/viewtopic.php?f=5&t=592&start=150#p32044)

[rusEFI ETB PID Autotune - Video](https://www.youtube.com/watch?v=USU0nnekokA)

### Autotune PID

rusEFI includes PID auto-tuning software that can help generate a starting point for your PID settings.  It is often good enough that no further tuning is required for good performance.

#### *Ensure the engine is off! Do not attempt to start the engine during this process!*

1. Ensure your electronic throttle roughly tracks the target position.  Speed or perfection is not required, but it should at least work. Confirm this by checking that the gauge "ETB position error" displays small values while moving the throttle around gently (a few percent is fine, so long as it trends towards zero if you stop moving).  If not, revisit the basic configuration steps above.
2. Press `Start ETB PID Autotune` button.  The throttle will begin oscillating around 50% position: this is normal.
3. Once the values in the `pFactor`/`iFactor`/`dFactor` fields have stabilized, auto-tune is complete.  Press `Stop ETB PID Autotune` to return to normal operation.  Press BURN to save the learned values.

*Note: to see additional detail about the autotuning process, the [debug mode](Debug-Mode) `ETB Autotune` and gauges Ku, Tu, Kp, Ki, Kd (in debug menu) (todo: add screenshot) may be interesting*

### Tune Bias Table

Also known as a "feed forward" term, bias curve serves to offset the throttle's return spring. The table stores how much PWM duty cycle is required to hold the throttle at that particular throttle position against the spring.  Since the spring pushes towards ~5-20%, the value will be negative when below the neutral point, and positive above it, transitioning steeply as it passes the neutral point of the spring.

We are interested in positions like 0, between-0-and-default, default, a bit open, a bit more open, 50% open, wide open,

### Configure Pedal Map

The pedal map allows you to configure how the electronic throttle's position responds to driver input on the accelerator pedal.  Since engines with electronic throttles often have oversized throttles (because they can), this table is required to make the accelerator less sensitive for small openings, as this hurts drivability.

This table is really one to tune to taste, since it has no bearing on actual engine performance, only on the relationship between driver input and resulting throttle position.


## Nope, nothing works

### Question: does blade even move?

If blade does not ever move time to grab a multimeter and confirm motor resistance, should be around 10 ohm

### Question: does TPS sensor function?

Move blade manually, do you see both raw TPS change reasonably?
