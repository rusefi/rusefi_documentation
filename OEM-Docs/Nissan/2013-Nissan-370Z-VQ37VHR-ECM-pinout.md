# 2013 Nissan 370Z (Z34, Nismo) V6-3.7L (VQ37VHR) — ECM pinout

Transcribed from [2013-370z.pdf](2013-370z.pdf) (Mitchell ProDemand "Engine Performance > 3.7L" wiring diagram, Fig 1-5 of 5, diagram IDs 376948-376952).

Engine Control Module (ECM), located at the right end of the dash. The ECM has three harness connectors: F101 (terminals 1-48), F102 (terminals 49-96) and M107 (terminals 97-128). The VVEL (variable valve event and lift) control module (right rear of engine compartment) is a separate unit talking to the ECM over CAN; its pins are not listed here except where they meet an ECM wire.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| F101 | 48 | Ignition coils, A/F sensor heaters, throttle actuators, crank sensor, brake booster pressure, relays |
| F102 | 48 | Throttle body B2, CAN, A/F sensors, cam sensors, knock, coolant/oil temp, MAF, injectors, grounds |
| M107 | 32 | Accelerator pedal, cruise, pressure sensors, PNP, CAN, stop lamp, power supply, grounds |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink, TAN; NCA = no color available). Unlisted pins are not connected in this diagram. "B1"/"B2" = bank 1 (right cylinder bank) / bank 2 (left cylinder bank). Fx/Ex/Mx/Bx names are harness-to-harness connectors.

## F101 — ECM connector (48-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | ORG | AFH1/02HF1 | Air fuel ratio (A/F) sensor 1 bank 1 pin 3 (heater) |
| 2 | GRN | MOTOR1-B1 | Electric throttle control actuator bank 1 pin 1 (throttle control motor) |
| 3 | RED | VMOT1-B1 | Throttle control motor relay output (IPDM E/R pin 54, PPL) via E3/F1 pin 11; tied to pin 52 |
| 4 | BRN | MOTOR2-B1 | Electric throttle control actuator bank 1 pin 2 (throttle control motor) |
| 5 | WHT | AFH2/02HF2 | A/F sensor 1 bank 2 pin 3 (heater) |
| 8 | BLK | GND | Ground M95 (right end of dash) via F103/M116 pin 5 |
| 11 | GRY | IGN 4 | Ignition coil 4 pin 1 |
| 12 | BLU | IGN 3 | Ignition coil 3 pin 1, via F105/F104 pin 3 |
| 15 | PPL | IGN 5 | Ignition coil 5 pin 1, via F105/F104 pin 2 |
| 16 | GRN | IGN 2 | Ignition coil 2 pin 1 |
| 17 | PNK | O2HR1 | Heated oxygen sensor 2 bank 1 pin 3 (heater) |
| 18 | WHT | CVTC 1 | Intake valve timing control solenoid valve bank 1 pin 1 |
| 19 | LT BLU | IGN 6 | Ignition coil 6 pin 1 |
| 20 | YEL | IGN 1 | Ignition coil 1 pin 1, via F105/F104 pin 4 |
| 21 | GRY | EVAP | EVAP canister purge volume control solenoid valve pin 2 |
| 22 | RED | FPR | Fuel pump relay coil (IPDM E/R pin 77), via F105/F104 pin 7 |
| 24 | PNK | SSOFF | ECM relay coil (IPDM E/R pin 69, BRN), via F105/F104 pin 1 and E3/F1 pin 31 |
| 25 | ORG | MOTALY1-B1 | Throttle control motor relay coil (IPDM E/R pin 70, TAN), via F105/F104 pin 8 (becomes TAN) and E3/F1 pin 34 |
| 26 | WHT | SHIFT-X | Gear lever position sensor pin 2 (SHIFT-X) (M/T with SynchroRev Match) |
| 27 | GRN | SHIFT-Y | Gear lever position sensor pin 4 (SHIFT-Y) (M/T with SynchroRev Match) |
| 28 | BRN | ABORT | VVEL control module pin 21 (ABORT), via E1/E4 pin 28 (becomes PPL) |
| 29 | GRN | CVTC 2 | Intake valve timing control solenoid valve bank 2 pin 1 |
| 30 | YEL | TPS1-B1 | Electric throttle control actuator bank 1 pin 4 (TP sensor 1) |
| 31 | RED | TPS1-B2 | Electric throttle control actuator bank 2 pin 2 (TP sensor 1) |
| 33 | LT BLU | O2HR2 | Heated oxygen sensor 2 bank 2 pin 3 (heater) |
| 34 | BLK | TPS2-B1 | Electric throttle control actuator bank 1 pin 5 (TP sensor 2) |
| 35 | WHT | TPS2-B2 | Electric throttle control actuator bank 2 pin 3 (TP sensor 2) |
| 36 | ORG | SENS GND | Brake booster pressure sensor pin 3 (BLK), via E3/F1 pin 20 |
| 37 | WHT | POS | Crankshaft position sensor (POS) pin 3 |
| 38 | ORG | INTPRES1 | Manifold absolute pressure (MAP) sensor pin 2 |
| 39 | PNK | MVPRES | Brake booster pressure sensor pin 2 (TAN), via E3/F1 pin 19 |
| 40 | RED | SENS GND | Electric throttle control actuator bank 1 pin 3 (TP sensor ground) |
| 41 | LT BLU | CLUTCH L | Cruise control system |
| 42 | GRY | CLUTCH H | Clutch interlock switch pin 2 (also to starting/charging system), via E3/F1 pin 36 |
| 43 | GRN | SENS PWR SPLY | Electric throttle control actuator bank 2 pin 1 (TP sensor supply) |
| 44 | BLU | SENS PWR SPLY | Electric throttle control actuator bank 1 pin 6 (TP sensor supply) |
| 45 | LT GRN | SENS PWR SPLY | Brake booster pressure sensor pin 1 (YEL), via E3/F1 pin 18 |
| 46 | RED | SENS PWR SPLY | Crankshaft position sensor (POS) pin 1 |
| 47 | YEL | SENS GND | Crankshaft position sensor (POS) pin 2 |
| 48 | BLK | SENS GND | Electric throttle control actuator bank 2 pin 4 (TP sensor ground) |

