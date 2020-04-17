
# Electronic Throttle Body (ETB)


## _WARNING: An electronic throttle, if misconfigured or damaged, has the ability to open the throttle without your foot on the pedal, potentially leading to engine damage [or a crash](https://en.wikipedia.org/wiki/2009%E2%80%9311_Toyota_vehicle_recalls).  Proceed with caution!_

rusEfi supports controlling an electronic throttle body.  Also called "drive by wire", this means there's no physical cable between your foot and the throttle.  Your foot presses on a pedal without a cable, just a sensor.  The ECU interprets this information, and converts it to a desired position for the throttle, and then works to drive the throttle plate to the desired position.

This offers a number of benefits:

- Rev limiter by simply closing the throttle (not yet implemented)
- Superior idle control
- No need to route a cable to the throttle
- Programmable throttle target curve/nonlinearity to improve drivability with a large throttle on a small engine

## Theory of Operation

Electronic throttles typically consist of:
- A brushed DC motor.  Positive torque pushes the throttle open, and negative torque pushes the throttle closed.
- A position sensor.  This tells the ECU the true position of the throttle, so that the ECU can use the motor to hold it where we want it.  This is a potentiometer or hall effect angle sensor, depending on the throttle, though they both function the same.
- A "limp home" return spring.  This spring pushes the throttle plate back towards a position that's nearly closed, approximatly the correct amount of air for idle (generally 3-10% open).

rusEfi hardware and software have components to deal with all three of these parts of the throttle.
- DC motor driver H-bridge(s) to control the motor.  An H-bridge can apply a variable voltage (via PWM) in either direction to the motor.
- Analog inputs and corresponding software to detect the position of the throttle and accelerator pedal.
- A control algorithm that uses a table to linearize the return spring, and PID to move the throttle to the targeted position.

## Configuration & Tuning

[See configuration guide here.](HOWTO_electronic_throttle_body_configuration)

## Hardware Configuration

**If you have a pre-assembled board, ignore this section!  The default settings are correct.**

Different H-bridge chips are controlled differently. So far we have experiences three different ways:

### VNH2SP30

PWM on Control pin, two on/off direction pins are specifying direction. 

### TLE9201
PWM on Control pin, open/close using one on/off direction pin, second direction pin unused.

### TLE7209 mode

PWM on both direction pins, one for forward another one for reverse.

Enable on/off pin should be controlled via FSIO.

TLE7209 is an example of two wire mode.

# Pinouts

See https://raw.githubusercontent.com/wiki/rusefi/rusefi_documentation/oem_docs/VAG/Bosch_0280750009_pinout.jpg for
personal choice of colors for VAG ETB.