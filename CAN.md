# Overview of CAN usage and IDs used by rusEFI

Note: We support OBD2 pretty much exclusively for gauges/dashes/apps/etc, not real diagnosis!

* rusEFI WBO two way communication [0xEF50000](https://github.com/mck1117/wideband/blob/master/for_rusefi/wideband_can.h) 0x190
* rusEFI WBO bootloader
* rusEFI gauge broadcast 0x200 default base see [DBC](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/can/rusEFI_CAN_verbose.dbc)
* rusEFI vehicle specific communication
* rusEFI ECU bootloader OpenBLT TX 667h, RX 7E1h
* rusEFI CAN GPIO
* rusEFI [TS over CAN](TS-over-CAN) 0x100 0x102
* rusEFI GDI comms [0xBB20 0xBB30](https://github.com/rusefi/libfirmware/blob/master/can/can_common.h)
* rusEFI bench test protocol 0x770000

## Software

[Man-in-the-middle](Man-in-the-middle)

## Hardware options

[PCAN-USB](https://www.peak-system.com/PCAN-USB.199.0.html) with some cable [https://www.peak-system.com/PCAN-Kabel-OBD-2.273.0.html](https://www.peak-system.com/PCAN-Cable-OBD-2.273.0.html) or [PCAN-Cable 3](https://www.peak-system.com/PCAN-Cable-3.290.0.html)

[fake looking like Vasya](https://rusefi.com/forum/viewtopic.php?f=13&t=2243)

[custom China](https://rusefi.com/forum/viewtopic.php?f=13&t=2209)

[Korlan instructions](https://rusefi.com/forum/viewtopic.php?p=43654#p43654)

FW images & legacy PCAN driver see <https://github.com/rusefi/rusefi_external_utils/tree/master/CAN>
