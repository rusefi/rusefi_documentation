
See https://rusefi.com/forum/viewtopic.php?f=5&t=592&start=150#p32044

tl;dr:

1) Zero out PID gains, adjust bias table to cancel out the spring

2) Tune PID


See also https://rusefi.com/s/debugmode/



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

### Start with autotune