Component locations (Fig 1): ignition coils 1, 3, 5 top right of engine, 2, 4, 6 top left of engine; coil pin 2 (BLK) grounds at F34 (top front of engine), pin 3 (WHT) is fed from the ECM relay (IPDM E/R pin 53) together with the condenser (top right side of engine); electric throttle control actuator bank 2 on top of the left cylinder bank, bank 1 on top of the right cylinder bank; crankshaft position sensor right rear of engine; intake valve timing control solenoid valves left front (bank 2) / right front (bank 1) of engine; their pin 2 (RED) is fed from the ECM relay.

## F102 — ECM connector (48-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 49 | GRY | MOTOR (CLOSE)-B2 | Electric throttle control actuator bank 2 pin 5 (throttle control motor) |
| 50 | PPL | MOTOR (OPEN)-B2 | Electric throttle control actuator bank 2 pin 6 (throttle control motor) |
| 52 | RED | MOTOR PWR SPLY-B2 | Throttle control motor relay output (IPDM E/R pin 54); tied to pin 3 |
| 53 | WHT | IGN SW | IPDM E/R pin 51 (fuse 44, 10 A, ignition relay) via E3/F1 pin 10 (GRN); same node feeds fuel injector pin 1 supply |
| 54 | YEL | ENG COMM LINE | Computer data lines system (engine CAN) |
| 55 | LT GRN | ENG COMM LINE | Computer data lines system (engine CAN) |
| 57 | BLU | A/F SENS 1-B1 | A/F sensor 1 bank 1 pin 1 |
| 59 | ORG | SENS (PHASE)-B1 | Camshaft position sensor (PHASE) bank 1 pin 3 |
| 60 | GRN | SENS PWR SPLY | Camshaft position sensor bank 1 pin 1; also MAP sensor pin 1 (BLU) and power steering pressure sensor pin 3 (RED) |
| 61 | RED | A/F SENS 1-B1 | A/F sensor 1 bank 1 pin 2 |
| 63 | BLU | SENS (PHASE)-B2 | Camshaft position sensor (PHASE) bank 2 pin 3, via F107/F106 pin 1 |
| 64 | LT BLU | SENS PWR SPLY | Camshaft position sensor bank 2 pin 1 (via F107/F106 pin 11); also battery current sensor pin 1 (PNK, roadster) via E3/F1 pin 29 |
| 65 | LT GRN | A/F SENS 1-B2 | A/F sensor 1 bank 2 pin 1 |
| 66 | PPL | A/F SENS 1-B2 | A/F sensor 1 bank 2 pin 2 |
| 67 | PNK | TEMP SENS-B1 | Mass airflow (MAF) sensor bank 1 pin 2 (intake air temperature sensor) |
| 68 | LT GRN | SENS GND | MAF sensor bank 1 pin 4 |
| 69 | WHT | KNK SENS-B2 | Knock sensor bank 2 pin 1, via F201/F9 pin 4 |
| 71 | YEL | COOLANT TEMP SENS | Engine coolant temperature sensor pin 1, via F107/F106 pin 5 |
| 72 | SHIELD | SENS GND | Knock sensor bank 1 and bank 2 shields (pin 2), via F201/F9 pins 2 and 3 |
| 73 | WHT | KNK SENS-B1 | Knock sensor bank 1 pin 1, via F201/F9 pin 1 |
| 74 | BLU | SENS PWR SPLY | Gear lever position sensor pin 3 (5V) |
| 75 | WHT | I/P SPD SENS | Input speed sensor pin 3 (left side of transmission) |
| 76 | WHT | SENS 2-B1 | Heated oxygen sensor 2 bank 1 pin 4 |
| 77 | LT BLU | AIR FLOW SENS-B1 | MAF sensor bank 1 pin 3 |
| 78 | GRN | OIL TEMP SENS | Engine oil temperature sensor pin 1 |
| 79 | BRN | AIR FLOW SENS-B2 | MAF sensor bank 2 pin 3 |
| 80 | ORG | OXYGEN SENS 2-B2 | Heated oxygen sensor 2 bank 2 pin 4 |
| 81 | RED | FUEL INJ 3 | Fuel injector 3 pin 2, via F10/F120 pin 4 and F107/F106 pin 3 |
| 82 | PPL | FUEL INJ 6 | Fuel injector 6 pin 2, via F10 pin 7 and F107/F106 pin 10 |
| 83 | LT GRN | (no label) | MAF sensor bank 2 pin 2, via F107/F106 pin 7 |
| 84 | BLK | SENS GND | Engine coolant temp sensor pin 2, engine oil temp sensor pin 2, heated oxygen sensor 2 bank 1 pin 1, heated oxygen sensor 2 bank 2 pin 1 |
| 85 | BRN | FUEL INJ 2 | Fuel injector 2 pin 2, via F10 pin 3 and F107/F106 pin 8 |
| 86 | WHT | FUEL INJ 5 | Fuel injector 5 pin 2, via F10 pin 6 and F107/F106 pin 4 |
| 87 | YEL | PRESSURE SENS | Power steering pressure sensor pin 2 |
| 88 | RED | SENS GND | Gear lever position sensor pin 1 (GND) |
| 89 | GRY | FUEL INJ 1 | Fuel injector 1 pin 2, via F10 pin 2 and F107/F106 pin 2 |
| 90 | ORG | FUEL INJ 4 | Fuel injector 4 pin 2, via F10 pin 5 and F107/F106 pin 9 |
| 91 | LT BLU | BATT CURRENT SENS | Battery current sensor pin 3 (GRN, roadster), via E3/F1 pin 33 |
| 92 | GRN | SENS GND | Camshaft position sensor bank 2 pin 2, via F107/F106 pin 6 |
| 93 | PNK | ECM (BACK-UP) | ECM relay output (IPDM E/R pin 55, LT BLU) via E3/F1 pin 12 |
| 94 | YEL | SENS GND | MAF sensor bank 2 pin 4 |
| 95 | GRN | SENS GND | Battery current sensor pin 2 (WHT, roadster), via E3/F1 pin 22 |
| 96 | PNK | SENS GND | Camshaft position sensor bank 1 pin 2; also power steering pressure sensor pin 1 (LT GRN) and MAP sensor pin 3 (WHT) |

