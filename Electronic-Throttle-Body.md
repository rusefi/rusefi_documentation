## _WARNING: An electronic throttle, if misconfigured or damaged, has the ability to open the throttle without your foot on the pedal, potentially leading to engine damage [or a crash](https://en.wikipedia.org/wiki/2009%E2%80%9311_Toyota_vehicle_recalls).  Proceed with caution!_

See also [Vault Of Electronic Throttle Bodies ETB](Vault-Of-Electronic-Throttle-Bodies-ETB)

rusEFI supports electronic throttle body control.  Also called drive by wire (DBW), there is no physical cable between the throttle pedal, or pedal position sensor (PPS), and the throttle. The PPS is only a sensor that measures how far depressed it is. The ECU interprets the information from the PPS, and converts it to a desired position for the throttle. The ECU then drives the throttle plate to the desired position and compares the throttle plate position using the throttle position sensor (TPS) to the desired position set by the PPS and makes adjustments as required.

There are several benefits by allowing the ECU to control the position of the throttle.

- Rev limiter by simply closing the throttle (not yet implemented)
- Superior idle control
- No need to route a cable to the throttle
- Programmable throttle target curve/nonlinearity to improve drivability with a large throttle on a small engine

# Configuration and Setup Guide

[See configuration guide here.](Electronic-Throttle-Body-Configuration-Guide)

# Theory of Operation

Electronic throttles typically consist of:

- A brushed DC motor.  Positive torque pushes the throttle open, and negative torque pushes the throttle closed.
- A TPS.  This is an angle sensor, commonly a potentiometer or hall sensor, which tells the ECU the actual position of the throttle. This is used as feedback to the ECU to accurately set and hold the throttle position.  
- A "limp home" return spring.  This spring holds the throttle position open slightly, commonly 5-25%, enough for a high idle. This allows the vehicle to "limp home" in the event the ECU can no longer operate the throttle.

rusEFI hardware and software have been designed to work with all three of these parts of the throttle.

- DC motor driver H-bridge(s) to control the motor.  An H-bridge can apply a variable voltage using PWM in either direction. Both directions are important to be able to open and close the throttle completely.
- Analog inputs and corresponding software to measure both the TPS and PPS.
- A control algorithm that uses a table to linearize the effects of the return spring and PID to move the throttle to the targeted position.

## Hardware Configuration

**If you have a pre-assembled board, ignore this section!  The default settings are correct.**

Different H-bridge chips are controlled differently. So far we have experienced three different ways:

### VNH2SP30

PWM on Control pin, two on/off direction pins are specifying direction.

### TLE9201

PWM on Control pin, open/close using one on/off direction pin, second direction pin unused.

### TLE7209 mode

PWM on both direction pins, one for forward another one for reverse.

TLE7209 is an example of two-wire mode.

# Pinouts

See [broken link](https://raw.githubusercontent.com/wiki/rusefi/rusefi_documentation/oem_docs/VAG/Bosch_0280750009_pinout.jpg) for
personal choice of colors for VAG ETB.
