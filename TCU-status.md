# TCU Status

First we need to establish good terminology.

There are oldest transmission with external TCU, those are mostly controlled by on/off solenoids. We have some early prototype code to handle those, this is on a slow burner as of 2024.

We have tc_4l6x.cpp file but zero real life testing on any 4Lxx transmission. Rumors are that https://rusefi.com/forum/viewtopic.php?f=2&t=2744 with Ford 4R70W has moved under rusEFI TCU control.

![image](Images/TS/TunerStudio_TCU_menu.png)

## Modern Stuff

Then we have some complex transmissions with external TCU like Honda, or clutch-to-clutch like Aisin 09G/09M, and modern transmissions with TCU located inside the transmission assembly.

For those we are focusing on CAN integration only, not looking to re-invent the TCU itself. Even if someone implements direct solenoid/actuator control, we doubt that anyone within the enthusiast realm would be able to meaningfully tune such a solution anyway. CANbus integration with the OEM TCU is the only way for modern transmissions!

See also:

- [Sequential Transmission](Sequential-Transmission)
- [How To Make Your Own ECU Communicate with TCU](HOWTO-Make-Your-Own-ECU-Communicate-with-TCU)
- [NAG1---722.6](NAG1---722.6)
