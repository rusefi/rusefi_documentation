# Ultra Affordable EFI

## Shop

🟢[$100 base model rusEFI store](https://www.shop.rusefi.com/shop/p/uaefi-ultra-affordable-efi)🟢

## Community Support

🔴Community support ONLY 🔴 https://www.facebook.com/groups/rusEfi 🔴 [Discord](https://github.com/rusefi/rusefi/wiki/Discord)🔴

## Software

[uaEFI Stable Release](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_uaefi.zip) [uaEFI Latest Snapshot](https://rusefi.com/build_server/rusefi_bundle_uaefi.zip)

## Technical Details

[General rusEFI documentation](https://github.com/rusefi/rusefi/wiki/Support)

[uaEFI interactive pinout](https://rusefi.com/docs/pinouts/hellen/uaefi/)

[uaEFI schematics/PCB/gerbers](https://github.com/rusefi/uaefi)

[uaEFI interactive BOM](https://rusefi.com/docs/ibom/uaefi-a-ibom.html)

[WBO documentation](https://github.com/rusefi/rusefi/wiki/rusEFI-Wideband-Controller)

## Features

* sequential six smart coils with option of on-board igniters
* sequential six injector outputs
* two VRs: one MAX9924 one vr-discrete, both with solder-blob jumper to modify into hall input
* two hall inputs
* dual DC motor to drive dual DWB or ETB+wastegate or stepper idle
* on-board 4.9 LSU WBO controller
* on-board SD card
* up to two CAN buses
* on-board baro sensor
* four above 1A current low side outputs
* a couple of lower current low side outputs
* flex fuel input
* knock sensor input
* on-board real time clock battery
* proto area
* 100x100mm 4 layer PCB
* expandable with on-board IGBT igniters
* expandable with on-board MAP sensor
* expandable with on-board Bluetooth (JDY-33 would need to be soldered)
* expandable with on-board EGT input (MAX31855 and related passives would need to be soldered)

![x](https://raw.githubusercontent.com/rusefi/uaefi/master/docs/uaefi-a-top.png)

![x](https://raw.githubusercontent.com/rusefi/uaefi/master/docs/uaefi-a-back.png)

## Harness Connectors

Molex Mini Fit Jr

* A 39012080 or 39012085
* B 39012180 or 39012185
* C 39012200 or 39012205
* D 39012160 or 39012165
* E 39012060 or 39012065

## PCB headers

* A 5569-08A2 39300080 39301080
* B 5569-18A2 39301180
* C 5569-20A2 39301200
* D 5569-16A2 39301160
* E 5569-06A2 39301060

## FAQ

Q: Can it do 8x8?

A: You would have to remove two flyback diodes to have 8 similar injector outputs. You would have to figure out a way to have 8 equal coil outputs, maybe settle on wasted spark?
