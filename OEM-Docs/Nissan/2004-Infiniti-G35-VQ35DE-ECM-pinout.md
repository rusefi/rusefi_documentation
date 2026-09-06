# 2004 Infiniti G35 3.5L (VQ35DE) — ECM pinout

Transcribed from [2004 Infiniti G35 Sedan ECU.pdf](2004%20Infiniti%20G35%20Sedan%20ECU.pdf) (ALLDATA "Engine Controls" colour diagram, four sheets, diagram IDs 192376-192395). Note: the PDF was pulled for the 2004 G35 sedan, but the ALLDATA article header on every sheet reads "Engine Controls - Early Production Coupe". Treat it as the 2003-2004 VQ35DE G35 layout; the sedan/coupe difference reported on the forum is not resolved by this document.

Engine Control Module (ECM), behind the right kick panel. Single 121 pin connector. Pins 1-57 are on sheet 1, pins 58-121 on sheet 4.

**Key point:** this ECM uses four-wire narrowband heated oxygen sensors on both banks (pins 2, 16, 24, 35 for the front sensors), not the six-wire wideband A/F sensors of the 2005-2006 350Z. Pins 56, 57, 58, 75, 76 and 77 are not connected. This matches the 2003 350Z scheme.

Wire colours are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink; NCA = no colour available). "A / B" means the wire changes colour at an inline connector (ECM side / component side). Unlisted pins are not connected in this diagram. Bank 1 = right cylinder bank (right exhaust manifold), bank 2 = left.

## Pins 1-57 (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK / BLK/WHT | GND | Ground M66 (behind right side of dash) |
| 2 | YEL | O2HFL | Heated oxygen sensor 1 bank 2 pin 3 (heater), left exhaust manifold ahead of catalyst 1 |
| 3 | WHT/RED | V MOT | Throttle control motor relay output (IPDM E/R E8 pin 42) |
| 4 | BRN | MOTOR2 | Electric throttle control actuator pin 3 (throttle control motor) |
| 5 | GRN | MOTOR1 | Electric throttle control actuator pin 6 (throttle control motor) |
| 6 | BRN/WHT | O2HRL | Heated oxygen sensor 2 bank 2 pin 3 (heater), left exhaust pipe between catalysts 1 and 2 |
| 10 | WHT/GRN | C-IVC (L) | Intake valve timing control solenoid valve bank 2 pin 1 (left front of engine) |
| 11 | RED/WHT | C-IVC (R) | Intake valve timing control solenoid valve bank 1 pin 1 (right front of engine), WHT/RED at the valve |
| 12 | BLU/WHT | PS PRES | Power steering pressure sensor pin 2 (signal), on power steering high pressure tube |
| 13 | BRN | POS | Crankshaft position sensor (POS) pin 2 (signal), on front of oil pan below crankshaft pulley |
| 14 | YEL | PHASE LH | Camshaft position sensor (PHASE) bank 2 pin 2 (signal), left rear of engine |
| 15 | WHT | KNK1 | Knock sensor pin 1 (top centre front of engine); pin 2 and shield NCA |
| 16 | LT GRN | O2SFL | Heated oxygen sensor 1 bank 2 pin 1 (signal) |
| 21 | GRN / WHT | INJ 5 | Fuel injector 5 pin 2 |
| 22 | RED/YEL | INJ 3 | Fuel injector 3 pin 2 |
| 23 | RED/BLK | INJ 1 | Fuel injector 1 pin 2 |
| 24 | GRN/BLK | O2HFR | Heated oxygen sensor 1 bank 1 pin 3 (heater), right exhaust manifold |
| 25 | PNK/BLK | O2HRR | Heated oxygen sensor 2 bank 1 pin 3 (heater), right exhaust pipe |
| 32 | PNK / WHT | FTRPS | EVAP control system pressure sensor pin 2 (signal, BRN/WHT at the sensor), under vehicle near EVAP canister |
| 33 | ORG | PHASE RH | Camshaft position sensor (PHASE) bank 1 pin 2 (signal), right rear of engine |
| 34 | YEL/GRN | TA | Mass airflow (MAF) sensor pin 5 (intake air temperature), on intake air duct housing |
| 35 | WHT/BLK | O2SFR | Heated oxygen sensor 1 bank 1 pin 1 (signal) |
| 40 | PNK / PPL/RED | INJ 6 | Fuel injector 6 pin 2 |
| 41 | RED/BLU | INJ 4 | Fuel injector 4 pin 2 |
| 42 | RED/WHT | INJ 2 | Fuel injector 2 pin 2 |
| 45 | BLU/YEL | EVAP | EVAP canister purge volume control solenoid valve pin 2 (right side of intake manifold) |
| 47 | BLK | AVCC2 | Electric throttle control actuator pin 1 (TP sensor supply, connector F31) |
| 48 | BLK/YEL | AVCC | EVAP control system pressure sensor pin 3 (supply, BLU/RED at the sensor) |
| 49 | WHT/BLU | PDPRES | Refrigerant pressure sensor pin 1 (on A/C liquid tank) |
| 50 | WHT | TPS1 | Electric throttle control actuator pin 4 (TP sensor 1) |
| 51 | ORG | QA+ | MAF sensor pin 4 |
| 55 | RED/YEL | O2SRL | Heated oxygen sensor 2 bank 2 pin 1 (signal) |

