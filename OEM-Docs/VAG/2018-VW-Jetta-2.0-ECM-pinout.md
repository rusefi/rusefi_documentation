# 2018 VW Jetta GLI 2.0L Turbo — ECM pinout

Transcribed from [2018-jetta-2.0.pdf](2018-jetta-2.0.pdf) (Mitchell ProDemand "Engine Performance > 2.0L Turbo, Engine Controls Circuit" Fig 1–6, diagram IDs 609255–609260; Fig 7 is the structure-borne sound actuator circuit).

Engine/Motor Control Module (ECM), located left side of engine compartment. The ECM has one 196-way connector split into two groups, designated T91 and T105 in the diagram. The PDF does not state the engine code.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| T91 | 43 | Vehicle side: power/grounds, relay coils, pedal, brake/clutch switches, O2 sensors, charge air pressure, leak detection pump, CAN, fuel pump control module, cooling fans |
| T105 | 57 | Engine side: injectors, coils, throttle, cam/crank, MAP, fuel pressure, wastegate actuator, solenoid valves, knock sensor, SAI sensor |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange). The diagram does not print signal names at the ECM, so the "Function" column carries the component name as printed on the diagram; "Connects to" gives the component pin and any intermediate connector (T14, T14A, T8I are in-line harness connectors). Unlisted pins are not connected in this diagram.

## T91 — vehicle harness connector (91-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BRN | GROUND | G655 (lower left front of engine compt) |
| 2 | BRN | GROUND | G655 (lower left front of engine compt) |
| 5 | RED/GRN | FUSE 2 | Joined with pin 6; fuse 2 (20 A), fuse panel B |
| 6 | RED/GRN | FUSE 2 | Joined with pin 5; fuse 2 (20 A), fuse panel B |
| 7 | BLK/GRY | MOTRONIC ENGINE CONTROL MODULE POWER SUPPLY RELAY | Relay coil terminal 62 (pin 85), fuse panel B |
| 8 | BLK/VIO | ENGINE COMPONENT POWER SUPPLY RELAY | Relay coil terminal 72 (pin 85), fuse panel B |
| 9 | YEL/BLU | FUEL PUMP CONTROL MODULE | Fuel pump control module pin 2 |
| 11 | BRN/GRY | HEATER FOR OXYGEN SENSOR 1 AFTER CATALYTIC CONVERTER | After-cat O2 sensor heater pin 2 (NCA) |
| 12 | YEL/VIO | COOLING FANS SYSTEM | |
| 16 | GRY/BLK | ACCELERATOR PEDAL POSITION SENSOR 2 | Accelerator pedal module, sensor 2 pin 1 |
| 23 | BRN/VIO | LEAK DETECTION PUMP | Leak detection pump pin 2 (if equipped) |
| 25 | BRN | OXYGEN SENSOR 1 AFTER CATALYTIC CONVERTER | After-cat O2 sensor pin 4 (NCA) |
| 26 | RED | OXYGEN SENSOR 1 AFTER CATALYTIC CONVERTER | After-cat O2 sensor pin 3 (NCA) |
| 29 | BRN | ENGINE COOLANT TEMPERATURE SENSOR ON RADIATOR OUTLET | Radiator outlet ECT sensor pin 2 |
| 32 | BLK | CHARGE AIR PRESSURE SENSOR | Charge air pressure sensor pin 3 |
| 33 | YEL/GRN | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal module, sensor 1 pin 2 |
| 34 | GRY/RED | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal module, sensor 1 pin 3 |
| 35 | BRN | CHARGE AIR PRESSURE SENSOR | Charge air pressure sensor pin 1 |
| 37 | BLK/RED | BRAKE PEDAL SWITCH | Brake pedal switch pin 3; spliced to ABS control module pin 38 and vehicle electrical system control module T52C pin 17 |
| 39 | BLU/RED | LEAK DETECTION PUMP | Leak detection pump pin 3 |
| 41 | BRN | OXYGEN SENSOR 1 BEFORE CATALYTIC CONVERTER | Pre-cat O2 sensor pin 5 (NCA) |
| 43 | BLK | OXYGEN SENSOR 1 BEFORE CATALYTIC CONVERTER | Pre-cat O2 sensor pin 1 (NCA) |
| 44 | BLU | OXYGEN SENSOR 1 BEFORE CATALYTIC CONVERTER | Pre-cat O2 sensor pin 2 (NCA) |
| 49 | BLU | ENGINE COOLANT TEMPERATURE SENSOR ON RADIATOR OUTLET | Radiator outlet ECT sensor pin 1 |
| 50 | BLK/YEL | FUSE 16 / FUEL PUMP CONTROL MODULE | Fuse 16 (10 A), fuse panel C, hot w/ terminal 15 power supply relay energized; fuel pump control module pin 3 |
| 51 | GRY/BLU | ACCELERATOR PEDAL POSITION SENSOR 2 | Accelerator pedal module, sensor 2 pin 5 |
| 52 | WHT/BLU | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal module, sensor 1 pin 4 |
| 55 | BLU | CHARGE AIR PRESSURE SENSOR | Charge air pressure sensor pin 4 |
| 60 | WHT/GRN | BRAKE PEDAL SWITCH | Brake pedal switch pin 1 |
| 61 | WHT/RED | CLUTCH POSITION SENSOR | Clutch position sensor pin 2 (M/T) |
| 62 | VIO/BLK | CLUTCH POSITION SENSOR / TRANSMISSIONS SYSTEM | Clutch position sensor pin 4 (M/T); spliced to transmissions system |
| 63 | BLU/BLK | STARTING/CHARGING SYSTEM | |
| 67 | RED/BLK | STARTING/CHARGING SYSTEM | |
| 69 | BRN/GRN | ACCELERATOR PEDAL POSITION SENSOR 2 | Accelerator pedal module, sensor 2 pin 6 |
| 70 | BLK/WHT | CRUISE CONTROL SYSTEM | |
| 74 | WHT | OXYGEN SENSOR 1 BEFORE CATALYTIC CONVERTER | Pre-cat O2 sensor heater pin 3 (NCA) |
| 76 | BLU/RED | COOLING FANS SYSTEM | |
| 78 | VIO | LEAK DETECTION PUMP | Leak detection pump pin 1 |
| 79 | ORG/BLK | COMPUTER DATA LINES SYSTEM | |
| 80 | ORG/BRN | COMPUTER DATA LINES SYSTEM | |
| 86 | RED/BLK | MOTRONIC ENGINE CONTROL MODULE POWER SUPPLY RELAY | Relay output terminal 61 (pin 87), joined with fuse 14 (10 A) output 14A, fuse panel B |
| 87 | BLU/VIO | STARTING/CHARGING SYSTEM | |
| 88 | BLK/BLU | STARTING/CHARGING SYSTEM | |

