# 2012 BMW X3 xDrive 28i (F25) L6-3.0L (N52T) — DME pinout

Transcribed from [2012 BMW X3 xDrive 28i (F25) ECU.pdf](2012%20BMW%20X3%20xDrive%2028i%20%28F25%29%20ECU.pdf) (ALLDATA "Engine Controls" wiring diagram, pages 385378–385382).

Digital Motor Electronics (DME) control module, located left rear of engine compartment.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| X60002 | 58 | Engine harness: throttle, DISA, crank, knock, MAF, MAP, tank vent |
| X60005 | 12 | Power: Terminal 15, grounds, main relay supplies |
| X60004 | 11 | Valvetronic motor + eccentric shaft position sensor |
| X60003 | 58 | Engine harness: O2 sensors, cam sensors, VANOS, coolant/oil sensors, BSD |
| X60006 | 24 | Fuel injectors + ignition coils |
| 1B | 48 | Vehicle harness: pedal, PT-CAN, FlexRay, DMTL, Term 15/30 |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink). Unlisted pins are not connected in this diagram.

## X60002 — engine harness connector (58-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 5 | RED/GRN | FILTER VALVE SPLY | Tank vent valve pin 1 |
| 17 | YEL/BLU | ELEC THROTTLE ACT SIG | Throttle valve actuator pin 2 |
| 18 | YEL | ELEC THROTTLE ACT SIG | Throttle valve actuator pin 4 |
| 20 | RED/GRN | DISA SPLY | DISA servo motor 1 pin 3 |
| 21 | RED/GRN | DISA SPLY | DISA servo motor 2 pin 3 |
| 22 | RED/GRN | CRANKSHAFT SENS SPLY | Crankshaft sensor pin 1 |
| 23 | RED/GRN | CRANKSHAFT SENS SPLY | Supply (hot-film air mass meter pin 2) |
| 24 | YEL/RED | TEMP SENS SIG | Hot-film air mass meter pin 4 (intake air temp) |
| 27 | BLU/YEL | SENS SPLY | Intake manifold pressure sensor pin 3 |
| 31 | BLU | ELEC THROTTLE ACT SPLY | Throttle valve actuator pin 1 |
| 32 | BLK/VIO | ELEC THROTTLE ACT GND | Throttle valve actuator pin 6 |
| 34 | BRN | DISA GND | DISA servo motor 1 pin 2 |
| 35 | BRN | DISA GND | DISA servo motor 2 pin 2 |
| 36 | BLK/GRN | CRANKSHAFT SENS GND | Crankshaft sensor pin 2 |
| 37 | BLK | GND | Hot-film air mass meter pin 3 / oil condition sensor pin 2 |
| 38 | YEL | KNOCK SENS SIG | Knock sensor cyl 1–3 |
| 39 | YEL | KNOCK SENS SIG | Knock sensor cyl 4–6 |
| 41 | BLK/YEL | SENS GND | Intake manifold pressure sensor pin 2 |
| 42 | VIO | BSD BUS SIG | Oil condition sensor pin 1; starting/charging system (alternator) |
| 45 | WHT/GRN | ELEC THROTTLE VLV ACT | Throttle valve actuator pin 3 |
| 46 | WHT/YEL | ELEC THROTTLE VLV ACT | Throttle valve actuator pin 5 |
| 47 | WHT/BLU | CHARCOAL FILTER VALVE | Tank vent valve pin 2 |
| 48 | WHT | DISA ACT | DISA servo motor 1 pin 1 |
| 49 | WHT/RED | DISA ACT | DISA servo motor 2 pin 1 |
| 50 | YEL | CRANKSHAFT SENS SIG | Crankshaft sensor pin 3 |
| 51 | YEL | SIG | Hot-film air mass meter pin 1 (air mass signal) |
| 52 | BLK/VIO | KNOCK SENS SIG | Knock sensor cyl 1–3 |
| 53 | BLK/YEL | KNOCK SENS SIG | Knock sensor cyl 4–6 |
| 55 | YEL/WHT | SENS SIG | Intake manifold pressure sensor pin 1 |