Sheet 1 component notes: fuel injectors 5, 3, 1, 6, 4, 2; pin 1 of all six is WHT/BLU on a dashed node fed by the ECM relay output E7 pin 17 (not by an ignition fuse as on the 2005 350Z). Combination meter (unified meter control unit) is fed by fuse 14 (10 A, hot in ON or START, J/B behind left kick panel, terminal 5A, GRN/YEL); its pins 27 (RED) and 28 (BLU) go to the computer data lines system and the MIL is driven over CAN; pins 41 (GRN/YEL) and 12 (GRN/WHT) are meter supply/return, not ECM signals. Crankshaft position sensor pins 1 PNK (ECM relay power), 3 BLK (ground M66). Park/neutral position switch (rear of transmission) pin 1 GRN/ORG to ECM pin 102, pin 2 BLK to M66. Refrigerant pressure sensor pins 1 WHT/BLU (ECM 49), 2 RED/BLK (ECM 70), 3 BLK/WHT (sensor ground). Condenser (right rear of engine) pin 1 WHT/BLU (ECM relay), pin 2 BLK to F23 (top front of engine).

## Pins 58-121 (sheet 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 60 | PPL/WHT | IGN 5 | Ignition coil 5 pin 1 |
| 61 | BLU/RED | IGN 3 | Ignition coil 3 pin 1 |
| 62 | YEL/RED | IGN 1 | Ignition coil 1 pin 1 |
| 66 | WHT/RED | GND A2 | Electric throttle control actuator pin 5 (TP sensor ground) |
| 67 | BLK/WHT | GND A | Sensor ground splice (see grounds below) |
| 68 | YEL | GND A | Power steering pressure sensor pin 1. Labelled GND A, but the sensor's ground is pin 3 (BLK/WHT) on the sensor-ground splice and its signal is pin 2; pin 1 is the supply. Same situation as the 2005 350Z, see [issue 3](https://github.com/rusefi/hellen121nissan-issues/issues/3) |
| 69 | RED/BLU | TPS2 | Electric throttle control actuator pin 2 (TP sensor 2) |
| 70 | RED/BLK | PDPRES | Refrigerant pressure sensor pin 2 (signal) |
| 73 | YEL/BLK | TW | Engine coolant temperature sensor pin 1 (top right rear of engine) |
| 74 | BLU/BLK | O2SRR | Heated oxygen sensor 2 bank 1 pin 1 (signal) |
| 78 | BLK/YEL | GND 02 | All four oxygen sensors pin 4, joined on a dashed node on sheet 3 |
| 79 | GRY/RED | IGN 6 | Ignition coil 6 pin 1 |
| 80 | GRY | IGN 4 | Ignition coil 4 pin 1 |
| 81 | GRN/RED | IGN 2 | Ignition coil 2 pin 1 |
| 82 | GRY/YEL | GND A | Accelerator pedal position (APP) sensor 1 pin 3 (BLK at the sensor), through an inline connector |
| 83 | BLK/RED | GND A2 | APP sensor 2 pin 1 (sensor 2 ground) |
| 85 | PPL | KLINE | Data link connector pin 7 (lower left side of dash) |
| 86 | RED | CAN L | Computer data lines system |
| 90 | BRN/YEL | AVCC | APP sensor 1 pin 6 (sensor 1 supply) |
| 91 | GRN | AVCC2 | APP sensor 2 pin 4 (sensor 2 supply) |
| 94 | BLU | CAN-H | Computer data lines system |
| 98 | LT GRN/BLK | APS2 | APP sensor 2 pin 2 |
| 99 | GRN/YEL | ASCDSW | Cruise control system |
| 101 | PNK/BLU | BRAKE | Stop lamp switch pin 4 (on brake pedal bracket); switch pin 3 RED/YEL from fuse 20 (10 A, hot at all times, J/B terminal 8C) |
| 102 | GRN/ORG | NEUT | Park/neutral position switch pin 1; separate A/T (line 17) and M/T (line 18) branches join at the ECM |
| 104 | GRN/WHT | MOTRLY | Throttle control motor relay coil (IPDM E/R E9 pin 47, GRY/BLU at the module) |
| 106 | BRN | APS1 | APP sensor 1 pin 5 |
| 107 | BLU/ORG | TC | Fuel tank temperature sensor (fuel level sensor unit and fuel pump pin 4, PPL/WHT at the unit, in fuel tank) |
| 108 | LT BLU | BNCSW | Cruise control system |
| 109 | WHT/BLU | IGN SW | Fuse 1 (10 A, hot in ON or START, J/B terminal 15A) |
| 111 | WHT | SSOFF | ECM relay coil (IPDM E/R E9 pin 46) |
| 113 | BLK/ORG | FPR | Fuel pump relay coil (IPDM E/R E8 pin 40) |
| 115 | BLK/RED | GND | Ground M66 |
| 116 | BLK | GND | Ground M66 (through an inline connector) |
| 117 | GRY/BLU | CDCV | EVAP canister vent control valve pin 2 (on EVAP canister) |
| 119 | PNK | VB | ECM relay output (IPDM E/R E7 pin 18, PNK), joined with pin 120 |
| 120 | BLU / PNK | VB | ECM relay output |
| 121 | RED/WHT | BATT | Fuse 34 (15 A, hot at all times, fuse, fusible link and relay box at right rear of engine compartment) |

