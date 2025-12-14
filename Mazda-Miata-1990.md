# 1990 Mazda Miata

![Pinout](Images/diagrams/frankenso_connector_miata_1991.png)

1990 1.6 US

rusEFI Engine Type 41 on Frankenso

## Plug 1

22 pin

| pos | b pos | color      | desc                           | type            |
| --- | ----- | ---------- | ------------------------------ | --------------- |
| 1A  |       |            | hot all times, Room Fuse       | Input +12v      |
| 1B  |       | White/RED  | Main relay                     | Input +12v      |
| 1C  |       | Violet     | Ignition on                    | Input +12v      |
| 1D  |       |            |                                |                 |
| 1E  |       | YEL/BLK    | Check Engine Light MIL         | Output PD5      |
| 1F  |       |            |                                |                 |
| 1G  | W7?   |            | Igniter 1 & 4                  | Output +5v PE14 |
| 1H  | W8    |            | Igniter 2 & 3                  | Output +5v PC7  |
| 1I  |       | \*         | \*                             | \*              |
| 1J  | W10   | BLue/Black | A/C relay                      | ?               |
| 1K  |       |            | diag connector mode switch TEN |                 |
| 1L  |       |            | N/C                            |                 |
| 1M  |       |            | N/C                            |                 |
| 1N  |       |            |                                |                 |
| 1O  |       |            | stop light switch              | input           |
| 1P  |       |            | Power Steering SW              |                 |
| 1Q  |       |            | AC Thermo SW                   |                 |
| 1R  | W18?  | BLK/GRN    | A/C Extra Cooling Fan Relay    |                 |
| 1S  |       |            | Heater Control SW              |                 |
| 1T  |       |            |                                |                 |
| 1U  |       |            | Tail Fuse                      |                 |
| 1V  |       |            |                                |                 |

*** "On a 1990 - 1993 Miata, there are three coolant sensors." "On the top of the thermostat housing at the front of the engine is the 'Water Thermoswitch,' a single-wire sensor that turns the fan on when coolant temperature reaches 207°F (97°C)." "At the rear of the cylinder head is the 'Water Thermosensor.' which sends temperature info to the ECU to help it set A/F ratio."

## Plug 3

26 pin

| pos | b pos | color            | desc                         | type                                  |
| --- | ----- | ---------------- | ---------------------------- | ------------------------------------- |
| 3A  | W39   |                  |                              | Ground                                |
| 3B  | W40   |                  |                              | Ground                                |
| 3C  | W41   |                  |                              | Ground                                |
| 3D  | W42   |                  |                              | Ground                                |
| 3E  |       | White            | Crank angle \#1              | Input PC6                             |
| 3F  |       | \*               | \*                           | \*                                    |
| 3G  |       | Yellow/BLue      | Crank angle \#2              | Input, PA5                            |
| 3H  | W46?  |                  | MAP                          | Inp10 PA6                             |
| 3I  |       |                  | Tach Input                   |                                       |
| 3J  |       | \*               | \*                           | \*                                    |
| 3K  | W49   | LT GRN/RED       | \+5 ref/TPS power            | Output 5v                             |
| 3L  | W50   | LT GRN/WHT       | M/T TPS switch               | Analog input PA2                      |
| 3M  | W51   | Red/Black        | TPS signal (A/T)             | Analog input                          |
| 3N  | W52   | Red/BLue         | oxygen sensor                | Input PC3                             |
| 3O  | W53   | Red              | VAF/MAF                      |                                       |
| 3P  | W54   | Red/Green        | IAT, intake air thermosensor | analog input, 2.7K pull-up, 3.6K? PC1 |
| 3Q  | W55   | BLue/White       | CLT, water thermosensor      | analog input, 2.7K pull-up, 3.6K? PC2 |
| 3R  | W56   | \*               | \*                           | \*                                    |
| 3S  | W57   | \*               | \*                           | \*                                    |
| 3T  | W58   | \*               | \*                           | \*                                    |
| 3U  | W59   | Yellow           | injector (1&3)               | Output/low side                       |
| 3V  | W60   | Yellow/Black     | injector (2&4)               | Output/low side                       |
| 3W  | W61   | BLue/Orange      | Idle Speed Control valve     | Output/low side                       |
| 3X  | W62   | White/Blue       | purge solenoid valve control | Output                                |
| 3Y  | W63   | \*               | \*                           | \*                                    |
| 3Z  |       | A/T control unit |                              |                                       |

![Wiring Diagram](OEM-Docs/Mazda/1990_Miata/1990_mazda_miata_us_wiring.png)

See also [Mazda ECU Technical Data](https://sites.google.com/site/mazdaecutechnicaldata/)

## Gauges

Useful wires:

CLT B/L Black/Blue
Oil Y/A Yellow/?
Turn signal Right G/W Green/White
Turn signal Left G/B Green/Black

![Wiring Diagram](Images/diagrams/2009-11-10_224518_tach.gif)

See also [http://www.mellens.net/mazda/Mazda-Miata-1991-1993/1991_wiring.pdf](http://www.mellens.net/mazda/Mazda-Miata-1991-1993/1991_wiring.pdf)