Component locations (Fig 1, 2): charge air pressure sensor — intake air duct; ECT sensor on radiator outlet — lower radiator outlet; accelerator pedal module — part of accelerator pedal assembly; oxygen sensor 1 after catalytic converter — catalytic converter 2 inlet; oxygen sensor 1 before catalytic converter — on turbocharger; clutch position sensor — on clutch pedal slave cylinder (M/T); brake pedal switch & brake lamp switch — brake master cylinder assembly; ABS control module — right rear corner of engine compt; vehicle electrical system control module — behind fuse panel C; leak detection pump — rear of right rear wheelwell (if equipped).

The pre-cat O2 sensor is 5-wire (1 BLK, 2 BLU, 5 BRN, 3 WHT heater, 4 BLU/RED heater supply); the after-cat sensor is 4-wire (3 RED, 4 BRN, 2 BRN/GRY heater, 1 BLU/RED heater supply). Both heater supplies (BLU/RED) come from fuse 4 (rating printed as N/A), fuse panel B.

## T105 — engine harness connector (105-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | RED/VIO | FUEL INJECTOR CYLINDER 2 | Injector 2 pin 2 (RED/VIO) via T8I pin 4 |
| 2 | RED/BLU | FUEL INJECTOR CYLINDER 3 | Injector 3 pin 2 (RED/BLU) via T8I pin 6 |
| 3 | BLU/GRY | EVAP CANISTER PURGE REGULATOR VALVE 1 | Purge regulator valve pin 2 |
| 9 | YEL/GRN | SECONDARY AIR INJECTION SENSOR 1 | SAI sensor 1 pin 2 |
| 11 | BRN/BLU | FUEL PRESSURE SENSOR | Fuel pressure sensor pin 1 (BRN/GRN) via T14A pin 10 |
| 17 | YEL/GRY | OIL PRESSURE REGULATION VALVE | Oil pressure regulation valve pin 1 |
| 20 | BRN/BLU | CHARGE AIR PRESSURE ACTUATOR | Actuator pin 3 |
| 21 | VIO | SECONDARY AIR INJECTION SOLENOID VALVE | SAI solenoid valve pin 1 |
| 22 | BRN/GRY | FUEL INJECTOR CYLINDER 3 | Injector 3 pin 1 (BRN/GRY) via T8I pin 5 |
| 23 | BRN/VIO | FUEL INJECTOR CYLINDER 2 | Injector 2 pin 1 (BRN/VIO) via T8I pin 3 |
| 27 | BRN/GRN | INTAKE MANIFOLD RUNNER POSITION SENSOR | Runner position sensor pin 3 (BRN/GRN) via T14A pin 13 |
| 30 | BLU/WHT | CAMSHAFT POSITION SENSOR | Camshaft position sensor pin 2 (BLU/GRY) via T14A pin 8 |
| 31 | BRN | SECONDARY AIR INJECTION SENSOR 1 | SAI sensor 1 pin 3 |
| 33 | BRN | MANIFOLD ABSOLUTE PRESSURE SENSOR & INTAKE AIR TEMPERATURE SENSOR | MAP/IAT sensor pin 1 |
| 34 | GRN/RED | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 1 (sensor 1) |
| 35 | GRY/WHT | ENGINE SPEED SENSOR | Engine speed sensor pin 1 |
| 36 | RED/GRN | INTAKE MANIFOLD RUNNER POSITION SENSOR | Runner position sensor pin 2 (VIO) via T14A pin 4 |
| 37 | GRN/RED | SECONDARY AIR INJECTION SENSOR 1 | SAI sensor 1 pin 1 |
| 40 | RED/GRN | ENGINE COOLANT TEMPERATURE SENSOR | ECT sensor (rear of cylinder head) pin 2 |
| 41 | WHT/BLU | CHARGE AIR PRESSURE ACTUATOR | Actuator pin 5 |
| 42 | YEL/GRN | MANIFOLD ABSOLUTE PRESSURE SENSOR & INTAKE AIR TEMPERATURE SENSOR | MAP/IAT sensor pin 3 |
| 43 | GRY/GRN | FUEL INJECTOR CYLINDER 4 | Injector 4 pin 2 (RED/YEL) via T8I pin 8 |
| 44 | BLK/WHT | CAMSHAFT POSITION SENSOR | Camshaft position sensor pin 3 (BLK) via T14A pin 12 |
| 47 | BRN/GRN | ENGINE COOLANT TEMPERATURE SENSOR | ECT sensor (rear of cylinder head) pin 1 |
| 48 | GRN/YEL | INTAKE MANIFOLD RUNNER POSITION SENSOR | Runner position sensor pin 1 (GRN/YEL) via T14A pin 5 |
| 49 | BLK/WHT | FUEL PRESSURE SENSOR | Fuel pressure sensor pin 2 (BLK/GRY) via T14A pin 7 |
| 51 | WHT | MANIFOLD ABSOLUTE PRESSURE SENSOR & INTAKE AIR TEMPERATURE SENSOR | MAP/IAT sensor pin 2 |
| 52 | GRN/BLU | MANIFOLD ABSOLUTE PRESSURE SENSOR & INTAKE AIR TEMPERATURE SENSOR | MAP/IAT sensor pin 4 |
| 53 | VIO/RED | INTAKE MANIFOLD RUNNER CONTROL VALVE | Runner control valve pin 2 |
| 54 | GRY/WHT | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 2 (sensor 1) |
| 55 | GRN | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 4 (sensor 2) |
| 56 | BRN | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 6 (sensor 2) |
| 57 | BLU | IGNITION COIL 3 W/ POWER OUTPUT STAGE | Coil 3 pin 2 |
| 60 | BLU/WHT | SECONDARY AIR INJECTION PUMP RELAY | Relay coil terminal 82 (pin 85), fuse panel B, via T14 pin 12 |
| 61 | BLK/YEL | CHARGE AIR PRESSURE ACTUATOR | Actuator pin 1 |
| 62 | VIO/YEL | IGNITION COIL 4 W/ POWER OUTPUT STAGE | Coil 4 pin 2 |
| 64 | BRN/YEL | FUEL INJECTOR CYLINDER 1 | Injector 1 pin 1 (BRN/YEL) via T8I pin 1 |
| 65 | BRN/GRN | FUEL INJECTOR CYLINDER 4 | Injector 4 pin 1 (BRN/GRN) via T8I pin 7 |
| 66 | BLK/VIO | TURBOCHARGER RECIRCULATION VALVE | Recirculation valve pin 2 |
| 67 | GRN/VIO | FUEL PRESSURE SENSOR | Fuel pressure sensor pin 3 (GRN/RED) via T14A pin 1 |
| 69 | BRN | CAMSHAFT POSITION SENSOR | Camshaft position sensor pin 1 (GRN/RED) via T14A pin 9 |
| 70 | YEL | ENGINE SPEED SENSOR | Engine speed sensor pin 2 |
| 72 | BLK/GRN | REDUCED OIL PRESSURE SWITCH | Reduced oil pressure switch pin 1 (base of oil filter housing) |
| 76 | VIO/GRN | IGNITION COIL 1 W/ POWER OUTPUT STAGE | Coil 1 pin 2 |
| 77 | BRN | ENGINE SPEED SENSOR | Engine speed sensor pin 3 |
| 79 | VIO/BLU | IGNITION COIL 2 W/ POWER OUTPUT STAGE | Coil 2 pin 2 |
| 84 | BLU/RED | AFTER-RUN COOLANT PUMP | After-run coolant pump pin 3 |
| 85 | RED/YEL | FUEL INJECTOR CYLINDER 1 | Injector 1 pin 2 (RED/YEL) via T8I pin 2 |
| 88 | BRN | CHARGE AIR PRESSURE ACTUATOR | Actuator pin 2 |
| 89 | BLK/RED | CHARGE AIR PRESSURE ACTUATOR | Actuator pin 6 |
| 90 | BRN/RED | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 5 (throttle drive) |
| 91 | BLK/YEL | THROTTLE VALVE CONTROL MODULE | Throttle valve control module pin 3 (throttle drive) |
| 92 | BLK/RED | FUEL PRESSURE REGULATOR VALVE | Fuel pressure regulator valve pin 2 |
| 93 | YEL/BLK | FUEL PRESSURE REGULATOR VALVE | Fuel pressure regulator valve pin 1 |
| 97 | GRY/RED | KNOCK SENSOR 1 | Knock sensor 1 pin 2 |
| 98 | GRY/WHT | KNOCK SENSOR 1 | Knock sensor 1 pin 1 |
| 105 | RED/GRY | CAMSHAFT ADJUSTMENT VALVE 1 | Camshaft adjustment valve 1 pin 2 |

