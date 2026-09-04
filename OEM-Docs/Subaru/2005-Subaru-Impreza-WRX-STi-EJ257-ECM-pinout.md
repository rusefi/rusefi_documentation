# 2005 Subaru Impreza WRX STi 2.5L Turbo (EJ257) — ECM pinout

Transcribed from [2005-impreza-2.5T.pdf](2005-impreza-2.5T.pdf) (Mitchell "Engine Performance > 2.5L Turbo" wiring diagram, Fig 1-4 = diagrams 216834-216837; PDF pages 6-9 repeat the same four diagrams as Fig 5-8).

Engine Control Module (ECM), located behind right side of dash. Four connectors, designators as printed on the diagram.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| B137 | 31 | Vehicle side: grounds, throttle motor, main/throttle relay, body switches, DLC, PCV diagnosis, rear O2 signal, fuel pump control module |
| B135 | 35 | Power supply, ignition coils, crank/cam sensors, cooling fans, vehicle speed, fuel pump control module |
| B136 | 35 | Sensors: injector low sides, MAF, IAT, ECT, accelerator pedal, throttle position, MAP, knock, TGV position, fuel tank sensors, cruise |
| B134 | 34 | Actuators: A/F sensor, TGV motors, AVCS solenoids, purge/drain/tank solenoids, wastegate, MIL, tach output, cruise |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink; NCA = no color assigned, used for shield drains and sensor pigtails). Unlisted pins have no wire in this diagram. Mitchell prints no function labels at the ECM pins, so the "Function (as printed)" column carries the name of the far-end component or system exactly as it is printed on the diagram; ")(" in the source (an in-line connector where the wire color changes) is noted as "in-line connector".

## B137 — vehicle harness connector (31-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK/RED | GE-1 (TOP LEFT SIDE OF ENGINE) | Ground GE-1; spliced with pin 2, PCV DIAGNOSIS CONNECTOR pin 1 (BLK/RED) and the BLK/RED ground bus (see notes) |
| 2 | BLK/RED | GE-1 | Same splice as pin 1 |
| 3 | BLK/WHT | GE-1 | Ground GE-1 (own wire) |
| 4 | BLU/RED | ELECTRIC THROTTLE CONTROL (ON TOP REAR OF ENGINE) | In-line connector to WHT; throttle body pin 1 (WHT), throttle motor |
| 5 | BLU/WHT | ELECTRIC THROTTLE CONTROL | In-line connector to BLK; throttle body pin 2 (BLK), throttle motor |
| 6 | YEL/GRN | ELECTRIC THROTTLE RELAY (BEHIND RIGHT SIDE OF DASH) | Relay pin 4 (contact output; contact input pin 2 YEL/BLK is battery via SBF-5) |
| 7 | BLK/YEL | GE-1 | In-line connector to BLK/BLU; ground GE-1 |
| 8 | YEL | STARTING/CHARGING SYSTEM | |
| 9 | GRN/BLK | NEUTRAL POSITION SWITCH | Switch pin 2 (GRN/BLK); switch pin 5 (BLK/RED) is on the BLK/RED ground bus |
| 10 | ORG/BLK | POWER STEERING OIL PRESSURE SWITCH (AT LEFT FRONT OF ENGINE) | In-line connector to RED/YEL; switch (other side to ground) |
| 11 | BLU | DEFOGGER SYSTEM | |
| 12 | BLK/WHT | INTERIOR LIGHTS SYSTEM | |
| 13 | GRN/RED | AIR CONDITIONING SYSTEM | |
| 14 | GRN/RED | FUSE 11 (15A, HOT IN ON OR START) | Fuse & relay box (F/B) connector B152 pin 5; same node feeds ignition coils 1-4 pin 3 (RED/YEL after in-line connector) and FUEL PUMP RELAY pin 1 (GRN/RED) |
| 15 | ORG | LINE END CONNECTOR / CHECK CONNECTOR | Line end connector B125 (ORG) and check connector pin 4 (ORG), both behind left side of dash |
| 16 | LT GRN/WHT | MAIN RELAY (BEHIND RIGHT SIDE OF DASH) | Relay pin 2 (coil) |
| 17 | BLU/YEL | AIR CONDITIONING SYSTEM | |
| 20 | LT GRN/BLK | DATA LINK CONNECTOR (BEHIND DASH, LEFT OF STEERING COLUMN) | DLC pin 10 (LT GRN/BLK); also check connector pin 12 (LT GRN/BLK) and DRIVER'S CONTROL CENTER DIFFERENTIAL CONTROL MODULE pin 9 (LT GRN/BLK) |
| 24 | BLU/RED | PCV DIAGNOSIS CONNECTOR | Pin 2 (BLU/RED) |
| 25 | WHT | REAR OXYGEN SENSOR | Sensor pin 3 (WHT), shielded cable; shield drain to B137-31 |
| 28 | LT GRN/RED | FUEL PUMP CONTROL MODULE | Module pin 5 (LT GRN/RED) |
| 29 | RED/WHT | DATA LINK CONNECTOR | DLC pin 6 (RED/WHT) |
| 31 | NCA | (shield) | Shield drain of the B137-25 rear O2 signal cable |

