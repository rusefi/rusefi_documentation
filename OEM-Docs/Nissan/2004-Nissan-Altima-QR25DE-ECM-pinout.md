# 2004 Nissan Altima 2.5L (QR25DE) — ECM pinout

Transcribed from [2004 Nissan-Datsun Altima i4 ECU.pdf](2004%20Nissan-Datsun%20Altima%20i4%20ECU.pdf) (ALLDATA "Engine Controls" colour diagram, four sheets, diagram IDs 191255-191258). Four cylinder L31 Altima; the B15 Sentra SE-R with the same engine is expected to match but is not covered by this document.

Engine Control Module (ECM), behind the glove box. Single 121 pin connector. Pins 1-57 are on sheet 1, pins 58-121 on sheet 4.

**Key points.** Crankshaft position sensor is on pin 13 (POS) and camshaft position sensor on pin 14 (PHASE LH), the same as the V6 cars. The comparison sheet's note that these are swapped on the Altima I4 is not supported by this diagram. Pin 92 (TV00) is used on this car as a wire to the transmission system; it is unused on the V6 and V8 121 pin ECMs. One six-wire A/F sensor on 2/16/35/56/75 and one narrowband rear sensor on 25/74.

Wire colours are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink; NCA = no colour available). Unlisted pins are not connected in this diagram.

## Pins 1-57 (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK | GND | Ground E14 (left side of engine compartment) |
| 2 | RED | AF-H1 | Air fuel ratio (A/F) sensor pin 4 (heater), left front of engine compartment |
| 3 | RED | V MOT | Throttle control motor relay output (IPDM E/R E124 pin 42) |
| 4 | BRN | MOTOR2 | Electric throttle control actuator pin 3 (throttle control motor) |
| 5 | YEL | MOTOR1 | Electric throttle control actuator pin 6 (throttle control motor) |
| 11 | GRN | IVC | Intake valve timing control solenoid valve pin 1 (on right front of cylinder head) |
| 12 | PNK | PS PRES | Power steering pressure sensor pin 2 (signal), on power steering pump |
| 13 | WHT | POS | Crankshaft position sensor (POS) pin 2 (signal), below starter motor |
| 14 | WHT | PHASE LH | Camshaft position sensor (PHASE) pin 2 (signal), on rear of cylinder head |
| 15 | WHT | KNK1 | Knock sensor pin 1 (lower right side of cylinder block); pin 2 and shield NCA |
| 16 | ORG/BLU | AF-UN1 | A/F sensor pin 1 |
| 22 | RED/YEL | INJ 3 | Fuel injector 3 pin 2 (GRN/BLK at the injector) |
| 23 | RED/BLK | INJ 1 | Fuel injector 1 pin 2 (WHT at the injector) |
| 25 | PNK/BLK | O2HRR | Heated oxygen sensor 2 pin 2 (heater), on exhaust downpipe |
| 29 | YEL/GRN | VIAS | VIAS control solenoid valve pin 2 (right side of engine) |
| 32 | WHT | FTRPS | EVAP control system pressure sensor pin 2 (signal), below centre rear of vehicle |
| 34 | YEL/GRN | TA | Mass airflow (MAF) sensor pin 5 (intake air temperature), left side of engine compartment |
| 35 | BLK/YEL | AF-VM1 | A/F sensor pin 5 |
| 41 | RED/BLU | INJ 4 | Fuel injector 4 pin 2 (BLU at the injector) |
| 42 | RED/WHT | INJ 2 | Fuel injector 2 pin 2 |
| 45 | PPL/RED | EVAP | EVAP canister purge volume control solenoid valve pin 2 (near throttle body) |
| 47 | RED | AVCC2 | Electric throttle control actuator pin 1 (TP sensor supply, connector F50) |
| 48 | RED | AVCC | EVAP control system pressure sensor pin 3 (supply) |
| 49 | RED | PDPRES | Refrigerant pressure sensor pin 1 (supply), right front of engine compartment |
| 50 | WHT | TPS1 | Electric throttle control actuator pin 4 (TP sensor 1) |
| 51 | WHT | QA+ | MAF sensor pin 4 |
| 56 | ORG | AFIP1 | A/F sensor pin 6 |

Sheet 1 component notes: fuel injectors 3, 1, 4, 2 with pin 1 PNK on a dashed node fed by fuse 1 (10 A, hot in ON or START, J/B behind left side of dash, terminal 15P, RED, "PNK (or RED)" after an inline connector); the same fuse 1 wire continues to ECM pin 109 IGN SW. Fuse 14 (10 A, terminal 5P, GRY) feeds the combination meter; meter pins 17 and 18 (GRY) are the meter supply, pin 32 (WHT/GRN, GRN/RED after an inline connector) is the A/T park/neutral signal to ECM pin 102, pins 1 (BLU) and 2 (YEL) go to the computer data lines system. Crankshaft position sensor pins 1 RED/GRN (ECM relay power), 3 BLK (ground F14, front of engine). Park/neutral position switch (left rear of transaxle) pin 1 GRN/WHT to ECM pin 102 (M/T), pin 2 BLK to F14. Refrigerant pressure sensor pins 1 RED (ECM 49), 2 WHT (ECM 70), 3 BLK (sensor ground). Condenser 2 (right side of engine compartment) pin 1 RED (ECM relay), pin 2 BLK to F16 (front of engine).

