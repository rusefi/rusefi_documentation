# 2019 Harley-Davidson Police FLHTP — main harness

Transcribed from [2019-Police-diagram-1.png](2019-Police-diagram-1.png), [2019-Police-diagram-2.png](2019-Police-diagram-2.png) and [2019-Police-diagram-3.png](2019-Police-diagram-3.png). The source filenames identify 2019 Police and the in-drawing continuations identify the FLHTP Main Harness. The first two captures show the same drawing, with continuations to sheets 2 and 3. The last capture shows the BCM side and refers back to sheets 1 and 2. No supplied image shows the ECM connector or gives an engine displacement.

Wire colors are the harness-side codes printed in the drawing. BK = black, BE = blue, BN = brown, GN = green, GY = gray, LBE = light blue, LGN = light green, O = orange, PK = pink, R = red, TN = tan, V = violet, W = white, Y = yellow. A slash separates the base color and tracer. Bracketed numbers are OEM connector IDs. The table lists the terminals identified in these captures.

## BCM power connector [259A]/[259B]

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| 1 | R | — | Battery feed from 50 A main fuse [5B] B |

## BCM [242A]/[242B]

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| A2 | R | Security Antenna (+) | Security antenna [209] 1 |
| A3 | W/BN | Brazil Security | DLC [91A] 6 on the Police drawing |
| A4 | BK | Security RF Antenna | Antenna lead shown at BCM |
| B2 | BK | Security Antenna (-) | Security antenna [209] 2 |
| B3 | BE/GY | AUX Lamp Switch | OE dash switch pack [105L] 3 |
| C3 | W/BE | Ignition/Accessory Switch Input | Ignition switch [33] 2 |
| C4 | W/GY | Run/Stop Switch input | Run/stop circuit through fairing harness [1B] |
| D2 | W/R | CAN High | Police DLC [91A] 1 and main harness continuation |
| D3 | W | Neutral Switch input | Neutral switch [131-1] 1 |
| E2 | W/BK | CAN Low | Police DLC [91A] 3 and main harness continuation |
| E4 | R/V | Horn Power | Horn [122-1] 1 |
| F3 | BE/GN | Brake Switch Input | Rear brake switch [121-1] 1 |
| F4 | R/BN | Fuel Pump Power | Main harness fuel pump circuit |
| G2 | PK | Police Horn / Air Horn | Siren amplifier [72B] 1D |
| G3 | PK/GY | Police Yelp mode | Siren amplifier [72B] 1F |
| G4 | BK/GN | Ground | Main harness ground circuit |
| H2 | PK/Y | Police Radio PTT | Fairing harness [2B] 9 |
| H4 | PK/BE | Sien On/Off | Siren amplifier [72B] 2F |
| J2 | BE/O | Front Right Turn Signal | Fairing harness [1B] 11 |
| J3 | BE | Running/Position Light Power | Marker lamps [173B] 1, rear lighting [7A] 3 and fairing [1B] 10 |
| J4 | BE/PK | Front Left Turn Signal | Fairing harness [1B] 12 |
| K2 | BE/BN | Rear Right Turn Signal | Rear lighting [7A] 2 |
| K3 | BE/R | Brake Light Power | Rear lighting [7A] 4 |
| K4 | BE/V | Rear Left Turn Signal | Rear lighting [7A] 5 |
| L2 | R/BK | Starter Solenoid Power | Main harness starter-solenoid circuit |
| L3 | R/GN | System Power | System Power fuse [64B] 4 and main harness R/GN loads |
| L4 | BE/BK | AUX Lamp Power | Emergency flasher [69] 88 and fairing harness [1B] 13 |
| M2 | R/Y | Accessory Power | P&A relay and horn relay branches at [64B] |
| M3 | BE/W | High Beam Power | Fairing harness [1B] 7 |
| M4 | BE/Y | Low Beam Power | Fairing harness [1B] 8 |

## Engine devices visible in the captures

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| [90] 1 / 2 | GN / BK/W | Engine Temperature / 5V Sensor Ground | ET sensor |
| [203F] 1 / 2 | V/GN / LGN/R | System Power / ACR Enable | Front ACR |
| [84] A / B | R/GN / GN/Y | System Power / Front Injector | Front injector |
| [211] A–F | GY/O, BK/W, GN/V, R/W, GY/V, GN/O | ETC Low, 5V Sensor Ground 1, TPS1, 5V Sensor Power 1, TPS2, ETC High | Throttle control actuator |
| [204] 1–6 | R/W, GN/W, BK/W, R/GY, GY/W, BK/GY | 5V Sensor Power 1, TGS 1, 5V Sensor Ground 1, 5V Sensor Power 2, TGS 2, 5V Sensor Ground 2 | Twist grip sensor |
| [83] A–C | GY/BE, R/GN, GN/BE | Rear Ignition Coil, System Power, Front Ignition Coil | Ignition coil |
| [95] A / B | V/GN / LGN/BK | System Power / Purge Solenoid | Purge solenoid |
| [65] A–C | R/W, LGN/Y, BK/GN | 5V Sensor Power, VSS Input, Ground | Vehicle speed sensor |
| [139] 1–3 | BK/W, R/W, W/O | 5V Sensor Ground 1, 5V Sensor Power 1, Oil PSI Sensor | Oil pressure sensor (sheet 3) |

## Power, lighting and diagnostics

- The 50 A main fuse [5B] supplies the BCM battery feed and fuse block [64B]. The block shows 5 A Battery (R to R/O), 7.5 A System Power (R/GN and V/GN), Radio (R to R/PK, rating absent), 5 A Spare, 15 A Cooling (R to BN) and 20 A P&A (R to R/BE), plus horn, cooling and P&A relays.
- The Cooling relay connects BN at 30 to BN/BE at 87. Its coil is R/GN at 85 and BK at 86. The P&A relay connects R/BE at 30 to V/BE at 87 and has R/Y at 85 and BK at 86.
- DLC [91A] shows 1 W/R, 2 BK, 3 W/BK, 5 R/Y and 6 W/BN. The emergency flasher [69] shows 87 BE/BN Front Right Emergency Lamp, 85 BE/V Front Left Emergency Lamp and 88 BE/BK Aux lamp Power.
- Fairing connections are [1B] and [2B]. The first drawing shows the OE and P&A dash switch packs [105L]/[105R], front wheel speed sensor [167], ignition switch [33], neutral switch [131] and ground branches GND 3-1 and GND 3-2. The other end of the ECM-side engine circuits is beyond the supplied captures.
