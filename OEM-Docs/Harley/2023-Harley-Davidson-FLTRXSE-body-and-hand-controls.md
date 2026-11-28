# 2023 Harley-Davidson FLTRXSE — BCM, lighting and hand controls

Transcribed from the 2023 Wiring Diagram Wall Chart, [Main Harness sheet 3](2023-fltrxse-3.png) for BCM and power distribution, [sheet 4](2023-fltrxse-4.png) for lighting and hand-control continuations, and [the front lighting and hand controls crop](2023-fltrxse-0.png) for component-side connections. [Sheet 1](2023-fltrxse-1.png) and [sheet 2](2023-fltrxse-2.png) show the powertrain endpoints listed in the [ECM companion](2023-Harley-Davidson-FLTRXSE-ECM-pinout.md).

Wire colors are the harness-side codes printed in the drawing. BK = black, BE = blue, BN = brown, GN = green, GY = gray, LBE = light blue, LGN = light green, O = orange, PK = pink, R = red, TN = tan, V = violet, W = white, Y = yellow. A slash separates the base color and tracer. Bracketed numbers are OEM connector IDs. The tables list the identified terminals. A dash represents a missing wire code or individual terminal label.

## BCM [242A-1]/[242B-1]

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| 1 | R | Battery | Fused main battery feed |
| 2 | R/Y | Accessory Power | P&A relay coil [64B] 18 |

## BCM [242A-2]/[242B-2]

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| 1 | R/BK | Starter Solenoid | Starter [128] 1 (sheet 4) |
| 2 | R/BN | Fuel Pump | Fuel pump [13] 1 (sheet 2) |
| 3 | V/GN | Powertrain Power 2 | ECM 28 and Powertrain Power 2 branches |
| 4 | R/GN | Powertrain Power 1 | ECM 5 and Powertrain Power 1 branches |
| 5 | BE/Y | Low Beam | Fairing/lighting continuation |
| 6 | BK | UHF Antenna In | Antenna lead drawn at BCM |
| 7 | R | LF Antenna Out A | Security antenna [209] 1 (sheet 2) |
| 8 | BK | LF Antenna Out B | Security antenna [209] 2 (sheet 2) |
| 9 | W/GN | LIN 1 | LIN branch continued off sheet |
| 11 | BK/GN | Ground | Main harness ground branch |
| 12 | W/R | CAN 1+ | CAN 1, including ECM 39 and EHCU [166] 18 |
| 13 | W/BK | CAN 1- | CAN 1, including ECM 38 and EHCU [166] 10 |
| 14 | W/BK | CAN 2- | CAN 2 low branch |
| 15 | W/R | CAN 2+ | CAN 2 high branch |
| 16 | BE/PK | Left Front Turn | Fairing harness continuation (sheet 4) |
| 17 | BE/O | Right Front Turn | Fairing harness continuation (sheet 4) |
| 18 | BE/R | Stop Lamp | Rear lighting and audio [7B] 3 (sheet 4) |
| 19 | BE/GN | Rear Brake Switch | Rear brake switch [121-1] 1 |
| 20 | W/GY | Run/Stop Switch | Engine Stop Switch circuit at [22-2] 1 |
| 21 | W/GN | Security Siren Enable | Security siren [142] 2 (sheet 2) |
| 22 | BE/V | Left Rear Turn | Rear lighting and audio [7B] 4 (sheet 4) |
| 23 | BE/BN | Right Rear Turn | Rear lighting and audio [7B] 1 (sheet 4) |
| 24 | R/GN | Wake Power | Wake power branch including EHCU [166] 20 |
| 25 | BE/W | High Beam | Fairing/lighting continuation |
| 26 | BE/BK | Fog Lamp | Fairing/lighting continuation |
| 27 | BE | Position Lamps | Lighting branches including rear lighting and audio [7B] 2 (sheet 4) |
| 28 | R/V | Horn | Horn [122B-1] 1 (sheet 4) |

## BCM [242A-3]/[242B-3]

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| B1 | TN/GN | Fork Lock Out | Lock relay [214-1] coil |
| H4 | TN/GN | Unlock Out | Unlock relay [214-2] coil |

## Front lighting and hand controls

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| [204B] 1 | R | 5V Sensor Power 1 | TGS supply 1 |
| [204B] 2 | W | TGS 1 | TGS signal 1 |
| [204B] 3 | BK | 5V Sensor Ground 1 | TGS return 1 |
| [204B] 4 | R | 5V Sensor Power 2 | TGS supply 2 |
| [204B] 5 | W | TGS 2 | TGS signal 2 |
| [204B] 6 | BK | 5V Sensor Ground 2 | TGS return 2 |
| [22B-1] 1 / 2 / 3 / 4 | R/O, BK/GN, W/R, W/BK | Battery Fuse, Ground, CAN High, CAN Low | Right hand control [22C-1]/[22D-1] |
| [22B-2] 1 | W/GY | Engine Stop Switch | Right hand control [22C-2]/[22D-2] |
| [24B] 1 / 2 / 3 / 4 | R/O, BK/GN, W/BK, W/R | Battery Fuse, Ground, Can Low, Can High | Left hand control [24C]/[24D] |
| [189A] 1 / 2 | R / BK | P&A Power / Ground | Heated hand grips, if equipped |
| [206B]/[205A] 1 / 2 | W / BK on [206B] side | P&A Power / Ground | Heated hand grip interconnect, if equipped |
| [38A] A–D | — | B Low, C High, D Position | Headlamp to fairing harness. A is the common connection drawn in the lamp symbol |
| [31RB] 1 / 2 / 3 | BE, BN, BK | — | Right Turn and DOM Running Lamp to fairing harness |
| [31LB] 1 / 2 / 3 | BE, V, BK | — | Left Turn and DOM Running Lamp to fairing harness |

The right front brake switch and left clutch switch are shown with two black leads apiece going into their respective control assemblies. The control crop labels the TGS connector [204B] and points to sheet 2. The six corresponding harness circuits continue through [22A-1] on sheet 4 in the same 1–6 order, on R/W, GN/W, BK/W, R/GY, GY/W and BK/GY respectively. The supplied ECM drawing shows those circuits on sheet 1.

## Power distribution and diagnostics

- Fuse block [64B] shows 7.5 A Battery, 30 A Rear P&A, 10 A IFCU/Home Link, 30 A Front P&A Amp, 15 A Cooling and 30 A Tender. The block includes the Cooling and P&A relays. The Cooling relay uses BN at 30, BN/BE at 87, V/GN at 85 and BK at 86. Separate fork lock and unlock relays are [214-1] and [214-2].
- DLC [91B] shows W/R at 2, BK at 3, R/Y at 4 and W/BK at 5. EHCU [166] has CAN 1 on 18 and 10 and wake power on 20. Rear wheel speed sensor [168] continues to the EHCU on O/PK and O/BN.
