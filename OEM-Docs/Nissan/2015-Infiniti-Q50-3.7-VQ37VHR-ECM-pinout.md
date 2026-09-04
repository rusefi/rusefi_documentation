# 2015 Infiniti Q50 3.7L (VQ37VHR) — ECM pinout

Transcribed from [2015-q50-3.7.pdf](2015-q50-3.7.pdf) (Mitchell-style "3.7L, Engine Performance Circuit" wiring diagram, Fig 1 through Fig 7 of 7, pages 2 to 8; shop printout dated Jul 1, 2024, "2015 Infiniti Q50 Base, 3.7L Eng").

Engine control module (ECM), located under right end of dash. The diagram draws the ECM as one 128-pin block; the connector name is printed under the last pin of each group (F7 after pin 48, F8 after pin 96, M37 after pin 128).

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| F7 | 48 (1-48) | Engine harness: A/F sensor heaters, throttle motors, ignition, relays, TPS, crank, MAP, sensor supplies/grounds |
| F8 | 48 (49-96) | Engine harness: bank 2 throttle motor, ignition switch, comm lines, A/F and O2 sensors, cam sensors, knock, MAF, injectors, battery current sensor |
| M37 | 32 (97-128) | Vehicle harness: accelerator pedal, cruise, EVAP/refrigerant/fuel tank sensors, CAN, DLC, stop lamp, power and ground |

Wire colors are abbreviated as in the source (BLK black, BLU blue, BRN brown, GRN green, GRY grey, LT BLU light blue, LT GRN light green, ORG orange, PNK pink, PPL purple, RED, TAN, WHT white, YEL yellow; "(OR xxx)" is an alternate color; NCA no color available). Connector pass-throughs are given as "via A/B pin n". Unlisted pins (6, 7, 9, 10, 13, 23, 26, 27, 36, 39, 41, 42, 45, 51, 56, 58, 62, 70, 74, 75, 88, 111, 115, 116, 118, 119, 120) have no wire in this diagram.

## F7 — engine harness connector (48-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT | A/F SENS1 HTR BNK 1 | Air fuel ratio (A/F) sensor 1 (bank 1) pin 3 WHT |
| 2 | GRN | BNK 1 OPEN | Electric throttle control actuator (bank 1) pin 1 GRN (throttle control motor OPEN) |
| 3 | RED | PWR SPLY BNK 1 | IPDM E/R E124 pin 57 PNK (throttle control motor relay output) via F12/E10 pin 11; spliced with pin 52 |
| 4 | BRN | BNK 1 CLOSE | Electric throttle control actuator (bank 1) pin 2 BRN (throttle control motor CLOSE) |
| 5 | GRY | A/F SENS1 HTR BNK 2 | A/F sensor 1 (bank 2) pin 3 GRY |
| 8 | BLK | GND | Ground M111 (lower right center of dash) |
| 11 | GRY | IGN 4 | Ignition coil 4 pin 1 |
| 12 | BLU | IGN 3 | Ignition coil 3 pin 1 via F57/F58 pin 3 |
| 14 | YEL | FPCM | Fuel pump control module pin 2 YEL via F20/M36 pin 1, M19/B18 pin 64 |
| 15 | PPL | IGN 5 | Ignition coil 5 pin 1 via F57/F58 pin 2 |
| 16 | GRN | IGN 2 | Ignition coil 2 pin 1 |
| 17 | PNK | SENS 2 HTR BNK 1 | Heated oxygen sensor 2 (bank 1) pin 3 PNK |
| 18 | WHT | VLV BNK 1 | Intake valve timing control solenoid valve (bank 1) pin 1 WHT |
| 19 | LT BLU | IGN 6 | Ignition coil 6 pin 1 |
| 20 | YEL | IGN 1 | Ignition coil 1 pin 1 via F57/F58 pin 4 |
| 21 | GRY | EVAP | EVAP canister purge volume control solenoid valve pin 2 GRY |
| 22 | RED | FUEL PMP RLY | IPDM E/R E124 pin 69 RED (OR BRN) (fuel pump relay) via F12/E10 pin 30 |
| 24 | PNK | SSOFF | IPDM E/R E124 pin 72 PNK via F12/E10 pin 31 |
| 25 | TAN | MTR RLY | IPDM E/R E124 pin 65 TAN (throttle control motor relay) via F12/E10 pin 34 |
| 28 | BRN | ABORT SIG | VVEL control module pin 21 PPL (ABORT SIG) via F12/E10 pin 28 |
| 29 | GRN | VLV BNK 2 | Intake valve timing control solenoid valve (bank 2) pin 1 GRN |
| 30 | WHT | SENS 1 BNK 1 | Electric throttle control actuator (bank 1) pin 4 WHT (throttle position sensor 1) |
| 31 | PNK | SENS 1 BNK 2 | Electric throttle control actuator (bank 2) pin 2 PNK (throttle position sensor 1) |
| 32 | WHT | FPCM | Fuel pump control module pin 3 WHT via F20/M36 pin 6, M19/B18 pin 65 |
| 33 | LT BLU | SENS 2 HTR BNK 2 | Heated oxygen sensor 2 (bank 2) pin 3 LT BLU |
| 34 | BLK | SENS 2 BNK 1 | Electric throttle control actuator (bank 1) pin 5 BLK (throttle position sensor 2) |
| 35 | LT GRN | SENS 2 BNK 2 | Electric throttle control actuator (bank 2) pin 3 LT GRN (throttle position sensor 2) |
| 37 | WHT | POS SENS | Crankshaft position sensor pin 3 WHT |
| 38 | PNK | MAP SENS | Manifold absolute pressure (MAP) sensor pin 2 PNK |
| 40 | RED | SENS GND | Electric throttle control actuator (bank 1) pin 3 RED |
| 43 | BRN | SENS PWR SPLY | Electric throttle control actuator (bank 2) pin 1 BRN |
| 44 | GRN | SENS PWR SPLY | Electric throttle control actuator (bank 1) pin 6 GRN |
| 46 | RED | SENS PWR SPLY | Crankshaft position sensor pin 1 RED |
| 47 | YEL | SENS GND | Crankshaft position sensor pin 2 YEL |
| 48 | LT BLU | SENS GND | Electric throttle control actuator (bank 2) pin 4 LT BLU |

