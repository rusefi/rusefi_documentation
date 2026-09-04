# 2013 Subaru Impreza WRX F4-2.5L DOHC Turbo (EJ255) — ECM pinout

Transcribed from [2013 Subaru Impreza WRX.pdf](2013%20Subaru%20Impreza%20WRX.pdf) (ALLDATA "Engine Controls - W/ SI-Drive" wiring diagram, pages 415572–415576). The diagram itself only says "F4-2.5L DOHC Turbo"; the EJ255 code is not printed on it.

Engine control module (ECM), located right side of dash.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| B136 | 35 | Vehicle harness: power, ground, MAF, O2 sensors, cruise/AC/CAN/fuel pump module, neutral switch |
| B135 | 35 | Vehicle harness: relays, accelerator pedal, ELCM, clutch switch, cooling fans, sensor ground junction |
| B137 | 31 | Engine harness (via B21/E2): crank, cam signals, MAP, ECT, TGV/valve position, purge, knock |
| B134 | 34 | Engine harness (via B21/E2): injectors, coils, AVCS oil flow valves, throttle motor/TPS, TGV motors, 5V/AGND |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink; NCA = shield/drain, no color assigned). Unlisted pins are not connected in this diagram.

Unlike ALLDATA's BMW/VW diagrams, this Subaru diagram prints no per-pin function names, only wire colors. The "Function" column therefore gives the destination system/component name as printed on the diagram, and "Connects to" gives the printed routing (component pin, intermediate connectors, page-edge continuations). Engine-harness pins go through the body-to-engine connector B21 (body side) / E2 (engine side); the E2-side wire color is given in parentheses because the color changes at that connector.

## B136 — vehicle harness connector (35-pin)

Page 415572. Same page shows B135.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | YEL/BLK | Main relay output (switched 12V) | Main relay (right relay block) pin 22 (YEL/BLK), via page-edge 5; the same line feeds electronic throttle control relay pin 31 |
| 2 | WHT | Backup power | Fuse 13 (7.5 A), main fuse box (left rear of engine compt), hot at all times, via B186-5 |
| 3 | LT GRN | CRUISE CONTROL SYSTEM | |
| 4 | BLK/BLU | Ground | J/C B122 (right side of dash) ground junction |
| 5 | WHT/RED | Front A/F sensor heater | Front oxygen (A/F) sensor (front of front catalytic converter) pin 2; pins 5 and 6 are joined |
| 6 | WHT/RED | Front A/F sensor heater | Same as pin 5 |
| 7 | YEL/BLK | AIR CONDITIONING SYSTEM | |
| 9 | RED/BLK | Oxygen sensor shield | J/C B138 (right side of dash) -> shield drains (NCA) of the front A/F sensor and rear oxygen sensor cables |
| 10 | NCA | Shield | Shield drain (drawn to a shield symbol only, no other connection shown) |
| 11 | BLK/GRN | MASS AIR FLOW & INTAKE AIR TEMPERATURE SENSOR | MAF/IAT sensor (right side of engine compt) pin 4 |
| 12 | YEL/BLU | CRUISE CONTROL SYSTEM | |
| 13 | WHT | CRUISE CONTROL SYSTEM | |
| 15 | YEL | CRUISE CONTROL SYSTEM | |
| 16 | WHT/BLK | STARTING/CHARGING SYSTEM | |
| 17 | RED | COMPUTER DATA LINES SYSTEM | |
| 18 | BLK | FRONT OXYGEN (A/F) SENSOR | Front A/F sensor pin 3 |
| 19 | WHT | FRONT OXYGEN (A/F) SENSOR | Front A/F sensor pin 4 |
| 20 | WHT | REAR OXYGEN SENSOR | Rear oxygen sensor (rear of transmission) pin 3 |
| 21 | BLU/ORG | ELCM VACUUM PUMP | ELCM vacuum pump (fuel tank) pin 7, via B92/R5-15 |
| 22 | WHT | MASS AIR FLOW & INTAKE AIR TEMPERATURE SENSOR | MAF/IAT sensor pin 5 |
| 28 | BLU | COMPUTER DATA LINES SYSTEM | |
| 29 | PNK | AIR CONDITIONING SYSTEM | |
| 30 | GRN/RED | Ignition switch power | Fuse 12 (15 A), fuse & relay box F/B, hot in ON or START, via B52-24; the same GRN/RED feed goes to the fuel pump relay coil (pin 15) and, via B21/E2-49 (RED), to ignition coils pin 3 |
| 31 | YEL/BLU | MASS AIR FLOW & INTAKE AIR TEMPERATURE SENSOR | MAF/IAT sensor pin 1 |
| 33 | GRN | FUEL PUMP CONTROL MODULE | Fuel pump control module (sedan: right rear of trunk; hatchback: right rear quarter panel) pin 8, via B97/R1-5 |
| 34 | PNK | TEST MODE SUB CONNECTOR | Test mode sub connector B363 pin 1 (B363/B364, next to the delivery (test) mode connector B75/B76, right side of dash) |
| 35 | GRN/BLK | NEUTRAL POSITION SWITCH (M/T) | Neutral position switch (left side of transmission) pin 1 (BLK), via I53/R98-2 |

