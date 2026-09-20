# 2002 / 2004 BMW M3 (E46) — DME pinout

Transcribed from the local engine-control wiring images listed below. The 2002- and 2004-labelled sets reproduce diagrams **197980, 197982, and 197983**, with the same terminal assignments and circuit routing.

| Filename-labelled vehicle | Sheet 1 — 197980 | Sheet 2 — 197982 | Sheet 3 — 197983 |
|--------------------------|------------------|------------------|------------------|
| 2002 BMW M3 | [Sheet 1](2002_bmw_m3_1.png) | [Sheet 2](2002_bmw_m3_2.png) | [Sheet 3](2002_bmw_m3_3.png) |
| 2004 BMW M3 | [Sheet 1](2004_bmw_m3_1.png) | [Sheet 2](2004_bmw_m3_2.png) | [Sheet 3](2004_bmw_m3_3.png) |

The [combined 2002 image](2002_bmw_m3_ecu.png) joins the three 2002 sheets. Vehicle names and years come from filenames, and E46 from the directory. No vehicle heading, engine code, or DME hardware designation is printed in the images. Consequently, this is a transcription of the supplied **M3-labelled files**, not an independently verified S54 or MSS54 pinout. The drawings include a characteristic map cooling thermostat, an individual control intake system valve, and a secondary-air mass meter; those component names are retained as printed.

The module is labelled **DIGITAL MOTOR ELECTRONICS (DME) CONTROL UNIT**, left rear of engine compartment. Five connectors have **134 numbered positions**: X60001 (9), X60002 (24), X60003 (52), X60004 (40), and X60005 (9). Unlisted terminals are not connected **in these diagrams**; this does not establish whether they are physically unused. Numbers at sheet edges are continuation references, not connector cavities.

Wire abbreviations: BLK black, BLU blue, BRN brown, GRN green, GRY grey, ORG orange, RED red, VIO violet, WHT white, YEL yellow; NCA means no colour available. Slashes separate base and tracer colours. Function labels retain source wording with spacing expanded. Colours are module-side labels unless otherwise noted. Sensor-side leads labelled NCA retain their harness colours in the tables.

## X60001 — 9 positions (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRN | FUEL INJ RELAY | Fuel injectors relay cavity 8, terminal 86 |
| 4 | BRN/ORG | GROUND | X6454, left rear of engine compartment |
| 5 | BRN | GROUND | X6454 |
| 6 | BRN | GROUND | X6454 |
| 7 | RED | B+ | B+ potential distributor X64101 pin 1, hot at all times |
| 8 | RED/WHT/YEL | VOLTAGE SUPPLY | E-box F2 (30 A), X8680 pin 4, after DME relay |

## X60002 — 24 positions (sheet 2)

“Front” and “rear” identify the source's oxygen sensors **in front of / behind the catalytic converter**. The source numbers each pair 1 and 2; it does not assign cylinder banks here.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRN | O2S FRT 1 HTR | Front oxygen sensor 1 pin 4 |
| 2 | GRN | O2S FRT 2 HTR | Front oxygen sensor 2 pin 4 |
| 3 | YEL/BRN | CAN L | Transmission control module pin 37 |
| 4 | YEL/BLK | CAN H | Transmission control module pin 36 |
| 6 | BRN | O2S REAR 1 HTR | Rear oxygen sensor 1 pin 2 |
| 7 | BLK | O2S FRT 1 | Front oxygen sensor 1 pin 5 |
| 8 | BLK | O2S REAR 2 | Rear oxygen sensor 2 pin 3 |
| 9 | BLK | O2S FRT 2 | Front oxygen sensor 2 pin 5 |
| 10 | BLK | O2S REAR 1 | Rear oxygen sensor 1 pin 3 |
| 12 | BRN | O2S REAR 2 HTR | Rear oxygen sensor 2 pin 2 |
| 13 | BLU | O2S FRT 1 | Front oxygen sensor 1 pin 2 |
| 14 | YEL | O2S REAR 2 | Rear oxygen sensor 2 pin 4 |
| 15 | BLU | O2S FRT 2 | Front oxygen sensor 2 pin 2 |
| 16 | YEL | O2S REAR 1 | Rear oxygen sensor 1 pin 4 |
| 19 | ORG | O2S FRT 1 | Front oxygen sensor 1 pin 6 |
| 20 | YEL | O2S FRT 1 SIG | Front oxygen sensor 1 pin 1 |
| 21 | ORG | O2S FRT 2 | Front oxygen sensor 2 pin 6 |
| 22 | YEL | O2S FRT 2 SIG | Front oxygen sensor 2 pin 1 |
| 23 | BRN/WHT | DME RELAY | DME relay cavity 4, terminal 85 |

