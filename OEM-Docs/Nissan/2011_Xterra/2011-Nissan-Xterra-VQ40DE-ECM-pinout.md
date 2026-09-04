# 2011 Nissan Xterra 4.0L (VQ40DE) — ECM pinout

Transcribed from [2011_Xterra_ECU.png](2011_Xterra_ECU.png) (Mitchell "Engine Performance" wiring diagram, four sheets, diagram IDs 354046-354049). The image does not name the engine; the 2011 Xterra was only sold with the 4.0L VQ40DE.

Engine Control Module (ECM), located at the right rear of the engine compartment. Pins 1-81 are on harness connector F54 (pins 1-56 are drawn on sheet 1, pins 57-81 on sheet 4) and pins 82-121 on connector E16.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| F54 (sheet 1) | 1-56 | Injectors, A/F and O2 sensor heaters, throttle motor, crank/cam/knock, VIAS, EVAP, sensor supplies |
| F54 (sheet 4) | 57-81 | Ignition coils, sensor grounds, TP sensor 2, pressure/current/temperature sensors |
| E16 | 82-121 | APP sensor, CAN, K-line, cruise, brake, PNP, relay coils, ignition switch, power and ground |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink; NCA = no color available). "(OR xxx)" is an alternative color printed in the source. Unlisted pins are not connected in this diagram. Bank 1 = right cylinder bank, bank 2 = left cylinder bank. Exx/Fxx/Mxx/Cx names are harness-to-harness connectors (e.g. "via F14/E5 pin 17" = engine-room harness connector F14 mating with E5, terminal 17).

## F54 — ECM connector, pins 1-56 (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BRN | GND | Ground E24 (becomes BLK at a splice) |
| 2 | GRN | AF-H1 | Air fuel ratio (A/F) sensor 1 bank 1 pin 3 (heater) |
| 3 | PPL | VMOT | Throttle control motor relay output (IPDM E/R E119 pin 6, PPL), via F32/E2 pin 9 |
| 4 | BLU/WHT | MOTOR2 | Electric throttle control actuator pin 5 (throttle control motor) |
| 5 | BLU/BLK | MOTOR1 | Electric throttle control actuator pin 6 (throttle control motor) |
| 6 | RED | O2HRL | Heated oxygen sensor 2 bank 2 pin 2 (heater) |
| 10 | WHT | CVTCL | Intake valve timing control solenoid valve bank 2 pin 1 |
| 11 | LT GRN | CVTCR | Intake valve timing control solenoid valve bank 1 pin 1, via F26/F225 pin 7 |
| 12 | PNK | PSPRES | Power steering pressure sensor pin 2 (SIG) |
| 13 | GRN | POS | Crankshaft position sensor (POS) pin 2 (SIG) |
| 14 | YEL | PHASE LH | Camshaft position sensor (PHASE) bank 2 pin 2 (SIG) |
| 15 | WHT | KNK1 | Knock sensor bank 1 pin 1, via F250/F67 pin 1 |
| 16 | BRN | AF+2 | A/F sensor 1 bank 2 pin 1 (AF+) |
| 21 | WHT | INJ 5 | Fuel injector 5 pin 2 (BLU), via F201/F44 pin 4 |
| 22 | LT GRN | INJ 3 | Fuel injector 3 pin 2 (PPL), via F201/F44 pin 1 |
| 23 | LT BLU | INJ 1 | Fuel injector 1 pin 2 (GRN), via F201/F44 pin 2 |
| 24 | GRN | AF-H2 | A/F sensor 1 bank 2 pin 3 (heater); joined with pin 43 |
| 25 | PNK (OR RED) | O2HRR | Heated oxygen sensor 2 bank 1 pin 2 (heater) |
| 29 | GRN | VIAS | VIAS control solenoid valve pin 2 |
| 32 | WHT | FTPRS | EVAP control system pressure sensor pin 2 (WHT), via E41/C1 pin 10C |
| 33 | BLU | PHASE RH | Camshaft position sensor (PHASE) bank 1 pin 2 (SIG) |
| 34 | BRN | TA | Mass airflow (MAF) sensor pin 5 (intake air temperature sensor) |
| 35 | ORG | AF+1 | A/F sensor 1 bank 1 pin 1 (AF+) |
| 36 | WHT | KNK2 | Knock sensor bank 2 pin 1, via F250/F67 pin 3 |
| 40 | PPL | INJ 6 | Fuel injector 6 pin 2 |
| 41 | RED | INJ 4 | Fuel injector 4 pin 2 |
| 42 | ORG | INJ 2 | Fuel injector 2 pin 2 |
| 43 | GRN | AF-H2 | Joined with pin 24 (A/F sensor 1 bank 2 heater) |
| 45 | RED | EVAP | EVAP canister purge volume control solenoid valve pin 1 |
| 47 | BLU | AVCC2 | Electric throttle control actuator pin 2 (TP sensor supply) |
| 48 | LT BLU | AVCC | EVAP control system pressure sensor pin 3 (LT BLU), via E41/C1 pin 12C |
| 49 | PNK | PDPRES | Refrigerant pressure sensor pin 3 (PWR SUP) and battery current sensor pin 1 (PWR SUP), via F14/E5 pin 17 |
| 50 | WHT | TPS1 | Electric throttle control actuator pin 1 (TP sensor 1) |
| 51 | PNK | QA+ | MAF sensor pin 4 |
| 55 | GRN | O2SRL | Heated oxygen sensor 2 bank 2 pin 1 (SIG) |
| 56 | LT GRN | AF-1 | A/F sensor 1 bank 1 pin 2 |