## Pins 58-121 (sheet 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 61 | BLU/RED | IGN 3 | Ignition coil 3 pin 1 |
| 62 | YEL/RED | IGN 1 | Ignition coil 1 pin 1 |
| 66 | BLK | GND A2 | Electric throttle control actuator pin 5 (TP sensor ground) |
| 67 | BLK | GND A | Sensor ground splice (see grounds below) |
| 68 | GRN/RED | GND A | Power steering pressure sensor pin 3. Labelled GND A, but the sensor's ground is pin 1 (BLK) on the sensor-ground splice and its signal is pin 2; pin 3 is the supply. Same situation as the 350Z and G35, see [issue 3](https://github.com/rusefi/hellen121nissan-issues/issues/3) |
| 69 | GRN | TPS2 | Electric throttle control actuator pin 2 (TP sensor 2) |
| 70 | WHT | PDPRES | Refrigerant pressure sensor pin 2 (signal) |
| 73 | YEL | TW | Engine coolant temperature sensor pin 1 (left rear of engine) |
| 74 | WHT | O2SRR | Heated oxygen sensor 2 pin 1 (signal) |
| 75 | WHT/BLU | A/F-IA1 | A/F sensor pin 2 |
| 78 | BLK | GND 02 | Heated oxygen sensor 2 pin 4 |
| 80 | GRY/YEL | IGN 4 | Ignition coil 4 pin 1 |
| 81 | GRN/RED | IGN 2 | Ignition coil 2 pin 1 |
| 82 | BLK | GND A | Accelerator pedal position (APP) sensor 1 pin 4 (sensor 1 ground) |
| 83 | GRN | GND A2 | APP sensor 2 pin 5 (sensor 2 ground) |
| 85 | ORG | KLINE | Data link connector pin 7 (below left side of dash) |
| 86 | YEL | CAN L | Computer data lines system |
| 90 | RED | AVCC | APP sensor 1 pin 2 (sensor 1 supply) |
| 91 | ORG | AVCC2 | APP sensor 2 pin 1 (sensor 2 supply) |
| 92 | WHT | TV00 | Transmissions system (TCM) |
| 94 | BLU | CAN-H | Computer data lines system |
| 98 | WHT/BLK | APS2 | APP sensor 2 pin 6 |
| 99 | GRN/YEL | ASCDSW | Cruise control system |
| 101 | RED/GRN | BRAKE | Stoplight switch pin 2 (on brake pedal bracket); switch pin 1 RED/YEL from fuse 20 (10 A, hot at all times, J/B terminal 8Q) |
| 102 | GRN/WHT (or GRN/RED) | NEUT | M/T: park/neutral position switch pin 1 (GRN/WHT). A/T: combination meter pin 32 (GRN/RED) |
| 104 | ORG | MOTRLY | Throttle control motor relay coil (IPDM E/R E121 pin 47) |
| 106 | WHT | APS1 | APP sensor 1 pin 3 |
| 107 | PNK/BLU | TC | Fuel tank temperature sensor (fuel level sensor unit and fuel pump pin 4, in fuel tank) |
| 108 | GRN/BLK (or GRN/RED) | BNCSW | Cruise control system |
| 109 | RED | IGN SW | Fuse 1 (10 A, hot in ON or START, J/B terminal 15P), shared with the injector supply |
| 111 | WHT/BLK | SSOFF | ECM relay coil (IPDM E/R E121 pin 46) |
| 113 | BLU/ORG | FPR | Fuel pump relay coil (IPDM E/R E121 pin 40) |
| 115 | BLK | GND | Ground E14 |
| 116 | BLK | GND | Ground E14 |
| 117 | ORG | CDCV | EVAP canister vent control valve pin 2 (below centre rear of vehicle) |
| 119 | RED/GRN | VB | ECM relay output (IPDM E/R E122 pin 18, RED/GRN), joined with pin 120 |
| 120 | RED/GRN | VB | ECM relay output |
| 121 | WHT/BLU | BATT | Fuse 35 (15 A, hot at all times, IPDM E/R pin 41) |

