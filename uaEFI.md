# Ultra Affordable EFI

## Shop

🟢[$175 base model rusEFI store](https://www.shop.rusefi.com/shop/p/uaefi-ultra-affordable-efi)🟢

## Community Support

🔴Community support ONLY 🔴 https://www.facebook.com/groups/rusEfi 🔴 [Discord](https://github.com/rusefi/rusefi/wiki/Discord)🔴

## Software

[uaEFI Stable Release](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_uaefi.zip) [uaEFI Latest Snapshot](https://rusefi.com/build_server/rusefi_bundle_uaefi.zip)

## Technical Details

[General rusEFI documentation](https://github.com/rusefi/rusefi/wiki/Support)

[uaEFI interactive pinout](https://rusefi.com/docs/pinouts/hellen/uaefi/)

[Schematics rev c](https://github.com/rusefi/uaefi/raw/main/boards/uaefi-c/board/uaefi-c-schematic.pdf)
[Schematics rev b](https://github.com/rusefi/uaefi/raw/main/boards/uaefi-b/board/uaefi-b-schematic.pdf)
[Schematics rev a](https://github.com/rusefi/uaefi/raw/main/boards/uaefi-a/board/uaefi-a-schematic.pdf)

[uaEFI schematics/PCB/gerbers](https://github.com/rusefi/uaefi)

[uaEFI interactive BOM rev D](https://rusefi.com/docs/ibom/uaefi-d-ibom.html) [uaEFI interactive BOM rev A](https://rusefi.com/docs/ibom/uaefi-a-ibom.html)

[WBO documentation](https://github.com/rusefi/rusefi/wiki/rusEFI-Wideband-Controller)

## Features

* sequential six smart coils with option of on-board igniters
* sequential six injector outputs
* two VRs: one MAX9924 one vr-discrete (Add R1 to switch MAX9924 into Hall mode)
* two hall inputs
* dual DC motor to drive dual DBW or ETB+wastegate or stepper idle
* on-board 4.9 LSU WBO controller
* on-board SD card
* up to two CAN buses
* on-board baro sensor
* four above 1A current low side outputs
* a couple of lower current low side outputs
* flex fuel input
* knock sensor input
* proto area
* 100x100mm 4 layer PCB
* expandable with on-board IGBT igniters
* expandable with on-board MAP sensor (MPX4250AP or smaller)
* expandable with on-board Bluetooth (JDY-33 would need to be soldered)
* expandable with on-board EGT input (MAX31855 and related passives would need to be soldered)
* on-board real time cr1220 clock battery (software broken https://github.com/rusefi/rusefi/issues/4556)

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

## External USB connector

USBBF7

## WBO Connector

![wideband_for_dummies](https://github.com/rusefi/rusefi_documentation/assets/82368250/3e5aca8a-62cf-4636-905c-cf79b18deef0)

## FAQ

Q: Can it do 8x8?

A: You would have to remove two flyback diodes to have 8 similar injector outputs. You would have to figure out a way to have 8 equal coil outputs, maybe settle on wasted spark?

Q: Do you have any dealer prices or discount for companies?

A: There is too little profit margin on these to offer discounts sorry.
PCB files are available for free you should be able to order your own, paid consulting is available on how to set things up with JLCPCB if you need help.

Q: How do I use uaEFI with dumb coils?

A: See notes on the schematics, it has part numbers to add and reference numbers to remove!

Q: How do I add bluetooth?

A: See https://github.com/rusefi/rusefi/wiki/Bluetooth#jdy

Q: Where do I buy igniters?

A: See https://www.findchips.com/search/ISL9V3040D for stock at distributors

Q: Stepper?

A: yes possible
![image](https://github.com/user-attachments/assets/c2d71f49-11ca-4bbf-a495-85875e6f8203)
