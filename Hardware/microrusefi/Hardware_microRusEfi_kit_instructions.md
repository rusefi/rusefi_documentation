## HOWTO microRusEfi Kit


[mircoRusEfi kit](https://www.ebay.com/itm/333517397424) comes 75% assembled - while many components are already mounted, about two dozens
still need to be added. This includes both easy to mount components like main connector and harder to solder
TLE8888 100-pin chip. Some soldering hints and tricks [are discussed here](https://rusefi.com/forum/viewtopic.php?t=425).
If in double of your SMD skills please consider fully assembled version. 


For component placement [please use interactive BOM](https://rusefi.com/docs/ibom/microRusEfi_R0.4.7.html).

All microRusEfi kits use [MRE F4 rusEfi firmware - DOWNLOAD LATEST BUNDLE HERE](https://rusefi.com/build_server/rusefi_bundle_mre-f4.zip)




[Wiring Diagram](Hardware_microRusEfi_wiring)

[0.4.7 schematics PDF](https://github.com/rusefi/hw_microRusEfi/blob/master/microRusEfi_Schematic_0_4_7.pdf)


[rusEfi Slack channel](https://rusefi.com/forum/viewtopic.php?f=13&t=1198) is the primary support channel.

[HOWTO program rusEfi using DFU](https://www.youtube.com/watch?v=VdvXYgv_acg)

# Crankshaft position sensor options: Hall or VR

Depending on your crankshaft position sensor type you would need to populate either Hall or VR option.

0.4.5, 0.4.7: For VR crankshaft position sensor you would need to add R9 & C12 on the back.

0.4.8: Comes set for VR (R9 & C12 are now on the front since)

VR mode front - comes pre-assembled
![Back](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_vr_front.png)

VR mode back
![Back](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_vr_back.jpg)


0.4.5, 0.4.7: For Hall, you would need to REMOVE R15 & C35 on the front, and install R17 R18 R19 on the back.

0.4.8: For Hall, you would need to REMOVE R15&R9, C12 & C35 on the front, and install R17 R18 R19 on the back.

Hall mode front
![Front](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_hall_front.jpg)

Hall mode back
![Back](Hardware/microrusefi/Hardware_microRusEfi_0.4.7_hall_back.png)



# Board Photos

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
