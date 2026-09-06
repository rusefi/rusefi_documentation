# 2004 Nissan Altima 3.5L (VQ35DE) — ECM pinout (NOT the 121 pin layout)

Transcribed from [2004 Nissan-Datsun Altima v6 ECU.pdf](2004%20Nissan-Datsun%20Altima%20v6%20ECU.pdf) (ALLDATA "Engine Controls" colour diagram, four sheets, diagram IDs 191259-191262).

**This ECM is not the single-connector 121 pin unit used by the 350Z, G35, Xterra, Titan and the four cylinder Altima.** The terminals run 1 to 116 and the assignment is completely different: injectors 1-3 on pins 1-3, coils 1-3 on 5-7, BATT on 67, VB on 110 and 112, CAN on 109/113, K-line on 115. The ECM sits behind the glove box. The 2003 Maxima diagram already in this folder ([2003 Nissan-Datsun Maxima.pdf](2003%20Nissan-Datsun%20Maxima.pdf)) shows the same layout, so the 2002-2003 Maxima (A33) and the 2002-2004 Altima V6 (L31) share this ECM and neither is a Hellen 121 Nissan candidate. The 2005-2006 Altima V6 has not been checked.

Wire colours are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink; NCA = no colour available). Unlisted pins are not connected. Bank 1 = right cylinder bank.

## Pins 1-57 (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | RED/BLK | INJ 1 | Fuel injector 1 pin 2 |
| 2 | RED/WHT | INJ 2 | Fuel injector 2 pin 2 |
| 3 | RED/YEL | INJ 3 | Fuel injector 3 pin 2 |
| 4 | WHT | EMNT1 | Front and rear electronic controlled engine mounts pin 1 (lower front and lower rear centre of engine compartment) |
| 5 | YEL/RED | IGN 1 | Ignition coil 1 pin 1 |
| 6 | GRN/RED | IGN 2 | Ignition coil 2 pin 1 |
| 7 | BLU/RED | IGN 3 | Ignition coil 3 pin 1 |
| 8 | YEL | IVCB2 | Intake valve timing control solenoid valve bank 2 pin 1 (front of left cylinder head) |
| 9 | RED/BLU | IVCB1 | Intake valve timing control solenoid valve bank 1 pin 1 (front of right cylinder head) |
| 10 | PPL/RED | EVAP | EVAP canister purge volume control solenoid valve pin 2 (on rear of intake manifold) |
| 11 | RED/BLU | INJ 4 | Fuel injector 4 pin 2 |
| 12 | BLU/WHT | INJ 5 | Fuel injector 5 pin 2 |
| 13 | PPL/RED | INJ 6 | Fuel injector 6 pin 2 |
| 14 | WHT/RED | EMNT2 | Front and rear electronic controlled engine mounts pin 2 |
| 15 | GRY | IGN 4 | Ignition coil 4 pin 1 |
| 16 | PPL/WHT | IGN 5 | Ignition coil 5 pin 1 |
| 17 | GRY/RED | IGN 6 | Ignition coil 6 pin 1 |
| 23 | BLK/ORG | FPR SOL | Fuel pump relay coil (IPDM E/R pin 40) |
| 26 | ORG | MOTRLY | Throttle control motor relay coil (IPDM E/R E122 pin 47) |
| 27 | YEL/GRN | VIAS | VIAS control solenoid valve pin 2 (on intake manifold) |
| 31 | RED | CRTN | Off-sheet line 11 (RED); destination not identified on these four sheets |
| 33 | LT GRN/BLK | LED | Combination meter pin 23 (malfunction indicator lamp) |
| 38 | WHT/BLK | SSOFF | ECM relay coil (IPDM E/R E121 pin 46) |
| 39 | ORG | O2HFR | Heated oxygen sensor 1 bank 1 pin 3 (heater), right exhaust manifold |
| 40 | RED/BLU | O2HFL | Heated oxygen sensor 1 bank 2 pin 3 (heater), left exhaust manifold |
| 41 | PNK/BLK | O2HRR | Heated oxygen sensor 2 bank 1 pin 1 (heater), right exhaust downpipe |
| 42 | BRN/WHT | STSW | Fuse 9 (10 A, hot in START, J/B terminal 2N): starter switch signal |
| 43 | RED | IGNSW | Fuse 1 (10 A, hot in ON or START, J/B terminal 15P), shared with the injector supply |
| 44 | GRN/RED | NEUT | Instrument cluster system |
| 47 | RED/BLU | O2HRL | Heated oxygen sensor 2 bank 2 pin 1 (heater) |
| 48 | BLK | GND-C | Ground F14 (front of engine) |
| 50 | GRN/YEL | ASCDSW | Cruise control system |
| 55 | RED/GRN | BRAKE SW | Stoplight switch pin 2 (on brake pedal bracket); switch pin 1 RED/YEL from fuse 20 (10 A, hot at all times, J/B terminal 8Q) |
| 57 | BLK | GND-C | Ground F14 |

