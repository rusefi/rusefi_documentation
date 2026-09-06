# 2011 Nissan Pathfinder 4WD 4.0L (VQ40DE) — ECM pinout

Transcribed from [2011 Nissan-Datsun Truck Pathfinder 4WD ECU.pdf](2011%20Nissan-Datsun%20Truck%20Pathfinder%204WD%20ECU.pdf) (ALLDATA "Engine Controls" colour diagram, four sheets, diagram IDs 354023-354026).

Engine Control Module (ECM), right rear of engine compartment. Single 121 pin connector, drawn as F54 (pins 1-81) and E16 (pins 82-121). Pins 1-56 are on sheet 1, pins 57-121 on sheet 4.

**This diagram is pin for pin identical to the 2011 Xterra diagram** transcribed in [2011_Xterra/2011-Nissan-Xterra-VQ40DE-ECM-pinout.md](2011_Xterra/2011-Nissan-Xterra-VQ40DE-ECM-pinout.md): same pin functions, same wire colours, same harness connector numbers (F54/E16, F201/F44, F14/E5, F32/E2, F26/F225, F250/F67, E41/C1, M31/E152), same IPDM E/R fuse and terminal numbers, same ground points. The R51 Pathfinder and the N50 Xterra share the VQ40DE engine harness. The Xterra file carries the full routing detail; this page is the compact table plus the points where the Pathfinder sheet differs in what it draws.

Wire colours are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink; NCA = no colour available). Unlisted pins are not connected.

## Differences from the 2011 Xterra sheet

- Pin 101 BRAKE is LT GRN only (Xterra: "LT GRN or YEL"). Pin 102 NEUT is GRN only, from the combination meter pin 7 via M31/E152 pin 56G (the Xterra sheet also shows the M/T switch alternative on ORG). This PDF is for a 4WD automatic.
- Pin 49 is printed "AVCC (PDP)" (Xterra: PDPRES); pin 85 is printed "K LINE" and pin 109 "IGNSW". Same wiring.
- Component locations are worded differently: knock sensor bank 2 "on right side of engine" and bank 1 "on left side of engine" (Xterra: "top of engine"), engine coolant temperature sensor "at left side of engine", A/F sensor 1 bank 1 "on right exhaust manifold" and bank 2 "on left exhaust manifold", camshaft position sensor bank 1 "at right rear of engine" and bank 2 "on left rear of engine", MAF sensor "on air intake assembly, near air cleaner box". The knock sensor bank labels are the reverse of what the ECM pin names imply; check the physical location before trusting them.

