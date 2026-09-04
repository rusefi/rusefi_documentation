# 2014 VW Jetta Sedan (162) L4-1.8L Turbo (CPKA) — ECM pinout

Transcribed from [2014-jetta-1.8T.pdf](2014-jetta-1.8T.pdf) (ALLDATA "Engine Controls" wiring diagram, pages 1–6 of 6, diagram IDs 426034–426039).

Engine Control Module (ECM), located front left of engine compartment. The ECM has one 196-way connector split into two groups, designated T91 and T105 in the diagram.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| T91 | 42 | Vehicle side: power/grounds, relay coils, pedal, brake/clutch switches, O2 sensors, charge air pressure, leak detection pump, CAN, fuel pump control module |
| T105 | 46 | Engine side: injectors, coils, throttle, cam/crank, MAP, fuel pressure, wastegate actuator, solenoid valves, knock sensor |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange). The diagram does not print signal names at the ECM, so the "Function" column carries the component name as printed on the diagram; "Connects to" gives the component pin and any intermediate connector (T14, T14A, T8I, T4X are in-line harness connectors, "S" splices are drawn as dots/dashed lines). Unlisted pins are not connected in this diagram.

## T91 — vehicle harness connector (91-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BRN | GROUND | G655 (below left headlight assembly) |
| 2 | BRN | GROUND | G655 (below left headlight assembly) |
| 5 | RED/GRN | FUSE 2 | Joined with pin 6; fuse 2 (10 A or 15 A), fuse panel B; also engine component power supply relay coil terminal 71 (pin 86) |
| 6 | RED/GRN | FUSE 2 | Joined with pin 5 (see above) |
| 7 | BLK/GRY | MOTRONIC ENGINE CONTROL MODULE POWER SUPPLY RELAY | Relay coil terminal 62 (pin 85), fuse panel B |
| 8 | BLK/VIO | ENGINE COMPONENT POWER SUPPLY RELAY | Relay coil terminal 72 (pin 85), fuse panel B |
| 9 | YEL/BLU | FUEL PUMP CONTROL MODULE | Fuel pump control module pin 2 |
| 12 | YEL/VIO | (NOT USED) | T4X pin 3 |
| 16 | GRY/BLK | ACCELERATOR PEDAL POSITION SENSOR 2 | Accelerator pedal module, sensor 2 pin 1 |
| 23 | BRN/VIO | LEAK DETECTION PUMP | Leak detection pump pin 2 (if equipped) |
| 25 | BRN | OXYGEN SENSOR 1 AFTER CATALYTIC CONVERTER | After-cat O2 sensor pin 4 (NCA) |
| 26 | RED | OXYGEN SENSOR 1 AFTER CATALYTIC CONVERTER | After-cat O2 sensor pin 3 (NCA) |
| 29 | BRN | ENGINE COOLANT TEMPERATURE SENSOR ON RADIATOR OUTLET | Radiator outlet ECT sensor pin 2 |
| 32 | BLK | CHARGE AIR PRESSURE SENSOR | Charge air pressure sensor pin 3 |
| 33 | YEL/GRN | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal module, sensor 1 pin 2 |
| 34 | GRY/RED | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal module, sensor 1 pin 3 |
| 35 | BRN | CHARGE AIR PRESSURE SENSOR | Charge air pressure sensor pin 1 |
| 37 | BLK/RED | BRAKE PEDAL SWITCH | Brake pedal switch pin 3; spliced to ABS control module pin 38 and vehicle electrical system control module T73A pin 43 |
| 39 | BLU/RED | LEAK DETECTION PUMP | Leak detection pump pin 3 |
| 41 | BRN | OXYGEN SENSOR 1 BEFORE CATALYTIC CONVERTER | Pre-cat O2 sensor pin 5 (NCA) |
| 43 | GRY | OXYGEN SENSOR 1 BEFORE CATALYTIC CONVERTER | Pre-cat O2 sensor pin 1 (NCA) |
| 44 | BLU | OXYGEN SENSOR 1 BEFORE CATALYTIC CONVERTER | Pre-cat O2 sensor pin 2 (NCA) |
| 49 | YEL | ENGINE COOLANT TEMPERATURE SENSOR ON RADIATOR OUTLET | Radiator outlet ECT sensor pin 1 |
| 50 | BLK/YEL | FUSE 16 / FUEL PUMP CONTROL MODULE | Fuse 16 (10 A), fuse panel C, hot w/ terminal 50 power supply relay energized; fuel pump control module pin 3 |
| 51 | GRY/BLU | ACCELERATOR PEDAL POSITION SENSOR 2 | Accelerator pedal module, sensor 2 pin 5 |
| 52 | WHT/BLU | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal module, sensor 1 pin 4 |
| 55 | BLU | CHARGE AIR PRESSURE SENSOR | Charge air pressure sensor pin 4 |
| 60 | WHT/GRN | BRAKE PEDAL SWITCH | Brake pedal switch pin 1 |
| 61 | WHT/RED | CLUTCH POSITION SENSOR | Clutch position sensor pin 2 (M/T) |
| 62 | VIO/BLK | CLUTCH POSITION SENSOR | Clutch position sensor pin 4 (M/T) |
| 63 | BLU/BLK | STARTING/CHARGING SYSTEM | |
| 67 | RED/BLK | STARTING/CHARGING SYSTEM | |
| 69 | BRN/BLU | ACCELERATOR PEDAL POSITION SENSOR 2 | Accelerator pedal module, sensor 2 pin 6 |
| 70 | BLK/WHT | CRUISE CONTROL SYSTEM | |
| 74 | WHT | OXYGEN SENSOR 1 BEFORE CATALYTIC CONVERTER | Pre-cat O2 sensor heater pin 3 (NCA) |
| 78 | VIO | LEAK DETECTION PUMP | Leak detection pump pin 1 |
| 79 | ORG/BLK | COMPUTER DATA LINES SYSTEM | |
| 80 | ORG/BRN | COMPUTER DATA LINES SYSTEM | |
| 86 | RED/BLK | MOTRONIC ENGINE CONTROL MODULE POWER SUPPLY RELAY | Relay output terminal 61 (pin 87), joined with fuse 14 (5 A) output 14A, fuse panel B |
| 87 | BLU/VIO | STARTING/CHARGING SYSTEM | |
| 88 | BLU/BLK | STARTING/CHARGING SYSTEM | |
| 91 | BRN/BLU | HEATER FOR OXYGEN SENSOR 1 AFTER CATALYTIC CONVERTER | After-cat O2 sensor heater pin 2 (NCA) |

