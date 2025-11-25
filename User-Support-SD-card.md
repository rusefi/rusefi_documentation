# SD card

Many rusEFI units have on-board microSD card slot. Most boards access SD cards via SPI, technically some tiny percentage of SD cards do not support any more but that's really a tiny number see https://github.com/rusefi/rusefi/issues/1417

## Validation without vehicle power

* Windows 10 or Windows 11 is required, Windows 8 are older not supported for rusEFI Mass Storage Device.
* Ignition OFF or ECU not even hooked to vehicle.
* Give it 15 seconds while connected only to PC via USB.
* USB Drive expected. Could be another letter like D:\ or F:\ but it has to be in the list of drives.

![image](Images/sd_usb.png)

* In TS, two green icons are expected

![image](Images/TS/TunerStudio_sd_usb_2.png)
