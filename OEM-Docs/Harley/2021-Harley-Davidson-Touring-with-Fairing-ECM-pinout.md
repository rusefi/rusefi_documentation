# 2021 Harley-Davidson Touring with Fairing — ECM pinout

Transcribed from the 2021 Harley-Davidson Service Manual for Touring Models (94000834), “Main Harness FLH: 2021 Touring (with Fairing),” [sheet 1/page 98](Harley-Touring-2021-ecu-1.pdf), [sheet 2/page 99](Harley-Touring-2021-ecu-2.pdf), and [sheet 3/page 100](Harley-Touring-2021-ecu-3.pdf).

The connector is on drawing 1453411, sheet 2. The source covers the Touring models with fairing and gives no single engine displacement for the diagram. The [sheet 1 PNG](Harley-Touring-2021-ecu-1.png), [sheet 2 PNG](Harley-Touring-2021-ecu-2.png) and [sheet 3 PNG](Harley-Touring-2021-ecu-3.png) reproduce those drawings. The wall-chart captures [2021-touring-1.png](2021-touring-1.png) and [2021-touring-2.png](2021-touring-2.png) show drawings 1453411 and 1453410 despite their outer headings calling them sheets 1 and 2. [2021-touring-3.png](2021-touring-3.png) shows separate drawing 1462833 with fairing wiring and is described in the [fairing companion](2021-Harley-Davidson-Touring-fairing-wiring.md).

Wire colors are the harness-side codes printed in the drawing. BK = black, BE = blue, BN = brown, GN = green, GY = gray, LBE = light blue, LGN = light green, O = orange, PK = pink, R = red, TN = tan, V = violet, W = white, Y = yellow. A slash separates the base color and tracer. Bracketed numbers are OEM connector IDs. Unlisted ECM cavities have no connection shown in the cited diagram.