Component locations (Fig 3–6): reduced oil pressure switch — base of oil filter housing; engine speed sensor — left side of transmission bell housing; charge air pressure actuator — on turbocharger assembly; secondary air injection sensor 1 and SAI solenoid valve — exhaust manifold assembly; fuel pressure sensor — on fuel rail assembly; MAP/IAT sensor — top of intake manifold; intake manifold runner position sensor — front of intake manifold assembly; camshaft position sensor — left side of cylinder head; fuel injectors — above intake manifold, cylinders 1–4 (via T8I); throttle valve control module — on throttle body; turbocharger recirculation valve — turbocharger assembly; intake manifold runner control valve — left rear side of engine; oil pressure regulation valve — bottom left front of engine block; ECT sensor — rear of cylinder head; knock sensor 1 — left side of engine block; fuel pressure regulator valve — top rear of cylinder head; camshaft adjustment valve 1 — front of cylinder head; after-run coolant pump — lower left side of engine; EVAP canister purge regulator valve 1 — middle of intake manifold; ignition coils — top of cylinders 1–4.

Ignition coils: pin 1 BLK to G846/G847/G848/G849 (one per coil); pin 3 BRN spliced to G12 (lower left front of engine compt); pin 4 RED spliced supply from fuse 12 (30 A) via T14 pin 5; pin 2 to ECM (T105 pins 76, 79, 57, 62 for cylinders 1–4).

