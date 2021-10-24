<a href="https://www.ebay.com/itm/334094173341"><img src="Images/ebay_gen_button.gif"></a>

This development board is PnP for Mercedes with the 128 Pin ECU (M111 and M113 engine; late 90s-early 2000s. confirm your ECU)

[[Download release firmware]](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen128.zip)
[[Snapshot firmware bundle]](https://rusefi.com/build_server/rusefi_bundle_hellen128.zip)

[Ebay]()

[Pinout](https://rusefi.com/docs/pinouts/hellen/hellen128/) & [Google Sheet](https://docs.google.com/spreadsheets/d/1I-lZKRajTiEGFUXdZpXEtKF2pymlOo-lPahy3cLMnl4) & [Another Google Sheet](https://docs.google.com/spreadsheets/d/1JgGFJ8AggBFiKT_CQ1D6uYhaIsqeiH9RerxuVy1kp4Y/)

[[Issue Tracker]](https://github.com/rusefi/hellen128merc-issues/issues)

[[Schematics rev a]](Hardware/Hellen/hellen128mercedes-a-schematic.pdf)[[iBom rev a]](https://rusefi.com/docs/ibom/hellen128mercedes-a-ibom.html)

[[Schematics rev b]](Hardware/Hellen/hellen128mercedes-b-schematic.pdf)[[iBom rev b]](https://rusefi.com/docs/ibom/hellen128mercedes-b-ibom.html)

## Hardware features

* ME 2.0 pinout
* supports both smart and dumb coils
* ?

4 cylinder configuration

![x](Hardware/Hellen/hellen128mercedes-rev-b-reference-4-cylinder.jpg)

[test points](Hardware/Hellen/hellen128mercedes-rev-b-reference-4-cylinder-test-points.png)

[Rev B naked board](Hardware/Hellen/hellen128mercedes-rev-b.jpg)

[Rev A naked board](Hardware/Hellen/hellen128mercedes-rev-a.jpg)



## Extension Pads (rev. a)

| Pin | Type | Comments |
|---|---|---|
||**Outputs**||
| P33 | Bridge driver B | 3 A peak |
| P34 | Low side | 0.5 A |
| P35 | Low side | 0.5 A |
|   | **Inputs** |   |
| P30 | Analog pull up | |
| P31 | Analog pull down | |
| P32 | Analog pull down | |
|   | **MCU** |   |
| J1 | SPI, UART/GPIO | See schematic for details | 
|   | **WBO1** |   |
| J9 | XH-8 WBO1 connector| |
| P19 | GND | |
| P21 | H- | |
| P22 | R Trim | |
| P23 | Ip | |
| P24 | Vs/Ip | |
| P25 | Vs | |
| J7 | SWD| |
|   | **WBO2** |   |
| J18 | XH-8 WBO2 connector| |
| P18 | GND | |
| P20 | H- | |
| P26 | R Trim | |
| P27 | Ip | |
| P28 | Vs/Ip | |
| P29 | Vs | |
| J19 | SWD | |

## Extension Pads (rev. b)

| Pin | Type | Comments |
|---|---|---|
||**Outputs**||
| P19 | Low side | 0.5 A |
| P33 | Bridge driver B | 3 A peak |
| P34 | Low side | 0.5 A |
| P35 | Low side | 0.5 A |
|   | **Inputs** |   |
| P30 | Analog pull up | |
| P31 | Analog pull down | |
| P32 | Analog pull down | |
| P36 | Analog pull down | |
| P40 | Analog pull up | |
| P41 | Analog pull up | |
|   | **MCU** |   |
| J1 | SPI, UART/GPIO | See schematic for details | 
|   | **WBO1** |   |
| J9 | XH-8 WBO1 connector| |
|   | **WBO2** |   |
| J18 | XH-8 WBO2 connector| |

## Ignition jumpers (rev. a, rev. b)

| Vehicle | F2 | F3 | F4 | F5 | F6 | F7 | F8 | F9 | F10 | F11 | F12 | F13 | F14 | F15 | F16 | F17 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Connctor pin **(NOT jumper designator!!!)** | F4 | F5 | F6 | F7 | F9 | F10 | F11 | F12 | F13 | F14 | F16 | F17 | F18 | F19 | F20 | F21 |
| IGNx signal | IGN5 | IGN5 | IGN3 | IGN3 | IGN7 | IGN7 | IGN8 | IGN8 | IGN4 | IGN4 | IGN2 | IGN6 | IGN6 | IGN2 | IGN1 | IGN1 |
| 4 cyl 2 coil | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | ✔️ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | ✔️ | 🟡 |
| Other model | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? |

🟡 - it doesn't matter, the specified pin is not connected

| Coil type | R43 | R59 | R67 | R60 | R79 | R66 | R74 | R62 | R76 | R63 | R77 | R64 | R78 | R65 | R73 | R61 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Dumb | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ |
| Smart | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ | ✔️ | ❌ |


# 4 cylinder application
* uses inj 5-6-7-8 for INJ
* two IGBT
* one MOSFET soldered instead of IBGT for clutch solenoid
* INJ3 with fly-back for boost control solenoid



[Vault-Of-Mercedes-OEM](Vault-Of-Mercedes-OEM)

[Mercedes-C230-and-SLK230](Mercedes-C230-and-SLK230)


# FAQ

## Would this work on my all original Mercedes?

Hellen 128 was originally designed for M111 swaps into W201. Depending on the year some W202, R170 and other models could be driven with different amount of supporting mods:

* Somewhere around 99 Mercedes has transitioned from just plain wires on C40 and D3 to CAN-bus starter security. For those later models one would have simplify starter wiring and add a start button

* And obviously your engine harness should use <a href="Images/mercedes-128.png">this ME 2.0 style of plug</a> not <a href="Images/mercedes-134.png">this 134 pin style of plug</a>.





# Changelog

## rev B

* better provisions for high-current control of supercharger clutch solenoid on 5 M111
* ignition fuse changed from 36915000000 5A to 2010-T10A0V2T11192AM5G 10A. 0697H9100-02 could be use for refitting of rev A


## rev A

* good to drive, great success!