Component locations (Fig 1, 2): ignition coils 1, 3, 5 top of right cylinder bank, coils 2, 4, 6 top of left cylinder bank (coil pin 2 BLK to ground F52, front of right cylinder bank; coil pin 3 WHT power bus with condenser at right rear of engine); electric throttle control actuator (bank 2) on bank 2 throttle body assembly, (bank 1) on bank 1 throttle body assembly; crankshaft position sensor lower right rear of engine; intake valve timing control solenoid valve (bank 2) front of left cylinder bank, (bank 1) front of right cylinder bank; EVAP canister purge volume control solenoid valve right rear of intake manifold; MAP sensor left rear of intake manifold.

## F8 — engine harness connector (48-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 49 | GRY | BNK 2 CLOSE | Electric throttle control actuator (bank 2) pin 5 GRY (throttle control motor CLOSE) |
| 50 | WHT | BNK 2 OPEN | Electric throttle control actuator (bank 2) pin 6 WHT (throttle control motor OPEN) |
| 52 | RED | PWR SPLY BNK 2 | Spliced with pin 3 (IPDM E/R E124 pin 57, throttle control motor relay) |
| 53 | GRN | IGN SW | IPDM E/R E123 pin 54 YEL (fuse 50, 10 A, ignition relay) via F12/E10 pin 10; same net feeds fuel injectors 1-6 pin 1 GRN via F39/F70 pin 1 |
| 54 | YEL | ENG COMM LINE | Computer data lines system (VVEL control module) |
| 55 | LT GRN | ENG COMM LINE | Computer data lines system (VVEL control module) |
| 57 | BLU | A/F SENS 1 BNK 1 | A/F sensor 1 (bank 1) pin 1 BLU |
| 59 | LT BLU | SENS BNK 1 | Camshaft position sensor (bank 1) pin 3 LT BLU |
| 60 | GRY | SENS PWR SPLY | Camshaft position sensor (bank 1) pin 1 GRY; MAP sensor pin 1 YEL; power steering pressure sensor pin 3 WHT |
| 61 | RED | A/F SENS 1 BNK 1 | A/F sensor 1 (bank 1) pin 2 RED |
| 63 | BLU | SENS BNK 2 | Camshaft position sensor (bank 2) pin 3 BLU via F5/F6 pin 3 |
| 64 | WHT | SENS PWR SPLY | Camshaft position sensor (bank 2) pin 1 WHT via F5/F6 pin 5; splice continues as LT GRN to battery current sensor pin 4 BRN via F12/E10 pin 29, M39/E47 |
| 65 | LT GRN | A/F SENS 1 BNK 1 | A/F sensor 1 (bank 2) pin 1 LT GRN (label printed as BNK 1, wire goes to the bank 2 sensor) |
| 66 | PPL | A/F SENS 1 BNK 2 | A/F sensor 1 (bank 2) pin 2 PPL |
| 67 | PNK | AIR TEMP SENS | Mass airflow sensor (bank 1) pin 2 PNK (intake air temperature sensor) |
| 68 | LT GRN | SENS GND | Mass airflow sensor (bank 1) pin 4 LT GRN and pin 1 BLU |
| 69 | WHT | KNOCK SENS BNK 2 | Knock sensor (bank 2) pin 1 WHT via F55/F67 pin 3 |
| 71 | YEL | COOLANT TEMP SENS | Engine coolant temperature sensor pin 1 YEL |
| 72 | SHIELD | SENS GND | Knock sensor (bank 1) and (bank 2) cable shields via F55/F67 pins 2 and 4 |
| 73 | WHT | KNOCK SENS BNK 1 | Knock sensor (bank 1) pin 1 WHT via F55/F67 pin 1 |
| 76 | WHT | HTD SENS 2 BNK 1 | Heated oxygen sensor 2 (bank 1) pin 4 WHT |
| 77 | LT BLU | MAFS BNK 1 | Mass airflow sensor (bank 1) pin 3 LT BLU |
| 78 | BRN | ENG OIL TEMP SENS | Engine oil temperature sensor pin 1 BRN |
| 79 | GRN | MAFS BNK 2 | Mass airflow sensor (bank 2) pin 3 GRN via F5/F6 pin 7 |
| 80 | TAN | HTD SENS 2 BNK 2 | Heated oxygen sensor 2 (bank 2) pin 4 TAN |
| 81 | RED | INJ 3 | Fuel injector 3 pin 2 RED via F39/F70 pin 4 |
| 82 | PPL | INJ 6 | Fuel injector 6 pin 2 PPL via F39/F70 pin 7 |
| 83 | TAN | BAT TEMP SENS | Battery current sensor pin 3 TAN via F20/M36 pin 34, M39/E47 pin 18 |
| 84 | BLK | SENS GND | Engine coolant temperature sensor pin 2 BLK; heated oxygen sensor 2 (bank 1) pin 1 BLK; engine oil temperature sensor pin 2 BLK; heated oxygen sensor 2 (bank 2) pin 1 BLK |
| 85 | BRN | INJ 2 | Fuel injector 2 pin 2 BRN via F39/F70 pin 3 |
| 86 | WHT | INJ 5 | Fuel injector 5 pin 2 WHT via F39/F70 pin 6 |
| 87 | YEL | PWR STRG SENS | Power steering pressure sensor pin 2 YEL via F5/F6 pin 1 |
| 89 | GRY | INJ 1 | Fuel injector 1 pin 2 GRY via F39/F70 pin 2 |
| 90 | TAN | INJ 4 | Fuel injector 4 pin 2 TAN via F39/F70 pin 5 |
| 91 | RED | CURRENT SENS | Battery current sensor pin 1 GRN via F12/E10 pin 32 |
| 92 | GRN | SENS GND | Camshaft position sensor (bank 2) pin 2 GRN via F5/F6 pin 4 |
| 93 | PNK | PWR SPLY | IPDM E/R E123 pin 58 LT BLU (fuse 64, 10 A) via F12/E10 pin 12 |
| 94 | YEL | SENS GND | Mass airflow sensor (bank 2) pin 4 YEL via F5/F6 pin 8 |
| 95 | BLK | GNDA CURSEN | Battery current sensor pin 2 BLK via F12/E10 pin 33 |
| 96 | BRN | GNDA PHASE1/PS | Camshaft position sensor (bank 1) pin 2 BRN; power steering pressure sensor pin 1 BLK via F5/F6 pin 2; MAP sensor pin 3 BLU |

