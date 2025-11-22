# uaEFI (Ultra Affordable EFI)

Most ECU features in this price category available at [💲rusEFI store💲](https://www.shop.rusefi.com/shop/p/uaefi-ultra-affordable-efi)

🔴 Community support ONLY 🔴 [Support Statement](Support) 🔴 [Facebook group](https://www.facebook.com/groups/rusEfi) 🔴 [Discord](Discord) 🔴

[New to rusEFI start here](Home)

[uaEFI Release Software](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_uaefi.zip)
[uaEFI Beta Snapshot](https://rusefi.com/build_server/rusefi_bundle_uaefi.zip)
[Release vs Snapshot](Release-Snapshot-Latest-firmware)

[uaEFI PRO Release Software](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_uaefi_pro.zip)
[uaEFI PRO Beta Snapshot](https://rusefi.com/build_server/rusefi_bundle_uaefi_pro.zip)

## Specs

* [⏩ Interactive Pinout ⏪](https://rusefi.com/docs/pinouts/hellen/uaefi/)
* One of the eight [universal units we offer](Hardware)
* sequential six smart coils with option of on-board igniters
* sequential six injector outputs for more complex engines
* capable of driving 8 sequential injector outputs on simpler engines
* four above 1A current low side outputs (six on new revisions)
* a couple of lower current low side outputs
* two VRs: one MAX9924 one vr-discrete (Add R1 to switch MAX9924 into Hall mode)
* three hall inputs
* two DC motor drivers up to 6A. Can drive two ETBs or ETB + electronic wastegate or stepper idle
* on-board 4.9 LSU WBO controller
* on-board SD card
* up to two CAN buses
* on-board digital baro sensor
* 9+2 analog inputs
* flex fuel input
* knock sensor input
* proto area
* 100x100mm 4 layer PCB
* expandable with on-board IGBT igniters
* expandable with on-board MAP sensor (MPX4250AP or smaller)
* expandable with on-board Bluetooth (JDY-33 would need to be soldered)
* expandable with on-board EGT input (MAX31855 and related passives would need to be soldered)
* expandable with second CAN bus (TJA1051T and related passives would need to be soldered)
* on-board real time cr1220 clock battery (software broken https://github.com/rusefi/rusefi/issues/4556)
* PRO comes with extra memory for Lua and more powerfull MCU

## Technical Details

[General rusEFI documentation](Support)

[Schematics and fab files](https://github.com/rusefi/uaefi/tree/main/boards)

[uaEFI schematics/PCB/gerbers](https://github.com/rusefi/uaefi)

[uaEFI interactive BOM rev D](https://rusefi.com/docs/ibom/uaefi-d-ibom.html) [uaEFI interactive BOM rev A](https://rusefi.com/docs/ibom/uaefi-a-ibom.html)

[WBO documentation](rusEFI-Wideband-Controller)

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

<img width="232" height="126" alt="image" src="https://github.com/user-attachments/assets/6413966a-198a-4398-b26e-2d60a2e1ef76" />

![wideband_for_dummies](https://github.com/rusefi/rusefi_documentation/assets/82368250/3e5aca8a-62cf-4636-905c-cf79b18deef0)

## Adapters

Want to make an adapter? See https://github.com/rusefi/uaefi-NA6-adapter

## FAQ

Q: How do I order from Europe?

A: https://shop.rusefi.com is the only official store, there are no distributors for this ultra affordable unit.

Q: Can it do 8x8?

A: You would have to remove two flyback diodes to have 8 similar injector outputs. You would have to figure out a way to have 8 equal coil outputs, maybe settle on wasted spark?

### Q: what's the difference between normal and PRO?

A: 97% of users should go with Normal. PRO can do much more complex Lua scripts.

Q: Do you have any dealer prices or discount for companies?

A: There is too little profit margin on these to offer discounts sorry.
PCB files are available for free you should be able to order your own, paid consulting is available on how to set things up with JLCPCB if you need help.

Q: How do I use uaEFI with dumb coils?

A: See notes on the schematics, it has part numbers to add and reference numbers to remove!

Q: Would it run v12?

A: definitely would idle v12, not sure if thermal would be a problem at higher RPM with two injectors per channel

Q: How do I add bluetooth?

A: See [Bluetooth](Bluetooth#jdy)

Q: Where do I buy igniters?

A: See https://www.findchips.com/search/ISL9V3040D for stock at distributors

Q: Stepper?

A: yes possible
![image](https://github.com/user-attachments/assets/c2d71f49-11ca-4bbf-a495-85875e6f8203)

🔴 [Commercial Support](https://www.shop.rusefi.com/shop/p/details-about-rusefi-ecu-technical-support) 🔴