Component locations (page 2): knock sensors — left side of engine block; DISA servo motors 1/2 — center of intake manifold; throttle valve actuator — throttle valve assembly; oil condition sensor — base of oil pan; hot-film air mass meter — intake tube assembly; intake manifold pressure sensor — intake manifold assembly; crankshaft sensor — lower rear of engine block.

## X60005 — power connector (12-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | RED/GRN | TERMINAL 15 | |
| 2 | RED/GRN | TERMINAL 15 | |
| 3 | RED/GRN | TERMINAL 15 | |
| 4 | WHT/GRY | FUEL INJECTION ACTIVATION | Ignition & fuel injection relay (coil control) |
| 5 | WHT | FUEL INJECTION ACTIVATION | Ignition & fuel injection relay (coil control) |
| 6 | BRN | GND | Ground X6454 |
| 7 | BRN | GND | Ground X6454 |
| 8 | BRN | GND | Ground X6454 |
| 9 | BRN | GND | Ground X6454 |
| 10 | RED/GRN | SPLY | DME main relay (via fuses) |
| 11 | RED/GRN | SPLY | DME main relay (via fuses) |
| 12 | RED/GRN | SPLY | DME main relay (via fuses) |

## X60004 — Valvetronic connector (11-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BRN | ACT ACTIVATION | Variable valve timing gear actuator (Valvetronic motor) |
| 3 | RED | ACT ACTIVATION | Variable valve timing gear actuator (Valvetronic motor) |
| 4 | GRY | SENS SPLY | Valvetronic (eccentric shaft) position sensor |
| 5 | BLK | SENS GND | Valvetronic position sensor |
| 6 | BLU | SENS SIG | Valvetronic position sensor |
| 7 | (NCA) | SHIELD | |
| 8 | YEL | SENS SIG | Valvetronic position sensor |
| 9 | GRN | SENS SIG | Valvetronic position sensor |
| 10 | WHT | SENS SIG | Valvetronic position sensor |
| 11 | BRN | SENS SIG | Valvetronic position sensor |

## X60003 — engine harness connector (58-pin)

