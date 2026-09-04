# 2013 Infiniti M37 3.7L (VQ37VHR) — ECM pinout

Transcribed from [2013-m37.pdf](2013-m37.pdf) (Mitchell ProDemand "3.7L, Engine Performance Circuit" wiring diagram, Fig 1 through Fig 6 of 6, pages 2 to 7; printer-friendly view dated 6/30/24).

ECM (engine control module), located right rear of engine compartment. The diagram draws the ECM as one 128-pin block; the connector name is printed under the last pin of each group (F101 after pin 48, F102 after pin 96, M107 after pin 128).

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| F101 | 48 (1-48) | Engine harness: A/F sensor heaters, throttle motors, ignition, relays, TPS, crank, MAP, sensor supplies/grounds |
| F102 | 48 (49-96) | Engine harness: bank 2 throttle motor, ignition switch, VVEL CAN, A/F and O2 sensors, cam sensors, knock, MAF, injectors, battery current sensor |
| M107 | 32 (97-128) | Vehicle harness: accelerator pedal, cruise, EVAP/refrigerant/fuel tank sensors, CAN, DLC, stop lamp, power and ground |

Wire colors are abbreviated as in the source (BLK black, BLU blue, BRN brown, GRN green, GRY grey, LT BLU light blue, LT GRN light green, ORG orange, PNK pink, PPL purple, RED, TAN, WHT white, YEL yellow; a slash marks a stripe, e.g. ORG/BLU; "(OR xxx)" is an alternate color; NCA no color available). Connector pass-throughs are given as "via A/B pin n". Unlisted pins (6, 7, 9, 10, 13, 14, 23, 26, 27, 32, 36, 39, 41, 42, 45, 51, 56, 58, 62, 70, 74, 75, 88, 111, 115, 116, 118, 119, 120) have no wire in this diagram.