Component locations (Fig 1, 2): PCV diagnosis connector, main relay and electric throttle relay - behind right side of dash; fuse & relay box (F/B) - behind left side of dash; GE-1 - top left side of engine; GE-2 - top right of engine; data link connector - behind dash, left of steering column; test mode connector (B76 pin 1 BLK/RED, B75 pin 1 RED/BLU), line end connector (B126 RED/BLU, B125 ORG) and check connector - behind left side of dash; neutral position switch and electric throttle control - engine (throttle body on top rear of engine).

## B135 — power and engine harness connector (35-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK/WHT | GE-1 | Spliced with pin 4; in-line connector to BLK/BLU; ground GE-1. Same node also goes to COMBINATION METER pin 10 (BLK/WHT) |
| 2 | RED/WHT | REAR OXYGEN SENSOR | Sensor pin 1 (RED/WHT), heater |
| 4 | BLK/WHT | GE-1 | Spliced with pin 1 |
| 5 | YEL/BLU | MAIN RELAY | Relay pin 3 (contact output); spliced with pin 6. Same YEL/BLU node feeds ELECTRIC THROTTLE RELAY pin 1, fuel injectors 1-4 pin 2 (RED), MASS AIR FLOW SENSOR pin 1, WASTE GATE SOLENOID pin 2, INTERNAL PRESSURE SOLENOID VALVE pin 1, DRAIN VALVE pin 1 and PRESSURE CONTROL SOLENOID VALVE pin 1 (YEL/GRN) |
| 6 | YEL/BLU | MAIN RELAY | Spliced with pin 5 |
| 8 | YEL | LEFT ACTIVE VALVE CONTROL ANGLE SENSOR | Sensor pin 2 (GRN/YEL after in-line connector) |
| 9 | RED | RIGHT ACTIVE VALVE CONTROL ANGLE SENSOR | Sensor pin 2 (GRN/ORG after in-line connector) |
| 10 | BLU | CRANKSHAFT POSITION SENSOR (ON LOWER FRONT OF ENGINE) | Sensor pin 1 (ORG/BLU), shielded cable |
| 12 | BLK | GE-1 | In-line connector to BLK/YEL; ground GE-1 |
| 15 | YEL/GRN | IGNITION COIL 4 (AT LEFT REAR OF ENGINE) | Coil pin 1 (YEL after in-line connector) |
| 16 | YEL/RED | IGNITION COIL 3 (AT RIGHT REAR OF ENGINE) | Coil pin 1 (WHT/YEL after in-line connector) |
| 17 | YEL/BLK | IGNITION COIL 2 (AT LEFT FRONT OF ENGINE) | Coil pin 1 (BLU/YEL after in-line connector) |
| 18 | YEL | IGNITION COIL 1 (AT RIGHT FRONT OF ENGINE) | Coil pin 1 (GRN/YEL after in-line connector) |
| 19 | BLU/RED | MAIN RELAY | Relay pins 1 and 5 (BLU/RED), battery feed from SBF-5, hot at all times |
| 22 | GRN | CRANKSHAFT POSITION SENSOR | Sensor pin 2 (WHT/BLU), shielded cable |
| 24 | GRN/RED | COOLING FANS SYSTEM | |
| 25 | RED/BLU | COOLING FANS SYSTEM | |
| 26 | GRN/YEL | VEHICLE SPEED SENSOR (ON RIGHT SIDE OF TRANSMISSION CASE) | Sensor pin 1 (GRN/YEL); spliced to COMBINATION METER pin 2 (GRN/BLK after in-line connector), speedometer |
| 27 | VIO/WHT | FUEL PUMP CONTROL MODULE | Module pin 2 (VIO/WHT) |
| 31 | NCA | (shield) | Shield drain of the crankshaft position sensor cable (sensor-side shield section goes to GE-2 via WHT) |
| 33 | BRN | AIR CONDITIONING SYSTEM | |
| 35 | YEL/RED | ELECTRIC THROTTLE RELAY | Relay pin 3 (coil) |

