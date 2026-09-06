# 2005 Nissan 350Z 3.5L (VQ35DE) — ECM pinout

Transcribed from [2005-350z.pdf](2005-350z.pdf) (Mitchell "Engine Performance" wiring diagram, four sheets, diagram IDs 210960-210963; the same four sheets are in this folder as [2005-350z-ecu-1.png](2005-350z-ecu-1.png) to [2005-350z-ecu-4.png](2005-350z-ecu-4.png)). Applies to the 2005-2006 Z33 with the 121 pin Hitachi ECM; the 2003-2004 car differs in the oxygen sensor wiring (see [2003-350z-ecu.png](2003-350z-ecu.png)) and the 2007-2008 VQ35HR car uses a different ECM.

Engine Control Module (ECM), at the right end of the dash. Single 121 pin connector. Pins 1-56 are drawn on sheet 1, pins 57-121 on sheet 4; sheets 2 and 3 carry the coils, throttle body, sensors and relays and are linked by numbered off-page lines.

Wire colours are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink; NCA = no colour available). Where an inline connector changes the colour, both are given as "ECM side / component side". Unlisted pins are not connected in this diagram. Bank 1 = right cylinder bank (cylinders 1, 3, 5), bank 2 = left cylinder bank.

## Pins 1-56 (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK | GND | Ground F152 (behind right side of dash) |
| 2 | GRY/RED | AF-H1 | Air fuel ratio (A/F) sensor 1 bank 1 pin 4 (heater), right exhaust manifold |
| 3 | GRN | V MOT | Throttle control motor relay output (IPDM E/R E8 pin 42) |
| 4 | LT BLU | MOTOR2 | Electric throttle control actuator pin 3 (throttle control motor) |
| 5 | BLU/YEL | MOTOR1 | Electric throttle control actuator pin 6 (throttle control motor) |
| 6 | PNK/BLU | O2HRL | Heated oxygen sensor 2 bank 2 pin 3 (heater), left exhaust pipe |
| 10 | WHT/GRN | C-IVC (L) | Intake valve timing control solenoid valve bank 2 pin 1 (left front of engine) |
| 11 | PNK / WHT/RED | C-IVC (R) | Intake valve timing control solenoid valve bank 1 pin 1 (right front of engine) |
| 12 | BLU/WHT | PS PRES | Power steering pressure sensor pin 2 (signal), on power steering high pressure tube |
| 13 | WHT/BLU | POS | Crankshaft position sensor (POS) pin 2 (signal), left rear of engine on bell housing |
| 14 | RED/BLU | PHASE LH | Camshaft position sensor (PHASE) bank 2 pin 2 (signal), left rear of engine |
| 15 | WHT | KNK1 | Knock sensor pin 1 (top centre of engine); pin 2 and the shield are NCA |
| 16 | LT GRN/BLK | AF-UN1 | A/F sensor 1 bank 1 pin 1 |
| 21 | LT BLU / BLU/WHT | INJ 5 | Fuel injector 5 pin 2 |
| 22 | RED/YEL | INJ 3 | Fuel injector 3 pin 2 |
| 23 | RED/BLK | INJ 1 | Fuel injector 1 pin 2 |
| 24 | GRY | AF-H2 | A/F sensor 1 bank 2 pin 4 (heater), left exhaust manifold |
| 25 | PNK/BLK | O2HRR | Heated oxygen sensor 2 bank 1 pin 3 (heater), right exhaust pipe |
| 32 | BRN/WHT / WHT | FTRPS | EVAP control system pressure sensor pin 2 (signal), under vehicle near EVAP canister |
| 33 | RED | PHASE RH | Camshaft position sensor (PHASE) bank 1 pin 2 (signal), right rear of engine |
| 34 | YEL/GRN | TA | Mass airflow (MAF) sensor pin 5 (intake air temperature), on intake air duct housing |
| 35 | BLU/WHT | AF-VM1 | A/F sensor 1 bank 1 pin 5 |
| 40 | LT GRN / PPL/RED | INJ 6 | Fuel injector 6 pin 2 |
| 41 | WHT/BLK / RED/BLU | INJ 4 | Fuel injector 4 pin 2 |
| 42 | BLK/RED / RED/WHT | INJ 2 | Fuel injector 2 pin 2 |
| 45 | GRN/WHT | EVAP | EVAP canister purge volume control solenoid valve pin 2 (right side of intake manifold collector) |
| 47 | WHT/RED | AVCC2 | Electric throttle control actuator pin 1 (TP sensor supply, connector F31) |
| 48 | PPL / BLU/YEL / BLU | AVCC | EVAP control system pressure sensor pin 3 (supply), two inline connectors |
| 49 | BLK/YEL | PDPRES | Refrigerant pressure sensor pin 1 (on A/C liquid tank) |
| 50 | GRN | TPS1 | Electric throttle control actuator pin 4 (TP sensor 1) |
| 51 | ORG | QA+ | MAF sensor pin 4 |
| 55 | BLU/BLK | O2SRL | Heated oxygen sensor 2 bank 2 pin 1 (signal) |
| 56 | WHT/BLU | A/F-IP1 | A/F sensor 1 bank 1 pin 6 |