## Pins 58-116 (sheet 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 58 | BLK | GND-A | Sensor ground (throttle position sensor pin 5 and sensor-ground splice) |
| 59 | GRN/BLK (or GRN/RED) | BNCSW | Cruise control system |
| 60 | WHT | FTPRS | EVAP control system pressure sensor pin 2 (signal), near EVAP canister |
| 62 | WHT | QA+ | Mass airflow (MAF) sensor pin 3, left side of engine compartment |
| 64 | ORG | AVCC2 | Electric throttle control actuator pin 1 (TP sensor supply, connector F50) |
| 65 | YEL | PHASE-RH | Camshaft position sensor (PHASE) bank 1 pin 2, rear of right cylinder head |
| 66 | YEL/GRN | TA | MAF sensor pin 2 (intake air temperature) |
| 67 | WHT/BLU | BATT | Fuse 28 (10 A, hot at all times, fuse and fusible link box at left front of engine compartment) |
| 69 | GRN/BLK | FGAGE+ | Fuel level sensor unit pin G (fuel gauge) |
| 70 | GRN | GND-A2 | Accelerator pedal position (APP) sensor 2 pin 5 (sensor 2 ground) |
| 71 | WHT | KNK | Knock sensor pin 1 (below intake manifold); shield NCA |
| 72 | WHT | TV00 | Transmissions system (TCM) |
| 73 | WHT | APS1 | APP sensor 1 pin 3 |
| 74 | WHT/BLK | APS2 | APP sensor 2 pin 6 |
| 75 | PNK/BLU | TF | Fuel tank temperature sensor (fuel level sensor unit and fuel pump pin 4) |
| 78 | BLK | FGAGE- | Fuel level sensor unit pin E (via M57 behind right side of dash) |
| 79 | GRN/RED | CHECK | Data link connector pin 1 (below left side of dash) |
| 81 | WHT | PDPRES | Refrigerant pressure sensor pin 2 (signal), on A/C liquid tank |
| 83 | WHT | TPS1 | Electric throttle control actuator pin 4 (TP sensor 1) |
| 84 | BLU | TPS2 | Electric throttle control actuator pin 2 (TP sensor 2) |
| 85 | GRN | PHASE-LH | Camshaft position sensor (PHASE) bank 2 pin 2, rear of left cylinder head |
| 88 | WHT | O2SRR | Heated oxygen sensor 2 bank 1 pin 2 (signal) |
| 89 | WHT | PS PRES | Power steering pressure sensor pin 2 (signal), on power steering pump |
| 90 | WHT | O2SRL | Heated oxygen sensor 2 bank 2 pin 2 (signal) |
| 91 | WHT | O2SFR | Heated oxygen sensor 1 bank 1 pin 2 (signal) |
| 92 | WHT | O2SFL | Heated oxygen sensor 1 bank 2 pin 2 (signal) |
| 93 | YEL | TW | Engine coolant temperature sensor pin 1 (upper rear of engine) |
| 95 | WHT | POS | Crankshaft position sensor (POS) pin 2 (signal), lower left rear of cylinder block |
| 101 | YEL | MOTOR 1 | Electric throttle control actuator pin 6 (throttle control motor) |
| 102 | RED | VMOT | Throttle control motor relay output (IPDM E/R pin 42) |
| 103 | BRN | MOTOR 2 | Electric throttle control actuator pin 3 (throttle control motor) |
| 105 | ORG | CDCV | EVAP canister vent control valve pin 2 (near canister) |
| 106 | BLK | GND-E | Ground F16 (front of engine) |
| 107 | BLK | GND-M | Ground F17 (front of engine) |
| 108 | BLK | GND-E | Ground F16 |
| 109 | BLU | CAN-H | Computer data lines system |
| 110 | RED/GRN | VB | ECM relay output (IPDM E/R E122 pin 18), joined with pin 112 |
| 111 | RED | AVCC | Refrigerant pressure sensor pin 1, EVAP control system pressure sensor pin 3, power steering pressure sensor pin 3, APP sensor 1 pin 2 (5 V supply; several RED splices on sheet 4) |
| 112 | RED/GRN | VB | ECM relay output |
| 113 | YEL | CAN-L | Computer data lines system |
| 115 | ORG | KLINE | Data link connector pin 7 |