## Fuel pump control module (part of fuel delivery unit)

The fuel pump is driven by the fuel pump control module, not the ECM directly.

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | RED/YEL | SUPPLY | Fuse 47 (15 A or 20 A), fuse panel C (bottom left end of dash), hot at all times |
| 2 | YEL/BLU | ECM | ECM T91 pin 9 |
| 3 | BLK/YEL | TERMINAL 15 | Fuse 16 (10 A), fuse panel C; ECM T91 pin 50 |
| 4 | VIO/BLK | INSTRUMENT CLUSTER | Instrument cluster pin 1 |
| 5 | BRN/BLU | INSTRUMENT CLUSTER | Instrument cluster pin 20; also engine coolant level sensor pin 2 and outside air temperature sensor pin 1 (spliced) |
| 6 | BRN | GROUND | G51 (right side of luggage compt) |
| 7 | RED/BLK | VEHICLE ELECTRICAL SYSTEM CONTROL MODULE | Vehicle electrical system control module T52B pin 38 |
| 8 | VIO/WHT | INSTRUMENT CLUSTER | Instrument cluster pin 2 |

## Power supply / relays

Fuse panel B, left side of engine compartment (in E-box):

- **Motronic engine control module power supply relay** — terminal 30 hot at all times; coil 85 = terminal 62 (ECM T91-7), output 87 = terminal 61 (RED/BLK, joined with fuse 14 10 A output) to ECM T91-86.
- **Engine component power supply relay** — terminal 30 hot at all times; coil 86 = terminal 71 (BLU/WHT, fuse 3 net), coil 85 = terminal 72 (ECM T91-8); output 87 = terminal 75 (RED/WHT) feeds fuse 12 (30 A) whose output 12A (RED) goes through T14 pin 5 to the ignition coil supply.
- **Secondary air injection pump relay** — coil 86 = terminal 81 (BLU/WHT, fuse 3 net), coil 85 = terminal 82 (BLU/WHT to ECM T105-60 via T14 pin 12); output 87 = terminal 85 (RED) feeds fuse 21 (40 A or 50 A) whose output 21A (BLK/RED) goes to the secondary air injection pump motor pin 2 (right rear of engine block); pump pin 1 BRN to G12.
- Fuse 2 (20 A) — ECM T91-5/6 (RED/GRN).
- Fuse 3 (5 A) — BLU/WHT to SAI pump relay coil, engine component power supply relay coil, and coolant fan control module pin 2 (BLK, via T14 pin 2; rear of coolant fan motor).
- Fuse 4 (N/A) — BLU/RED, both O2 sensor heater supplies.
- Fuse 6 (10 A) — BLU/RED to leak detection pump pin 4.
- Fuse 8 (10 A) — YEL/BLK to radiator shutter motor pin 4 (behind center of lower grille) and via T14 pin 6 (RED/WHT) to after-run coolant pump pin 2, SAI solenoid valve pin 2, camshaft adjustment valve 1 pin 1, EVAP purge regulator valve pin 1.
- Fuse 9 (10 A) — BLU/RED via T14 pin 8 (YEL/BLK) to turbocharger recirculation valve pin 1, intake manifold runner control valve pin 1, oil pressure regulation valve pin 2.
- Fuse 10 (5 A) — WHT/RED to clutch position sensor pin 5 and brake pedal switch pin 4.
- Fuse 14 (10 A) — RED/BLK, joined with Motronic relay output (ECM T91-86).