Component locations (sheet 1): fuel injectors 1, 3, 5 top right of engine, injectors 2, 4, 6 top left of engine (pin 1 of all six is the WHT/GRN supply from fuse 55, injectors 1/3/5 via F201/F44 pin 3); knock sensors bank 1 and bank 2 top of engine (pin 2 shield wires and the cable shields drain to E24 via F14/E5 pins 23 GRY and 24 BLK); EVAP canister purge volume control solenoid valve top left side of engine (pin 2 GRY is fed from the ECM relay output node, see below); crankshaft position sensor right rear of engine (pin 1 RED power from the ECM relay output node, pin 3 BRN ground at E24); park/neutral position switch top of transmission (pin 2 BLK/YEL grounds at E15, right front of engine compartment, via F14/E5 pin 4); refrigerant pressure sensor front of engine compartment (pin 1 BLK ground via F14/E5 pin 16 to the sensor ground splice); battery current sensor right side of engine compartment (pin 2 BLK ground via E5/F14 pin 8 to the sensor ground splice, shared with the cruise control system); condenser 1 left rear of engine (pin 1 WHT from the ECM relay output, pin 2 BLK to F16); ignition coil 5 on right cylinder head.

## F54 — ECM connector, pins 57-81 (sheet 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 60 | LT BLU | IGN5 | Ignition coil 5 pin 1 (PPL), via F26/F225 pin 3 |
| 61 | BLU | IGN3 | Ignition coil 3 pin 1, via F26/F225 pin 2 |
| 62 | YEL | IGN1 | Ignition coil 1 pin 1, via F26/F225 pin 1 |
| 66 | BLK | GND A2 | Electric throttle control actuator pin 4 (TP sensor ground) |
| 67 | BLK | GND A | Sensor ground splice near the MAF sensor (see grounds below) |
| 68 | GRN | PSPRES | Power steering pressure sensor pin 3 (PWR) |
| 69 | RED | TPS2 | Electric throttle control actuator pin 3 (TP sensor 2) |
| 70 | BRN | PDPRES | Refrigerant pressure sensor pin 2 (SIG), via F14/E5 pin 15 |
| 71 | RED | CURSEN | Battery current sensor pin 3 (SIG), via F14/E5 pin 7 |
| 73 | YEL | TW | Engine coolant temperature sensor pin 1 |
| 74 | WHT | O2SRR | Heated oxygen sensor 2 bank 1 pin 1 (SIG) |
| 75 | PNK | AF-2 | A/F sensor 1 bank 2 pin 2 |
| 78 | GRY | GND | Heated oxygen sensor 2 bank 1 pin 4 and bank 2 pin 4 (GND O2, GRY), joined |
| 79 | PNK | IGN6 | Ignition coil 6 pin 1 |
| 80 | GRY | IGN4 | Ignition coil 4 pin 1 |
| 81 | GRN | IGN2 | Ignition coil 2 pin 1 |

