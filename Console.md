# rusEFI Console - Overview

rusEFI updater, previously known as rusEFI Console is a PC application to update rusEFI firmware and calibrations.

* If you don't already have the Dev Console, get it [🆕rusEFI_Universal_Updater🆕](https://rusefi.com/installer/rusEFI_Universal_Updater.exe)

At this point, the Console should be up and running. Play around with it and see what you can learn. Also note that it has some functionality as listed below.

* If used together with the built-in position sensor emulator, the console allows some level of testing on the bench, without a real engine or any additional hardware. The most useful feature is the plain signal sniffer - both real inputs and generated signals can go into it and this is actually quite handy. Another useful feature is the text log.
* You can use the console to invoke rusEFI commands and control the internal flow using the 'Messages Central' tab
![Messages Central](Images/rusEFI_console/messages_central.png)

## Gauges

![Console Gauges](Images/rusEFI_console/java_console_1.png)

## Configuration errors

When the Config Error indicator is active, the console retrieves the ECU's explanation and displays it in an overlay on any tab. Click Close to dismiss the overlay and correct the tune. Closing it does not clear the ECU error. The same message stays dismissed until the error clears and returns or the ECU reconnects; a different error message is displayed again.

## Digital Chart

![Log Viewer](Images/rusEFI_console/log_viewer.png)

The green line is the border of an engine cycle. Please note that the angle within the current engine cycle is displayed in the bottom left corner - the angle is from 0 to 720 in case of a four stroke engine.

The red line is the absolute time scale - one line every 20 ms.

## Binary logging

Use **Binary Logging > Start** to choose a `.mlg` data log and **Stop** to finish recording.

The **Save tune** checkbox beside Start/Stop is checked by default. When checked, the console reads a fresh ECU tune before recording and saves it in the same folder as the data log, using the computer's local date: `YYYY-MM-DD.msq`. An unchanged tune reuses the existing file; changed tunes use `_1`, `_2`, and so on. Existing tune files are preserved. Uncheck **Save tune** before starting to record only the data log.

Tune capture runs in the background. Stop or disconnect cancels a pending start. If the tune cannot be read or saved, the console reports the error and does not start data logging. The snapshot represents the tune at recording start; later tune edits are captured when the next recording starts.