## B135 — vehicle harness connector (35-pin)

Page 415572.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 3 | RED | PRESSURE CONTROL SOLENOID VALVE | Pressure control solenoid valve (under center rear of vehicle) pin 2, via B98/R2-7 and R15/R57-10 (page 415573) |
| 4 | BRN/WHT | ELCM VACUUM PUMP | ELCM vacuum pump pin 1, via B92/R5-14 |
| 6 | RED/WHT | REAR OXYGEN SENSOR (heater) | Rear oxygen sensor pin 1, via T5/B19-1 |
| 7 | BLU/RED | ELECTRONIC THROTTLE CONTROL RELAY | Electronic throttle control relay (right relay block) pin 30 (coil) |
| 8 | RED/BLK | SECONDARY AIR COMBINATION VALVE RELAY 1 | Relay 1 pin 2 (coil), via main fuse box M/B B143-2 -> internal link -> M/B pin 5 |
| 9 | RED/YEL | CLUTCH SWITCH | Clutch switch (left side of dash) pin 2 |
| 10 | LT GRN/RED | FUEL PUMP CONTROL MODULE | Fuel pump control module pin 9, via B97/R1-6 |
| 11 | RED/BLU | COOLING FANS SYSTEM | |
| 12 | BLK/RED | COOLING FANS SYSTEM | |
| 13 | LT GRN | MAIN RELAY / A/F & OXYGEN SENSOR RELAY (coil control) | Main relay pin 24 and A/F & oxygen sensor relay pin 12 (both right relay block) |
| 14 | VIO/RED | COMPUTER DATA LINES SYSTEM | |
| 15 | GRY/RED | COMBINATION METER | Combination meter pin 32, via B36/I1-17 |
| 17 | RED/BLU | ELECTRONIC THROTTLE CONTROL RELAY (output) | Electronic throttle control relay pin 32 (contact output; relay pin 29 WHT/BLU is fed from B145-6) |
| 19 | GRN/YEL | AIR CONDITIONING SYSTEM | |
| 20 | RED | SECONDARY AIR COMBINATION VALVE RELAY 2 | Relay 2 pin 9 (coil), via M/B B143-12 -> internal link -> M/B pin 18 |
| 21 | GRN/BLK | ACCELERATOR PEDAL POSITION SENSOR | APP sensor (left side of dash) pin 4 |
| 22 | WHT/BLU | ACCELERATOR PEDAL POSITION SENSOR / ELCM | APP sensor pin 1; also ELCM vacuum pump pin 6 via B92/R5-16 |
| 23 | WHT | ACCELERATOR PEDAL POSITION SENSOR | APP sensor pin 6 |
| 24 | BLK/RED | ANTI-THEFT SYSTEM | |
| 25 | WHT/BLU | ANTI-THEFT SYSTEM | |
| 26 | BLK/BLU | STARTING/CHARGING SYSTEM | |
| 27 | RED/GRN | SECONDARY AIR PUMP RELAY | Secondary air pump relay pin 13 (coil), via M/B B143-4 -> internal link -> M/B F37-8 |
| 29 | BLU | ACCELERATOR PEDAL POSITION SENSOR | APP sensor pin 5 |
| 30 | YEL/WHT | J/C B83 (sensor ground junction) | J/C B83 (right side of dash) joins: MAF/IAT sensor pin 2 (YEL/RED), APP sensor pin 2 (YEL/BLU), rear oxygen sensor pin 4 (YEL/BLK, via T5/B19-4), ELCM vacuum pump pin 8 (YEL/WHT via B92/R5-17) |
| 31 | ORG | ACCELERATOR PEDAL POSITION SENSOR | APP sensor pin 3 |
| 35 | BLU/ORG | AIR CONDITIONING SYSTEM | |

## B137 — engine harness connector (31-pin)