## F101 — engine harness connector (48-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT | AFH1 | Air fuel ratio (A/F) sensor 1 (bank 1) pin 3 WHT |
| 2 | GRN | THROTTLE CTRL MTR (BANK 1) (OPEN) | Electric throttle control actuator (bank 1) pin 1 GRN (throttle control motor OPEN) |
| 3 | RED | THROTTLE CTRL MTR POWER SPLY (BANK 1) | IPDM E/R E7 pin 7 YEL (throttle control motor relay output) via F40/E20 pin 11; spliced with pin 52 |
| 4 | BRN | THROTTLE CTRL MTR (BANK 1) (CLOSE) | Electric throttle control actuator (bank 1) pin 2 BRN (throttle control motor CLOSE) |
| 5 | BLU | AFH2 | A/F sensor 1 (bank 2) pin 3 BLU |
| 8 | BLK | ECM GND | Ground M95 (right side of dash) |
| 11 | GRY | IGN 4 | Ignition coil 4 pin 1 |
| 12 | BLU | IGN 3 | Ignition coil 3 pin 1 |
| 15 | LT GRN | IGN 5 | Ignition coil 5 pin 1 |
| 16 | GRN | IGN 2 | Ignition coil 2 pin 1 |
| 17 | PNK | O2HR1 | Heated oxygen sensor 2 (bank 1) pin 3 PNK |
| 18 | YEL | INTAKE VLV TIMING CTRL SOL VLV (BANK 1) | Intake valve timing control solenoid valve (bank 1) pin 1 YEL |
| 19 | PPL | IGN 6 | Ignition coil 6 pin 1 |
| 20 | YEL | IGN 1 | Ignition coil 1 pin 1 |
| 21 | GRY | EVAP | EVAP canister purge volume control solenoid valve pin 2 GRY |
| 22 | BLK | FPR | IPDM E/R E7 pin 77 BLK (fuel pump relay) via F40/E20 pin 30 |
| 24 | PPL | SSOFF | IPDM E/R E7 pin 70 LT GRN (ECM relay) via F40/E20 pin 31 |
| 25 | ORG | THROTTLE CTRL MTR RLY | IPDM E/R E7 pin 71 ORG (throttle control motor relay) via F40/E20 pin 34 |
| 28 | RED | VVEL ACTR MTR RLY ABORT SIG (VVEL CTRL MOD) | VVEL control module pin 21 PPL (ABORT) via F40/E20 pin 28 |
| 29 | YEL | INTAKE VLV TIMING CTRL SOL VLV (BANK 1) | Intake valve timing control solenoid valve (bank 2) pin 1 YEL (label printed as bank 1, wire goes to the bank 2 valve) |
| 30 | ORG | TPS1-B1 | Electric throttle control actuator (bank 1) pin 4 ORG (throttle position sensor 1) |
| 31 | ORG/BLU | TPS1-B2 | Electric throttle control actuator (bank 2) pin 2 ORG/BLU (throttle position sensor 1) |
| 33 | LT GRN | O2HR2 | Heated oxygen sensor 2 (bank 2) pin 3 LT GRN |
| 34 | WHT/BLU | TPS2-B1 | Electric throttle control actuator (bank 1) pin 5 WHT/BLU (throttle position sensor 2) |
| 35 | WHT | TPS2 B2 | Electric throttle control actuator (bank 2) pin 3 WHT (throttle position sensor 2) |
| 37 | BLU | CRANKSHAFT POSITION SENS | Crankshaft position sensor (POS) pin 3 BLU |
| 38 | WHT | MANIFOLD ABSOLUTE PRESS SENS | Manifold absolute pressure sensor pin 2 WHT |
| 40 | ORG/BLU | SENS GND | Electric throttle control actuator (bank 1) pin 3 ORG/BLU |
| 43 | WHT/BLU | SENS PWR SPLY [(THROTTLE POSITION SENS (BANK 2)] | Electric throttle control actuator (bank 2) pin 1 WHT/BLU |
| 44 | WHT | SENS PWR SPLY [(THROTTLE POSITION SENS (BANK 2)] | Electric throttle control actuator (bank 1) pin 6 WHT (label printed as bank 2, wire goes to the bank 1 actuator) |
| 46 | RED | AVCC POS | Crankshaft position sensor (POS) pin 1 RED |
| 47 | BLK | GND POS | Crankshaft position sensor (POS) pin 2 BLK |
| 48 | ORG | GNDA-TPS-B2 | Electric throttle control actuator (bank 2) pin 4 ORG |

Component locations (Fig 1-3): ignition coils 1, 3, 5 top right of engine, coils 2, 4, 6 top left of engine (coil pin 2 BLK to ground F34, front of engine; coil pin 3 WHT power bus with condenser at left C pillar); electric throttle control actuator (bank 1) right throttle body, (bank 2) left throttle body; crankshaft position sensor (POS) rear of engine; camshaft position sensor (PHASE) (bank 1) right front of engine, (bank 2) left front of engine; power steering pressure sensor front of engine compartment; MAP sensor left rear of engine; EVAP canister purge volume control solenoid valve top right rear of engine; intake valve timing control solenoid valve (bank 1) right front of engine, (bank 2) left front of engine.

## F102 — engine harness connector (48-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 49 | LT GRN | THROTTLE CTRL MTR (BANK 2) (CLOSE) | Electric throttle control actuator (bank 2) pin 5 LT GRN (throttle control motor CLOSE) |
| 50 | PPL | THROTTLE CTRL MTR (BANK 2) (OPEN) | Electric throttle control actuator (bank 2) pin 6 PPL (throttle control motor OPEN) |
| 52 | RED | THROTTLE CTRL MTR RLY PWR SPLY (BANK 2) | Spliced with pin 3 (IPDM E/R E7 pin 7, throttle control motor relay) |
| 53 | GRN | IGN SW | IPDM E/R E7 pin 52 GRN (fuse 44, 10 A) via F40/E20 pin 10; same net feeds fuel injectors 1-6 pin 1 GRN via F30/F120 pin 1 |
| 54 | BLU | CAN COMMUNICATION LINE (VVEL CTRL MOD) | Computer data lines system |
| 55 | YEL | CAN COMMUNICATION LINE (VVEL CTRL MOD) | Computer data lines system |
| 57 | BLU | AF+1 | A/F sensor 1 (bank 1) pin 1 BLU |
| 59 | BLU | CAMSHAFT POSITION SENS (BANK 1) | Camshaft position sensor (PHASE) (bank 1) pin 3 BLU |
| 60 | GRN | AVCC PHS1-E PHS1/PS | Camshaft position sensor (bank 1) pin 1 GRN; power steering pressure sensor pin 3 GRN; MAP sensor pin 1 GRN |
| 61 | BLK/WHT | AF-1 | A/F sensor 1 (bank 1) pin 2 BLK/WHT |
| 63 | BRN | CAMSHAFT POSITION SENS (BANK 2) | Camshaft position sensor (PHASE) (bank 2) pin 3 BRN |
| 64 | WHT | AVCC PHS2-E PHS2/CU | Camshaft position sensor (bank 2) pin 1 WHT; battery current sensor pin 1 YEL via F40/E20 pin 29 |
| 65 | BLU/ORG | A/F SENS 1 (BANK 2) | A/F sensor 1 (bank 2) pin 1 BLU/ORG |
| 66 | WHT/BLU | A/F SENS 1 (BANK 2) | A/F sensor 1 (bank 2) pin 2 WHT/BLU |
| 67 | YEL | INTAKE AIR TEMP SENS (BANK 1) | Intake air temperature sensor (in mass air flow sensor bank 1) pin 2 YEL |
| 68 | PPL | GNDA QA1/TA1 | Mass air flow sensor (bank 1) pin 4 PPL and intake air temperature sensor pin 1 PPL |
| 69 | GRY | KNK2 | Knock sensor (bank 2) pin 1 WHT via F9/F201 pin 3 |
| 71 | LT BLU | ENG COOLANT TEMP SENS | Engine coolant temperature sensor pin 1 LT BLU |
| 72 | SHIELD | GNDA-KNK | Knock sensor (bank 1) and (bank 2) cable shields via F9/F201 pins 2 and 4 |
| 73 | WHT | KNK1 | Knock sensor (bank 1) pin 1 WHT via F9/F201 pin 1 |
| 76 | BRN | O2SR1 | Heated oxygen sensor 2 (bank 1) pin 4 BRN |
| 77 | ORG | MASS AIR FLOW SENS (BANK 1) | Mass air flow sensor (bank 1) pin 3 ORG |
| 78 | GRN | ENG OIL TEMP SENS | Engine oil temperature sensor pin 1 GRN |
| 79 | BRN | MASS AIR FLOW SENS (BANK 2) | Mass air flow sensor (bank 2) pin 3 BRN |
| 80 | BLU | O2SR2 | Heated oxygen sensor 2 (bank 2) pin 4 BLU |
| 81 | YEL | INJ 3 | Fuel injector 3 pin 2 RED via F30/F120 pin 4 |
| 82 | PPL | ING 6 | Fuel injector 6 pin 2 PPL via F30/F120 pin 7 |
| 83 | GRY | BATT TEMP | Battery current sensor pin 2 BRN via F40/E20 pin 20 |
| 84 | BLK/WHT | SENS GND | Engine coolant temperature sensor pin 2 BLK/WHT; engine oil temperature sensor pin 2 BLK/WHT; heated oxygen sensor 2 (bank 1) pin 1 BLK/WHT; heated oxygen sensor 2 (bank 2) pin 1 BLK/WHT |
| 85 | BRN | (no function printed) | Fuel injector 2 pin 2 BRN via F30/F120 pin 3 |
| 86 | RED | (no function printed) | Fuel injector 5 pin 2 WHT via F30/F120 pin 6 |
| 87 | PPL | PSPRES | Power steering pressure sensor pin 2 PPL |
| 89 | GRY | INJ 1 | Fuel injector 1 pin 2 GRY via F30/F120 pin 2 |
| 90 | ORG | INJ 4 | Fuel injector 4 pin 2 ORG via F30/F120 pin 5 |
| 91 | GRN | CURSEN | Battery current sensor pin 4 GRN via F40/E20 pin 21 |
| 92 | RED | GNDA, PHS 2 | Camshaft position sensor (bank 2) pin 2 RED |
| 93 | WHT | PWR SPLY FOR ECM (BACK-UP) | IPDM E/R E5 pin 10 PPL (fuse 51, 15 A, hot at all times) via E20/F40 pin 12 |
| 94 | BLK | GNDA QA2 | Mass air flow sensor (bank 2) pin 4 BLK |
| 95 | WHT | GNDA CURSEN | Battery current sensor pin 3 ORG via F40/E20 pin 22 |
| 96 | ORG | GNDA PHS 1/PS | Camshaft position sensor (bank 1) pin 2 ORG; power steering pressure sensor pin 1 ORG; MAP sensor pin 3 ORG |

Component locations (Fig 1-4): mass air flow sensor (bank 1) right air intake tube, (bank 2) left air intake tube; fuel injectors 1, 3, 5 top right of engine, 2, 4, 6 top left of engine; engine oil temperature sensor lower right front of engine; engine coolant temperature sensor left rear of engine; heated oxygen sensor 2 (bank 1) left side of engine (as printed), (bank 2) left front of engine; knock sensors top of engine; A/F sensor 1 (bank 1) right side of engine, (bank 2) left side of engine; battery current sensor right rear of engine compartment.

## M107 — vehicle harness connector (32-pin)

Accelerator pedal wiring is drawn for two variants: with ICC the accelerator pedal position (APP) sensor above the accelerator pedal bracket, reached through M150/M151 (sensor 2 pins 2 BLK, 1 YEL, 3 BLU; sensor 1 pins 6 GRN, 4 RED, 5 WHT; shield to M30 PCB harness / ground M95); without ICC the APP sensor on the accelerator pedal bracket (sensor 1 pins 5 GRN, 3 RED, 4 WHT; sensor 2 pins 6 BLU, 1 YEL, 2 BLK).

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 97 | RED | APS1 | APP sensor 1 signal: w/ ICC pin 4 RED (via M150/M151 pin 3), w/o ICC pin 3 RED |
| 98 | YEL | APS2 | APP sensor 2 signal: w/ ICC pin 1 YEL (via M150/M151 pin 1), w/o ICC pin 1 YEL |
| 99 | GRN | SENS PWR SPLY (ACCELERATOR PDL POSITION SENS 1) | APP sensor: w/ ICC pin 6 GRN (via M150/M151 pin 6), w/o ICC pin 5 GRN |
| 100 | WHT | SENS GND(ACCELERATOR POSITION SENS 1) | APP sensor: w/ ICC pin 5 WHT (via M150/M151 pin 5), w/o ICC pin 4 WHT |
| 101 | LT BLU | ASCD SW | Cruise control system |
| 102 | PNK | FTPRES | EVAP control system pressure sensor pin 2 PNK via PCB harness M30 pin 427 / M28 pin 353, M7/B1 pin 52, B72/B71 pin 3 |
| 103 | BLU | AVCC2-APS2 | APP sensor: w/ ICC pin 3 BLU (via M150/M151 pin 4), w/o ICC pin 6 BLU |
| 104 | BRN (OR BLK) | SENS GND (WITH ICC) | APP sensor pin 2 BLK (w/ ICC via M150/M151 pin 2; w/o ICC direct) |
| 105 | LT GRN | REFRIGERANT PRESS SENS | Refrigerant pressure sensor pin 2 LT GRN via PCB harness M30 pin 430 / M28 pin 350, E106/M6 pin 89 |
| 106 | PNK | FUEL TANK TEMP SENS | Fuel tank temperature sensor pin 4 PNK via M117/B201 pin 29 |
| 107 | TAN | AVCC2 PDPRES/FTPRES | EVAP control system pressure sensor pin 3 GRN via PCB harness M30 pin 436 / M23 pin 124, M7/B1 pin 53, B72/B71 pin 2; refrigerant pressure sensor pin 3 WHT via M29 pin 375, E106/M6 pin 90 |
| 108 | YEL | GND ASCD SW | Cruise control system |
| 109 | BRN | TRANS RNG SW | A/T assembly joint connector pin 9 BRN (OR LT GRN) to TCM (START RLY) via PCB harness M20 pin 11 / M30 pin 414, E106/M6 pin 44, F40/E20 pin 32; also to starting/charging system |
| 110 | PPL | ENG SPD SIG OUT | Electronic power steering system |
| 112 | PPL | GNDA PDPRES/FTPRES | EVAP control system pressure sensor pin 1 PPL via PCB harness M30 pin 428 / M28 pin 331, M7/B1 pin 51, B72/B71 pin 6; refrigerant pressure sensor pin 1 BRN via M28 pin 332, E106/M6 pin 88 |
| 113 | PNK | CAN COMMUNICATION LINE | Computer data lines system |
| 114 | BLU | CAN COMMUNICATION LINE | Computer data lines system |
| 117 | PPL | DATA LINK CONNECTOR | Computer data lines system |
| 121 | GRN | EVAP CANISTER VENT CTRL VLV | EVAP canister vent control valve pin 2 GRN |
| 122 | PNK | STOP LAMP SW | Cruise control system |
| 123 | BLK | ECM GND | Ground M95 (right side of dash) |
| 124 | BLK | ECM GND | Ground M95 |
| 125 | LT BLU | PWR SPLY FOR ECM | IPDM E/R E5 pin 6 RED (ECM relay output) via M6/E106 pin 97; same net feeds EVAP canister purge volume control solenoid valve pin 1 RED (F103/M116 pin 4) and mass air flow sensors (bank 1 and 2) pin 5 (F103/M116 pins 9, 10) |
| 126 | BRN | ASCD BRK SW | ICC brake switch (w/ ICC) / ASCD brake switch (w/o ICC) pin 2 PNK via E106/M6 pin 21 |
| 127 | BLK | ECM GND | Ground M95 |
| 128 | BLK | ECM GND | Ground M95 |

Component locations (Fig 4, 5): EVAP canister vent control valve under rear of vehicle; EVAP control system pressure sensor under right rear of vehicle; refrigerant pressure sensor right front of engine compartment; fuel tank temperature sensor in the fuel level sensor unit and fuel pump (in fuel tank); ICC / ASCD brake switch on brake pedal bracket; PCB harness M28/M29/M30 is a jumper block in the dash harness; TCM in the A/T assembly.

## Power supply / relays (Fig 2, 5, 6)

IPDM E/R (intelligent power distribution module engine room), right rear of engine compartment:

- **Throttle control motor relay** — output E7 pin 7 YEL to ECM pins 3 / 52 (via F40/E20 pin 11); coil E7 pin 71 ORG driven from ECM pin 25.
- **ECM relay** — fed by fuses 50 (15 A) and 51 (15 A), hot at all times; coil E7 pin 70 LT GRN driven from ECM pin 24 SSOFF; output E5 pin 6 RED to ECM pin 125 (via M6/E106 pin 97 LT BLU), purge valve and MAF sensors; fuse 51 also feeds E5 pin 10 PPL to ECM pin 93 (back-up power).
- **Fuel pump relay** — fuse 41 (15 A); coil E7 pin 77 BLK from ECM pin 22 FPR; output E5 pin 13 GRY via E105/B3 pin 1 WHT and B51/B230 pin 5 BRN to the jumping connector (left side of luggage compartment) and fuel pump (in fuel tank, pin 3 BLK ground B224 right rear quarter panel).
- **Ignition relay** (hot in ON or START) — fuse 44 (10 A) to E7 pin 52 GRN (ECM pin 53 IGN SW and fuel injector supply via F40/E20 pin 10); fuse 45 (15 A) to E7 pin 56 GRY; E7 pin 57 PPL is drawn from the same ignition relay bus. Relay coil grounds E5 pins 11 / 41 BLK at E46 (right side of engine compartment). IPDM CPU E6 pins 40 BLU / 39 PNK go to the computer data lines system.
- Fuse block (J/B), behind left end of dash: fuse 3 (10 A, hot in ON or START) E103 pin 4F GRN to the ICC / ASCD brake switch pin 1; switch pin 2 PNK returns to ECM pin 126.
- VVEL control module (right rear of engine compartment, ground E22 left rear of engine compartment) is powered through the VVEL actuator motor relay (in fuse, fusible link and relay box) from fusible link G (50 A, fuse and fusible link block, right rear of engine compartment); its pin 21 ABORT comes from ECM pin 28 and its CAN lines run to the computer data lines system together with ECM pins 54 / 55.
- Grounds: ECM pins 8, 123, 124, 127, 128, the A/F sensor 1 shields, the throttle actuator shields and the APP sensor shield go to M95 (right side of dash); combination meter ground M11 (left side of dash).