Sheet 1 component notes: fuel injectors pin 1 (RED) share a dashed node fed by the WHT/BLK (or WHT/BLU, or RED) wire from fuse 1 (10 A, hot in ON or START, fuse block J/B behind left kick panel, terminal 15A); the same wire continues as off-page line 31 to ECM pin 109 IGN SW. Fuse 14 (10 A, terminal 5A) feeds the combination meter (unified meter control unit) malfunction indicator lamp; meter pins 21 (RED/GRN) and 22 (BLU/ORG) are the RX/TX link to the unified meter and A/C amp on sheet 4, not ECM signals. Crankshaft position sensor pin 1 (RED/WHT) is ECM relay power, pin 3 (BLK) grounds at F152 with the knock sensor NCA shield. Park/neutral position switch (integral to the A/T device) pin 1 BRN/YEL goes to ECM pin 102, pin 2 BLK to ground. Refrigerant pressure sensor pins 1 BLK/YEL (ECM 49), 2 WHT (ECM 70), 3 BLK/WHT (sensor ground). Condenser on top right rear of engine: pin 1 WHT/BLU (ECM relay output), pin 2 BLK to F23 (top front of engine).

## Pins 57-121 (sheet 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 57 | BLU | AF-VM2 | A/F sensor 1 bank 2 pin 5 |
| 58 | WHT | A/F-IP2 | A/F sensor 1 bank 2 pin 6 |
| 60 | PPL/WHT | IGN 5 | Ignition coil 5 pin 1 |
| 61 | BLU/RED | IGN 3 | Ignition coil 3 pin 1 |
| 62 | YEL/RED | IGN 1 | Ignition coil 1 pin 1 |
| 66 | BLU | GND A2 | Electric throttle control actuator pin 5 (TP sensor ground) |
| 67 | BLK/WHT | GND A | Sensor ground junction connector (see grounds below) |
| 68 | RED/WHT | GND A | Power steering pressure sensor pin 1. Labelled GND A but wired RED/WHT to the sensor's supply pin; on the Xterra, Maxima and Altima diagrams this pin is the 5 V supply for the same sensor. See [issue 3](https://github.com/rusefi/hellen121nissan-issues/issues/3) |
| 69 | YEL | TPS2 | Electric throttle control actuator pin 2 (TP sensor 2) |
| 70 | GRN/RED / WHT | PDPRES | Refrigerant pressure sensor pin 2 (signal) |
| 73 | BRN/YEL | TW | Engine coolant temperature sensor pin 1 (top right rear of engine) |
| 74 | ORG | O2SRR | Heated oxygen sensor 2 bank 1 pin 1 (signal) |
| 75 | PNK/BLK | A/F IA1 | A/F sensor 1 bank 1 pin 2 |
| 76 | LT GRN | AF-UN2 | A/F sensor 1 bank 2 pin 1 |
| 77 | PNK | A/F-IA2 | A/F sensor 1 bank 2 pin 2 |
| 78 | BLK/YEL | GND 02 | Heated oxygen sensor 2 bank 1 pin 4 and bank 2 pin 4, joined |
| 79 | GRY/RED | IGN 6 | Ignition coil 6 pin 1 |
| 80 | GRY | IGN 4 | Ignition coil 4 pin 1 |
| 81 | GRN/BLK | IGN 2 | Ignition coil 2 pin 1 |
| 82 | GRN/YEL | GND A | Accelerator pedal position (APP) sensor 1 pin 3 (BLK/WHT at the sensor), through an inline connector |
| 83 | GRN/RED | GND A2 | APP sensor 2 pin 1 (sensor 2 ground) |
| 85 | LT GRN | KLINE | Data link connector pin 7 (LT GRN or PPL), lower left side of dash |
| 86 | PNK | CAN L | Computer data lines system |
| 90 | LT GRN / BLU | AVCC | APP sensor 1 pin 6 (sensor 1 supply) |
| 91 | BLK/ORG | AVCC2 | APP sensor 2 pin 4 (sensor 2 supply) |
| 94 | BLU | CAN-H | Computer data lines system |
| 98 | GRN/BLK / RED/YEL | APS2 | APP sensor 2 pin 2 |
| 99 | GRN/YEL | ASCDSW | Cruise control system |
| 101 | BLU/ORG / PNK/BLU | BRAKE | Stop lamp switch pin 2 (on brake pedal bracket); switch pin 1 RED/YEL is fed by fuse 20 (10 A, hot at all times, J/B terminal 8C) |
| 102 | BRN/YEL | VMOT | Park/neutral position switch pin 1 (M/T and A/T branches join here). Printed as VMOT in this diagram; the function is the neutral position input (NEUT on other 121 pin Nissans), VMOT proper is pin 3 |
| 104 | LT BLU / BRN | MOTRLY | Throttle control motor relay coil (IPDM E/R E9 pin 47, ORG at the module) |
| 106 | GRN/ORG / YEL | APS1 | APP sensor 1 pin 5 |
| 107 | GRY/RED | TC | Fuel tank temperature sensor (fuel level sensor unit and fuel pump pin 4, PPL/WHT at the unit, in fuel tank) |
| 108 | BLK/RED | BNCSW | Cruise control system |
| 109 | WHT/BLK | IGN SW | Fuse 1 (10 A, hot in ON or START, J/B), shared with the injector supply |
| 111 | GRY/BLU / WHT/BLK | SSOFF | ECM relay coil (IPDM E/R E9 pin 46) |
| 113 | LT GRN/BLK / BLK/RED / BLU/WHT | FPR | Fuel pump relay coil (IPDM E/R E8 pin 40) |
| 115 | BLK/WHT | GND | Ground F152 |
| 116 | BLK/RED | GND | Ground F152 |
| 117 | GRN/WHT / GRN/BLK / GRN | CDCV | EVAP canister vent control valve pin 2 (on EVAP canister); the source prints "(OR GRN/YEL)" beside this row |
| 119 | RED/WHT | VB | ECM relay output (IPDM E/R E7 pin 18), joined with pin 120 |
| 120 | PNK / RED/WHT | VB | ECM relay output |
| 121 | RED/WHT | BATT | Fuse 34 (15 A, hot at all times, fuse, fusible link and relay box at right rear of engine compartment) |