## E16 — ECM connector, pins 82-121 (sheet 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 82 | BLK | GND A | Accelerator pedal position (APP) sensor pin 4 (sensor 1 ground) |
| 83 | BLK | GND A2 | APP sensor pin 5 (sensor 2 ground) |
| 85 | WHT | KLINE | Data link connector pin 7 (under left side of dash) |
| 86 | PNK | CAN L | Computer data lines system |
| 90 | BLU | AVCC | APP sensor pin 2 (sensor 1 supply) |
| 91 | GRN | AVCC2 | APP sensor pin 1 (sensor 2 supply) |
| 94 | BLU | CAN-H | Computer data lines system |
| 98 | GRY | APS2 | APP sensor pin 6 (sensor 2) |
| 99 | LT BLU | ASCDSW | Cruise control system |
| 101 | LT GRN (OR YEL) | BRAKE | Stoplight switch pin 2 (on bracket above brake pedal); switch pin 1 RED/BLK is fed by fuse 20 |
| 102 | ORG (OR GRN) | NEUT | M/T: park/neutral position switch pin 1 (ORG), via F14/E5 pin 5. A/T: combination meter (unified meter control unit) pin 7 (GRN), via M31/E152 pin 56G |
| 104 | ORG | MOTRLY | Throttle control motor relay coil (IPDM E/R E122 pin 47) |
| 106 | RED | APS1 | APP sensor pin 3 (sensor 1) |
| 107 | YEL | TF | Fuel tank temperature sensor (fuel pump & fuel level sensor unit pin 4, in fuel tank), via E41/C1 pin 1C |
| 108 | LT GRN | BNCSW | Cruise control system |
| 109 | WHT/RED | IGN SW | Fuse 1 (10 A, hot in ON or START, fuse block J/B, connector M4 pin 15P), via M31/E152 pin 41G |
| 111 | BRN | SSOFF | ECM relay coil (IPDM E/R E119 pin 7) |
| 113 | PPL | FPR | Fuel pump relay coil (IPDM E/R E122 pin 46) |
| 115 | BLK | GND | Ground E24 |
| 116 | GRY | GND | Ground E24 |
| 117 | GRN | CDCV | EVAP canister vent control valve pin 2 (GRN), via E41/C1 pin 26C |
| 119 | RED | VB | ECM relay output node (see below); joined with pin 120 |
| 120 | PNK | VB | ECM relay output (IPDM E/R E119 pin 4, PNK) |
| 121 | RED/BLK | BATT | Fuse 53 (20 A, hot at all times, IPDM E/R E121 pin 3D) |

Component locations (sheets 2-4): ignition coils with power transistor 1 and 3 on right cylinder head, 2, 4, 6 on left cylinder head (coil 5 is on sheet 1); coil pin 3 (WHT / LT GRN / GRN / ORG, varies per coil) is the ECM relay output, coil pin 2 (BLK) grounds at F16 (top left of engine), the right-bank coils reaching it via F225/F26 pin 4; electric throttle control actuator on throttle body (motor pins 5/6, TP sensor 1 pins 1/2/4, TP sensor 2 pin 3; cable shields ground at E24); accelerator pedal position sensor under left side of dash (cable shields ground at E24); IPDM E/R right rear of engine compartment; MAF sensor with IAT sensor left side of engine compartment near air intake box (pin 2 LT GRN power from the ECM relay output node, pins 3 and 6 BLK to the sensor ground splice); EVAP control system pressure sensor under left rear of vehicle (pin 1 BLK to the sensor ground splice via E41/C1 pin 11C); intake valve timing control solenoid valve bank 1 right front of engine (pin 2 RED power from the ECM relay output node via F26/F225 pin 8), bank 2 left front of engine (pin 2 RED, same node); A/F sensor 1 bank 1 right rear of engine, bank 2 left side of engine (pin 4 WHT/RED heater power from fuse 54); heated oxygen sensor 2 bank 2 on left exhaust pipe, bank 1 on right exhaust pipe (pin 3 WHT/RED heater power from fuse 54); engine coolant temperature sensor rear of engine (pin 2 BLK to the sensor ground splice); camshaft position sensor (PHASE) bank 2 rear of left cylinder head, bank 1 rear of right cylinder head (pin 3 RED power from the ECM relay output node, pin 1 BRN of both grounds at E24); power steering pressure sensor right front of engine (pin 1 BLK to the sensor ground splice); VIAS control solenoid valve (pin 1 RED from the ECM relay output node); EVAP canister vent control valve under left rear of vehicle on EVAP canister (pin 1 WHT from the ECM relay output, via E41/C1 pin 27C); fuel pump & fuel level sensor unit in fuel tank (pump pin 1 RED from the fuel pump relay via E41/C1 pin 28C, pin 3 BLK grounds at E9, left side of engine compartment, via E41/C1 pin 29C).