Page 415576 (components on pages 415574–415576). Sensors: crankshaft position sensor at lower front of engine; knock sensor at rear of engine; MAP sensor at top right rear of engine (turbo); ECT sensor at top front of engine (turbo); camshaft position sensors: right exhaust (HO-turbo: right front), left intake (HO-turbo: left rear), right intake (HO-turbo: right rear), left exhaust (HO-turbo: left front). All four cam sensors share pin 1 BLK (main-relay 12V via engine-harness BLK/WHT) and pin 3 WHT/BLU (to pin 30 below).

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK/WHT | Ground | GE (turbo: top left of engine; HO-turbo: top right side of engine) |
| 2 | WHT | KNOCK SENSOR | Knock sensor pin 1 (WHT), via B21/E2-4 |
| 3 | BLK/YEL | Ground | GE |
| 6 | RED/GRN | PURGE CONTROL SOLENOID VALVE 1 | Purge control solenoid valve 1 (on intake manifold) pin 2, via B21/E2-11 (WHT) |
| 7 | YEL/BLK | Main relay output (switched 12V) | Same YEL/BLK main-relay line as B136-1; through B21/E2-48 it becomes the engine-harness BLK/WHT feed for injectors pin 1, purge valves pin 1, wastegate valve pin 1 and cam sensors pin 1 |
| 8 | NCA | Shield | Shield drain (drawn to a shield symbol only) |
| 9 | BLU/WHT | LEFT SECONDARY AIR COMBINATION VALVE | Left secondary air combination valve (turbo: left rear of engine) pin 2, via B21/E2-1 (RED/YEL) |
| 10 | WHT/BLU | LEFT TUMBLE GENERATOR VALVE ASSEMBLY | Left TGV assembly (left rear of engine) pin 1, via B21/E2-27 (YEL/RED) |
| 11 | WHT/RED | RIGHT TUMBLE GENERATOR VALVE ASSEMBLY | Right TGV assembly (turbo: right front of engine) pin 1, via B21/E2-16 (WHT/RED) |
| 12 | YEL/RED | LEAK DIAGNOSIS CONNECTOR 1 | Leak diagnosis connector 1 pin 2, via B21/E2-45 (BLU/RED) |
| 15 | VIO | PURGE CONTROL SOLENOID VALVE 2 | Purge control solenoid valve 2 (on intake manifold) pin 2, via B21/E2-44 (GRN/WHT) |
| 16 | GRN/WHT | LEFT INTAKE CAMSHAFT POSITION SENSOR | Left intake cam sensor pin 2, via B21/E2-13 (GRN/YEL) |
| 17 | WHT | CRANKSHAFT POSITION SENSOR | Crankshaft position sensor pin 1, via B21/E2-3 (BLU) |
| 20 | YEL/WHT | MANIFOLD ABSOLUTE PRESSURE SENSOR | MAP sensor pin 1, via B21/E2-23 (ORG) |
| 22 | BRN/WHT | ENGINE COOLANT TEMPERATURE SENSOR | ECT sensor pin 2, via B21/E2-12 (GRY) |
| 23 | YEL/BLK | RIGHT EXHAUST CAMSHAFT POSITION SENSOR | Right exhaust cam sensor pin 2, via B21/E2-15 (GRN/BLK) |
| 24 | GRN/ORG | RIGHT INTAKE CAMSHAFT POSITION SENSOR | Right intake cam sensor pin 2, via B21/E2-2 (GRN/RED) |
| 25 | BLK | CRANKSHAFT POSITION SENSOR | Crankshaft position sensor pin 2, via B21/E2-14 (GRN) |
| 27 | LT GRN | ELCM VACUUM PUMP | ELCM vacuum pump pin 4, via B92/R5-13 (page 415572; routed across all sheets to B137) |
| 28 | PNK/BLK | POWER STEERING OIL PRESSURE SWITCH | Power steering oil pressure switch (right front of engine), via B21/E2-18 (RED/YEL) |
| 29 | BRN/YEL | LEFT EXHAUST CAMSHAFT POSITION SENSOR | Left exhaust cam sensor pin 2, via B21/E2-26 (GRN/WHT) |
| 30 | YEL/BLK | CAMSHAFT POSITION SENSORS (common) | Pin 3 (WHT/BLU) of all four camshaft position sensors, via B21/E2-5 |
| 31 | NCA | Shield | J/C B122 (right side of dash) shield/ground junction, via page-edge continuations through 415573–415575 |

## B134 — engine harness connector (34-pin)

