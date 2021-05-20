## Hardware features

* knock detection module
* build-in WBO
* Two auxiliary low side outputs 


# User Support

[Click here for Support overview](Support)



# Technical Details

[[schematic rev C]](Hardware/Hellen/hellen72-c-schematic.pdf)
[[Interactive iBom rev C]](https://rusefi.com/docs/ibom/hellen72-c-ibom.html)
[[Pinout]](https://rusefi.com/docs/pinouts/hellen/helen72/)

[Forum DEVELOPMENT thread](https://rusefi.com/forum/viewtopic.php?f=4&t=1947)



[Nightly firmware bundle](https://rusefi.com/build_server/rusefi_bundle_hellen72.zip)






[Mazda Miata 2003](Mazda-Miata-2003)

![x](Hardware/Hellen/hellen72-c-as-received.jpg)

![x](Hardware/Hellen/hellen72a.jpg)

# Jumpers (Applies to board version 72a-72c so far)
 in order to run a Miata NB test vehicle:

External MAP vs more ignition channels:
a) if you are going to use an external MAP, then remove "R5 (IGN5)", "R7 (IGN6)" and "R11 (IGN8)"

b) or if you NOT using an external MAP (either internal MAP or external MAF, or alpha-N), then remove "R6 (GND)" and "R8 (+5V)"

Warning! The board can be damaged if you skip this step!

External WBO vs more ignition channels:
if you want to use an external WBO (AFR) sensor, then remove "R1 (IGN7)"

Miata vehicle type:
a) if you have a Miata 2002 (where we measure the battery voltage from 4T=alternator), then remove "R9 (2003)"

b) or if you have a Miata 2003 (where we measure the battery voltage from 4S=ign.switch), then remove "R10 (2002)"

### OEM harness add-ons  
The OEM ECU connector uses AMP Multilock .040 and .070 pins. 

| Board   | stm32 pin  |   |
|-----|---|---|
| 4U  | MAP| Manifold absolute pressure analog signal from [external sensor](GM-map-sensor) | 
| 4K  | +5v | +5v feed for MAP sensor |
| 3Z | GND | Sensor & USB ground | 



![x](Hardware/Hellen/hellen72-wbo.jpg)

![x](Hardware/Hellen/hellen72-c-connector-cover.jpg)