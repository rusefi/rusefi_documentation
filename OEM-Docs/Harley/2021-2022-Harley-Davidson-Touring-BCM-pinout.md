# 2021–2022 Harley-Davidson Touring with Fairing — BCM pinout

Transcribed from [2021 service manual page 100](Harley-Touring-2021-ecu-3.pdf) and its [PNG copy](Harley-Touring-2021-ecu-3.png), the [2021 wall-chart capture](2021-touring-2.png) and the [2022 wall-chart capture](2022-touring-2.png). These drawings show the Touring-with-fairing body control module (BCM), fuse block, rear lighting and diagnostic connector. The 2021 source is drawing 1453410, “Main Harness FLH (3 of 3): 2021 Touring (with Fairing).” The 2021 wall-chart heading calls it sheet 2. The 2022 capture is drawing 1648283.

Wire colors are the harness-side codes printed in the drawing. BK = black, BE = blue, BN = brown, GN = green, GY = gray, LBE = light blue, LGN = light green, O = orange, PK = pink, R = red, TN = tan, V = violet, W = white, Y = yellow. A slash separates the base color and tracer. Bracketed numbers are OEM connector IDs. A3 is shown only in the 2021 drawing. Unlisted cavities have no labeled connection shown in these drawings.

## BCM battery input [259A]/[259B]

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| 1 | R | Battery Power | 50 A main fuse [5B] B |

## BCM [242A]/[242B]

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| A2 | R | Security Antenna (+) | Security antenna [209] 1 |
| A3 | W/BN | Start Enable | TCU [339B] 3 (2021 only) |
| A4 | BK | Security RF Antenna | Antenna lead shown at BCM |
| B2 | BK | Security Antenna (-) | Security antenna [209] 2 |
| B3 | BE/GY | AUX Lamp Switch | OE dash switch pack [105L] 3 |
| C3 | W/BE | Ignition/Accessory Switch Input | Ignition switch [33] 2 |
| C4 | W/GY | Run/Stop Switch input | Run/stop circuit through fairing harness [1B] continuation |
| D2 | W/R | CAN High | ECM 39, DLC [91B] 2 and terminating resistor [319] A |
| D3 | W | Neutral Switch input | Neutral switch [131-1] 1 |
| E2 | W/BK | CAN Low | ECM 38, DLC [91B] 5 and terminating resistor [319] B |
| E4 | R/V | Horn Power | Horn [122-1] 1 |
| F3 | BE/GN | Brake Switch Input | Rear brake switch [121-1] 1 |
| F4 | R/BN | Fuel Pump Power | Fuel pump [13] 1 |
| G4 | BK/GN | Ground | Main harness ground circuit |
| H2 | W/GN | Security Siren | Security siren [142] 2, if equipped |
| J2 | BE/O | Front Right Turn Signal | Fairing harness [1B] continuation 11 |
| J3 | BE | Running/Position Light Power | Rear lighting and fairing harness continuations |
| J4 | BE/PK | Front Left Turn Signal | Fairing harness [1B] continuation 12 |
| K2 | BE/BN | Rear Right Turn Signal | Rear lighting [12B] 2 and [7A] 2 |
| K3 | BE/R | Brake Light Power | Rear lighting [7A] 4 |
| K4 | BE/V | Rear Left Turn Signal | Rear lighting [7A] 5 |
| L2 | R/BK | Starter Solenoid Power | Starter [128] 1 |
| L3 | R/GN | System Power | System Power fuse [64B] 4 and main harness R/GN loads |
| L4 | BE/BK | AUX Lamp Power | Fairing harness [1B] 13 |
| M2 | R/Y | Accessory Power | P&A relay coil [64B] 18 |
| M3 | BE/W | High Beam Power | Fairing harness [1B] continuation 7 |
| M4 | BE/Y | Low Beam Power | Fairing harness [1B] continuation 8 |

The main fuse feeds the BCM and fuse block. The 5 A Battery fuse feeds R/O. The 7.5 A System Power fuse links the BCM's R/GN branch to V/GN. The 20 A Radio and 20 A P&A fuses feed R/PK and R/BE respectively. The 15 A Cooling fuse feeds the cooling relay on BN, and the relay feeds BN/BE. See the [2021 ECM pinout](2021-Harley-Davidson-Touring-with-Fairing-ECM-pinout.md) and [2022 ECM pinout](2022-Harley-Davidson-Touring-with-Fairing-ECM-pinout.md) for ECM-side routing.
