# TCU Status

First we need to establish good terminology.

There are older transmissions with an external TCU, which are mostly controlled by on/off solenoids. We have some early prototype code to handle these, but development is not active as transmission control is not a priority.

[A Ford 4R70W](https://rusefi.com/forum/viewtopic.php?f=2&t=2744) has driven under rusEFI TCU control.

We have code for GM 4Lxx transmissions, but zero real life testing.

![image](Images/TS/TunerStudio_TCU_menu.png)

## Modern Stuff

Modern transmissions use clutch-to-clutch control, which means that one clutch is engaging as another is disengaging.

Some of these transmissions use an external TCU, some use a TCU built into the transmission, and some are controlled by the ECU.

For those we are focusing on CAN integration only, not looking to re-invent the TCU itself. Even if someone implements direct solenoid/actuator control, we doubt that anyone within the enthusiast realm would be able to meaningfully tune such a solution anyway. CAN bus integration with the OEM TCU is the only way for modern transmissions!

See also:

- [Sequential Transmission](Sequential-Transmission)
- [How To Make Your Own ECU Communicate with TCU](HOWTO-Make-Your-Own-ECU-Communicate-with-TCU)
- [NAG1---722.6](NAG1---722.6)
- [How To TCU A42DE on Proteus](HOWTO-TCU-A42DE-on-Proteus)