Component locations (Fig 3-7): fuel injectors 1, 3, 5 top inside of right cylinder bank, 2, 4, 6 top inside of left cylinder bank; A/F sensor 1 (bank 1) right exhaust upstream of catalytic converter, (bank 2) left exhaust upstream; heated oxygen sensor 2 (bank 1) right exhaust middle of catalytic converter, (bank 2) left exhaust middle; engine coolant temperature sensor rear of left cylinder bank; engine oil temperature sensor on oil filter housing (AWD) or bottom right front of engine (2WD); camshaft position sensor (bank 2) front of left cylinder bank, (bank 1) front of right cylinder bank; power steering pressure sensor (if equipped) right front of engine; mass airflow sensor (bank 2) on left intake air duct, (bank 1) on right intake air duct; knock sensors under intake manifold in right (bank 1) / left (bank 2) cylinder bank; battery current sensor on battery negative terminal; fuel pump control module left rear of luggage compartment; VVEL control module right rear of engine compartment.

## M37 — vehicle harness connector (32-pin)

Accelerator pedal wiring is drawn for two variants through connector M67/M125: with ICC the accelerator pedal actuator/accelerator pedal position sensor (top of accelerator pedal assembly, sensor 1 pins 4 WHT, 6 YEL, 5 GRN; sensor 2 pins 10 BLU, 12 BRN, 11 RED); without ICC the accelerator pedal position sensor (behind accelerator pedal assembly, sensor 1 pins 5 BLU, 3 RED, 4 WHT; sensor 2 pins 6 GRY, 1 PNK, 2 PPL).

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 97 | YEL | APS1 | M67/M125 pin 6 RED (OR YEL): APP sensor 1 signal, w/ ICC pin 6 YEL, w/o ICC pin 3 RED |
| 98 | BRN | APS2 | M67/M125 pin 12 PNK (OR BRN): APP sensor 2 signal, w/ ICC pin 12 BRN, w/o ICC pin 1 PNK |
| 99 | WHT | PWR SPLY APS1 | M67/M125 pin 4 BLU (OR WHT): w/ ICC pin 4 WHT, w/o ICC pin 5 BLU |
| 100 | GRN | SENS GND APS1 | M67/M125 pin 5 WHT (OR GRN): w/ ICC pin 5 GRN, w/o ICC pin 4 WHT |
| 101 | LT BLU | STRG SW | Cruise control system |
| 102 | LT GRN | EVAP CTRL SENS | EVAP control system pressure sensor pin 2 LT BLU via M22/B62 pin 25, B68/B83 pin 4 |
| 103 | BLU | PWR SPLY APS2 | M67/M125 pin 10 GRY (OR BLU): w/ ICC pin 10 BLU, w/o ICC pin 6 GRY |
| 104 | RED | SENS GND APS2 | M67/M125 pin 11 PPL (OR RED): w/ ICC pin 11 RED, w/o ICC pin 2 PPL |
| 105 | BLU | REF PRESS SENS | Refrigerant pressure sensor pin 2 LT GRN via E25/M40 pin 3, E14/E76 pin 8 |
| 106 | PNK | FUL TNK TEMP SENS | Fuel tank temperature sensor pin 4 PNK via M19/B18 pin 10 |
| 107 | GRY | SENS PWR SPLY | EVAP control system pressure sensor pin 3 GRN via M22/B62 pin 26, B68/B83 pin 5; refrigerant pressure sensor pin 3 GRY via E25/M40 pin 2, E14/E76 pin 9 |
| 108 | YEL | SENS GND | Cruise control system |
| 109 | BRN | TRANS RANGE SW | A/T assembly joint connector pin 9 GRY (OR PPL) to TCM (STR RLY) via E47/M39 pin 17, F12/E10 pin 27 |
| 110 | PPL | ENG SPD SIG OUT | Power steering control unit (if equipped, right end of dash) pin 10 (SPD SIG) |
| 112 | PPL | GNDA-PDPRES/FTPRS | EVAP control system pressure sensor pin 1 PPL via M22/B62 pin 24, B68/B83 pin 3; refrigerant pressure sensor pin 1 PPL via E25/M40 pin 4, E14/E76 pin 7 |
| 113 | PNK | CAN COMM LINE | Computer data lines system |
| 114 | BLU | CAN COMM LINE | Computer data lines system |
| 117 | PPL | DATA LINK CONN | Computer data lines system |
| 121 | LT GRN | EVAP CTRL VLV | EVAP canister vent control valve pin 2 RED via M22/B62 pin 1, B68/B83 pin 2 |
| 122 | LT BLU | STOP LP SW | Fuse block (J/B) M133 pin 26C; joined inside the J/B to E64 pin 3E PPL from stop lamp switch pin 4 (and ICC brake hold relay pin 3) |
| 123 | BLK | GND | Ground M111 (lower right center of dash) via E25/M40 |
| 124 | BLK | GND | Ground M111 via E25/M40 |
| 125 | RED | PWR SPLY | IPDM E/R E120 pin 13 YEL (fuse 46, 10 A) via E25/M40 pin 92; same net feeds EVAP purge volume control solenoid valve pin 1 and mass airflow sensors (bank 1 and 2) pin 5 |
| 126 | TAN | BRK PDL POS SW | Brake pedal position switch pin 2 TAN via E25/M40 pin 68 |
| 127 | BLK | GND | Ground M111 via E25/M40 |
| 128 | BLK | GND | Ground M111 via E25/M40 |