Component notes: fuel injectors pin 1 RED from fuse 1 through a dashed node. Ignition coils with power transistor 6, 5, 4, 3, 2, 1 (pin 3 RED from the ECM relay output E121 pin 17, pin 2 BLK to F17, spark plug NCA). Electric throttle control actuator integral with the throttle body (motor pins 3 and 6, TP sensor 1 pins 4 and 1, TP sensor 2 pin 2, TP ground pin 5 BLK to ECM pin 58). APP sensor (sensor 1 pins 4 BLK, 3 WHT, 2 RED; sensor 2 pins 1 ORG, 6 WHT/BLK, 5 GRN; connector E40). MAF sensor pins 4 BLK (ground), 3 WHT (QA+), 1 RED (power), 5 RED/GRN, 2 YEL/GRN (IAT). Heated oxygen sensors 1 bank 1 and bank 2 (pins 3 ORG / RED/BLU heater, 1 RED/YEL heater power from fuse 42, 2 WHT signal) and heated oxygen sensors 2 bank 1 and bank 2 (pins 1 PNK/BLK / RED/BLU heater, 4 WHT signal, 2 RED/YEL heater power, 3 BLK ground). Engine coolant temperature sensor pins 1 YEL, 2 BLK. Camshaft position sensors bank 1 (pins 3 RED/GRN power, 2 YEL, 1 BLK) and bank 2 (3 RED/GRN, 2 GRN, 1 BLK), both pin 1 to F14. Intake valve timing control solenoid valves bank 1 (pins 2 RED/YEL power, 1 RED/BLU) and bank 2 (2 RED, 1 YEL). Electronic controlled engine mounts front and rear (pins 3 WHT/BLU battery feed, 2 WHT/RED, 1 WHT). Crankshaft position sensor pins 3 BLK, 2 WHT, 1 RED/GRN. Fuel level sensor unit and fuel pump (pump pins + BLK/YEL from the fuel pump relay and - BLK to B7, sensor pins G GRN/BLK, E BLK, 4 PNK/BLU, 5 BLK). Condenser 1 below left rear seat (pin 1 BLK/YEL, pin 2 BLK to B19). Power steering pressure sensor pins 3 RED (supply), 2 WHT (signal), 1 BLK (ground). EVAP canister vent control valve pins 1 RED/YEL (fuse 42), 2 ORG.

## Power supply / relays

IPDM E/R (intelligent power distribution module engine room): throttle control motor relay on fuse 44 (10 A, hot at all times), coil from ECM pin 26, output pin 42 (RED) to ECM pin 102 VMOT; ECM relay on fuse 35 (15 A, hot in ON and START), coil from ECM pin 38, outputs E121 pin 17 (RED, coils and solenoids) and E122 pin 18 (RED/GRN, ECM VB pins 110/112, crank and cam sensors, engine mounts); fuel pump relay on fuse 50 (15 A, hot in ON or START), coil from ECM pin 23, output pin 39 (BLK/YEL) to the fuel pump and condenser 1; fuse 42 (10 A, hot in ON or START, IPDM pin 25) RED/YEL to the oxygen sensor heaters, VIAS, purge and vent solenoids and the intake valve timing solenoids; fuse 46 (10 A, IPDM pin 24) RED/YEL to the MAF sensor and other RED feeds. Fuse and fusible link box (left front of engine compartment): fuse 28 (10 A, hot at all times) WHT/BLU to ECM pin 67 BATT and the engine mounts pin 3. Fuse block (J/B, behind left side of dash): fuse 1 (10 A, hot in ON or START, terminal 15P) RED to the injectors and ECM pin 43; fuse 9 (10 A, hot in START, terminal 2N) BRN/WHT to ECM pin 42; fuse 14 (10 A, terminal 5P) GRY to the combination meter; fuse 20 (10 A, hot at all times, terminal 8Q) RED/YEL to the stoplight switch.

## Grounds

F14 (front of engine): ECM pins 48, 57; crankshaft position sensor pin 3; camshaft position sensors pin 1; throttle and APP shields. F16 (front of engine): ECM pins 106, 108. F17 (front of engine): ECM pin 107; ignition coils pin 2. Sensor ground splice on ECM pin 58: MAF sensor pin 4, engine coolant temperature sensor pin 2, refrigerant pressure sensor pin 3, EVAP control system pressure sensor pin 1, power steering pressure sensor pin 1, heated oxygen sensors 2 pin 3, throttle position sensor pin 5. B7 (left B pillar): fuel pump. B19 (behind left side of rear seat back): condenser 1. M57 (behind right side of dash): fuel level sensor unit pin E.