## Power supply / relays

IPDM E/R (intelligent power distribution module engine room), right rear of engine compartment:

- **Throttle control motor relay** — fuse 52 (20 A, hot at all times); coil driven by ECM pin 104 (E122 pin 47 ORG); output E119 pin 6 (PPL) via F32/E2 pin 9 to ECM pin 3 VMOT
- **ECM relay** (drawn under "hot in ON or START"; fuse 53, 20 A, hot at all times, feeds ECM pin 121 BATT separately from E121 pin 3D RED/BLK) — coil driven by ECM pin 111 SSOFF (E119 pin 7 BRN); two outputs: E119 pin 4 (PNK) to ECM pin 120 VB, and E119 pin 3 (GRN), which splits into a WHT wire to the EVAP canister vent control valve pin 1 and, via F32/E2 pin 10 (GRN), to the ignition coils pin 3 (coil 5 via F26/F225 pin 6, coil 1 via F225/F26 pin 3) and condenser 1 pin 1. The same node is drawn on sheet 4 as a dashed junction that also feeds the crankshaft position sensor pin 1, both camshaft position sensors pin 3, MAF sensor pin 2, both intake valve timing control solenoid valves pin 2, the VIAS control solenoid valve pin 1, the EVAP canister purge volume control solenoid valve pin 2 (GRY) and ECM pins 119/120 VB; the VB side passes through F32/E2 pins 13 (LT GRN) and 11 (GRY)
- **Fuel pump relay** — fuse 48 (15 A, hot in ON or START); coil driven by ECM pin 113 FPR (E122 pin 46 PPL); output E119 pin 13 (RED) to the fuel pump pin 1 via E41/C1 pin 28C
- **Fuse 55** (15 A, hot in ON or START) — E119 pin 17 WHT/GRN, via F32/E2 pin 16, to fuel injectors pin 1 (injectors 1/3/5 via F201/F44 pin 3)
- **Fuse 54** (15 A, hot in ON or START) — E119 pin 8 WHT/RED, via E2/F32 pin 1, to A/F sensor 1 bank 1 and bank 2 pin 4 and heated oxygen sensor 2 bank 1 and bank 2 pin 3 (heater power)

Fuse block (J/B), right side of dash: fuse 1 (10 A, hot in ON or START, pin 15P/M4) via M31/E152 pin 41G to ECM pin 109 IGN SW; fuse 14 (10 A, hot in ON or START, pin 5P) to combination meter pin 16 WHT/GRN (malfunction indicator lamp supply; the meter's CAN pins 12 BLU and 11 PNK go to the computer data lines system); fuse 20 (10 A, hot at all times, E160 pin 8Q RED/BLK) to the stoplight switch pin 1.

## Grounds

- **E24**: ECM pins 1, 115, 116; crankshaft position sensor pin 3; camshaft position sensors bank 1 and bank 2 pin 1 (BRN, joined); knock sensor shields (via F14/E5 pins 23 GRY and 24 BLK); throttle control actuator and APP sensor cable shields
- **Sensor ground splice** (drawn next to the MAF sensor on sheet 3) on ECM pin 67 GND A: MAF sensor pins 3 and 6, EVAP control system pressure sensor pin 1, engine coolant temperature sensor pin 2, power steering pressure sensor pin 1, refrigerant pressure sensor pin 1 (via F14/E5 pin 16), battery current sensor pin 2 (via E5/F14 pin 8, shared with the cruise control system)
- ECM pin 66 GND A2 is the throttle position sensor ground only; pins 82 GND A and 83 GND A2 are the APP sensor 1 and sensor 2 grounds only
- **F16** (top left of engine): ignition coils pin 2 and condenser 1 pin 2
- **E15** (right front of engine compartment): park/neutral position switch pin 2 (BLK/YEL, via F14/E5 pin 4)
- **E9** (left side of engine compartment): fuel pump pin 3 (via E41/C1 pin 29C)