Component locations (pages 1, 2): charge air pressure sensor — intake air duct; ECT sensor on radiator outlet — lower left corner of radiator; accelerator pedal module — part of accelerator pedal assembly; oxygen sensor 1 after catalytic converter — catalytic converter 2 outlet; oxygen sensor 1 before catalytic converter — exhaust manifold; clutch position sensor — M/T; brake pedal switch — integral to brake lamp switch; ABS control module — right rear corner of engine compt; vehicle electrical system control module — below left side of dash; leak detection pump — right rear wheelwell, near fuel filler door (if equipped).

The pre-cat O2 sensor is 5-wire (1 GRY, 2 BLU, 5 BRN, 3 WHT heater, 4 RED/BLU heater supply); the after-cat sensor is 4-wire (3 RED, 4 BRN, 2 BRN/BLU heater, 1 RED/BLU heater supply). Both heater supplies (RED/BLU) come from fuse 5 (5 A / 10 A / 20 A), fuse panel B.

## T105 — engine harness connector (105-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | RED/VIO | FUEL INJECTOR CYLINDER 2 | Injector 2 pin 2 (RED/VIO) via T8I pin 4 |
| 2 | RED/BLU | FUEL INJECTOR CYLINDER 3 | Injector 3 pin 2 (RED/BLU) via T8I pin 6 |
| 3 | VIO | EVAP CANISTER PURGE REGULATOR VALVE 1 | Purge regulator valve pin 2 |
| 9 | BLK/WHT | SECONDARY AIR SYSTEM & INJECTION SENSOR 1 | SAI sensor pin 3 (CPKA) / pin 2 (CPRA) |
| 17 | VIO/BLU | OIL PRESSURE REGULATION VALVE | Oil pressure regulation valve pin 1 |
| 21 | VIO | SECONDARY AIR INJECTION SOLENOID VALVE | SAI solenoid valve pin 5 |
| 22 | BRN/GRY | FUEL INJECTOR CYLINDER 3 | Injector 3 pin 1 (BRN/GRY) via T8I pin 5 |
| 23 | BRN/VIO | FUEL INJECTOR CYLINDER 2 | Injector 2 pin 1 (BRN/VIO) via T8I pin 3 |
| 30 | BLU | CAMSHAFT POSITION SENSOR | Camshaft position sensor pin 2 (BLU/GRY) via T14A pin 8 |
| 33 | BRN | SENSOR GROUND (splice) | Engine speed sensor pin 3 (GRY/YEL); charge pressure actuator position sensor pin 3 (BRN); fuel pressure sensor pin 1 (BRN/GRN, T14A pin 10); MAP/IAT sensor pin 1 (BRN); SAI sensor pin 4 (GRN/VIO, CPKA) / pin 3 (CPRA) |
| 34 | GRN/YEL | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 1 (sensor 1) |
| 35 | BRN/GRN | SENSOR SUPPLY (splice) | Engine speed sensor pin 1 (BRN/GRN); charge pressure actuator position sensor pin 1 (BLK/YEL); fuel pressure sensor pin 3 (GRN/RED, T14A pin 1); SAI sensor pin 2 (BRN/BLU, CPKA) / pin 1 (CPRA) |
| 36 | VIO | INTAKE MANIFOLD RUNNER POSITION SENSOR | Runner position sensor pin 2 (VIO) via T14A pin 4 |
| 40 | BLK/GRN | ENGINE COOLANT TEMPERATURE SENSOR | ECT sensor (rear of engine) pin 2 |
| 41 | YEL/RED | CHARGE PRESSURE ACTUATOR POSITION SENSOR | Actuator position sensor pin 5 |
| 43 | GRY/GRN | FUEL INJECTOR CYLINDER 4 | Injector 4 pin 2 (RED/YEL) via T8I pin 8 |
| 47 | GRN/YEL | ENGINE COOLANT TEMPERATURE SENSOR | ECT sensor (rear of engine) pin 1; spliced to runner position sensor pin 3 (BRN/GRN, T14A pin 13) and camshaft position sensor pin 3 (BLK, T14A pin 12) |
| 48 | GRN/YEL | INTAKE MANIFOLD RUNNER POSITION SENSOR | Runner position sensor pin 1 (GRN/YEL, T14A pin 5); spliced to MAP/IAT sensor pin 3 (GRN) and camshaft position sensor pin 1 (GRN/RED, T14A pin 9) |
| 49 | BLK/WHT | FUEL PRESSURE SENSOR | Fuel pressure sensor pin 2 (BLK/GRY) via T14A pin 7 |
| 51 | BLU | MANIFOLD ABSOLUTE PRESSURE SENSOR & INTAKE MANIFOLD/AIR TEMPERATURE SENSOR | MAP/IAT sensor pin 2 |
| 52 | BLK | MANIFOLD ABSOLUTE PRESSURE SENSOR & INTAKE MANIFOLD/AIR TEMPERATURE SENSOR | MAP/IAT sensor pin 4 |
| 53 | VIO/RED | INTAKE MANIFOLD RUNNER CONTROL VALVE | Runner control valve pin 2 |
| 54 | BLK/GRN | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 2 (sensor 1) |
| 55 | BLU/GRN | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 4 (sensor 2) |
| 56 | VIO/BRN | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 6 (sensor 2) |
| 57 | BLU | IGNITION COIL 3 W/ POWER OUTPUT STAGE | Coil 3 pin 2 |
| 60 | BLU/WHT | SECONDARY AIR INJECTION PUMP RELAY | Relay coil terminal 82 (pin 85), fuse panel B, via T14 pin 12 |
| 62 | VIO/YEL | IGNITION COIL 4 W/ POWER OUTPUT STAGE | Coil 4 pin 2 |
| 64 | BRN/YEL | FUEL INJECTOR CYLINDER 1 | Injector 1 pin 1 (BRN/YEL) via T8I pin 1 |
| 65 | BRN/GRN | FUEL INJECTOR CYLINDER 4 | Injector 4 pin 1 (BRN/GRN) via T8I pin 7 |
| 66 | BLK/VIO | TURBOCHARGER RECIRCULATION VALVE | Recirculation valve pin 2 |
| 70 | BLU | ENGINE SPEED SENSOR | Engine speed sensor pin 2 |
| 72 | BLK/GRN | REDUCED OIL PRESSURE SWITCH | Reduced oil pressure switch pin 1 (base of oil filter housing) |
| 76 | VIO/GRN | IGNITION COIL 1 W/ POWER OUTPUT STAGE | Coil 1 pin 2 |
| 79 | VIO/BLU | IGNITION COIL 2 W/ POWER OUTPUT STAGE | Coil 2 pin 2 |
| 84 | VIO | AFTER-RUN COOLANT PUMP & THROTTLE VALVE CONTROL MODULE | After-run coolant pump pin 3 |
| 85 | RED/YEL | FUEL INJECTOR CYLINDER 1 | Injector 1 pin 2 (RED/YEL) via T8I pin 2 |
| 88 | RED/GRN | CHARGE PRESSURE ACTUATOR POSITION SENSOR | Actuator position sensor pin 2 |
| 89 | RED/VIO | CHARGE PRESSURE ACTUATOR POSITION SENSOR | Actuator position sensor pin 6 (BRN/GRN at the sensor, splice to RED/VIO) |
| 90 | BRN/RED | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 5 (EPC throttle drive) |
| 91 | BLK/YEL | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 3 (EPC throttle drive) |
| 92 | VIO/GRY | FUEL PRESSURE REGULATOR VALVE | Fuel pressure regulator valve pin 2 |
| 93 | RED/GRN | FUEL PRESSURE REGULATOR VALVE | Fuel pressure regulator valve pin 1 |
| 97 | BRN/YEL | KNOCK SENSOR 1 | Knock sensor 1 pin 2 |
| 98 | GRY/BLU | KNOCK SENSOR 1 | Knock sensor 1 pin 1 |
| 105 | RED/WHT | CAMSHAFT ADJUSTMENT VALVE 1 | Camshaft adjustment valve 1 pin 2 |