Sheet 2-4 component notes: ignition coils with power transistor 1, 4, 3, 2 (coil pin 3 RED from the ECM relay output E121 pin 17, pin 2 BLK to F16, spark plug NCA). Electric throttle control actuator integral with the throttle body (motor pins 3 and 6, TP sensor 1 on pins 4 and 1 with ground pin 5, TP sensor 2 on pin 2, connector F50; shields to F14). APP sensor (sensor 1 pins 4 BLK, 3 WHT, 2 RED; sensor 2 pins 1 ORG, 6 WHT/BLK, 5 GRN; connector E40; shields to F14). MAF sensor pins 2 RED/GRN (ECM relay power), 3 and 6 BLK (sensor ground), 4 WHT, 5 YEL/GRN. A/F sensor (left front of engine compartment) pins 6 ORG, 3 BLU/RED (heater power, from fuse 46), 5 BLK/YEL, 1 ORG/BLU, 4 RED, 2 WHT/BLU. Heated oxygen sensor 2 (on exhaust downpipe) pins 2 PNK/BLK, 1 WHT, 3 RED/YEL (heater power, from fuse 42), 4 BLK. Engine coolant temperature sensor pin 2 BLK to the sensor ground. Camshaft position sensor pins 1 RED/GRN (ECM relay power), 2 WHT, 3 BLK (F14). Intake valve timing control solenoid valve pins 2 RED (power), 1 GRN. VIAS control solenoid valve pins 2 YEL/GRN, 1 RED/YEL (fuse 42). EVAP control system pressure sensor pins 3 RED (supply), 2 WHT (signal), 1 BLK (sensor ground). EVAP canister vent control valve pins 1 RED/YEL (fuse 42), 2 ORG. Fuel level sensor unit and fuel pump in the fuel tank: pump pin 1 BLK/YEL from the fuel pump relay, pin 2 BLK to ground B7 (left B pillar), pin E BLK to M57 (behind right side of dash), pin 4 PNK/BLU fuel temperature to ECM pin 107. Condenser 1 (below left rear seat) pin 1 BLK/YEL from the fuel pump relay, pin 2 BLK to B19 (behind left side of rear seat back). Power steering pressure sensor (on the power steering pump) pins 1 BLK (sensor ground), 2 PNK (ECM 12), 3 GRN/RED (ECM 68). Transmission control module (behind right side of dash) pins 42 (BLK) and 32 (RED, A/T) are sensor grounds tied to the ECM sensor-ground splice on sheet 4.

## Power supply / relays

IPDM E/R (intelligent power distribution module engine room):

- **Throttle control motor relay** — fuse 44 (10 A, hot at all times); coil driven by ECM pin 104 (E121 pin 47 ORG); output E124 pin 42 (RED) to ECM pin 3 V MOT
- **ECM relay** — fuse 35 (15 A, hot at all times), which also feeds ECM pin 121 BATT from pin 41 (WHT/BLU); coil driven by ECM pin 111 SSOFF (E121 pin 46 WHT/BLK). Two outputs: E121 pin 17 (RED) to the ignition coils pin 3, condenser 2 pin 1, the intake valve timing control solenoid valve pin 2 and the MAF sensor pin 2 (RED/GRN branch); E122 pin 18 (RED/GRN) to ECM pins 119/120 VB, the crankshaft and camshaft position sensors pin 1
- **Fuel pump relay** — fuse 50 (15 A, hot in ON or START); coil driven by ECM pin 113 FPR (E121 pin 40 BLU/ORG); output E121 pin 39 (BLK/YEL) to the fuel pump pin 1 and condenser 1 pin 1
- **Fuse 42** (10 A, hot in ON or START, IPDM pin 25) — RED/YEL to the heated oxygen sensor 2 heater pin 3, VIAS solenoid pin 1, EVAP purge solenoid pin 1 and EVAP vent control valve pin 1
- **Fuse 46** (10 A, hot in ON or START, IPDM pin 24) — RED/YEL, BLU/RED after a splice, to the A/F sensor pin 3 (heater power)

Fuse block (J/B, behind left side of dash): fuse 1 (10 A, hot in ON or START, terminal 15P) RED to the fuel injectors pin 1 and ECM pin 109 IGN SW; fuse 14 (10 A, terminal 5P) GRY to the combination meter; fuse 20 (10 A, hot at all times, terminal 8Q) RED/YEL to the stoplight switch pin 1.

## Grounds

- **E14** (left side of engine compartment): ECM pins 1, 115, 116
- **F14** (front of engine): crankshaft position sensor pin 3, camshaft position sensor pin 3, park/neutral position switch pin 2, throttle actuator and APP sensor shields
- **Sensor ground splice** on ECM pin 67 GND A: MAF sensor pins 3 and 6, engine coolant temperature sensor pin 2, refrigerant pressure sensor pin 3, EVAP control system pressure sensor pin 1, power steering pressure sensor pin 1, TCM sensor ground pins 42 and 32
- ECM pin 66 GND A2 is the throttle position sensor ground only; pins 82 GND A and 83 GND A2 are the APP sensor 1 and sensor 2 grounds only; pin 78 GND 02 is the rear oxygen sensor ground
- **F16** (front of engine): ignition coils pin 2 and condenser 2 pin 2
- **B7** (left B pillar): fuel pump pin 2; **B19** (behind left side of rear seat back): condenser 1 pin 2; **M57** (behind right side of dash): fuel level sensor unit pin E