Ignition coils pin 2 (BLK/YEL) are bussed to GE-1; coils pin 3 (RED/YEL) are bussed to the fuse 11 GRN/RED node. Vehicle speed sensor: pin 2 BLK/RED (ground bus), pin 3 GRN/BLK (fuse 18).

## B136 — sensor connector (35-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 3 | PNK/GRN | FUEL INJECTOR 4 (AT LEFT REAR OF ENGINE) | Injector pin 1 (YEL/WHT after in-line connector) |
| 4 | PNK/BLK | FUEL INJECTOR 3 (AT RIGHT REAR OF ENGINE) | Injector pin 1 (WHT after in-line connector) |
| 5 | PNK/BLU | FUEL INJECTOR 2 (AT LEFT FRONT OF ENGINE) | Injector pin 1 (BLU/WHT after in-line connector) |
| 6 | PNK | FUEL INJECTOR 1 (AT RIGHT FRONT OF ENGINE) | Injector pin 1 (GRN/WHT after in-line connector) |
| 7 | GRN/BLU | CRUISE CONTROL SYSTEM | |
| 8 | WHT/BLK | CRUISE CONTROL SYSTEM | |
| 9 | RED/YEL | CRUISE CONTROL SYSTEM | |
| 10 | RED/WHT | CRUISE CONTROL SYSTEM | |
| 11 | LT GRN/BLK | CRUISE CONTROL SYSTEM | |
| 12 | BLU/BLK | FUEL TEMPERATURE SENSOR (FUEL PUMP ASSEMBLY, ON TOP OF FUEL TANK) | Sensor pin 6 (BLU/BLK) |
| 13 | BRN | MASS AIR FLOW SENSOR | MAF pin 4 (BRN), intake air temperature |
| 14 | BLK/YEL | ENGINE COOLANT TEMPERATURE SENSOR & THERMOMETER (ON TOP LEFT FRONT OF ENGINE) | In-line connector to NCA; sensor pin 2 (NCA) |
| 15 | BLU/GRN | ACCELERATOR POSITION SENSOR (BEHIND LEFT SIDE OF DASH) | Pedal sensor pin 3 (BLU/GRN) |
| 16 | LT BLU | ACCELERATOR POSITION SENSOR | Pedal sensor pin 1 (LT BLU); same 5 V node feeds ELECTRIC THROTTLE CONTROL pin 5, PRESSURE SENSOR pin 3, RIGHT/LEFT TGV ANGLE SENSOR pin 1 (all RED after in-line connector) and FUEL TANK PRESSURE SENSOR pin 3 (RED) |
| 17 | RED | ACCELERATOR POSITION SENSOR | Pedal sensor pin 5 (RED), shielded; shield drain to joint connector B122 pin 4 |
| 18 | RED/BLU | ELECTRIC THROTTLE CONTROL | Throttle body pin 6 (WHT after in-line connector), shielded; shield drain to joint connector B122 pin 1 |
| 20 | BRN/WHT | FUEL SUB LEVEL SENSOR (ON TOP OF FUEL TANK) | Sensor pin 1 (BRN/WHT) |
| 21 | GRN/ORG | FUEL TANK PRESSURE SENSOR (ON TOP CENTER OF FUEL TANK) | Sensor pin 1 (GRN/ORG) |
| 22 | YEL/BLK | PRESSURE SENSOR | In-line connector to VIO/WHT; sensor pin 1 (ORG after in-line connector) |
| 23 | PNK/BLU | MASS AIR FLOW SENSOR | MAF pin 3 (PNK/BLU), shielded; shield drain to B136-32 |
| 25 | WHT | KNOCK SENSOR (ON REAR OF ENGINE) | Sensor pin 2 (RED/BLU after in-line connector), shielded; shield drain to B136-33 |
| 26 | BRN/YEL | LEFT TGV ANGLE SENSOR | In-line connector to YEL/RED; sensor pin 3 (YEL/RED) |
| 27 | BRN/RED | RIGHT TGV ANGLE SENSOR | In-line connector to WHT/RED; sensor pin 3 (WHT/RED) |
| 28 | BLU | ACCELERATOR POSITION SENSOR | Pedal sensor pin 2 (BLU); spliced to DRIVER'S CONTROL CENTER DIFFERENTIAL CONTROL MODULE (B380) pin 2 (BLU) |
| 29 | RED | ELECTRIC THROTTLE CONTROL | Throttle body pin 4 (ORG after in-line connector) |
| 31 | BLK/GRN | MASS AIR FLOW SENSOR | MAF pin 2 (BLK/GRN) |
| 32 | NCA | (shield) | Shield drain of the MAF signal cable (B136-23) |
| 33 | NCA | (shield) | Shield drain of the knock sensor cable (B136-25) |
| 34 | YEL | ACCELERATOR POSITION SENSOR | Pedal sensor pin 4 (YEL) |
| 35 | RED/GRN | SHIELD & SENSOR GROUND JOINT CONNECTOR (BEHIND RIGHT SIDE OF DASH) | Joint connector pin 8 (RED/GRN); the joint connector bus is the sensor ground for: pin 2 GRN/RED to MAF pin 5, pin 4 BLU/WHT to fuel temperature sensor pin 5 (RED/WHT), pin 7 RED/BLK to accelerator position sensor pin 6, pin 3 LT GRN to right/left active valve control angle sensors pin 3 (WHT/BLU), pin 6 GRN/YEL to fuel tank pressure sensor pin 2 (RED/YEL), pin 1 BLU to the BLK/GRN ground bus (right/left TGV angle sensor pin 2, ECT sensor pin 1, electric throttle control pin 3, pressure sensor pin 2), pin 5 BLU/RED to rear oxygen sensor pin 4 |