Component locations (pages 3–6): reduced oil pressure switch — base of oil filter housing; engine speed sensor — left rear of engine; charge pressure actuator position sensor — turbocharger assembly; fuel pressure sensor — fuel rail assembly; MAP/IAT sensor — air intake assembly; intake manifold runner position sensor — intake manifold assembly; ECT sensor — rear of engine; camshaft position sensor — end of cylinder head; fuel injectors — cylinder head, top of cylinders 1–4 (via T8I); throttle valve control module — on throttle body; turbocharger recirculation valve — turbocharger assembly; intake manifold runner control valve — intake manifold assembly; oil pressure regulation valve — base of block, near A/C compressor; knock sensor 1 — left side of engine block; fuel pressure regulator valve — top front of cylinder head; camshaft adjustment valve 1 — front of cylinder head; after-run coolant pump — lower left side of engine; EVAP canister purge regulator valve 1 — top of engine; secondary air system & injection sensor — exhaust manifold; ignition coils — top of cylinders 1–4.

Ignition coils: pin 1 BRN/GRN spliced to G15; pin 3 BRN to G12 (lower left side of engine compt); pin 4 RED spliced supply from fuse 12 (5 A) via T14 pin 5; pin 2 to ECM (T105 pins 76, 79, 57, 62 for cylinders 1–4).

