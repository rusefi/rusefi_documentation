![x](OEM-Docs/Subaru/1993ecu.jpg)

![x](OEM-Docs/Subaru/1993ecu1.jpg)

[1993-1996impreza.pdf](OEM-Docs/Subaru/1993-1996impreza.pdf)

![x](OEM-Docs/Subaru/subaru-ej16-or18-wiring-diagram.gif)

This vehicle has dumb coils and igniters - rusEFI does not have to provide igniters.

[microRusEFI Wirinng](Hardware-microRusEFI-wiring)

22 pin connector E30

| pos | color        | desc                     | type                             | my color |
| --- | ------------ | ------------------------ | -------------------------------- | -------- |
| **  | ************ | top line                 | ******************************** |          |
| 1   | lt green/red | Injector #2              |                                  | 1A white   |
| 2   | brown        | Injector #1              |                                  | 1C blue   |
| 3   | black/yellow | Coolant Temperature CLT  | analog input                     | 1G green pin#18  |
| 4   | lt green     | TPS Signal               | analog input                     | white   |
|     |              |                          |                                  |          |
| 8   | white        | VR CAM positive +        |                                  |          |
| 9   | yellow       | VR CAM negative -        |                                  |          |
| 11  |              | TPS ground/VR shield     | ground                           | black! pin#17   |
| **  | ************ | bottom line              | ******************************** |          |
| 12  | blue/red     | Injector #4              |                                  | 1B green   |
| 13  | blue/white   | Injector #3              |                                  | 1D orange  |
| 15  | brown        | TPS power                | +5v                              | 1H red pin#44    |
|     |              |                          |                                  |          |
| 20  | green/white  | coil #3/#4               |                                  | green 1R        |
| 21  | yellow/blue  | coil #1/#2               |                                  | blue 1T         |
| 22  | black/red    | Ground                   | GND                              | black         |

16 pin connector E31

| pos | color        | desc                     | type                             | my color |
| --- | ------------ | ------------------------ | -------------------------------- | -------- |
| **  | ************ | top line                 | ******************************** |        |
| 1   | black/blue   | MAF signal ground        | GND                              | 3A black!   |
|     |              |                          |                                  |          |

26 pin connector E29

| pos | color        | desc                     | type                             | my color |
| --- | ------------ | ------------------------ | -------------------------------- | -------- |
| **  | ************ | top line                 | ******************************** |          |
| 1   | black        | Idle                     |                                  | 3A ls1        |
| 2   | white/black  | Idle                     |                                  | 3C ls2        |
| 4   |              | vehicle speed VSS        |                                  |          |
| 8   |              | fuel pump                |                                  |    green gp1 pin#35 |
| 10  | yellow       | Ignition switch(power)   | +12v                             | 3S red      |
| 13  | Yellow/Grn   | power supply from main rl| +12v                             | 3Y red      |
| **  | ************ | bottom line              | ******************************** |          |
| 14  | black        | Ignition Ground          | GND                              | 3B black        |
| 15  | black/yellow | Injectors Ground         | GND                              | 3D black   |
| 18  | lt green/whit| self shut-off main relay | high side control WOW goes to key| 3J orange  |
| 22  | red/white    | MIL check engine         |                                  | white!   |
| 25  | Black/Brn    | GND power supply         | GND                              | 3X black    |
| 26  | Yellow/Red   | Constant Power           |                                  |          |
|     |              |                          |                                  |          |

Thank you [http://northursalia.com/modifications/misc/wiring/wiring.html](http://northursalia.com/modifications/misc/wiring/wiring.html)