Component locations (Fig 2, 4): accelerator position sensor - behind left side of dash; knock sensor - on rear of engine; ECT sensor - on top left front of engine; right/left TGV angle sensors and pressure sensor - engine (with the throttle body, Fig 2); fuel temperature, fuel level and fuel sub level sensors - fuel pump assembly on top of fuel tank; fuel tank pressure sensor - on top center of fuel tank; shield & sensor ground joint connector - behind right side of dash.

## B134 — actuator connector (34-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | YEL/RED | CRUISE CONTROL SYSTEM | |
| 2 | WHT | FRONT OXYGEN (A/F) SENSOR (ON FRONT OF FRONT CATALYTIC CONVERTER) | Sensor pin 1 (WHT), heater; spliced with pin 3 |
| 3 | WHT | FRONT OXYGEN (A/F) SENSOR | Sensor pin 1 (WHT), spliced with pin 2 |
| 6 | BLK/BLU | GE-1 (TOP LEFT SIDE OF ENGINE) | Spliced with pin 7; in-line connector to BLK/RED; ground GE-1 |
| 7 | BLK/BLU | GE-1 | Spliced with pin 6 |
| 8 | YEL/GRN | RIGHT TUMBLE GENERATOR VALVE (TGV) (AT RIGHT REAR OF ENGINE) | TGV motor pin 2 (GRN/BLU after in-line connector) |
| 9 | BLU/GRN | RIGHT TUMBLE GENERATOR VALVE (TGV) | TGV motor pin 1 (WHT/BLU after in-line connector) |
| 10 | BLU | LEFT TUMBLE GENERATOR VALVE (TGV) (AT LEFT REAR OF ENGINE) | TGV motor pin 2 (YEL/BLU after in-line connector) |
| 11 | BLU/YEL | LEFT TUMBLE GENERATOR VALVE (TGV) | TGV motor pin 1 (BLU after in-line connector) |
| 12 | LT GRN/BLK | PRESSURE CONTROL SOLENOID VALVE (UNDER CENTER REAR OF VEHICLE) | Valve pin 2 (LT GRN/BLK) |
| 13 | BRN/YEL | DRAIN VALVE (UNDER RIGHT REAR OF VEHICLE) | Valve pin 2 (BRN/YEL) |
| 14 | WHT/BLU | PURGE CONTROL SOLENOID VALVE (ON INTAKE MANIFOLD) | Valve pin 2 (LT GRN/YEL after in-line connector); valve pin 1 RED is on the main relay YEL/BLU node |
| 15 | BLU/RED | CRUISE CONTROL SYSTEM | |
| 16 | GRN/YEL | CRUISE CONTROL SYSTEM | |
| 17 | RED/WHT | COMBINATION METER | Malfunction indicator light, meter connector I10 pin 7 (RED/WHT) |
| 18 | GRN | RIGHT ACTIVE VALVE CONTROL SOLENOID (AT RIGHT SIDE OF ENGINE) | In-line connector to GRN/BLK; solenoid pin 1 (GRN/BLK) |
| 19 | RED/WHT | LEFT ACTIVE VALVE CONTROL SOLENOID (AT LEFT SIDE OF ENGINE) | In-line connector to BLU/BLK; solenoid pin 1 (BLU/BLK) |
| 23 | GRN | COMBINATION METER / DRIVER'S CONTROL CENTER DIFFERENTIAL CONTROL MODULE | Tachometer, meter connector I11 pin 5 (BLU/GRN after in-line connector); DCCD module B380 pin 6 (GRN) |
| 24 | RED/BLU | INTERNAL PRESSURE SOLENOID VALVE | Valve pin 2 (RED/BLU) |
| 25 | NCA | (shield) | Shield drain of the front oxygen (A/F) sensor signal cable |
| 26 | WHT | FRONT OXYGEN (A/F) SENSOR | Sensor pin 4 (WHT), shielded |
| 28 | GRY/GRN | RIGHT ACTIVE VALVE CONTROL SOLENOID | In-line connector to WHT/BLK; solenoid pin 2 (WHT/BLK) |
| 29 | ORG/BLU | LEFT ACTIVE VALVE CONTROL SOLENOID | In-line connector to YEL/BLK; solenoid pin 2 (YEL/BLK) |
| 32 | BLK/WHT | WASTE GATE SOLENOID (AT RIGHT SIDE OF ENGINE COMPT) | Solenoid pin 1 (BLK/WHT) |
| 33 | BLK | FRONT OXYGEN (A/F) SENSOR | Sensor pin 3 (BLK), shielded |
| 34 | BLK/RED | SHIELD & SENSOR GROUND JOINT CONNECTOR B122 (BEHIND RIGHT SIDE OF DASH) | B122 pin 5 (BLK/RED); B122 pin 2 (BLK/RED) joins the B137-1/2 ground bus, B122 pins 1 and 4 (NCA) are the shield drains of B136-18 and B136-17 |