## F54 — pins 1-56 (sheet 1)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | BRN | GND | Ground E24 (right front of engine compartment) |
| 2 | GRN | AF-H1 | A/F sensor 1 bank 1 pin 3 (heater) |
| 3 | PPL | VMOT | Throttle control motor relay output (IPDM E/R E119 pin 6), via F302/E2 pin 9 |
| 4 | BLU/WHT | MOTOR 2 | Electric throttle control actuator pin 5 (motor) |
| 5 | BLU/BLK | MOTOR 1 | Electric throttle control actuator pin 6 (motor) |
| 6 | RED | O2HRL | Heated oxygen sensor 2 bank 2 pin 2 (heater) |
| 10 | WHT | CVTCL | Intake valve timing control solenoid valve bank 2 pin 1 |
| 11 | LT GRN | CVTCR | Intake valve timing control solenoid valve bank 1 pin 1, via F26/F225 pin 7 |
| 12 | PNK | PS PRES | Power steering pressure sensor pin 2 (signal) |
| 13 | GRN | POS | Crankshaft position sensor pin 2 (signal), right rear of engine |
| 14 | YEL | PHASE (LH) | Camshaft position sensor bank 2 pin 2 (signal) |
| 15 | WHT | KNK 1 | Knock sensor bank 1 pin 1, via F250/F67 pin 1 |
| 16 | BRN | AF+2 | A/F sensor 1 bank 2 pin 1 |
| 21 | WHT | INJ 5 | Fuel injector 5 pin 2, via F201/F44 pin 4 |
| 22 | LT GRN | INJ 3 | Fuel injector 3 pin 2, via F201/F44 pin 1 |
| 23 | LT BLU | INJ 1 | Fuel injector 1 pin 2, via F201/F44 pin 2 |
| 24 | GRN | AF-H2 | A/F sensor 1 bank 2 pin 3 (heater); spliced with pin 43 |
| 25 | PNK | O2HRR | Heated oxygen sensor 2 bank 1 pin 2 (heater) |
| 29 | GRN | VIAS | VIAS control solenoid valve pin 2 |
| 32 | WHT | FTPRS | EVAP control system pressure sensor pin 2 (signal), via E41/C1 pin 10C |
| 33 | BLU | PHASE (RH) | Camshaft position sensor bank 1 pin 2 (signal) |
| 34 | BRN | TA | MAF sensor pin 5 (intake air temperature) |
| 35 | ORG | AF+1 | A/F sensor 1 bank 1 pin 1 |
| 36 | WHT | KNK 2 | Knock sensor bank 2 pin 1, via F250/F67 pin 3 |
| 40 | PPL | INJ 6 | Fuel injector 6 pin 2 |
| 41 | RED | INJ 4 | Fuel injector 4 pin 2 |
| 42 | ORG | INJ 2 | Fuel injector 2 pin 2 |
| 43 | GRN | AF-H2 | Spliced with pin 24 |
| 45 | RED | EVAP | EVAP canister purge volume control solenoid valve pin 1 |
| 47 | BLU | AVCC 2 | Electric throttle control actuator pin 2 (TP sensor supply) |
| 48 | LT BLU | AVCC | EVAP control system pressure sensor pin 3 (supply), via E41/C1 pin 12C |
| 49 | PNK | AVCC (PDP) | Refrigerant pressure sensor pin 3 and battery current sensor pin 1 (supply), via F14/E5 pin 17 |
| 50 | WHT | TPS 1 | Electric throttle control actuator pin 1 (TP sensor 1) |
| 51 | PNK | QA+ | MAF sensor pin 4 |
| 55 | GRN | O2SRL | Heated oxygen sensor 2 bank 2 pin 1 (signal) |
| 56 | LT GRN | AF-1 | A/F sensor 1 bank 1 pin 2 |