Component locations (Fig 3, 5): A/F sensor 1 bank 1 on right exhaust manifold, bank 2 on left exhaust manifold (pin 4 YEL is heater power from the ignition relay, IPDM E/R pin 56); heated oxygen sensor 2 bank 1 on right side exhaust pipe, bank 2 on left side exhaust pipe, both between three-way catalysts 1 and 2 (pin 2 RED is heater power from the ECM relay); engine coolant temperature sensor top rear of engine; engine oil temperature sensor lower front of engine; power steering pressure sensor on power steering high pressure tube; camshaft position sensor bank 2 left front of engine, bank 1 right front of engine; MAF sensor bank 2 on left cylinder bank air intake duct, bank 1 (with IAT sensor) on right cylinder bank air intake duct (pin 5 of both is powered from the ECM relay); battery current sensor right rear of engine compartment (roadster only); knock sensors on top of right (bank 1) / left (bank 2) cylinder bank; fuel injectors 1, 3, 5 top right, 2, 4, 6 top left of engine, pin 1 GRN common supply from the IGN SW node (fuse 44).

## M107 — ECM connector (32-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 97 | RED | SENSOR 1 | Accelerator pedal position sensor pin 3 (sensor 1), via E106 pin 12 |
| 98 | PNK | SENSOR 2 | Accelerator pedal position sensor pin 1 (sensor 2), via E106 pin 14 |
| 99 | BLU | SENS PWR SPLY | Accelerator pedal position sensor pin 5, via E106 pin 13 |
| 100 | WHT | SENS GND | Accelerator pedal position sensor pin 4, via E106 pin 16 |
| 101 | LT BLU | ASCD STEERING SW | Cruise control system |
| 102 | GRY | PRESSURE SENS | EVAP control system pressure sensor pin 1, via B1/M7 pin 9 |
| 103 | GRN | SENS PWR SPLY | Accelerator pedal position sensor pin 6 (GRY), via E106 pin 15 |
| 104 | GRY | SENS GND | Accelerator pedal position sensor pin 2 (PPL), via E106/M6 pin 11 |
| 105 | BLU | PRESSURE SENS | Refrigerant pressure sensor pin 2, via E106 pin 84 |
| 106 | WHT | TEMP SENSOR | Fuel level sensor unit and fuel pump pin 4 (fuel tank temperature sensor, RED), via M7/B1 pin 81 |
| 107 | BRN | SENS PWR SPLY | Refrigerant pressure sensor pin 1 (TAN, via E106 pin 85) and EVAP control system pressure sensor pin 3 (GRN, via B1/M7 pin 1) |
| 108 | YEL | SENS GND | Cruise control system |
| 109 | GRN | PNP SIG | Park/neutral position switch pin 1 (M/T, via F103/M116 pin 42); TCM via A/T assembly J/C (A/T); same node goes to IPDM E/R pin 57 |
| 110 | RED | SPD O/P SIG | Power steering control unit pin 10 (TACHO) (below left side of dash) |
| 112 | LT BLU | SENS GND | EVAP control system pressure sensor pin 2 (via B1/M7 pin 8) and refrigerant pressure sensor pin 3 (PPL, via E106/M6 pin 83) |
| 113 | PNK | CAN COMM LINE | Computer data lines system |
| 114 | BLU | CAN COMM LINE | Computer data lines system |
| 117 | YEL | DATA LINK CONN | Computer data lines system |
| 121 | LT GRN | CTRL VALVE | EVAP canister vent control valve pin 2 (YEL), via B1/M7 pin 97 (coupe) / pin 3 (roadster) |
| 122 | PNK | STOP LAMP SW | Stop lamp switch, via fuse block (J/B) terminal 3B/M2 (switch pin 2 WHT enters J/B at 2F/E103; switch pin 1 BLU is fed by fuse 7, 10 A, via 8F) |
| 123 | BLK | GND | Ground M95 (right end of dash) |
| 124 | BLK | GND | Ground M95 |
| 125 | RED | PWR SPLY | ECM relay output (IPDM E/R pin 49, TAN) via E106/M6 pin 100 |
| 126 | BRN | ASCD BRAKE SW | Cruise control system |
| 127 | BLK | GND | Ground M95 |
| 128 | BLK | GND | Ground M95 |