Oxygen sensor heaters: front A/F sensor pin 2 (YEL/RED) and rear oxygen sensor pin 2 (YEL/RED) are fed from main relay pin 4 (YEL/RED). Rear oxygen sensor pin 4 (BLU/RED) goes to the sensor ground joint connector pin 5.

Component locations (Fig 3, 4): right/left active valve control solenoids - right/left side of engine; internal pressure solenoid valve and fuel tank pressure sensor - fuel tank; drain valve - under right rear of vehicle; pressure control solenoid valve - under center rear of vehicle; purge control solenoid valve - on intake manifold; waste gate solenoid - right side of engine compartment; front A/F sensor - on front of front catalytic converter; TGV motors - left/right rear of engine; driver's control center differential control module (B380) - behind center of dash.

## Fuel pump control module — sedan: at right side of trunk; wagon: behind right rear quarter panel

The fuel pump is driven through the fuel pump control module, not directly by the ECM.

| Pin | Wire | Connects to |
|-----|------|-------------|
| 1 | BLK/YEL | Fuel pump relay pin 4 (BLK/YEL) |
| 2 | VIO/WHT | ECM B135-27 |
| 3 | BLK | Ground GB-7 (under right front seat) |
| 4 | BLK/ORG | Fuel pump pin 4 (BLK after in-line connector) |
| 5 | LT GRN/RED | ECM B137-28 |
| 6 | BLK/WHT | Fuel pump pin 1 (BLK/YEL after in-line connector) |

