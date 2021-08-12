This development board is PnP for NA6 and 94-95 Miatas.

[Download release firmware](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellenNA6.zip)
[Nightly firmware bundle](https://rusefi.com/build_server/rusefi_bundle_hellenNA6.zip)

[Pinout](https://rusefi.com/docs/pinouts/hellen/hellen64_miataNA6_94/)

[Issue tracker](https://github.com/rusefi/hellenNA6_issues)

[Schematic Rev A](Hardware/Hellen/hellen64_miataNA6_94-a-schematic.pdf)

[Schematic Rev B](Hardware/Hellen/hellen64_miataNA6_94-b-schematic.pdf)


[Mazda Miata 1990](Mazda-Miata-1990)

[Mazda Miata 1994](Mazda-Miata-1994)

## Hardware features

* knock detection module
* build-in WBO
* battery to keep real time clock running
* LPS25HB baro sensor
* QMA7981 accelerometer on rev A.
* LIS2DW12TR accelerometer on rev B

Rev A

![x](Hardware/Hellen/hellen64na6-a.jpg)

Rev B

![x](Hardware/Hellen/hellen64na6-b.jpg)

## Extension Pads (rev. b)

| Pin | Type | Comments |
|---|---|---|
||**Outputs**||
| P9 | PP | 1.5 A peak |
| P10 | PP | 1.5 A peak |
| P12 | Bridge driver A | 3 A peak |
| P11 | Bridge driver A | 3 A peak |
| P13 | Bridge driver B | 3 A peak |
| P14 | Bridge driver B | 3 A peak |
| P8 | Low side | 1.4 A |
| P15 | Low side | 1 A |
| P16 | Low side | 1 A |
| P17 | Low side (always hot) | 0.5 A |
| P18 | Low side | 0.5 A |
| P19 | Low side | 0.5 A |
| P20 | Low side | 0.5 A |
| P21 | Low side | 0.5 A |
| P22 | High side | 4 A |
| P23 | High side | 4 A |
| P24 | PP 5 V | 20 mA |
| P25 | PP 5 V | 20 mA |
| P29 | PP 5 V | 20 mA |
| P30 | PP 5 V | 20 mA |
| P31 | PP 5 V | 20 mA |
| P32 | PP 5 V | 20 mA |
|   | **Inputs** |   |
| P1 | Knock | |
| P26 | Discrete pull down | |
| P27 | Discrete pull down | | 
| P28 | Discrete pull down | |
| P33 | Analog pull up | |
| P34 | Analog pull up | |
| P35 | Analog pull down | |
| P36 | Analog pull up | |
| P37 | Analog pull up| |
| P38 | Analog pull down | |
| P39 | Analog pull down | |
| P40 | Analog pull up | |
| P41 | Analog pull up | |
| P42 | Discrete pull up | |
| P43 | Discrete pull down | | 
| P44 | Discrete pull up | |
| P45 | Discrete pull down | | 
|   | **MCU** |   |
| P3 | GPIO | | 
| P4 | GPIO | | 
| P5 | GPIO | | 
| P6 | GPIO | | 
| J4 | SPI, UART, I2C, GPIO | See silkscreen and schematic for details | 