Component locations: EVAP control system pressure sensor and EVAP canister vent control valve on EVAP canister; refrigerant pressure sensor left side of condenser assembly; fuel tank temperature sensor top right side of fuel tank (in fuel level sensor unit); brake pedal position switch and stop lamp switch top of brake pedal assembly; ICC brake hold relay right rear of engine compartment; combination meter with MIL is driven through the computer data lines.

## Power supply / relays (Fig 2, 6)

IPDM E/R (intelligent power distribution module engine room), right rear of engine compartment:

- Battery terminal with fusible link D (80 A, on battery positive post) feeds the IPDM (E118 pin 1 RED, E127 pin 2).
- **Ignition relay** — fuse 49 (15 A) to E120 pin 55 WHT (ignition coils and condenser via F12/E10 pin 9); fuse 50 (10 A) to E123 pin 54 YEL (ECM pin 53 IGN SW and fuel injector supply).
- **ECM relay** — fuse 46 (10 A) to E120 pin 13 YEL (ECM pin 125 PWR SPLY, purge valve, MAF sensors); fuse 64 (10 A) to E123 pin 58 LT BLU (ECM pin 93 PWR SPLY); fuse 47 (10 A) to pin 59 PPL; fuse 48 (15 A) to E123 pin 53 BRN (YEL beyond F12/E10 pin 16); E124 pin 52 GRN (LT GRN beyond F12/E10 pin 14) is drawn from the ECM relay coil side. ECM pin 24 SSOFF goes to E124 pin 72.
- **Throttle control motor relay** — fuse 63 (15 A), output E124 pin 57 PNK to ECM pins 3 / 52; coil driven from ECM pin 25 (E124 pin 65).
- **Fuel pump relay** — fuse 52 (15 A); coil from ECM pin 22 (E124 pin 69); output E124 pin 15 YEL (OR BRN) via B33/E50 pin 2 to the fuel pump control module pin 1 BRN (module pins 6 BRN / 5 GRN drive the fuel pump motor, pin 4 BLK grounds at B105 left C pillar, pins 2 YEL / 3 WHT go to ECM pins 14 / 32).
- Fuse block (J/B), left kick panel: fuse 12 (10 A, hot with ignition relay energized) E65 pin 11F GRN to brake pedal position switch pin 1; fuse 19 (10 A, hot at all times) E65 pin 2F BRN to stop lamp switch pin 3 / ICC brake hold relay; M133 pin 26C to ECM pin 122.
- VVEL actuator motor relay (in relay box) is fed by fusible link P (50 A) in fuse and fusible link block 1 (top of Li-ion battery assembly); VVEL control module grounds at E134 (right rear of engine compartment), which is also the ground for IPDM E120 pin 7.
- Grounds: ECM pins 8, 123, 124, 127, 128 and the A/F sensor 1 / MAP shields go to M111 (lower right center of dash); combination meter ground M93 (left end of dash).