## Fuel pump control module (part of fuel delivery unit)

The fuel pump is driven by the fuel pump control module, not the ECM directly.

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | RED/YEL | SUPPLY | Fuse 47 (15 A), fuse panel C (left side of dash), hot at all times |
| 2 | YEL/BLU | ECM | ECM T91 pin 9 |
| 3 | BLK/YEL | TERMINAL 50 | Fuse 16 (10 A), fuse panel C; ECM T91 pin 50 |
| 4 | VIO/BLK | INSTRUMENT CLUSTER | Instrument cluster pin 1 |
| 5 | BRN/BLU | INSTRUMENT CLUSTER | Instrument cluster pin 20; also engine coolant level sensor pin 2 |
| 6 | BRN | GROUND | G682 (right side of luggage compt) |
| 7 | RED/BLK | VEHICLE ELECTRICAL SYSTEM CONTROL MODULE | Vehicle electrical system control module T73A pin 52 |
| 8 | VIO/WHT | INSTRUMENT CLUSTER | Instrument cluster pin 2 |

## Power supply / relays

Fuse panel B, left front of engine compartment:

- **Motronic engine control module power supply relay** — terminal 30 hot at all times; coil 85 = terminal 62 (ECM T91-7), output 87 = terminal 61 (RED/BLK, joined with fuse 14 5 A output) to ECM T91-86.
- **Engine component power supply relay** — terminal 30 hot at all times; coil 86 = terminal 71 (RED/GRN, same net as ECM T91-5/6 and fuse 2), coil 85 = terminal 72 (ECM T91-8); output 87 = terminal 75 (WHT/RED) feeds fuse 12 (5 A) whose output 12A (RED/GRN) goes through T14 pin 5 (RED) to the ignition coil supply.
- **Secondary air injection pump relay** — coil 86 = terminal 81 (BLK/YEL from fuse 6, 5 A / 10 A / 15 A), coil 85 = terminal 82 (BLU/WHT to ECM T105-60 via T14 pin 12); output 87 = terminal 85 (RED/WHT) feeds fuse 21 (50 A) whose output 21A (RED/BLK) goes to the secondary air injection pump motor pin 2 (lower left side of engine); pump pin 1 BRN to G12.
- Fuse 2 (10 A or 15 A) — ECM T91-5/6 (RED/GRN).
- Fuse 3 (5 A) — BLU/WHT to T4X pin 2 (not used).
- Fuse 5 (5 A / 10 A / 20 A) — RED/BLU, both O2 sensor heater supplies.
- Fuse 6 (5 A / 10 A / 15 A) — BLK/YEL, SAI pump relay coil and leak detection pump pin 4.
- Fuse 8 (10 A) — BLU/RED via T14 pin 8 to turbocharger recirculation valve pin 1, intake manifold runner control valve pin 1, oil pressure regulation valve pin 2.
- Fuse 9 (5 A) — BLU/RED via T14 pin 6 to after-run coolant pump pin 2, camshaft adjustment valve 1 pin 1, SAI solenoid valve pin 1, EVAP purge regulator valve pin 1.
- Fuse 10 (5 A) — WHT/RED to clutch position sensor pin 5 and brake pedal switch pin 4.
- Fuse 14 (5 A) — RED/BLK, joined with Motronic relay output (ECM T91-86).