Sheet 2-4 component notes: ignition coils with power transistor 6, 1, 4, 3, 2, 5; coil pin 3 (WHT/BLU) is the ECM relay output via the WHT/BLU junction connector, coil pin 2 (BLK) grounds at F23 (top front of engine), spark plug lead NCA. Electric throttle control actuator on the throttle body (motor pins 3 and 6, TP sensor 1 on pins 4 and 1 with ground pin 5, TP sensor 2 on pin 2; shields NCA to F152). Accelerator pedal position sensor (sensor 1 pins 3 BLK/WHT, 5 YEL, 6 BLU; sensor 2 pins 4 BLK/ORG, 2 RED/YEL, 1 GRN/RED; connector E113; shields NCA to F152). MAF sensor on the intake air duct housing: pin 2 RED/WHT power from the ECM relay, pin 3 and 6 BLK/WHT sensor ground, pin 4 ORG airflow signal, pin 5 YEL/GRN IAT, pin 1 not used. EVAP control system pressure sensor: pin 1 BLK/WHT (LT GRN/BLK after an inline connector) to the sensor ground junction, pin 2 WHT, pin 3 BLU. A/F sensor 1 bank 1 on the right exhaust manifold ahead of catalyst 1 (pins 1 LT GRN/BLK, 2 PNK/BLK, 3 RED/BLK heater power, 4 GRY/RED, 5 BLU/WHT, 6 WHT/BLU) and bank 2 on the left manifold (pins 1 LT GRN, 2 PNK, 3 RED/BLK, 4 GRY, 5 BLU, 6 WHT). Heated oxygen sensor 2 bank 1 on the right exhaust pipe between catalysts 1 and 2 (pins 1 ORG, 2 RED/BLK heater power, 3 PNK/BLK, 4 BLK/YEL) and bank 2 on the left pipe (1 BLU/BLK, 2 RED/BLK, 3 PNK/BLU, 4 BLK/YEL). Engine coolant temperature sensor pin 2 BLK/WHT to the sensor ground junction. Camshaft position sensors bank 1 (right rear, pins 3 RED/WHT power, 2 RED, 1 BLK) and bank 2 (left rear, pins 3 RED/WHT, 2 RED/BLU, 1 BLK); both pin 1 ground at F152. Intake valve timing control solenoid valves bank 1 (pins 2 WHT/BLU power, 1 WHT/RED) and bank 2 (2 WHT/BLU, 1 WHT/GRN). Fuel level sensor unit and fuel pump in the fuel tank: pump pin 1 BLK/YEL from the fuel pump relay, pin 3 BLK to ground B5 (left front of passenger compartment floor), pin 5 BLK/RED (RED/BLK) fuel level to the unified meter and A/C amp pin 36, pin 4 fuel temperature to ECM pin 107. Condenser at the fuel pump: pin 1 BLK/YEL from the fuel pump relay, pin 2 BLK to B5. Power steering pressure sensor: pin 1 RED/WHT (ECM 68), pin 2 BLU/WHT (ECM 12), pin 3 BLK/WHT (sensor ground). EVAP canister vent control valve: pin 1 WHT/RED from the ECM relay, pin 2 GRN to ECM 117.