Sheet 2-4 component notes: ignition coils with power transistor 6, 1, 4, 3, 2, 5 (coil pin 3 WHT/BLU from the ECM relay, pin 2 BLK to F23, spark plug NCA). Electric throttle control actuator on the throttle body (motor pins 3 and 6, TP sensor 1 on pins 4 and 1 with ground pin 5, TP sensor 2 on pin 2; shields NCA to M66). APP sensor on the accelerator pedal bracket (sensor 1 pins 3 BLK, 5 BRN, 6 BRN/YEL; sensor 2 pins 4 GRN, 2 LT GRN/BLK, 1 BLK/RED; shields NCA to M66). MAF sensor pins 2 PNK (ECM relay power), 3 BLK/WHT (sensor ground), 4 ORG, 5 YEL/GRN, 6 BLU (joins the WHT/BLU ignition-switch feed on sheet 4; unverified), pin 1 not used. Heated oxygen sensor 1 bank 1 (pins 1 WHT/BLK, 2 RED/BLK heater power, 3 GRN/BLK, 4 BLK/YEL) and bank 2 (1 LT GRN, 2 RED/BLK, 3 YEL, 4 BLK/YEL); heated oxygen sensor 2 bank 1 (1 BLU/BLK, 2 RED/BLK, 3 PNK/BLK, 4 BLK/YEL) and bank 2 (1 RED/YEL, 2 RED/BLK, 3 BRN/WHT, 4 BLK/YEL). Engine coolant temperature sensor pin 2 BLK/WHT to the sensor ground. Camshaft position sensors bank 1 (right rear, pins 3 PNK power, 2 ORG, 1 BLK) and bank 2 (left rear, 3 PNK, 2 YEL, 1 BLK), both pin 1 to M66. Intake valve timing control solenoid valves bank 1 (pins 2 WHT/BLU, 1 WHT/RED) and bank 2 (2 GRN, 1 WHT/GRN). EVAP control system pressure sensor pins 3 BLU/RED (supply), 2 BRN/WHT (signal), 1 BRN (ground), all through inline connectors. Fuel level sensor unit and fuel pump in the fuel tank: pump pin 1 BLK/YEL from the fuel pump relay, pin 3 BLK to ground B7 (left B pillar), pin 5 BLK/WHT fuel level to the meter (via M30 behind the cluster), pin 4 PPL/WHT fuel temperature to ECM pin 107. Condenser under the left side of the rear seat: pin 1 BLK/YEL from the fuel pump relay, pin 2 BLK to B29 (left C pillar). Power steering pressure sensor pins 3 BLK/WHT (sensor ground), 2 BLU/WHT (ECM 12), 1 YEL (ECM 68). EVAP canister vent control valve pins 1 WHT/BLU (ECM relay), 2 GRY/BLU (ECM 117).