## F54 — pins 57-81 and E16 — pins 82-121 (sheet 4)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 60 | LT BLU | IGN 5 | Ignition coil 5 pin 1, via F26/F225 pin 3 |
| 61 | BLU | IGN 3 | Ignition coil 3 pin 1, via F26/F225 pin 2 |
| 62 | YEL | IGN 1 | Ignition coil 1 pin 1, via F26/F225 pin 1 |
| 66 | BLK | GND A2 | Electric throttle control actuator pin 4 (TP sensor ground) |
| 67 | BLK | GND A | Sensor ground splice: MAF pins 3 and 6, EVAP pressure sensor pin 1, coolant temperature sensor pin 2, power steering pressure sensor pin 1, refrigerant pressure sensor pin 1, battery current sensor pin 2 |
| 68 | GRN | AVCC | Power steering pressure sensor pin 3 (supply) |
| 69 | RED | TPS 2 | Electric throttle control actuator pin 3 (TP sensor 2) |
| 70 | BRN | PD PRES | Refrigerant pressure sensor pin 2 (signal), via F14/E5 pin 15 |
| 71 | RED | CURSEN | Battery current sensor pin 3 (signal), via F14/E5 pin 7 |
| 73 | YEL | TW | Engine coolant temperature sensor pin 1 |
| 74 | WHT | O2SRR | Heated oxygen sensor 2 bank 1 pin 1 (signal) |
| 75 | PNK | AF-2 | A/F sensor 1 bank 2 pin 2 |
| 78 | GRY | GND 02 | Heated oxygen sensor 2 bank 1 and bank 2 pin 4 |
| 79 | PNK | IGN 6 | Ignition coil 6 pin 1 |
| 80 | GRY | IGN 4 | Ignition coil 4 pin 1 |
| 81 | GRN | IGN 2 | Ignition coil 2 pin 1 |
| 82 | BLK | GND A | APP sensor pin 4 (sensor 1 ground) |
| 83 | BLK | GND A2 | APP sensor pin 5 (sensor 2 ground) |
| 85 | WHT | K LINE | Data link connector pin 7, via E152/M31 pin 48G |
| 86 | PNK | CAN L | Computer data lines system |
| 90 | BLU | AVCC | APP sensor pin 2 (sensor 1 supply) |
| 91 | GRN | AVCC2 | APP sensor pin 1 (sensor 2 supply) |
| 94 | BLU | CAN H | Computer data lines system |
| 98 | GRY | APS2 | APP sensor pin 6 (sensor 2) |
| 99 | LT BLU | ASCD SW | Cruise control system |
| 101 | LT GRN | BRAKE | Stop lamp switch pin 2; switch pin 1 RED/BLK from fuse 20 (10 A, hot at all times, J/B E160 pin 8Q) |
| 102 | GRN | NEUT | Combination meter (unified meter control unit) pin 7, via M31/E152 pin 56G |
| 104 | ORG | MOTRLY | Throttle control motor relay coil (IPDM E/R E122 pin 47) |
| 106 | RED | APS1 | APP sensor pin 3 (sensor 1) |
| 107 | YEL | TF | Fuel tank temperature sensor (fuel level sensor unit and fuel pump pin 4), via E41/C1 pin 1C |
| 108 | LT GRN | BNCSW | Cruise control system |
| 109 | WHT/RED | IGNSW | Fuse 1 (10 A, hot in ON or START, J/B M4 pin 15P), via M31/E152 pin 41G |
| 111 | BRN | SSOFF | ECM relay coil (IPDM E/R E119 pin 7) |
| 113 | PPL | FPR | Fuel pump relay coil (IPDM E/R E122 pin 46) |
| 115 | BLK | GND | Ground E24 |
| 116 | GRY | GND | Ground E24 |
| 117 | GRN | CDCV | EVAP canister vent control valve pin 2, via E41/C1 pin 26C |
| 119 | RED | VB | ECM relay output node; joined with 120 |
| 120 | PNK | VB | ECM relay output (IPDM E/R E119 pin 4) |
| 121 | RED/BLK | BATT | Fuse 53 (20 A, hot at all times, IPDM E/R E121 pin 30) |

## Power supply, relays and grounds

Identical to the Xterra sheet: throttle control motor relay on fuse 52 (20 A), ECM relay and BATT on fuse 53 (20 A) with outputs E119 pin 3 (GRN, via F302/E2 pin 10 to the coils pin 3, condenser 1 and the WHT/GRN engine-harness node feeding the crank and cam sensors, MAF pin 2, both VTC solenoids pin 2, VIAS and purge solenoids and ECM pins 119/120) and E119 pin 4 (PNK, to ECM pin 120 and the EVAP vent valve pin 1); fuel pump relay on fuse 48 (15 A) with output E119 pin 13 (RED) to the fuel pump pin 1 via E41/C1 pin 28C; fuse 55 (15 A, E119 pin 17 WHT/GRN) to the injectors pin 1; fuse 54 (15 A, E119 pin 8 WHT/RED) to the A/F and rear O2 sensor heaters. Grounds: E24 for ECM pins 1/115/116, crank and cam sensor grounds, knock sensor shields and the throttle and APP shields; F16 (left side of engine) for the coils pin 2 and condenser 1; E9 (left side of engine compartment) for the fuel pump pin 3 via E41/C1 pin 29C; E15 for the park/neutral position switch if fitted.
