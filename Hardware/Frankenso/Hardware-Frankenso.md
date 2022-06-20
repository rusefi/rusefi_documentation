# Frankenso

# EFFECTIVELY RETIRED BOARD as of Dec 2021

## Overview

Frankenso should be powered by ignition switch. Frankenso main relay output can control main (injectors/fuel pump etc) relay if needed.

![Isometric View of Top of Frankenso, with notes](Hardware/Frankenso/Frankenso_top-isometric_notes.png)
![Isometric View of Bottom of Frankenso](Hardware/Frankenso/Frankenso_bottom-isometric.png)
![Frankenso image](Hardware/Frankenso/Hardware_Frankenso_0_2_assembled.jpg)

![Frankenso image](Hardware/Frankenso/Hardware_Frankenso_0_2_native_box.jpg)

![Frankenso image](Hardware/Frankenso/Hardware_Frankenso_0_5_full_bundle.jpg)

![Frankenso image](Hardware/Frankenso/Hardware_Frankenso_0_5_native_stm32.jpg)


[For sale fully assembled!](https://www.tindie.com/products/russian/frankenso-full-bundle/)

See [HOWTO Quick Start](HOWTO-quick-start) for rusEFI Quick Start.

[Known Issues](https://raw.githubusercontent.com/rusefi/rusefi/master/hardware/frankenso/known_issues.txt)

![Frankenso Connector Schematic](Hardware/Frankenso/frankenso_connector.png)

4 layer, 6.4"x6.1" (162mmx155mm)

[Forum Thread](http://rusefi.com/forum/viewtopic.php?f=4&t=569)

[Latest frankenso_schematic.pdf](https://github.com/rusefi/rusefi-hardware/raw/main/classic-designs/frankenso/frankenso_schematic.pdf)
[Latest frankenso_PCB.pdf](https://github.com/rusefi/rusefi-hardware/raw/main/classic-designs/frankenso/frankenso_PCB.pdf)

[3D Files](https://cad.onshape.com/documents/e3886c26c195f696b0992337/w/606a3f224be979ff0bba0b49/e/aa0d12eea4c57b8fd8218752) at OnShape


[frankenso_schematic.pdf 0.4](https://github.com/rusefi/rusefi-hardware/tree/main/classic-designs/rusefi_hardware_history/frankenso_rev00.40/frankenso/frankenso_schematic.pdf)

[Frankenso 0.3 archive](https://github.com/rusefi/rusefi-hardware/tree/main/classic-designs/rusefi_hardware_history/frankenso_rev00.30.7z)

[frankenso_schematic.pdf 0.2](https://github.com/rusefi/rusefi-hardware/tree/main/classic-designs/rusefi_hardware_history/frankenso_rev00.20/frankenso/frankenso_schematic.pdf)

[Frankenso 0.1 archive](https://github.com/rusefi/rusefi-hardware/tree/main/classic-designs/rusefi_hardware_history/frankenso_rev00.10.7z)

[frankenso_gerbers_R0.4.zip](https://github.com/rusefi/rusefi-hardware/tree/main/classic-designs/rusefi_hardware_history/frankenso_rev00.40/frankenso/frankenso_gerbers/frankenso_gerbers_R0.4.zip)

See also [online BOM](https://rusefi.com/docs/ibom/frankenso_latest.html)

[disovery pinout - ADVANCED](https://docs.google.com/spreadsheet/ccc?key=0Arl1FeMZcfisdEdsa01mTW9YV0pRU29POUE4QUlma0E)

## FAQ

**Q:** Why three USB connectors?

**A:** [Forum thread](https://rusefi.com/forum/viewtopic.php?f=4&t=1418)


## Default Pinout

[Interactive Pinout](https://rusefi.com/docs/pinouts/frankenso/)

Frankenso was designed with Mazda Miata NA pinout in mind. The most easily available ECU harness pig tail comes from OBD-I Honda vehicles, different Honda vehicles use slightly different harness colors so the values given are pretty approximate, please use common sense. See connector details [here](OEM-connectors#64-pin)

See also [Mazda Miata 1991](Mazda-Miata-1991)

See also [Mazda Miata 1994](Mazda-Miata-1994)

See also [Mazda Miata 1999](Mazda-Miata-1999)

See also [Honda Accord 1995](Honda-Accord-1995)

See also [Mazda Miata 2003](Mazda-Miata-2003)

See also [Mazda Miata 2003 alt](Mazda-Miata-2003-alt)

![Frankeso Default Pinout](https://raw.githubusercontent.com/rusefi/rusefi/master/hardware/frankenso/www_docs/frankenso_default_pinout.png)

See also [Trigger Hardware](Trigger-Hardware)

Here is a video about how to chang these "Honda obd1 ecu" connector pins. It has also been found that the second stage release can be done with a flat hair clips can be used from the back side of the connector to release the pin. 

[![Video How to Depin Honda and Acura OBD1 ECU Connectors](Hardware/Frankenso/depin.png)](https://www.youtube.com/watch?v=Lv02bCy0yQs)

Terminal Removal Tool Kit or glasses screwdriver would be needed to remove pins

## Power Supply

Inductors - black squarish things with "330" on them - orientation does not matter

R1001 - 1K resistor - orientation does not matter

D1001 - that's the trickiest one. I need a magnifying glass to see the dash which should be oriented towards the round electrolytic capacitor/connector section. 

Yellow capacitors - should be oriented as on the picture

Round capacitor - should be oriented as on the picture

Red/black through-hole diodes - should be oriented as on the picture

F1001 - default setup is just a piece of wire. I use the red/black diode cut-off

U1001 regulator pads: +12v, +5, GND, +5, GND

![0.4 Power Supply](Hardware/Frankenso/power_supply_0_4.png)

If you're assembling your Frankenso yourself:

1. Install the components listed above plus R1002, D1005, Q1001, F1001, Q1001, and U1001 (check the schematic for your board revision - part numbers/requirements may change).

2. Check for +5V at a suitable location at the power supply - be careful not to bridge pins with meter tips!

3. If you've got +5V then install a jumper at W23 - its right next to L1002 (the left inductor) in the picture above - this will bring power to the rest of the board. If you don't have +5V then something is wrong.

## Cam/crank input
The cheaper way which works for Hall sensors only is to use op-amps channels.

For rev 0.1 you can use channels 9 & 11. To enable this configuration you would need to run a yellor jumper wire from the op-amp side of W211 to JPTODO to and a white hacky wire right from op-amp chip pads XX&XX to TODO.

![Jumper Wire](Hardware/Frankenso/jumper.png)

![Jumper Wire](Hardware/Frankenso/jumper_2.jpg)

## LCD screen

20x4 or 16x2 HD44780 character display

M3*12+6mm standoffs used to mount LCD screen with M3*5+6mm to hold it.

Contrast is controlled by R99

LCD power jumper: JPO1

The screen has 16 wiring holes, so does Frankenso. The middle 4 wires are not used, the other 6+6 wires on the sides should be connected.

## Low side
Low-side drivers are used for **most** (**all**?) high-Z injectors and relays.

![Low Side Drivers](Hardware/Frankenso/low_side.png)

pins PE0 & PE1 are used on discovery, on stock discovery board these pins are not driving properly

on Frankenso 0.4, PE0 was replaced with PD5

PE1 was replaced with PD3

![Solenoid Flyback Diode Wiring](Hardware/Frankenso/solenoid_diode_wiring.png)

See also [Fuel Overview](Fuel-Overview)

## VR Input

See also [Trigger Hardware](Trigger-Hardware)

![VR IC Circuit](Hardware/Frankenso/vr_ic_circuit.png)

C101 & C102 are 1000pF / 1nF / 0.001uF

C103 is 10uF

C104 is 0.1uF / 100nF

R102, R103, R104, R106, R107, R108, R109 & R110, R111 & R112 are 5K

R113 & R114 are 10K 

![VR IC Pads](Hardware/Frankenso/vr_pads.png)

## Hi side

High-side could be set to drive logic leven (not high energy) +5v or +12v. Used for ''some'' coils like GM LS or Miata. Also used to drive Miata tachometer. Can not be used to drive 95 Neon coils since those need high energy drivers.

This section of the board is optional. Output voltage is controlled by a VP<>5V or VP<>12V jumper (P602/P604 on the picture below). Before version 0.4
all six channels were using the same jumper and the same voltage. On version 0.4 and later each pair of outputs has it's own set of jumpers.

[TC4427](http://www.microchip.com/wwwproducts/Devices.aspx?dDocName=en010672)

![High Side Driver Pinout](Hardware/Frankenso/hi_side_driver_pinout.png)

R601 & R604, R605 & R608, R609 & R612 are 100R current limiting resistors

R602 & R603, etc are 2.7K needed only for the LEDs

C601, C602 & C603 are 0.1uF

![Hi Side Layout](Hardware/Frankenso/hi_side.jpg)

![Hi Side Layout](Hardware/Frankenso/hi_side_4.jpg)

These chips could be configured to run 5v, 12v or GND output:

![High Side Driver IC](Hardware/Frankenso/hi-side-driver.png)

## Analog Inputs

See [Frankenstein Analog Inputs](Hardware-Frankenstein#step-3-analog-inputs)

See [Temperature Sensing](Temperature-Sensing)

[1994 Miata Frankenso pinout spreadsheet](https://docs.google.com/spreadsheets/d/1LTvS7I-128Hft9uXHG1JrBxetVjGJDSBkySgVDQ6MGk)

![Analog Inputs](Hardware/Frankenso/analog_inputs.png)

Our op-amp of choice is MCP6004-E/SL

## Knock Sensor Decoder

[Knock Sensing](knock-sensing)

![Knock Sensing IC Pads](Hardware/Frankenso/knock_chip_pads.png)

1K: R170, R171, R172, R173 & R174

10K: R163 & R164, R175 & R176

68K: R167, R168

1M: R161, R162, R166

0.1uF: C165

0.02nF/20pF: C166, C167

0.022uF/22nF: C168

47nF/47000pF/0.047uF: C162, C163

**Troubleshooting notes:**

**R170 is INT/HOLD pull-up**

**R171 is CS pull-up**

**R174 is MOSI pull-up**

## USB/TTL
![Programming Pads](Hardware/Frankenso/programming_pads.png)

R351 is 1M

R352 is 1k - that's current limiter for the LED

C351 is 4700pf, that's the same as 4.7nF

C352 & C353 are 47pF

C354 & C358 are 4.7uF

C355, C356 and C357 are 0.1uF (same thing as 100nF)

## SD card socket
See [Logging](Logging-Guide)


## EGT

Frankenso board has provisions for exhaust gas temperature but MAX31855 chips are not included in DIY kits and not populated on assembled boards. Special connectors would also be needed to connect the EGT sensing wire.

## Clock backup battery
CR2032

## More pictures

More pictures at [http://rusefi.com/images/Frankenso/](http://rusefi.com/images/Frankenso/)

## Pigtail compatibility

1992–1995 Honda Civic

1990-1995 Honda Accord

1990-1996 Toyota Camry

## Case compatibility

Compatible with a 64 pin DENSO case from the early 90s'. Mounting holes should also work with 48 pin case but you would need to cut a larger connector opening.

1993-1996 Toyota Camry 89661-06130 89661-06150 89661-06270 89661-33390 89661-33760

Different case but also works -  Toyota Cressida - a bit tight with LCD 89661-30160 89661-30161

1991 Mazda Protege AT, 1994 Mazda Protege AT

1992 1993 Mazda MX3 4cyl AT B66T


tight on vertical USB but works 89661-28140

need to try 89661-28120

![Mazda 929 ECU](Hardware/Frankenso/929_ecu.png)

Known to not work great but could be an option if nothing else is available:

Mazda 929  JE48 18 881A

89661-32590 and 89661-32260 are taller cases. Kind of an option - only one mounting hole aligns perfectly but couple of holes could be massaged to work. TODO adjust Frankenso board accordingly.


89561-32021, 89561-32022, 89661-32231, 89661-12511, 89661-07010, 89661-07050 are using other connectors so these would require cutting 

89661-3T270 board fits but no LCD access and no mounting hole line up

89661-22050 - not great option at all

89661-33070 seems to be taller

microUSB drill d=12mm / 1/2 inch

45mm (47?) from right edge / 7mm from top edge

Case cover bolts: M4/0.7mm countersunk Philips, 9mm thread length

## Component Options

**98% components on the board could be acquired on Degikey/Mouser, but a few are only available on eBay:**

68uH radial inductor 8x10 (Frankenso 0.5+)

33uh inductor 12x12x7 (Frankenso 0.1 - 0.4)

Micro SD Card Socket

20x4 character lcd hd44780

**Some components are available via major suppliers but just cheaper on eBay:**

2.54mm 2x25 Female Double Row Header

LM2596 5V TO-263 Voltage Regulator

7343 16V 220Uf Tantalum

32.768K Crystal MC-306

SN65HVD230 sop-8


In order to make cheap kits available we need to use generic eBay "2000 pcs 0805 parts". Good news most 0805 components have a wide acceptable range.

Part #/system|Schematics value|Acceptable range of values
R617 / high-side driver limit|20R|20R-22R
R602 / low-side LED status current limiting|2.7K|2.7K-3.3K
R231 R241 R251 R271 - disconnected sensor detection|500K|500K-1M
R166 TPIC Xtal something|2M|1M-10M
C601 C602 C603 C471 C165 C355 C356 C701 C702 C357 C104 C211 251 291| 0.1uf / 100nf| 0.068uF-0.1uf / 68nf 100nf
R102 R103 R104 R106 VR input primary|5K|4.7K-5K
R108 R108 R109 R110 VR input secondary|5K|5K-5.6K
R111 R112 VR optional dampening|5K|4.7K-5.6K
c103 - absorbs energy from VR|10uf 10v|10uf 10v

## Prototyping notes

A few pins are exposed for prototyping

pin PA15 = P11

pin PB1 = P13

pin PD3 = P20 connector (same pin goes to one of low-side drivers)



## Low side switch options

Part #|Notes|Tested|Qualification
[VNS14NV04 VNS14NV04PTR-E](http://datasheet.octopart.com/VNS14NV04PTR-E-STMicroelectronics-datasheet-62337870.pdf)|35mΩ 12A|Y|AEC-Q100
[IRF7413Z](http://datasheet.octopart.com/IRF7413ZTRPBF-International-Rectifier-datasheet-5333691.pdf)|10mΩ 13A|N|
[VNS7NV04PTR-E](http://datasheet.octopart.com/VNS7NV04PTR-E-STMicroelectronics-datasheet-62337847.pdf)|60mΩ 6A|Y|AEC-Q100
[AUIRF7484Q AUIRF7484QTR](http://datasheet.octopart.com/AUIRF7484QTR-International-Rectifier-datasheet-10897670.pdf)|10mΩ 14A|N|AEC-Q101