Page 415576. Injector locations: 1 right front, 2 left front, 3 right rear, 4 left rear (pin 1 BLK/WHT = 12V from main relay, pin 2 = ECM). Ignition coils (turbo): coil 1 right front, coil 2 left front, coil 3 right front, coil 4 left front (pin 1 = ECM signal, pin 2 BLK/WHT = GE ground, pin 3 RED = ignition power via B21/E2-49). AVCS oil flow control solenoid valves: left exhaust / left intake at left front of engine, right exhaust / right intake at right front. Electronic throttle control (ETC) at throttle body.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT/BLK | ELECTRONIC THROTTLE CONTROL (motor) | ETC pin 1 (WHT), via B21/E2-39 |
| 2 | GRN/YEL | ELECTRONIC THROTTLE CONTROL (motor) | ETC pin 2 (BLK), via B21/E2-38 |
| 3 | BLK/RED | Ground | GE, via B21/E2-35 (BLK/YEL) |
| 4 | BLK/YEL | Ground | GE |
| 5 | BLU/WHT | LEFT EXHAUST OIL FLOW CONTROL SOLENOID VALVE | Left exhaust OFCV pin 1 (GRY), via B21/E2-42 |
| 6 | BLK/BLU | Ground | GE, via B21/E2-36 (BLK/YEL) |
| 7 | RED/WHT | RIGHT EXHAUST OIL FLOW CONTROL SOLENOID VALVE | Right exhaust OFCV pin 1 (GRY), via B21/E2-7 |
| 10 | PNK | FUEL INJECTOR 1 | Fuel injector 1 (right front) pin 2 (GRN/WHT), via B21/E2-54 |
| 11 | PNK/BLU | FUEL INJECTOR 2 | Fuel injector 2 (left front) pin 2 (BLU/WHT), via B21/E2-53 |
| 12 | PNK/BLK | FUEL INJECTOR 3 | Fuel injector 3 (right rear) pin 2 (WHT), via B21/E2-52 |
| 13 | PNK/GRN | FUEL INJECTOR 4 | Fuel injector 4 (left rear) pin 2 (BRN/RED), via B21/E2-51 |
| 14 | BLU/RED | LEFT EXHAUST OIL FLOW CONTROL SOLENOID VALVE | Left exhaust OFCV pin 2 (BLU/YEL), via B21/E2-43 |
| 15 | BLU/BLK | RIGHT EXHAUST OIL FLOW CONTROL SOLENOID VALVE | Right exhaust OFCV pin 2 (BRN/YEL), via B21/E2-17 |
| 16 | GRN | LEFT INTAKE OIL FLOW CONTROL SOLENOID VALVE | Left intake OFCV pin 2 (YEL/BLK), via B21/E2-33 |
| 17 | GRN/BLU | LEFT INTAKE OIL FLOW CONTROL SOLENOID VALVE | Left intake OFCV pin 1 (BLU/BLK), via B21/E2-32 |
| 18 | WHT | ELECTRONIC THROTTLE CONTROL (position) | ETC pin 6 (WHT/RED), via B21/E2-25 |
| 19 | BRN/WHT | Sensor 5V supply | B21/E2-28 -> engine-harness RED: ETC pin 5, left and right TGV assembly pin 3, left secondary air combination valve pin 1, MAP sensor pin 3 |
| 21 | WHT/RED | IGNITION COIL 1 | Ignition coil 1 (right front) pin 1 (GRN/YEL), via B21/E2-9 |
| 22 | YEL/GRN | IGNITION COIL 2 | Ignition coil 2 (left front) pin 1 (BLU/YEL), via B21/E2-20 |
| 23 | RED/GRN | LEFT TUMBLE GENERATOR VALVE ASSEMBLY | Left TGV assembly pin 5 (BLU), via B21/E2-29 |
| 24 | RED/YEL | LEFT TUMBLE GENERATOR VALVE ASSEMBLY | Left TGV assembly pin 4 (YEL/BLU), via B21/E2-30 |
| 25 | RED/BLK | RIGHT TUMBLE GENERATOR VALVE ASSEMBLY | Right TGV assembly pin 5 (WHT/BLU), via B21/E2-8 |
| 26 | RED/BLU | RIGHT TUMBLE GENERATOR VALVE ASSEMBLY | Right TGV assembly pin 4 (PNK/BLU), via B21/E2-19 |
| 27 | GRN/RED | RIGHT INTAKE OIL FLOW CONTROL SOLENOID VALVE | Right intake OFCV pin 2 (WHT/BLK), via B21/E2-22 |
| 28 | BLU | ELECTRONIC THROTTLE CONTROL (position) | ETC pin 4 (WHT), via B21/E2-24 |
| 29 | YEL/GRN | Sensor ground | B21/E2-6 -> engine-harness BLK/BLU: ECT sensor pin 1, ETC pin 3, left and right TGV assembly pin 2, left secondary air combination valve pin 3, MAP sensor pin 2, knock sensor pin 2 |
| 31 | WHT/GRN | IGNITION COIL 3 | Ignition coil 3 (right front) pin 1 (BRN/YEL), via B21/E2-31 |
| 32 | WHT/BLU | IGNITION COIL 4 | Ignition coil 4 (left front) pin 1 (YEL), via B21/E2-10 |
| 33 | YEL/RED | WASTEGATE CONTROL SOLENOID VALVE | Wastegate control solenoid valve (right rear of engine) pin 2 (BLU/WHT), via B21/E2-50 |
| 34 | GRN/WHT | RIGHT INTAKE OIL FLOW CONTROL SOLENOID VALVE | Right intake OFCV pin 1 (GRN/BLK), via B21/E2-21 |

