Overview of CAN usage and IDs used by rusEFI


* rusEFI WBO two way communication 0xEF50000
* rusEFI WBO bootloader
* rusEFI gauge broadcast 0x200 default base see https://github.com/rusefi/rusefi/tree/master/firmware/controllers/can
* rusEFI vehicle specific communication 
* rusEFI ECU bootloader OpenBLT  TX 667h, RX 7E1h
* rusEFI CAN GPIO
* rusEFI [TS over CAN](TS-over-CAN) 0x100 0x102


# Hardware options

[fake looking like Vasya](https://rusefi.com/forum/viewtopic.php?f=13&t=2243)

[custom China](https://rusefi.com/forum/viewtopic.php?f=13&t=2209)

[Korlan instructions](https://rusefi.com/forum/viewtopic.php?p=43654#p43654)

FW images & legacy PCAN driver see https://github.com/rusefi/rusefi_external_utils/tree/master/CAN