Fuel pump relay (behind right side of dash): pin 1 GRN/RED (fuse 11, hot in ON or START), pin 2 BLU/RED (battery), pin 3 BLK (ground GB-4, behind right side of dash), pin 4 BLK/YEL (to fuel pump control module pin 1).

## Power supply / relays (Fig 1, 2)

- **SBF-5** (30 A, main fuse box M/B on left side of engine compartment, hot at all times) -> connector F37 pin 1 (BLK/RED) -> main relay pins 1, 5 and 6, electric throttle relay pin 2 (via BLK/RED), fuel pump relay pin 2, data link connector pin 1 (BLK/RED) and ECM B135-19 (backup power, BLU/RED).
- **Fuse 11** (15 A, fuse & relay box F/B behind left side of dash, hot in ON or START) -> B152 pin 5 (GRN/RED) -> ECM B137-14, ignition coils pin 3 (RED/YEL), fuel pump relay pin 1.
- **Fuse 4** (20 A, F/B, hot in ACC or ON) -> B271 pin 6 (YEL/RED) -> intercooler water spray timer pin 4 / switch pin 3 and interior lights system (not ECM).
- **Fuse 18** (15 A, F/B, hot in ON or START) -> B52 pin 5 (GRN/BLK) -> check connector pin 7 and vehicle speed sensor pin 3.
- **Fuse 13** (10 A, F/B, hot in ON or START) -> B158 pin 6 / I11 pin 7 (RED/WHT) -> combination meter (warning lights, MIL).
- **Main relay** (behind right side of dash): coil pin 1 BLU/RED (battery) / pin 2 LT GRN/WHT (ECM B137-16); contact pin 5 BLU/RED (battery) -> pin 3 YEL/BLU (ECM B135-5/6, electric throttle relay coil pin 1, injectors, MAF, waste gate and evap solenoids); contact pin 6 BLK/RED (battery) -> pin 4 YEL/RED (front A/F and rear O2 sensor heaters).
- **Electric throttle relay** (behind right side of dash): coil pin 1 YEL/BLU (main relay output) / pin 3 YEL/RED (ECM B135-35); contact pin 2 YEL/BLK (battery, BLK/RED after in-line connector) -> pin 4 YEL/GRN (ECM B137-6, throttle motor supply).
- **BLK/RED ground bus**: ECM B137-1/2, PCV diagnosis connector pin 1, diagnosis terminal (both wires), data link connector pins 12 and 13, test mode connector B76 pin 1, neutral position switch pin 5, vehicle speed sensor pin 2, fuel level sensor pin 2 (BLK/WHT after in-line connector), joint connector B122 pin 2 -> ground GE-1 (top left side of engine).
- Other grounds: GE-1 (B137-3, B137-7, B135-1/4, B135-12, B134-6/7, ignition coils pin 2); GE-2 top right of engine (sensor-side shield drains: crank sensor WHT, knock sensor WHT, electric throttle control YEL/GRN); GB-3, GB-4, GB-5 (behind center of dash, check connector pin 8), GB-7, GB-8 are body grounds for non-ECM circuits.

## Cross-check against the Subaru FSM I/O table

The factory "ECM I/O Signal" table for 2005-2007 GDB (see `2005-2007-GDA-GDB-5-Engine-Control-Module-ECM-IO-Signals.pdf` in this folder) agrees with the wiring above for every pin that both sources cover, except two adjacent-pin swaps: the FSM lists B137-14 as the test mode connector and B137-15 as ignition switch power (Mitchell draws B137-14 on fuse 11 and B137-15 to the line end/check connector), and the FSM lists B135-26 as fuel pump control unit signal 1 and B135-27 as vehicle speed (Mitchell draws B135-26 to the vehicle speed sensor and B135-27 to the fuel pump control module). Verify these four pins on the car before relying on either source.
