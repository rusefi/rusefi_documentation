Happy Xmas



[hellen72b-schematic.pdf](Hardware/Hellen/hellen72b-schematic.pdf)

[Nightly firmware bundle](https://rusefi.com/build_server/rusefi_bundle_hellen72.zip)

https://rusefi.com/docs/ibom/hellen72b-ibom.html

https://rusefi.com/docs/pinouts/hellen/helen72/main.html

[Mazda-Miata-2003](Mazda-Miata-2003)

![x](Hardware/Hellen/hellen72a.jpg)

# Jumpers
 in order to run a Miata NB text vehicle:

External MAP vs more ignition channels:
a) if you are going to use an external MAP, then remove "R5 (IGN5)", "R7 (IGN6)" and "R11 (IGN8)"

b) or if you NOT using an external MAP, then remove "R6 (GND)" and "R8 (+5V)"

Warning! The board can be damaged if you skip this step!

External WBO vs more ignition channels:
if you want to use an external WBO (AFR) sensor, then remove "R1 (IGN7)"

Miata vehicle type:
a) if you have a Miata 2002 (where we measure the battery voltage from 4T=alternator), then remove "R9 (2003)"

b) or if you have a Miata 2003 (where we measure the battery voltage from 4S=ign.switch), then remove "R10 (2002)"

