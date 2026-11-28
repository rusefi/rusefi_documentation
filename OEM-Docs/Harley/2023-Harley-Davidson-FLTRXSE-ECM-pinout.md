# 2023 Harley-Davidson FLTRXSE — ECM pinout

Transcribed from the 2023 Wiring Diagram Wall Chart, “Main Harness: 2023 FLTRXSE,” [sheet 1](2023-fltrxse-1.png), [sheet 2](2023-fltrxse-2.png), [sheet 3](2023-fltrxse-3.png) and [sheet 4](2023-fltrxse-4.png), with [front lighting and hand controls](2023-fltrxse-0.png) for the twist grip sensor and switch wiring.

The ECM is in drawing 1705442 on sheet 1. The following sheets show the additional engine devices (1711014), BCM and power distribution (1705443), and lighting, cooling and oxygen-sensor continuations (1789059). Some continuation labels say FLHXSE or repeat the current sheet number. Destinations below use the visible terminal labels and wire routing. The captures give no engine displacement.

Wire colors are the harness-side codes printed in the drawing. BK = black, BE = blue, BN = brown, GN = green, GY = gray, LBE = light blue, LGN = light green, O = orange, PK = pink, R = red, TN = tan, V = violet, W = white, Y = yellow. A slash separates the base color and tracer. Bracketed numbers are OEM connector IDs. Unlisted ECM cavities have no connection shown in the cited diagram.

