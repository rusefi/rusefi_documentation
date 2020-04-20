# Electronic Throttle Body Configuration Guide

## Wiring

TODO

## Calibrate Sensors

### Pedal position sensor

TODO

### Throttle position sensor

Zero position requires you to push throttle closed. Full throttle requires you to push throttle open.

Neutral position is usually somewhere around 0-10%.

## Tune Bias Table

"Bias curve" is a curve of PWM duty cycle values which kind of get TPS close to desired value, for each of the 8 points on the curve.
It measures how much duty is required to hold the throttle at that spot.

The goal is that at position X, the bias will somewhat hold it there on it's own.

Bias is also known as feed-forward.

We are interested in positions like 0, between-0-and-default, default, a bit open, a bit more open, 50% open, wide open, 

Set P=I=D=0. Set curve to all zeros.

Now use offset (offset is same thing as constant bias) to manually control duty cycle. Try different values and see which offset sets throttle to closed, which offset
starts to open throttle, which offset is enough to open throttle completely.

## Tune PID

See https://rusefi.com/forum/viewtopic.php?f=5&t=592&start=150#p32044

https://www.youtube.com/watch?v=USU0nnekokA

### Start with autotune

rusEfi has auto-tuning software that can help generate a starting point for your PID settings.

### _Ensure the engine is off! Do not attempt to start the engine during this process!_

1. Ensure your electronic throttle roughly tracks the target position.  It doesn't have to be perfect or super fast, but it should at least work.  Confirm this by checking that the gauge "ETB position error" displays small values while moving the throttle around gently (a few percent is fine, so long as it trends towards zero if you stop moving).
2. Set [debug mode](Debug_Mode) to ETB autotune and add gauges Ku, Tu, Kp, Ki, Kd (in debug menu) (todo: add screenshot)
3. Using the accelerator pedal, hold the throttle at approximately 50% open.
4. Press `ETB PID Autotune` button.  The throttle will begin oscillating around the target: this is normal.
5. Observe the estimated PID parameters on gauges Kp, Ki, Kd

## Configure Pedal Map

The pedal map allows you to configure how the electronic throttle's position responds to driver input on the accelerator pedal.  Since engines with electronic throttles often have oversized throttles (because they can), this table is required to make the accelerator less sensitive for small openings, as this hurts drivability.

This table is really one to tune to taste, since it has no bearing on actual engine performance, only on the relationship between driver input and resulting throttle position.