Front oxygen sensors use six terminals; rear sensors use four. Heater power is RED/WHT from E-box F4 (30 A): pin 3 at each front sensor and pin 1 at each rear sensor. Heater returns and the other sensor circuits are separate wires; further electrical signal definitions are not printed.

## X60003 — 52 positions (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | YEL | MAF SENS | Hot film mass air flow sensor pin 3 |
| 3 | YEL | CRNKSFT SIG | Crankshaft position sensor pin 2 |
| 4 | RED/GRN | MAF SENS | Hot film mass air flow sensor pin 1 |
| 5 | BRN/WHT | VOLTAGE SUPPLY | Electric throttle actuator pin 2; voltage not printed |
| 6 | BRN/RED | FUEL INJ 2 | Fuel injection valve cylinder 2 pin 2 |
| 7 | BRN/BLU | FUEL INJ 4 | Fuel injection valve cylinder 4 pin 2 |
| 8 | BRN/VIO | FUEL INJ 6 | Fuel injection valve cylinder 6 pin 2 |
| 9 | GRN/VIO | VANOS OUTLET | VANOS outlet valve pin 2 |
| 10 | GRN/BLU | VANOS INLET | VANOS inlet valve pin 2 |
| 11 | BRN/GRN | FUEL INJ 5 | Fuel injection valve cylinder 5 pin 2 |
| 12 | GRY/BRN | MAP COOL | Characteristic map cooling thermostat pin 2 |
| 13 | BRN/WHT | FUEL INJ 1 | Fuel injection valve cylinder 1 pin 2 |
| 14 | BLK | RETURN | Hot film mass air flow sensor pin 5 |
| 15 | BRN/GRY | RETURN | Electric throttle actuator pin 6 |
| 16 | BRN/GRN | OIL PRESS | Oil pressure switch; component pin number not printed, other contact grounded |
| 19 | BLU | GEN | Charging system continuation |
| 21 | BRN | EVAP VALVE | Evaporative emission valve pin 1 |
| 22 | WHT/GRN | CLOSE SIG | Idle speed control valve pin 1 |
| 23 | WHT/YEL | OPEN SIG | Idle speed control valve pin 3 |
| 26 | BRN/YEL | FUEL INJ 3 | Fuel injection valve cylinder 3 pin 2 |
| 27 | YEL/BLU | IAT SIG | Hot film mass air flow sensor pin 6 |
| 28 | BRN/RED | COOL TEMP SIG | Engine coolant temperature sensor pin 1 |
| 29 | YEL | CAMSHFT 1 SIG | Camshaft position sensor 1 (inlet) pin 2 |
| 30 | YEL | CAMSHFT 2 SIG | Camshaft position sensor 2 (outlet) pin 2 |
| 31 | BRN/VIO | TP SIG | Electric throttle actuator pin 4, where the same wire is labelled BRN/BLU; see source inconsistencies |
| 32 | BRN/BLU | TP SIG | Electric throttle actuator pin 1, where the same wire is labelled BRN/VIO; see source inconsistencies |
| 33 | BLK | KNOCK SENS | Knock sensor pin 2 |
| 34 | BRN | KNOCK SENS | Knock sensor pin 4 |
| 35 | GRY/BRN | COOL TEMP | Engine coolant temperature sensor pin 2 |
| 36 | BRN | RETURN | Camshaft position sensor 1 (inlet) pin 3 |
| 37 | BRN | RETURN | Crankshaft position sensor pin 1 |
| 39 | BRN/WHT | AIR INJ VLV | Secondary air pump valve pin 1 |
| 40 | BRN/BLU | ICIS VALVE | Individual control intake system valve pin 1 |
| 42 | GRY/WHT | THROTTLE ACT | Electric throttle actuator pin 3 |
| 43 | BRN/BLK | THROTTLE ACT | Electric throttle actuator pin 5 |
| 44 | RED/BLU | OIL TEMP | Oil temperature sensor pin 1 |
| 45 | GRY/BRN | OIL TEMP | Oil temperature sensor pin 2 |
| 46 | YEL | KNOCK SENS | Knock sensor pin 1 |
| 47 | GRN | KNOCK SENS | Knock sensor pin 3 |
| 49 | BRN | RETURN | Camshaft position sensor 2 (outlet) pin 3 |
| 50 | GRY/BLU | OIL LEVEL | Oil level sensor pin 3 |

The knock-sensor component contains two sensing elements, connected to pins 1–2 and 3–4; cylinder groups and polarity are not printed. The mass-air-flow sensor's five connections include the IAT signal; there is no separate intake-air temperature sensor drawn. Oil level and oil temperature are separate components.