## Power supply / relays

IPDM E/R (intelligent power distribution module engine room), right rear of engine compartment:

- **Throttle control motor relay** — fuse 87 (15 A, hot at all times); coil driven by ECM pin 104 (E9 pin 47 GRY/BLU); output E8 pin 42 (WHT/RED) to ECM pin 3 V MOT
- **ECM relay** — fuse 77 (15 A, hot in ON or START on this sheet); coil driven by ECM pin 111 SSOFF (E9 pin 46 WHT). Two outputs: E7 pin 17 (WHT/BLU) to the fuel injectors pin 1, ignition coils pin 3, intake valve timing control solenoid valve bank 1 pin 2, the engine condenser and the EVAP vent control valve pin 1; E7 pin 18 (PNK) to ECM pins 119/120 VB, the crankshaft position sensor pin 1, both camshaft position sensors pin 3, the MAF sensor pin 2 and the EVAP purge solenoid pin 1
- **Fuel pump relay** — fuse 81 (15 A, hot in ON or START); coil driven by ECM pin 113 FPR (E8 pin 40 BLK/ORG); output E8 pin 39 (BLK/YEL) to the fuel pump pin 1 and the rear-seat condenser pin 1
- **Fuse 34** (15 A, hot at all times, fuse, fusible link and relay box) — RED/WHT to ECM pin 121 BATT

Fuse block (J/B, behind left kick panel): fuse 1 (10 A, hot in ON or START, terminal 15A) WHT/BLU to ECM pin 109 IGN SW; fuse 14 (10 A, terminal 5A) GRN/YEL to the combination meter; fuse 15 (15 A, hot in ON or START, terminal 9A) RED/BLK to all four oxygen sensors pin 2 (heater power); fuse 20 (10 A, hot at all times, terminal 8C) RED/YEL to the stop lamp switch pin 3.

## Grounds

- **M66** (behind right side of dash): ECM pins 1, 115, 116; crankshaft position sensor pin 3; camshaft position sensors bank 1 and bank 2 pin 1; park/neutral position switch pin 2; knock sensor, throttle actuator and APP sensor shields (NCA)
- **Sensor ground splice** (BLK/WHT on sheet 3) on ECM pin 67 GND A: MAF sensor pin 3, engine coolant temperature sensor pin 2, power steering pressure sensor pin 3, refrigerant pressure sensor pin 3, EVAP control system pressure sensor pin 1 (through inline connectors)
- ECM pin 66 GND A2 is the throttle position sensor ground only; pins 82 GND A and 83 GND A2 are the APP sensor 1 and sensor 2 grounds only; pin 78 GND 02 is the oxygen sensor ground
- **F23** (top front of engine): ignition coils pin 2 and the engine condenser pin 2
- **B7** (left B pillar): fuel pump pin 3; **B29** (left C pillar): rear-seat condenser pin 2

## Comparison with the 2005 350Z

Against [2005-Nissan-350Z-VQ35DE-ECM-pinout.md](2005-Nissan-350Z-VQ35DE-ECM-pinout.md): power, ground, CAN, relay, injector, coil, throttle, APP, cam/crank, knock, EVAP and temperature pins are on the same positions. The only functional differences are the front oxygen sensors (narrowband signal on 16/35 and heater on 2/24 here, versus six-wire A/F sensors on 2/16/35/56/57/58 and 24/75/76/77 on the 2005 car) and the injector supply (ECM relay here, ignition fuse on the 2005 350Z). Pin 102 is printed NEUT here and VMOT on the 350Z Mitchell sheet; the wiring is the same. Wire colours differ throughout.