Fuse panel C, left side of dash: fuse 16 (10 A) and fuse 14 (10 A) hot with terminal 50 power supply relay energized — fuse 16 (BLK/YEL) to ECM T91-50 / fuel pump control module pin 3, fuse 14 (BLK/VIO) to oil level thermal sensor pin 1; fuse 47 (15 A) hot at all times (RED/YEL) to fuel pump control module pin 1.

Grounds: G655 (below left headlight assembly) — ECM T91-1/2, clutch position sensor pin 1, oil level thermal sensor pin 2; G605 (on steering column) — brake pedal switch pin 2; G12 (lower left side of engine compt) — ignition coils pin 3, after-run coolant pump pin 1, SAI pump motor pin 1; G15 — ignition coils pin 1; G682 (right side of luggage compt) — fuel pump control module pin 6.

Other modules on the diagram (page 6): instrument cluster receives engine coolant level sensor pin 1 (VIO/RED, pin 18), oil level thermal sensor pin 3 (GRY/YEL, pin 11), fuel pump control module pins 8/5/4 (pins 2/20/1) and drives the oil pressure switch (left rear of engine) from pin 27 (BLU/RED) via T14 pin 7; cluster pins 28/29 (ORG/BLK or BRN, ORG/BRN or YEL) go to the computer data lines system.