## X60004 — 40 positions (sheet 3)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 2 | BLK/RED | TANK LEAKAGE | Fuel tank leakage diagnostic module pin 2, heater circuit |
| 3 | BRN/BLU | AIR PUMP RELAY | Secondary air pump relay cavity 4, coil control |
| 4 | BLK/GRN | FAN | Cooling fans system continuation |
| 5 | BLK/YEL | 2NDRY AIR MASS | Secondary air hot-film airmass meter pin 1 |
| 7 | BRN/GRN | RETURN | Pedal position sensor pin 1 |
| 8 | WHT | PED POS 1 SIG | Pedal position sensor pin 4 |
| 9 | YEL | VOLTAGE SUPPLY | Pedal position sensor pin 5 |
| 10 | BLK/VIO | FUEL PUMP RLY | Fuel pump relay cavity 4, printed terminal 86 |
| 12 | BRN | RETURN | Pedal position sensor pin 2 |
| 13 | WHT/GRN | PED POS 2 SIG | Pedal position sensor pin 6 |
| 14 | YEL/GRN | VOLTAGE SUPPLY | Pedal position sensor pin 3 |
| 15 | BLK/RED | 2ND AIR MASS | Secondary air hot-film airmass meter pin 3 |
| 17 | BLK | RPM SIG | OBD socket X19527 pin 9, left footwell |
| 18 | GRY/VIO | EXH FLAP | Exhaust flap valve pin 1, left rear of luggage compartment |
| 19 | BRN/ORG | E-BOX FAN | E-box fan pin 1 |
| 20 | BRN/BLU | TANK LEAKAGE | Fuel tank leakage diagnostic module pin 1, motor circuit |
| 22 | WHT/GRN | RR SPEED SIG | ABS system continuation |
| 23 | BLU/BRN | CLUTCH SIG | Clutch switch pin 2, if equipped |
| 24 | BLU/RED | BRAKE SIG | Brakelight switch pin 4; also exterior lights continuation |
| 26 | GRN/BLK | TERMINAL 15 | Glove-box F29 (5 A), X10016 pin 58, hot in run or start |
| 27 | BLU/BLK | STR WHL CTRLS | Cruise control continuation |
| 28 | BRN/GRY | BRAKE SIG | Brakelight switch pin 3 |
| 29 | BLK/BLU | A/C RELAY | Air conditioning relay continuation |
| 30 | BLK/GRN | TANK LEAKAGE | Fuel tank leakage diagnostic module pin 3, valve circuit |
| 32 | WHT/VIO | TXD DIAG SIG | OBD socket X19527 pin 7 |
| 33 | BLK/VIO | DRV AWY PROT | Anti-theft system continuation |
| 36 | YEL/RED | CAN H | Computer datalines system continuation |
| 37 | YEL/BRN | CAN L | Computer datalines system continuation |
| 38 | BLK/GRN | COOL OUT TEMP | Coolant outlet temperature sensor pin 1 |
| 39 | BLK/GRY | COOL OUT TEMP | Coolant outlet temperature sensor pin 2 |

The pedal tracks use separate ground/signal/supply groups: component pins 1/4/5 and 2/6/3. Reference voltages are not printed. The secondary-air meter receives separate RED/WHT power at its pin 2; the source does not define the electrical roles of its two DME connections more precisely than the labels above.

## X60005 — 9 positions (sheet 3)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK/RED/WHT | IGN COIL 5 SIG | Ignition coil marked 5, pin 1 |
| 4 | BLK/YEL | IGN COIL 3 SIG | Ignition coil marked 3, pin 1 |
| 5 | BRN | GROUND | X6454, left rear of engine compartment |
| 6 | BLK/WHT | IGN COIL 1 SIG | Ignition coil marked 1, pin 1, third coil from left |
| 7 | BLK/RED | IGN COIL 2 SIG | Ignition coil marked 2, pin 1 |
| 8 | BLK/BLU | IGN COIL 4 SIG | Ignition coil marked 4, pin 1 |
| 9 | BLK/VIO | IGN COIL 6 SIG | Rightmost ignition coil pin 1; its component symbol is also marked “1” in both source sets |

All six coils use pin 1 control, pin 2 BRN ground to X6456 (right side of engine), and pin 3 RED/WHT power from E-box F1. The component numbers printed left to right are **5, 3, 1, 2, 4, 1**; the last conflicts with the DME's **IGN COIL 6 SIG** label. The table retains this discrepancy rather than treating the two “1” symbols as a shared circuit.

## Power, relays, and grounds

The E-box is at the left rear of the engine compartment. The **DME relay** receives permanent RED power from B+ distributor X64102 pin 2 at cavity 6 / terminal 30. DME X60002-23 controls cavity 4 / terminal 85 through BRN/WHT. Relay cavity 2 / terminal 87 supplies X8680 pin 5 (F2/F3/F4); cavity 5 / terminal 87 supplies X8680 pin 1 (F1).

