### Initial kit state:

All kit PCBs come pre-programmed and verified. No firmware upload required right after soldering. Actually your microRusEFI would
communicate via USB if you solder just USB connector or feed USB via 48 pin connector.

[VIDEO Initial state](https://www.youtube.com/watch?v=3vWbIECoLg8)

[VIDEO testing with test fixture](https://www.youtube.com/watch?v=pAaNUaCQaz0)


## HOWTO microRusEFI Kit


[mircoRusEfi kit](https://www.ebay.com/itm/333517397424) comes 75% assembled - while many components are already mounted, about two dozens
still need to be added. This includes both easy to mount components like main connector and harder to solder
TLE8888 100-pin chip. Some soldering hints and tricks [are discussed here](https://rusefi.com/forum/viewtopic.php?t=425).
If in doubt of your SMD skills please consider fully assembled version. 


For component placement please use interactive BOM

[0.5.3](https://rusefi.com/docs/ibom/micro_rusEFI_R0.5.3.html)

[0.5.2](https://rusefi.com/docs/ibom/micro_rusEFI_R0.5.2.html)

[0.5.1](https://rusefi.com/docs/ibom/micro_rusEFI_R0.5.1.html)

[0.5.0](https://rusefi.com/docs/ibom/micro_rusEFI_0.5.0.html)

[0.4.8](https://rusefi.com/docs/ibom/microRusEfi_R0.4.8.html)

[0.4.7](https://rusefi.com/docs/ibom/microRusEfi_R0.4.7.html)


[Some checkpoints](Hardware/microrusefi/Hardware_microRusEfi_0_4_7_front_checks.jpg)


All microRusEfi kits use [MRE F4 rusEfi firmware - DOWNLOAD LATEST BUNDLE HERE](https://rusefi.com/build_server/rusefi_bundle_mre_f4.zip)




[Wiring Diagram](Hardware-microRusEfi-wiring)

[0.5.0 schematics PDF](https://github.com/rusefi/hw_microRusEfi/blob/master/micro_rusEFI_Schematic_0_5_0.pdf)

[0.4.8 schematics PDF](https://github.com/rusefi/hw_microRusEfi/blob/master/microRusEfi_Schematic_0_4_8.pdf)

[0.4.7 schematics PDF](https://github.com/rusefi/hw_microRusEfi/blob/master/microRusEfi_Schematic_0_4_7.pdf)


[rusEfi Slack channel](https://rusefi.com/forum/viewtopic.php?f=13&t=1198) is the primary support channel.

[HOWTO program rusEfi using DFU](HOWTO-DFU)

# Crankshaft position sensor options: Hall or VR

Depending on your crankshaft position sensor type you would need to populate either Hall or VR option.

0.4.5, 0.4.7: For VR crankshaft position sensor you would need to add R9 & C12 on the back.

0.4.8: Comes set for VR (R9 & C12 are now on the front since)

VR mode front - comes pre-assembled
![Back](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_vr_front.png)

VR mode back
![Back](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_vr_back.jpg)


0.4.5, 0.4.7: For Hall, you would need to REMOVE R15 & C35 on the front, and install R17=1.5K R18=R19=4.7K on the back.

0.4.8: For Hall, you would need to REMOVE R15&R9, C12 & C35 on the front, and install R17=1.5K R18=R19=4.7K on the back.

0.5.0 Hall
![Front](Hardware/microrusefi/Hardware_microRusEfi_0.5.0_hall_mode.jpg)

0.4.7 Hall mode front
![Front](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_hall_front.jpg)

0.4.7 Hall mode back
![Back](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_hall_back.png)



# Board Photos

![F](Hardware/microrusefi/Hardware_microRusEfi_0.5.0_module_assembled_front.jpg)


Kit front:

![Front](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_pre_assembled_front.jpg)

Kit parts on the front:

![Front](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_kit_front.jpg)

Kit parts on the back:
![Back](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_kit_assembled_back.jpg)

Flyback diodes orientation
![Back](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_kit_diodes_orientation.jpg)


# Important details
0.4.5, 0.4.7: 
JP1 needs to be TBDsee

see https://github.com/rusefi/hw_microRusEfi/issues/127

Unpopulated parts which you probably do NOT need:

LIN termination D43 R10

RTC diode D42

Wake-up CAN R8

[More images](https://github.com/rusefi/hw_microRusEfi/blob/master/gerbers)

# Direct board programming

J7 header in bottom-left corner of microRusEFI allows direct SWD programming using TC2030-MCP-NL cable

Tag Connect In circuit Cable "NO Legs" Version

![x](Hardware/microrusefi/TC2030_SWD.jpg)