

TODO :)

See https://rusefi.com/forum/viewtopic.php?f=5&t=592&start=150#p32044

tl;dr:

1) Zero out PID gains, adjust bias table to cancel out the spring

2) Tune PID


See also https://rusefi.com/s/debugmode/


# H-bridge settings

Different H-bridge chips are controlled differently. So far we have experiences three different ways:

### VNH2SP30

PWM on Control pin, two on/off direction pins are specifying direction. 

### TLE9201
PWM on Control pin, open/close using one on/off direction pin, second direction pin unused.

### TLE7209 mode

PWM on both direction pins, one for forward another one for reverse.

Enable on/off pin should be controlled via FSIO.

TLE7209 is an example of two wire mode.