Component locations (Fig 5): accelerator pedal position sensor on the pedal; EVAP control system pressure sensor under vehicle near EVAP canister; EVAP canister vent control valve on EVAP canister (pin 1 WHT is ECM-relay power via F103/M116 pin 3 and B1 pin 98/4); refrigerant pressure sensor; camshaft position sensor bank 1 right front of engine; S-mode switch (M/T SynchroRev Match) and combination meter S-MODE SW SIG / MALFUNCTION IND LAMP are on the meter side, not on ECM pins; input speed sensor left side of transmission (its pin 1 BLU is ECM-relay power).

## Power supply / relays (Fig 2)

IPDM E/R (intelligent power distribution module engine room), right rear corner of engine compartment:

- **Throttle control motor relay** — fuses 51 (15 A) and 50 (15 A), hot at all times; coil driven by ECM pin 25, output pin 54 (PPL) to ECM pins 3/52
- **ECM relay** — coil driven by ECM pin 24 (SSOFF); outputs pin 69 side (coil, BRN), 55 (LT BLU, to ECM pin 93 back-up), 53 (WHT, to ignition coils pin 3, condenser and intake valve timing solenoids), 49 (TAN, via E106 pin 100 to ECM pin 125, MAF sensors pin 5, heated oxygen sensor 2 heaters, EVAP vent valve, input speed sensor, TCM)
- **Fuel pump relay** — fuse 41 (15 A); coil driven by ECM pin 22 (FPR); output pin 13 (YEL) to the fuel pump (fuel level sensor unit and fuel pump, in fuel tank, pins 1/5 via E117/B9 and M7/B1)
- **Ignition relay** (hot in ON or START) — feeds fuse 43 (10 A, pin 73 GRY, park/neutral position switch pin 2), fuse 44 (10 A, pin 51 YEL, ECM pin 53 IGN SW and injector supply), fuse 46 (15 A, pin 57 GRN) and pin 56 (LT GRN, A/F sensor heaters)
- IPDM grounds E22 (pins 12, 41 BLK/WHT); CAN pins 40 (BLU) / 39 (PNK); pin 97 (PPL) and 42 (YEL) to cooling fans system

Fuse block (J/B), behind left kick panel: fuse 7 (10 A, hot at all times) feeds the stop lamp switch (8F); fuse 9 (10 A, hot at all times, 4A/E106 pin 93) feeds the clutch interlock switch pin 1; fuse 3 (10 A, hot in ON or START, 2A/M1). Fusible link M (50 A, fuse/fusible link and relay box, right rear side of engine compartment) feeds the VVEL actuator motor relay (right rear of engine compartment), whose coil is driven by the VVEL control module (pin 23 M-RLY, YEL). VVEL control module grounds at E46 (left rear of engine compartment); VVEL control shaft position sensor shields ground at E22.

Main ECM grounds M95 (behind right end of dash): pins 8, 123, 124, 127, 128; A/F sensor and throttle position sensor cable shields also drain to M95.