Fuse panel C, bottom left end of dash: fuse 16 (10 A) and fuse 14 (10 A) hot with terminal 15 power supply relay energized — fuse 16 (BLK/YEL) to ECM T91-50 / fuel pump control module pin 3, fuse 14 (BLK/VIO) to oil level thermal sensor pin 1 (if equipped) and instrument cluster pin 31; fuse 47 (15 A or 20 A) hot at all times (RED/YEL) to fuel pump control module pin 1.

Grounds: G655 (lower left front of engine compt) — ECM T91-1/2, oil level thermal sensor pin 2; G605 (on steering column) — clutch position sensor pin 1, brake pedal switch pin 2, vehicle electrical system control module T52C pin 5, instrument cluster pin 16; G12 (lower left front of engine compt) — ignition coils pin 3, after-run coolant pump pin 1, SAI pump motor pin 1; G846–G849 — ignition coils pin 1; G51 (right side of luggage compt) — fuel pump control module pin 6.

Other modules on the diagram (Fig 6): instrument cluster receives engine coolant level sensor pin 1 (VIO/RED, pin 18), oil level thermal sensor pin 3 (GRY/YEL, pin 11), outside air temperature sensor pin 2 (BRN/YEL, pin 19), fuel pump control module pins 8/5/4 (pins 2/20/1) and drives the oil pressure switch (base of oil filter housing) from pin 27 (BLK) via T14 pin 7; cluster pins 28/29 (YEL, BRN) go to the computer data lines system. Fig 7: structure-borne sound control module (right plenum chamber) — pin 1 BLK/BLU from fuse 17 (10 A, fuse panel C), pin 2 BRN to G44, pins 6/12 ORG/BRN, ORG/BLK to computer data lines, pins 7/8 BLK/GRY to the structure-borne sound actuator (center of plenum chamber).
