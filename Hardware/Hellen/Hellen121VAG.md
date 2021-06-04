Hellen Plug&Play for ME7 VAG vehicles

[[Schematics rev a]](https://github.com/rusefi/hellen121vag/raw/main/boards/hellen121vag-a/board/hellen121vag-a-schematic.pdf)
[[iBom rev b]](https://rusefi.com/docs/ibom/hellen121vag-b-ibom.html)
[[Pinout]](https://rusefi.com/docs/pinouts/hellen/hellen121vag/)

[KiCAD source files](https://github.com/rusefi/hellen121vag)

Status: early phases of testing!


## Hardware features

* knock detection module with headphone jack
* build-in WBO - **WARNING 4.2 software not ready while we believe that hardware is universal** (footprint, stm32f042 not in stock at JLC)
* Baro sensor LPS25HB (footprint, not populated by JLC)


# Vehicle Specific Jumpers

**Never have both R2 and R3 jumpers populated! **Early 1.8T applications have R2, do not populate R3, do not populate R8, have R9

Late models do not populate R2, populate R3, do not populate R8, have R9

TODO: 2003 A6 4.2 and similar: do not populate R2, populate R3, try populate R9, do not populate R9 


[Connector Vehicle Pinout reference table](https://docs.google.com/spreadsheets/d/1H0cZPAJFbpprgSu1Y8BiAYzXbqddvIn-Hhod4QCVQwk)

[[VAG-B5]]

[[VAG-C5]]


![x](https://rusefi.com/forum/download/file.php?id=7575)

![x](Hardware/Hellen/hellen121vag-a.jpg)

## Q: what cars is the 121vag applicable for?

A: We do not know the whole list. Definitely B5 1.8T Passat but could also work on 5 cylinder Jetta and VR6 and even a 8 cylinder A8. Whatever VAG product with a 121 header please check Hellen pinout above and let us know :)