The car has four oxygen sensors: two before catalytic converter (6-wire: 1 YEL/WHT, 2 BLK/BLU, 3 WHT/GRN, 4 RED/GRN, 5 WHT, 6 YEL) and two after catalytic converter (1 RED/GRN, 2 WHT/GRY, 4 BLK/RED, 5 YEL).

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT/GRN | OXYGEN SENS SIG | Pre-cat O2 sensor pin 3 |
| 2 | WHT/GRN | OXYGEN SENS SIG | Pre-cat O2 sensor pin 3 |
| 6 | WHT | OXYGEN SENS SIG | Pre-cat O2 sensor pin 5 |
| 7 | WHT | OXYGEN SENS SIG | Pre-cat O2 sensor pin 5 |
| 10 | RED/GRN | COOLANT PUMP SPLY | Cooling fans system (electric coolant pump) |
| 12 | BLK | SENS GND | |
| 13 | RED/GRN | SENS SPLY | |
| 14 | RED/GRN | SOLENOID VLV SPLY | Exhaust VANOS solenoid valve pin 1 |
| 15 | RED/GRN | OXYGEN SENS SIG | O2 sensor circuit |
| 16 | RED/GRN | OXYGEN SENS SIG | O2 sensor circuit |
| 20 | BLK/BLU | OXYGEN SENS GND | Pre-cat O2 sensor pin 2 |
| 21 | BLK/BLU | OXYGEN SENS GND | Pre-cat O2 sensor pin 2 |
| 22 | YEL/RED | TEMP SENS SIG | Engine coolant temperature sensor pin 1 |
| 23 | BLK/VIO | TEMP SENS SIG | Engine coolant temperature sensor pin 2 |
| 24 | YEL | SENS SIG | Intake camshaft sensor pin 1 |
| 25 | BLK/BLU | SENS GND | Intake camshaft sensor pin 2 |
| 27 | RED/GRN | CTRL VLV SPLY | Oil pressure control valve pin 1 |
| 28 | RED/GRN | VANOS SOLENOID VLV | Intake VANOS solenoid valve pin 1 |
| 29 | RED/GRN | OXYGEN SENS SPLY | Pre-cat O2 sensor pin 4 |
| 30 | RED/GRN | OXYGEN SENS SPLY | Pre-cat O2 sensor pin 4 |
| 31 | WHT/GRY | OXYGEN SENS SIG | Post-cat O2 sensor pin 2 |
| 32 | BLK/RED | OXYGEN SENS GND | Post-cat O2 sensor pin 4 |
| 33 | BLK/RED | OXYGEN SENS GND | Post-cat O2 sensor pin 4 |
| 34 | YEL/WHT | OXYGEN SENS SIG | Pre-cat O2 sensor pin 1 |
| 35 | YEL/WHT | OXYGEN SENS SIG | Pre-cat O2 sensor pin 1 |
| 36 | VIO | BSD BUS SIG | |
| 37 | VIO | BSD BUS SIG | Cooling fans system |
| 38 | BLU/YEL | SENS ENGI SPLY | Engine oil pressure sensor pin 1 |
| 39 | RED/GRN | SENS SPLY | Camshaft sensor pin 3 |
| 40 | RED/GRN | SENS SPLY | Camshaft sensor pin 3 |
| 41 | WHT | CTRL VLV ACT | Oil pressure control valve pin 2 |
| 42 | WHT/BLU | VANOS SOLENOID VLV | Intake VANOS solenoid valve pin 2 |
| 43 | RED/GRN | MAP SPLY | MAP (characteristic-map) thermostat pin 1 |
| 44 | RED/GRN | HEATER SPLY | Engine breather heater 1 pin 1 |
| 45 | WHT/GRY | OXYGEN SENS SIG | Post-cat O2 sensor pin 2 |
| 46 | YEL | OXYGEN SENS SIG | O2 sensor circuit |
| 47 | YEL | OXYGEN SENS SIG | O2 sensor circuit |
| 48 | YEL | OXYGEN SENS SIG | O2 sensor circuit |
| 49 | YEL | OXYGEN SENS SIG | O2 sensor circuit |
| 52 | YEL/WHT | SENS SIG | Engine oil pressure sensor pin 2 |
| 53 | BLK/YEL | SENS GND | Engine oil pressure sensor pin 3 |
| 54 | YEL/BLU | SENS SIG | Exhaust camshaft sensor pin 1 |
| 55 | BLK/WHT | SENS GND | Exhaust camshaft sensor pin 2 |
| 56 | WHT | VANOS SOLENOID VLV | Exhaust VANOS solenoid valve pin 2 |
| 57 | WHT | MAP ACT | MAP thermostat pin 2 |

Component locations (pages 3, 5): camshaft sensors — front of cylinder head; VANOS solenoid valves — front of engine; MAP thermostat — lower right front of engine (connector X62790); coolant temperature sensor — front of engine; engine breather heater ground — X64553.

## X60006 — injector/coil connector (24-pin)

| Pin | Wire | Function |
|-----|------|----------|
| 1 | WHT/GRN | FUEL INJ 1 ACTIVATION |
| 2 | WHT/BLK | FUEL INJ 5 ACTIVATION |
| 3 | WHT/BRN | FUEL INJ 3 ACTIVATION |
| 4 | WHT/BRN | FUEL INJ 6 ACTIVATION |
| 5 | WHT/BLK | FUEL INJ 2 ACTIVATION |
| 6 | WHT/GRN | FUEL INJ 4 ACTIVATION |
| 7 | WHT | IGN COIL 4 ACTIVATION |
| 8 | WHT/YEL | IGN COIL 6 ACTIVATION |
| 9 | WHT/GRN | IGN COIL 5 ACTIVATION |
| 10 | WHT/GRN | IGN COIL 2 ACTIVATION |
| 11 | WHT/YEL | IGN COIL 3 ACTIVATION |
| 12 | WHT | IGN COIL 1 ACTIVATION |
| 13 | WHT | FUEL INJ 1 SPLY |
| 14 | WHT | FUEL INJ 2 SPLY |
| 15 | WHT | FUEL INJ 3 SPLY |
| 16 | WHT | FUEL INJ 4 SPLY |
| 17 | WHT | FUEL INJ 5 SPLY |
| 18 | WHT | FUEL INJ 6 SPLY |
| 19 | RED/GRN | IGN COIL 6 SPLY |
| 20 | RED/GRN | IGN COIL 4 SPLY |
| 21 | RED/GRN | IGN COIL 2 SPLY |
| 22 | RED/GRN | IGN COIL 5 SPLY |
| 23 | RED/GRN | IGN COIL 3 SPLY |
| 24 | RED/GRN | IGN COIL 1 SPLY |

