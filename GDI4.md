# GDI4

[[Get yours at rusEFI store]](https://www.shop.rusefi.com/shop/p/gdi4) [[Interactive Pinout]](https://rusefi.com/docs/pinouts/GDI4/)

[Issue Tracker](https://github.com/rusefi/rusefi-hardware/labels/GDI)  [Hardware & Firmware](https://github.com/rusefi/rusefi-hardware/tree/main/GDI-4ch/)

* 4 GDI injectors with peak-hold control using NXP PT2001 chip
* Aux analog inputs
* CAN connectivity
* Max boost voltage 72V
* Max peak 15A or a bit more
* Max hold 5A or a bit more
* Metal case
* open and short circuit software PENDING
* build around [MC33PT2001](https://www.nxp.com/docs/en/data-sheet/MC33PT2001_SDS.pdf) chip
* TC2030 and 0.1" SWD pinout
* UART 115200 baud

![x](Hardware/GDI/rusefi-gdi4-rev-a.jpg)

## Changelog

rev C:

* optional six channels
* Low-side 1 output moved to PB8 to free analog input.

rev B:

* rev A with [#101](https://github.com/rusefi/rusefi-hardware/issues/101) fixed

rev A:

* Arrived April 2022
* fully working but [soldering nightmare issue](https://github.com/rusefi/rusefi-hardware/issues/101)