| Fuse | Rating | Feed / output routing shown |
|------|--------|-----------------------------|
| E-box F1 | 30 A | After DME relay; X8680 pin 2 RED/WHT to all six ignition coils pin 3 |
| E-box F2 | 30 A | After DME relay; X8680 pin 4 RED/WHT/YEL to DME X60001-8, individual control intake system valve pin 2, secondary air pump valve pin 2, idle speed control valve pin 2, and evaporative emission valve pin 2 |
| E-box F3 | 20 A | After DME relay; X8680 pin 6 RED/WHT to mass-air-flow sensor pin 2, both camshaft sensors pin 1, crankshaft sensor pin 3, thermostat pin 1, leakage module pin 4, exhaust flap pin 2, E-box fan pin 2, secondary air pump relay cavity 8, and secondary-air mass meter pin 2 |
| E-box F4 | 30 A | After DME relay; X8680 pin 8 RED/WHT to front oxygen sensors pin 3 and rear oxygen sensors pin 1 |
| E-box F5 | 30 A | Hot at all times; X8680 pin 10 RED to fuel injectors relay cavity 6 / terminal 30 |
| Glove-box F54 | 15 A | Hot at all times; X10015 pin 17 RED/VIO to fuel pump relay cavity 6 / terminal 30 |
| Glove-box F9 | 5 A | Hot in accessory, run, or start; X10016 pin 18 VIO/YEL to brakelight switch pin 1 and optional clutch switch pin 3 |
| Glove-box F29 | 5 A | Hot in run or start; X10016 pin 58 GRN/BLK to DME X60004-26 |
| Glove-box F30 | 7.5 A | Hot in run or start; X10016 pin 60 GRN/BRN to oil level sensor pin 1 |
| Glove-box F36 | 50 A | Hot at all times; X10016 pin 70 RED to secondary air pump relay cavity 2 |

- **Fuel injectors relay:** cavity 8 / terminal 86 GRN is controlled by X60001-1; cavity 4 / terminal 85 BRN goes to X6454. Cavity 2 / terminal 87 RED/YEL supplies all six injector pin 1 terminals; their separate pin 2 controls are in X60003's table.
- **Fuel pump relay:** drawn inside the E-box boundary on sheet 2. Cavity 8 is printed terminal 85 and receives RED/WHT from the DME relay output before F1; cavity 4 is printed terminal 86 and goes to X60004-10 BLK/VIO. Cavity 2 / terminal 87 WHT/BLU feeds fuel pump pin 2. Pump pin 1 BRN goes to X494, behind right rear seat.
- **Secondary air pump relay:** cavity 8 RED/WHT receives F3 power; cavity 4 BRN/BLU goes to X60004-3. Cavity 6 BLK/RED/YEL feeds secondary air injection pump pin 2. Relay cavity 5 and pump pin 1 are BRN grounds at X14250, right front of engine compartment.
- **VANOS power:** inlet and outlet valve pin 1 RED/WHT share the line from the DME relay to X8680 pin 1, before F1. The two pin 2 controls are X60003-10 and X60003-9 respectively.
- **Oil level sensor:** under oil pan; pin 1 GRN/BRN from F30, pin 2 BRN to X6454, pin 3 GRY/BLU to X60003-50. The oil temperature sensor is separately shown at the front of the engine under the intake.
- **Clutch switch:** pin 3 VIO/YEL supply, pin 2 BLU/BRN DME signal, pin 1 BRN/WHT changing to BRN at X217, under left side of dash. Brakelight switch pins 3 and 4 are separate DME circuits; no switch pin 2 connection is drawn.

## Source inconsistencies and limits

- **Throttle-position wire labels disagree:** X60003-31 is labelled BRN/VIO at the DME but traces to actuator pin 4 labelled BRN/BLU; X60003-32 is labelled BRN/BLU at the DME but traces to actuator pin 1 labelled BRN/VIO. The coloured lines match the actuator-side labels. No inline connector or intentional colour-change annotation resolves the discrepancy.
- **The rightmost coil is numbered “1”**, while its DME wire X60005-9 is explicitly labelled IGN COIL 6 SIG. Both year sets reproduce this discrepancy.
- **Filename applicability is unverified:** identical circuit IDs support combining these local sets, but the images do not prove a particular M3 engine or ECU identity. No pin assignment has been substituted from another BMW pinout.
- The diagrams do not show connector-face orientation, ECU software/hardware numbers, or sensor-reference voltages. Charging, cooling fans, ABS, cruise control, anti-theft, air conditioning, exterior lights, and computer datalines arrows require their separate system drawings.

The [325 / 330Ci-labelled diagrams](2002-BMW-325-and-2004-BMW-330Ci-E46-DME-pinout.md) reuse these connector names with different injector, sensor, and ignition assignments. They are documented separately.