## Power supply / relays (pages 415572–415574)

Main fuse box (M/B), left rear of engine compartment, all hot at all times:

- **Fuse 13 (7.5 A)** — ECM backup power, B136-2 (WHT via B186-5)
- **Fuse SBF-5 (30 A)** — WHT/YEL via B186-1 to the right fuse & relay box (F/B) 15 A fuse (pins 1/2) feeding the A/F & oxygen sensor relay pin 9
- **Fuse SBF-7 (30 A)** — WHT/RED via B145-5 to the F/B 15 A fuse (pins 3/4) feeding the main relay pin 23 and A/F relay pin 11 coils (WHT/BLU); also WHT/BLU via B145-6 to the electronic throttle control relay pin 29
- **Fuse 11 (15 A)** — WHT/GRN via B186-3 to fuel pump relay pin 13
- **Fuse 10 A / fuse 60 A** in the relay holder (left rear of engine compt) — secondary air combination valve relay 2 / secondary air pump relay contacts (pins 5, 16 NCA)

Fuse & relay box (F/B), hot in ON or START:

- **Fuse 12 (15 A)** — GRN/RED via B52-24: ECM B136-30, fuel pump relay coil pin 15, ignition coils pin 3 (via B21/E2-49)
- **Fuse 4 (10 A)** — GRN/YEL via B52-8: clutch switch pin 1, multi J/C B440/B441/B438, data link connector pin 8
- **Fuse 5 (10 A)** — BRN/WHT via I5-20: combination meter pin 2
- **Fuse 7 (15 A, hot at all times)** — WHT/BLU via R168-11 and I102/R167-2: combination meter pin 1

Relays, right relay block:

- **Main relay** — pins 23 WHT/BLU (coil +, from F/B 15 A fuse), 24 LT GRN (coil, ECM B135-13), 21 WHT/BLU (contact in), 22 YEL/BLK (contact out: ECM B136-1 and B137-7, ETC relay pin 31, pressure control solenoid valve pin 1, secondary air relays via M/B, and via B21/E2-48 the engine-harness BLK/WHT feed)
- **A/F & oxygen sensor relay** — pins 11 WHT/BLU (coil +), 12 LT GRN (coil, ECM B135-13), 9 WHT/RED (contact in), 10 WHT/BLK (contact out: front A/F sensor pin 1 and rear oxygen sensor pin 2 heaters)
- **Electronic throttle control relay** — pins 30 BLU/RED (coil, ECM B135-7), 31 YEL/BLK (main relay output), 29 WHT/BLU (contact in, B145-6), 32 RED/BLU (contact out, ECM B135-17)
- **Fuel pump relay** — pins 15 GRN/RED (coil, fuse 12), 16 BLK (coil ground GB-3, right end of dash), 13 WHT/GRN (contact in, fuse 11), 14 RED/BLK (contact out, fuel pump control module pin 10 via B97/R1-4). The fuel pump itself is driven by the fuel pump control module, which the ECM commands on B136-33 / B135-10.
- **Secondary air combination valve relays 1 and 2, secondary air pump relay** — coils from ECM B135-8, B135-20 and B135-27 respectively; contacts through the main fuse box (M/B pins 14/5/16/11/20/18/8 top, 2/12/4/9/10/14/4 bottom, B143/B144/F37) to the left and right secondary air combination valves (via B21/E2-47 and -46) and the secondary air pump (left front of engine compartment).

Grounds: ECM B136-4 to J/C B122 (right side of dash); B137-1, B137-3, B134-3, B134-4, B134-6 to engine ground GE (turbo: top left of engine; HO-turbo: top right side of engine); ignition coils pin 2 (BLK/WHT), leak diagnosis connector 2 pin 2 and left secondary air combination valve pin 4 also to GE (injectors pin 1 BLK/WHT is the main-relay 12V feed, not ground); combination meter to GB-7 (near right "C" pillar) / GB-11 (under center console) via joint ground connector I97; secondary air pump to GP.
