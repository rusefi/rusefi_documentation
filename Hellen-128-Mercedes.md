[[Schematics rev a]](Hardware/Hellen/hellen128mercedes-a-schematic.pdf)
[[iBom rev a]](https://rusefi.com/docs/ibom/hellen128mercedes-a-ibom.html)
[[Pinout]](https://rusefi.com/docs/pinouts/hellen/hellen128/)

[[Issue Tracker]](https://github.com/rusefi/hellen128merc-issues)

[Google Docs Pinout Spreadsheet](https://docs.google.com/spreadsheets/d/1I-lZKRajTiEGFUXdZpXEtKF2pymlOo-lPahy3cLMnl4)

Mercedes M111 and M113 

Relevant? 

https://docs.google.com/spreadsheets/d/1JgGFJ8AggBFiKT_CQ1D6uYhaIsqeiH9RerxuVy1kp4Y/

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

## Ignition jumpers (rev. a)

| Vehicle | F2 | F3 | F4 | F5 | F6 | F7 | F8 | F9 | F10 | F11 | F12 | F13 | F14 | F15 | F16 | F17 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Connctor pin **(NOT jumper designator!!!)** | F4 | F5 | F6 | F7 | F9 | F10 | F11 | F12 | F13 | F14 | F16 | F17 | F18 | F19 | F20 | F21 |
| IGNx signal | IGN5 | IGN5 | IGN3 | IGN3 | IGN7 | IGN7 | IGN8 | IGN8 | IGN4 | IGN4 | IGN2 | IGN6 | IGN6 | IGN2 | IGN1 | IGN1 |
| 4 cyl 2 coil | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | ✔️ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | ✔️ | 🟡 |
| Other model | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? | ? |
🟡 - it doesn't matter, the specified pin is not connected