Ignition coil grounds go to X6176 (cyl 1, 3, 5) and X6177 (cyl 2, 4, 6) at the top of the spark plugs.

## Connector 1B — vehicle harness connector (48-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRY/BRN | FUEL TANK LEAKAGE | Fuel tank leakage diagnostic module (DMTL) pin 3 |
| 2 | BRN/BLU | FUEL TANK LEAKAGE | DMTL pin 1 |
| 3 | BLK/RED | FUEL TANK LEAKAGE | DMTL pin 2 |
| 5 | GRN/YEL | TERM 15 SPLY | |
| 6 | YEL | HAL SENS SPLY | Accelerator pedal module (sensor 1) |
| 7 | WHT | HAL SENS SIG | Accelerator pedal module (sensor 1) |
| 8 | BRN/GRN | HAL SENS GND | Accelerator pedal module (sensor 1) |
| 13 | BLU | LIN BUS SIG | Starting/charging system |
| 17 | BLU/YEL | CUT-OUT RELAY | Cooling fans system |
| 18 | BLK/GRN | ELECTRIC FAN | Cooling fans system |
| 20 | BLK | SPEED SIG | Diagnosis socket |
| 21 | GRN/RED | TERM 15 WAKE UP SIG | Computer data lines system |
| 25 | VIO | CAR ACCESS SYSTEM | Car access system (left side of dash) |
| 35 | BRN/BLU | — | Air conditioning system |
| 36 | YEL/WHT | ENGINE START SIG | Car access system |
| 37 | RED/YEL | TERM 30 SPLY | Fuse 35 (15 A), junction box, right side of dash |
| 38 | YEL/GRN | HAL SENS SPLY | Accelerator pedal module (sensor 2) |
| 39 | WHT/GRN | HAL SENS SIG | Accelerator pedal module (sensor 2) |
| 40 | BRN | HAL SENS GND | Accelerator pedal module (sensor 2) |
| 42 | PNK/RED | FLEXRAY BUS SIG | |
| 43 | GRN/RED | FLEXRAY BUS SIG | |
| 45 | WHT/YEL | PT-CAN BUS SIG | Computer data lines system |
| 46 | WHT/BLU | PT-CAN BUS SIG | Computer data lines system |
| 47 | BLU/RED | PT-CAN BUS SIG | Computer data lines / footwell module |
| 48 | RED | PT-CAN BUS SIG | Computer data lines system |

## Fuel pump control module (EKPS) — below rear seat assembly

The fuel pump is not driven by the DME directly; the EKPS module controls it over PT-CAN.

Connector 1B:

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | RED/GRN | PWR SPLY | Fuse 184 (20 A), rear fuse holder (rear compt floor board), hot w/ Terminal 30B relay energized |
| 2 | BRN | GND | Ground Z10 12B |
| 9 | BLU/RED | PT CAN H | Computer data lines system |
| 13 | GRN/RED | WAKE-UP | Computer data lines system |
| 16 | RED | PT CAN L | Computer data lines system |

Connector 2B:

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 2 | BRN | FUEL PUMP | Electric fuel pump (fuel tank assembly) |
| 4 | RED/GRN | FUEL PUMP | Electric fuel pump (fuel tank assembly) |

## Power supply / relays (page 4)

Power distribution box, left rear of engine compartment:

- **Valvetronic relay** — fuse 6 (40 A)
- **Ignition & fuel injection relay** — fuses 4 (15 A) and 5 (20 A)
- **DME main relay** — fuses 3 (15 A), 2 (20 A), 1 (15 A)

Also: fuse 502 (100 A) in the fuse box (right rear compartment floor board, hot at all times) feeds a transfer terminal point; fuse 139 (5 A, rear fuse holder, hot w/ Terminal 30B relay) feeds the fuel tank leakage diagnostic module pin 4 (RED/WHT). Main DME ground at Z10 1B.
