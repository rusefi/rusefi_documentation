# 1999 Mazda Miata

[64 pin Connector](OEM-connectors#64-pin)

[Mazda MX5 1.8 1999 AE](http://rusefi.com/forum/viewtopic.php?f=3&t=467)

[Mazda Miata NB1 Trigger](All-Supported-Triggers#mazda-miata-nb1)

set engine_type 9

## Plug 1

22 pin

| pos | b pos   | color   | desc                 | type        |
| --- | ------- | ------- | -------------------- | ----------- |
| 1A  | W1      | blu/red | hot all times        | Input +12v  |
| 1B  | W2      | wht/red | Main relay           | Input +12v  |
| 1C  | W3      |         |                      |             |
| 1D  | W4      |         |                      |             |
| 1E  | W5\>W37 |         | check engine light   | output/low  |
| 1F  | W6      |         |                      |             |
| 1G  | W7      |         |                      |             |
| 1H  | W8      |         |                      |             |
| 1I  | W9      |         | A/C fan              |             |
| 1J  |         |         |                      |             |
| 1K  |         |         |                      |             |
| 1L  |         |         |                      |             |
| 1M  |         |         |                      |             |
| 1N  |         |         |                      |             |
| 1O  |         |         | alternator field     | output      |
| 1P  |         |         | A/C system           |             |
| 1Q  | W17     |         | low battery light    |             |
| 1R  | W18\>Wx |         | radiator cooling fan | output, low |
| 1S  | W19     |         | A/C system           |             |
| 1T  | W20     |         |                      |             |
| 1U  | W21     |         |                      |             |
| 1V  | W22     |         | Neutral switch       |             |

## Plug 2

16 pins

| pos | b pos      | color | desc                      | type         |
| --- | ---------- | ----- | ------------------------- | ------------ |
| 2A  | "W23"      |       | fuel tank pressure sensor |              |
| 2B  | "W24"      |       | IAT                       | analog input |
| 2C  | "W25"      |       |                           |              |
| 2D  | "W26"      |       | Vehicle Speed Sensor      |              |
| 2E  | W27\>W55   |       | CLT                       | analog input |
| 2F  | W28\>??    |       | knock signal              |              |
| 2G  | W29        | \*    | \*                        | \*           |
| 2H  | W30\>"W26" |       | cam sensor                |              |
| 2I  | W31\>W49   |       | sensor power              | 5v outut     |
| 2J  | W32\>"W24" |       | crank sensor              |              |
| 2K  | W33        |       | tach signal               |              |
| 2M  |            |       |                           |              |
| 2N  |            |       |                           |              |
| 2N  |            |       |                           |              |
| 2O  |            |       |                           |              |
| 2P  |            |       |                           |              |

## Plug 3

26 pin

| pos | b pos    | color | desc          | type         |
| --- | -------- | ----- | ------------- | ------------ |
| 3A  | W39      |       |               | Ground       |
| 3B  | W40      |       |               | Ground       |
| 3C  | W41      |       |               | Ground       |
| 3D  | W42      | \*    | \*            | \*           |
| 3E  | W43\>W51 |       | TPS           | analog input |
| 3F  | W44\>W40 |       | sensor GND    | Ground       |
| 3G  | W45\>W9  |       | coil \#1      |              |
| 3H  | W46\>W6  | BRN   | coil \#2      |              |
| 3I  | W47      |       | clutch switch |              |
| 3J  | W48      |       |               |              |
| 3K  | W49      |       |               | fuel gauge   |
| 3L  | W50      |       |               |              |
| 3M  | W51      | org   | IAC power     | \+12 volts   |
| 3N  | W52\>W35 |       | fuel pump     | output/low   |
| 3O  | W53      |       | IAC control   | output/low   |
| 3P  | W54      | \*    | \*            | \*           |
| 3Q  | W55      |       | VICS solenoid | output/low   |
| 3R  |          |       |               |              |
| 3S  |          |       |               |              |
| 3T  |          |       |               |              |
| 3U  |          |       |               |              |
| 3V  |          |       |               |              |
| 3W  |          |       | Injector \#1  | output/low   |
| 3X  |          |       | Injector \#2  | output/low   |
| 3Y  |          |       | Injector \#3  | output/low   |
| 3Z  |          |       | Injector \#4  | output/low   |

![Wiring Diagram](Images/diagrams/Mazda_miata_1999.png)