## ECM [78A]/[78B] (80-cavity connector)

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| 1 | GN/BK | Cooling Fan Control | Coolant cooling fan [232] A, labeled Oil Cooling Fan at the load (sheet 4) |
| 2 | BK/GN | Ground | GND 1 |
| 3 | BK/GN | Ground | GND 1 |
| 4 | BN/BK | Coolant Pump Control | Coolant pump [235] 1 and 2, joined in the harness (sheet 2) |
| 5 | R/GN | Powertrain System Power 1 | BCM [242A-2]/[242B-2] 4 and Powertrain Power 1 branches |
| 6 | GN/Y | Front Fuel Injector | Front fuel injector [84] B |
| 7 | GY/Y | Rear Fuel Injector | Rear fuel injector [85] B |
| 8 | LGN/R | Rear ACR Enable | Rear ACR [203R] 2 |
| 11 | BK | CKP Sensor Low | CKP [79] 2 (sheet 2) |
| 14 | BK/O | Front HO2 Heat Gnd | Front pre-cat HO2S [138] 2 (sheet 4) |
| 16 | LGN/BK | Purge Solenoid | Purge solenoid [95] B |
| 17 | O/BN | Front Intake VVT Control | VVT solenoid [270-1] 2 via [270] 6 (sheet 2) |
| 20 | GY/O | ETC Low | TCA [211] A |
| 21 | GN/O | ETC High | TCA [211] F |
| 23 | BK/PK | Rear HO2 Heat Gnd | Rear pre-cat HO2S [137] 2 (sheet 4) |
| 24 | GN/BE | Front Ignition Coil | Ignition coil [83] D (sheet 2) |
| 25 | LGN/R | Front ACR Enable | Front ACR [203F] 2 |
| 26 | GN/BN | Post Cat HO2S Bank 1 | Post-cat HO2S [341] 3 |
| 27 | GY/V | TPS 2 | TCA [211] E |
| 28 | V/GN | Powertrain Power 2 | BCM [242A-2]/[242B-2] 3 and Powertrain Power 2 branches |
| 29 | BK/W | 5V Sensor Gnd 1 | Sensor ground 1 network, including TCA [211] B, TGS [204] 3 and gear position sensor [269-2] 3 |
| 30 | R | CKP Sensor High | CKP [79] 1 (sheet 2) |
| 31 | W/Y | Fuel level Signal | Fuel level sender [13] 2 (sheet 2) |
| 32 | W/O | Oil Pressure Switch | Oil pressure switch [139] 3 (sheet 2) |
| 34 | LGN/GY | JSS | JSS [133] 2 (sheet 2) |
| 36 | BN/W | Front Knock Sensor High | Front knock sensor [315] 2 |
| 37 | LGN/W | Front Knock Sensor Low | Front knock sensor [315] 1 |
| 38 | W/BK | CAN Low 1 | CAN 1 bus, including BCM [242A-2]/[242B-2] 13 and IMU [333] 2 |
| 39 | W/R | CAN High 1 | CAN 1 bus, including BCM [242A-2]/[242B-2] 12 and IMU [333] 3 |
| 41 | GN/W | TGS 1 | [22A-1] 2 (sheet 4) and TGS [204] 2 (hand controls crop) |
| 42 | GY/W | TGS 2 | [22A-1] 5 (sheet 4) and TGS [204] 5 (hand controls crop) |
| 43 | GY/BE | Rear Ignition Coil | Ignition coil [83] B (sheet 2) |
| 44 | V/BK | Chassis Cooling Fan Control | Chassis cooling fan [318] A |
| 45 | BN/V | Rear Knock Sensor High | Rear knock sensor [316] 2 |
| 46 | LGN/V | Rear Knock Sensor Low | Rear knock sensor [316] 1 |
| 47 | GN/BN | Front HO2S Bank 1 | Front pre-cat HO2S [138] 3 (sheet 4) |
| 48 | GY/BN | Rear HO2S Bank 2 | Rear pre-cat HO2S [137] 3 (sheet 4) |
| 49 | GY/GN | Coolant Temperature | ECT [98] A (sheet 4) |
| 52 | GN/V | TPS 1 | TCA [211] C |
| 53 | GY | Map Sensor | TMAP [80] 1 (MAP input) |
| 55 | GN | ET Sensor | ET sensor [90] 1 (sheet 2) |
| 60 | GY/O | Shift Sensor | Shift sensor [348] 2, if equipped (sheet 2) |
| 65 | BK/W | Pre Cat HO2S Gnd | Front and rear pre-cat HO2S [138] 4 and [137] 4 (sheet 4) |
| 66 | R/GY | 5V Sensor Power 2 | TMAP [80] 2 and TGS [204] 4 |
| 67 | R/O | Battery Fuse | 7.5 A Battery fuse output at [64B] (sheet 3) |
| 70 | R/W | 5V Sensor Power 1 | Sensor power 1 network, including TCA [211] D, TGS [204] 1 and gear position sensor [269-2] 1 |
| 71 | W/V | AAT | Ambient air temperature sensor [107] 1 (sheet 4) |
| 72 | GN/GY | IAT | TMAP [80] 3 (IAT) |
| 74 | BK/GY | 5V Sensor Ground 2 | TMAP [80] 4 and TGS [204] 6 |
| 77 | O/GN | FI CMP Sensor | CMP sensor [14] 3 via [270] 3 (sheet 2) |
| 78 | O/BE | Gear Pos Sensor | Gear position sensor [269-2] 2 via [269-1] 2 |
| 80 | BK/Y | Post Cat HO2S Heater | Post-cat HO2S [341] 2 |

## Power and circuit routing

- Battery power at the starter stud passes through the 60 A main fuse [5] to the distribution circuits on sheet 3. ECM 67 is on the R/O output of the 7.5 A Battery fuse in block [64B].
- BCM connector segment [242A-2]/[242B-2] outputs R/GN Powertrain Power 1 at cavity 4 and V/GN Powertrain Power 2 at cavity 3. ECM 5 and 28 are on these respective circuits. Power 1 feeds front injector [84] A and ignition coil [83] C. Power 2 feeds rear injector [85] A, ignition coil [83] A, both ACRs, purge and the VVT solenoid.
- BCM fuel pump output [242A-2]/[242B-2] 2 goes to [13] 1 on R/BN. Sender [13] 2 routes separately to ECM 31 on W/Y.
- The 15 A Cooling fuse supplies the cooling relay in [64B]. Its BN/BE output goes to the cooling loads, including coolant pump [235] 3, chassis cooling fan [318] B and coolant cooling fan [232] B.
- Three 120 Ω terminators [319-1], [319-2] and [319-3] are drawn across CAN wire pairs on sheets 2 and 4. Use the individual branches on those sheets to identify the network segment.
- The [body control and hand control companion](2023-Harley-Davidson-FLTRXSE-body-and-hand-controls.md) covers the BCM and the control and lighting connectors shown in the wall-chart crop.
