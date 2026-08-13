# rusEFI Console - Overview

rusEFI updater, previously known as rusEFI Console is a PC application to update rusEFI firmware and calibrations.

* If you don't already have the Dev Console, get it [🆕rusEFI_Universal_Updater🆕](https://rusefi.com/installer/rusEFI_Universal_Updater.exe)

At this point, the Console should be up and running. Play around with it and see what you can learn. Also note that it has some functionality as listed below.

* If used together with the built-in position sensor emulator, the console allows some level of testing on the bench, without a real engine or any additional hardware. The most useful feature is the plain signal sniffer - both real inputs and generated signals can go into it and this is actually quite handy. Another useful feature is the text log.
* You can use the console to invoke rusEFI commands and control the internal flow using the 'Messages Central' tab
![Messages Central](Images/rusEFI_console/messages_central.png)

## Gauges

![Console Gauges](Images/rusEFI_console/java_console_1.png)

## Digital Chart

![Log Viewer](Images/rusEFI_console/log_viewer.png)

The green line is the border of an engine cycle. Please note that the angle within the current engine cycle is displayed in the bottom left corner - the angle is from 0 to 720 in case of a four stroke engine.

The red line is the absolute time scale - one line every 20 ms.