The TCM (in the A/T assembly) is on CAN (pin 3 BLU CAN-H, pin 8 PNK CAN-L) and drives the starter relay on the IPDM through pin 9 GRY/RED; the unified meter and A/C amp pin 32 (AT-P, GRY/RED) is on the same starter relay wire. There is no direct ECM to TCM wire.

## Power supply / relays

IPDM E/R (intelligent power distribution module engine room), right rear corner of engine compartment:

- **Throttle control motor relay** — fuse 87 (15 A, hot at all times); coil driven by ECM pin 104 (E9 pin 47 ORG, BRN after an inline connector); output E8 pin 42 (GRN) to ECM pin 3 V MOT
- **ECM relay** — fuse 77 (15 A, hot at all times); coil driven by ECM pin 111 SSOFF (E9 pin 46 WHT/BLK). Two outputs: E7 pin 17 (WHT/BLU) to a five-way junction connector feeding the ignition coils pin 3, both intake valve timing control solenoid valves pin 2 and the condenser on the engine; E7 pin 18 (RED/WHT) to ECM pins 119/120 VB, the MAF sensor pin 2, the crankshaft position sensor pin 1, both camshaft position sensors pin 3, the EVAP purge solenoid pin 1, the EVAP vent control valve pin 1 and the throttle body TP sensor supply side (numerous RED/WHT splices on sheets 3 and 4)
- **Fuel pump relay** — fuse 81 (15 A, hot in ON or START); coil driven by ECM pin 113 FPR (E8 pin 40 BLU/WHT); output E8 pin 39 (BLK/YEL) to the fuel pump pin 1 and condenser pin 1
- **Fuse 34** (15 A, hot at all times, fuse, fusible link and relay box) — RED/WHT to ECM pin 121 BATT

Fuse block (J/B, behind left kick panel): fuse 1 (10 A, hot in ON or START, terminal 15A) WHT/BLK to the fuel injectors pin 1 and ECM pin 109 IGN SW; fuse 14 (10 A, terminal 5A) GRN/YEL to the combination meter; fuse 15 (15 A, hot in ON or START, terminal 9A) RED/BLK to a junction connector feeding A/F sensor 1 bank 1 and bank 2 pin 3 and heated oxygen sensor 2 bank 1 and bank 2 pin 2 (heater power); fuse 20 (10 A, hot at all times, terminal 8C) RED/YEL to the stop lamp switch pin 1.

## Grounds

- **F152** (behind right side of dash): ECM pins 1, 115, 116; crankshaft position sensor pin 3; camshaft position sensors bank 1 and bank 2 pin 1; knock sensor, throttle actuator and APP sensor shields (NCA)
- **Sensor ground junction connector** (seven-way BLK/WHT J/C on sheet 3) on ECM pin 67 GND A: MAF sensor pins 3 and 6, EVAP control system pressure sensor pin 1, engine coolant temperature sensor pin 2, power steering pressure sensor pin 3, refrigerant pressure sensor pin 3
- ECM pin 66 GND A2 is the throttle position sensor ground only; pins 82 GND A and 83 GND A2 are the APP sensor 1 and sensor 2 grounds only; pin 78 GND 02 is the rear oxygen sensor ground
- **F23** (top front of engine): ignition coils pin 2 and the engine condenser pin 2
- **B5** (left front of passenger compartment floor): fuel pump pin 3 and the fuel tank condenser pin 2
- Park/neutral position switch pin 2 BLK grounds on the transmission harness
