# rusEFI Calibration Via CAN

[youtube: It works](https://youtu.be/Mwgq26M5-JY)

## TL,DR

With all the electromagnetic interference around the gasoline engine due to sparking CAN physical layer provides the level of reliability above RS232 and USB physical layers.

rusEFI acts as a tranlator between either Linux SockerCAN or Windows PCAN and TunerStudio since as of March 2024 TunerStudio does not integrate with any CANbus dongle native.

[ISO 15765-2](PDFs/ISO-15765-2-2004.pdf), or ISO-TP (Transport Layer), helps us exchange up to 4096 packets into which we wrap TS protocol. See also [wikipedia](https://en.wikipedia.org/wiki/ISO_15765-2)

[https://github.com/rusefi/rusefi/tree/master/java_console/io/src/main/java/com/rusefi/io/can](https://github.com/rusefi/rusefi/tree/master/java_console/io/src/main/java/com/rusefi/io/can) folder has java implementation of ISO-TP packet encoding/decoding.

There is no standard way of communicating with CAN bus on Windows. At the moment rusEFI is focusing on [PCAN by Peak System](https://www.peak-system.com/) and ELM327 options of the Windows side of CAN.

## PCAN

It works! https://www.youtube.com/watch?v=Mwgq26M5-JY

Between three major professional CAN frontend vendors we like PCAN by [https://www.peak-system.com/](https://www.peak-system.com/) due to the combination of the following

1) documented Windows DLL drivers with official java wrappers called [PCAN-Basic API](https://www.peak-system.com/PCAN-Basic.239.0.html?&L=1)

2) [https://github.com/moonglow/pcan_cantact](https://github.com/moonglow/pcan_cantact) open source firmware for [cheeeeeeap third party devices](https://rusefi.com/forum/viewtopic.php?f=13&t=2243 )

rusEFI bridge between PCAN and ISO-TP is located at [https://github.com/rusefi/rusefi/tree/master/java_console/io/src/main/java/com/rusefi/io/stream](https://github.com/rusefi/rusefi/tree/master/java_console/io/src/main/java/com/rusefi/io/stream)

## ELM327

Could have should have worked, but it does not.

With more than a dozen magic commands it's possible to switch ELM327 device into binary transition with serial communication between calibration software and ELM327 acting as a bridge. At the moment we have a very odd bug making the overall solution not working as of Jan 2022.

See [https://canhacker.com/ch-obd-m02/](https://canhacker.com/ch-obd-m02/) for great pinout image. Yes both GND are needed for reliable ELM327 operation.

[IsoTp ISO 15765-2 in rusEFI - Forum](https://rusefi.com/forum/viewtopic.php?f=5&t=2233)