## ECM [78A]/[78B] (80-cavity connector)

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| 1 | GN/BK | Right Cooling Fan Control | Right cooling fan [97A] B via [232R] 1, if equipped |
| 1 | GN/BK | Oil Cooling Fan Control | Oil cooling fan [317] B, if equipped |
| 2 | BK/GN | Ground | GND 1 |
| 3 | BK/GN | Ground | GND 1 |
| 4 | GN/BK | Left Cooling Fan Control | Left cooling fan [215] B via [232L] 1, if equipped |
| 5 | R/GN | System Power | BCM [242] L3, front/rear injector supply splice and System Power fuse [64B] 4 |
| 6 | GN/Y | Front Fuel Injector | Front fuel injector [84] B |
| 7 | GY/Y | Rear Fuel Injector | Rear fuel injector [85] B |
| 8 | LGN/R | Rear ACR Enable | Rear ACR [203R] 2 |
| 11 | BK | CKP Sensor Low | CKP sensor [79] 2 |
| 14 | BK/O | Pre-Cat HO2S Front Heater Ground | Front pre-cat HO2S [138] 2 |
| 16 | LGN/BK | Purge Solenoid | Purge solenoid [95] B |
| 20 | GY/O | Throttle Control Low | Throttle control actuator (TCA) [211] A |
| 21 | GN/O | Throttle Control High | TCA [211] F |
| 23 | BK/PK | Pre-Cat HO2S Rear Heater Ground | Rear pre-cat HO2S [137] 2 |
| 24 | GN/BE | Front Ignition Coil | Ignition coil [83] C |
| 25 | LGN/R | Front ACR Enable | Front ACR [203F] 2 |
| 26 | GN/BN | Post-Cat HO2S | Post-cat HO2S [341] 3, if equipped |
| 27 | GY/V | TPS 2 | TCA [211] E |
| 29 | BK/W | 5V Sensor Ground 1 | Sensor ground 1 network, including TCA [211] B and TGS [204] 3 |
| 30 | R | CKP Sensor High | CKP sensor [79] 1 |
| 32 | W/O | Oil Pressure Switch | Oil pressure [139] 3 |
| 34 | LGN/GY | JSS | JSS [133] 2, if equipped |
| 36 | BN/W | Front Knock Sensor High | Front knock sensor [315] 2 |
| 37 | LGN/W | Front Knock Sensor Low | Front knock sensor [315] 1 |
| 38 | W/BK | CAN Low | CAN bus, including BCM [242] E2 and terminating resistor [319] B |
| 39 | W/R | CAN High | CAN bus, including BCM [242] D2 and terminating resistor [319] A |
| 41 | GN/W | TGS 1 | Twist grip sensor (TGS) [204] 2 |
| 42 | GY/W | TGS 2 | TGS [204] 5 |
| 43 | GY/BE | Rear Ignition Coil | Ignition coil [83] A |
| 44 | V/BK | Chassis Cooling Fan Control | Chassis cooling fan [318] A, if equipped |
| 45 | BN/V | Rear Knock Sensor High | Rear knock sensor [316] 2 |
| 46 | LGN/V | Rear Knock Sensor Low | Rear knock sensor [316] 1 |
| 47 | GN/BN | Pre-Cat HO2S Front | Front pre-cat HO2S [138] 3 |
| 48 | GY/BN | Pre-Cat HO2S Rear | Rear pre-cat HO2S [137] 3 |
| 49 | GY/GN | Coolant Temperature | ECT [236] A via [232L] 3, if equipped |
| 52 | GN/V | TPS 1 | TCA [211] C |
| 53 | GY | TMAP Sensor | TMAP [80] 1 (MAP input) |
| 55 | GN | Engine Temp Sensor | ET sensor [90] 1 |
| 63 | BN/BK | Cooling Pump Control | Cooling pump [235] 2, if equipped |
| 65 | BK/W | HO2S Ground | HO2S sensor-return circuit |
| 66 | R/GY | 5V Sensore Power 2 | TMAP [80] 2 and TGS [204] 4 |
| 67 | R/O | 5A Battery Fuse | 5 A Battery fuse output at fuse block [64B] |
| 70 | R/W | 5V Sensor Power 1 | Sensor power 1 network, including TCA [211] D, TGS [204] 1, oil pressure [139] 2 and JSS [133] 1 |
| 71 | W/V | Air Temperature | Ambient air temperature sensor [107] 1 |
| 72 | GN/GY | IAT | TMAP [80] 3 (IAT) |
| 74 | BK/GY | 5V Sensor Ground 2 | TMAP [80] 4 and TGS [204] 6 |
| 79 | BN/Y | Chassis Cooling Fan Switch | OE dash switch pack [105L] 1 |
| 80 | BK/O | Post-Cat HO2S Heater Ground | Post-cat HO2S [341] 2, if equipped |

## Power and circuit routing

- The 50 A main fuse [5B] feeds battery power to BCM [259] 1 and the fuse block [64B]. The 5 A Battery fuse feeds ECM 67 on R/O. BCM [242] L3 provides System Power to ECM 5, the ignition coil, IMU where shown, and the injector supply splice. The 7.5 A System Power fuse links that R/GN circuit to the V/GN feed for loads including the ACRs, purge solenoid and HO2S heaters.
- The 15 A Cooling fuse supplies the cooling relay contact. The relay sends BN/BE to the pump and cooling fans shown. The individual control wires return to the ECM. The diagram prints cavity 1 twice for the right and oil cooling fan branches.
- CKP High at 30 is red on the main harness and ends at [79] 1. The adjacent black wire at [79] 2 goes to ECM 11. The fused battery feed is ECM 67.
- The fuel pump motor receives R/BN from BCM [242] F4 at [13] 1. W/Y at [13] 2 is the sender circuit. Neither circuit has an ECM terminal identified in this drawing.

The [2021 FLHTKSE supplement excerpt](2021-Harley-Davidson-FLHTKSE-ECM-pinout.md) specifies a different wire at cavity 1 and at the post-cat heater control on cavity 80.

The [Touring BCM pinout](2021-2022-Harley-Davidson-Touring-BCM-pinout.md) covers the body side of page 100. On page 98, IMU [333] has BK/GN ground at 1, W/BK CAN Low at 2, W/R CAN High at 3 and R/GN System Power at 4. Optional ABS ECU [166] joins that CAN pair at 10 and 18, with battery power at 1 and 17 and ground at 9 and 26.
