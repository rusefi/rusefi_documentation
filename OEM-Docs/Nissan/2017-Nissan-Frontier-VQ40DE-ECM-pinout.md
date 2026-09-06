# 2017 Nissan Frontier S 4.0L (VQ40DE) — ECM pinout (NOT the 121 pin layout)

Transcribed from [2017-frontier.pdf](2017-frontier.pdf) (Mitchell "Engine Performance" wiring diagram, five sheets, diagram IDs 561664-561668). CAN logs for the same truck are in [2017-frontier/](2017-frontier/).

**This ECM is not the single-connector 121 pin unit** used by the 2005-2012 Xterra, Pathfinder and early Frontier with the same VQ40DE engine. It has three harness connectors, F73 (terminals 1-48), F57 (49-96) and E55 (97-128), the same 48 + 48 + 32 format as the VQ37VHR 370Z/G37 ECM transcribed in [2013-Nissan-370Z-VQ37VHR-ECM-pinout.md](2013-Nissan-370Z-VQ37VHR-ECM-pinout.md). The body connector shares some positions with the 370Z (APP sensor on 97/98, CAN on 113/114, stop lamp on 122) but the two engine connectors are assigned differently. The ECM sits at the right rear of the engine compartment. The model year in which the D40 Frontier changed from the 121 pin ECM to this one is not known from this document; the 2011 Pathfinder and Xterra are still 121 pin.

Engine hardware differences from the 2011 VQ40DE trucks visible here: an intake manifold runner control valve with motor and position sensor (pins 20, 49, 50, 53, 54, 84), an engine oil temperature sensor (pin 78), separate sensor grounds per sensor (64, 68, 72, 76, 80, 91, 100, 108, 112, 116) and a VBR power feed (121).

Wire colours are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink, TAN; NCA = no colour available). Unlisted pins are not connected. Bank 1 = right cylinder bank. Fxx/Exx/Mxx/Cx names are harness-to-harness connectors.

## F73 — terminals 1-48 (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | PPL | VMOT | Throttle control motor relay output (IPDM E/R E119 pin 6), via F14/E5 pin 9 |
| 2 | BLU/WHT | MOTOR2 | Electric throttle control actuator pin 5 (throttle control motor) |
| 3 | GRN | AF-H2 (L) | A/F sensor 1 bank 2 pin 3 (heater), left exhaust manifold |
| 5 | BLU/BLK | MOTOR1 | Electric throttle control actuator pin 6 (throttle control motor) |
| 6 | RED | AF-H1 (R) | A/F sensor 1 bank 1 pin 3 (heater), right exhaust manifold |
| 9 | BRN | IGN 3 | Ignition coil 3 pin 1 (BLU at the coil), via F26/F225 pin 2 |
| 10 | GRN | IGN 2 | Ignition coil 2 pin 1 |
| 11 | YEL | IGN 1 | Ignition coil 1 pin 1, via F26/F225 pin 1 |
| 12 | BRN | GND | Ground E24 (right front of engine compartment) |
| 13 | PNK | IGN 6 | Ignition coil 6 pin 1 |
| 14 | LT BLU | IGN 5 | Ignition coil 5 pin 1 (PPL at the coil), via F26/F225 pin 3 |
| 15 | GRY | IGN 4 | Ignition coil 4 pin 1 |
| 16 | PPL | GND | Ground E24, joined with pin 12 |
| 19 | BLK | GND-A TPS | Electric throttle control actuator pin 4 (TP sensor ground) |
| 20 | GRN | TCV-POS | Intake manifold runner control valve position sensor pin 1 (signal), front of left cylinder bank |
| 22 | WHT | TPS1 | Electric throttle control actuator pin 1 (TP sensor 1) |
| 23 | RED | TPS2 | Electric throttle control actuator pin 3 (TP sensor 2) |
| 24 | BLU | AVCC1 TPS | Electric throttle control actuator pin 2 (TP sensor supply) |
| 26 | RED/BLK | BATT | Fuse 53 (20 A, hot at all times, IPDM E/R E121 pin 30), via F32/E2 pin 4 |
| 31 | BRN | SSOFF | ECM relay coil (IPDM E/R E119 pin 7) |
| 33 | LT BLU | INJ 1 | Fuel injector 1 pin 2 (GRN at the injector), via F44/F201 pin 2 |
| 34 | ORG | MOTRLY | Throttle control motor relay coil (IPDM E/R E122 pin 47, TAN), via F14/E5 pin 19 |
| 37 | PNK | O2HRR | Heated oxygen sensor 2 bank 1 pin 3 (heater), right exhaust downstream of catalyst |
| 39 | GRN | VIAS | VIAS control solenoid valve pin 2 (top left side of intake manifold) |
| 41 | RED | O2HRL | Heated oxygen sensor 2 bank 2 pin 3 (heater), left exhaust downstream of catalyst |
| 42 | YEL | EVAP | EVAP canister purge volume control solenoid valve pin 1 (left front of engine) |
| 43 | PPL | FPR | Fuel pump relay coil (IPDM E/R E122 pin 46), via F14/E5 pin 20 |
| 44 | ORG | INJ 2 | Fuel injector 2 pin 2 |
| 45 | PPL | INJ 6 | Fuel injector 6 pin 2 |
| 46 | WHT | INJ 5 | Fuel injector 5 pin 2 (BLU at the injector), via F44/F201 pin 4 |
| 47 | RED | INJ 4 | Fuel injector 4 pin 2 |
| 48 | LT GRN | INJ 3 | Fuel injector 3 pin 2 (PPL at the injector), via F44/F201 pin 1 |

Sheet 1 notes: injectors 1, 3, 5 under the intake manifold on the right bank and 2, 4, 6 on the left; pin 1 of all six is WHT/GRN from fuse 55 (15 A, hot with ignition relay energized, IPDM E/R E119 pin 17) via E2/F32 pin 16. Ignition coils on top of the valve covers (coil pin 3 WHT from the ECM relay output node, pin 2 BLK to ground F16 at the front of the left cylinder bank, spark plug NCA). VIAS solenoid pin 1 RED and purge solenoid pin 2 GRY are on the ECM relay output. Fuse 1 (10 A, hot in ON or START, J/B behind right end of dash, terminal 15P) WHT/RED runs through J/C M06 (upper right centre of dash) and M31/E152 pin 61G to ECM pin 109 IGNSW; fuse 14 (10 A, terminal 5P) WHT/GRN feeds the combination meter; fuse 12 (10 A, E160 pin 1Q) WHT/GRN feeds the ignition switch IG1 circuit.

## F57 — terminals 49-96 (sheet 5)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 49 | GRY | VTCV | ECM relay output node (GRY branch via E2/F32 pin 11); power monitor for the runner control valve |
| 50 | BRN | TCV2 | Intake manifold runner control valve motor pin 1 (rear of intake manifold) |
| 53 | YEL | TCV1 | Intake manifold runner control valve motor pin 2 |
| 54 | ORG | AVCC2-POS TCV POS | Intake manifold runner control valve position sensor pin 3 (supply) |
| 55 | BLU | CVTCR | Intake valve timing control solenoid valve bank 1 pin 1 (LT GRN at the valve), via F26/F225 pin 7 |
| 56 | BLK | CVTCL | Intake valve timing control solenoid valve bank 2 pin 1 |
| 57 | WHT | O2SRR | Heated oxygen sensor 2 bank 1 pin 2 (signal) |
| 58 | GRN | O2SRL | Heated oxygen sensor 2 bank 2 pin 2 (signal) |
| 59 | GRY | GND-O2 | Heated oxygen sensor 2 bank 1 and bank 2 pin 1 (ground) |
| 63 | BRN | PDPRESS | Refrigerant pressure sensor pin 2 (signal), lower right front of engine compartment, via F14/E5 pin 15 |
| 64 | LT GRN | GNDA-PDPRES | Refrigerant pressure sensor pin 1 (ground), via F14/E5 pin 16 |
| 65 | PNK | PSPRES | Power steering pressure sensor pin 2 (signal), near power steering pump |
| 66 | RED | CURSEN | Battery current sensor pin 3 (signal, part of negative battery cable), via F14/E5 pin 7 |
| 68 | BLK | GNDA-CURSEN | Battery current sensor pin 2 (ground), via F14/E5 pin 8 |
| 69 | ORG/BLU | AF+1 (R) | A/F sensor 1 bank 1 pin 1 |
| 70 | YEL | TW | Engine coolant temperature sensor pin 1 (rear of right cylinder bank) |
| 72 | RED | GNDA-PSPRES | Power steering pressure sensor pin 1 (ground) |
| 73 | WHT/BLU | AF-1 (R) | A/F sensor 1 bank 1 pin 2 |
| 74 | LT BLU | TA1 | Mass airflow (MAF) sensor pin 5 (intake air temperature), on intake air duct |
| 75 | PNK | AVCC1-CURSEN | Battery current sensor pin 1 (supply), via F14/E5 pin 24 |
| 76 | BRN | GND-A | Engine coolant temperature sensor pin 2 and engine oil temperature sensor pin 2 (ground), joined |
| 77 | BRN | AF+2 (L) | A/F sensor 1 bank 2 pin 1 |
| 78 | PPL | TO1 | Engine oil temperature sensor pin 1 (right front side of engine block), via E40/E201 pin 9 and F14/E5 pin 12 |
| 79 | GRN | AVCC (PSPRESS) | Power steering pressure sensor pin 3 (supply) |
| 80 | BLK | QA-GNDA-TA1 | MAF sensor pin 3 (ground) |
| 81 | BLK/RED | AF-2 (L) | A/F sensor 1 bank 2 pin 2 |
| 82 | PNK | QA+ | MAF sensor pin 4 |
| 84 | LT GRN | GND-POS TCV POS | Intake manifold runner control valve position sensor pin 2 (ground) |
| 85 | WHT | KNK1 | Knock sensor bank 1 pin 1 (under intake manifold, right bank), via F250/F67 pin 1 |
| 86 | WHT | KNK2 (L) | Knock sensor bank 2 pin 1 (under intake manifold, left bank), via F250/F67 pin 3 |
| 89 | GRN | POS | Crankshaft position sensor pin 2 (signal), lower right rear of engine |
| 91 | SHIELD | GNDA-KNK1 KNK2 | Knock sensor shields (pin 2 of both sensors), via F250/F67 pins 2 and 4 |
| 93 | YEL | PHASE (LH) | Camshaft position sensor bank 2 pin 2 (signal), rear of left cylinder bank |
| 94 | BLU | PHASE (RH) | Camshaft position sensor bank 1 pin 2 (signal), rear of right cylinder bank |
| 96 | PNK | AVCC (PDPRESS) | Refrigerant pressure sensor pin 3 (supply), via F14/E5 pin 17 |

Sheet 3 and 5 notes: A/F sensor 1 bank 1 pins 3 RED heater, 4 WHT/RED heater power (fuse 54), 1 ORG/BLU, 2 WHT/BLU; bank 2 pins 1 BRN, 2 BLK/RED, 3 GRN, 4 WHT/RED. Heated oxygen sensor 2 bank 1 pins 1 GRY, 3 PNK, 2 WHT, 4 WHT/RED; bank 2 pins 3 RED, 2 GRN, 4 WHT/RED, 1 GRY. MAF sensor pins 2 LT GRN (ECM relay power), 4 PNK, 3 BLK, 6 BLK (ground), 5 LT BLU. Camshaft position sensors bank 1 (pins 3 RED power, 2 BLU, 1 BRN) and bank 2 (1 BRN, 3 RED, 2 YEL), both pin 1 to E24. Crankshaft position sensor pins 3 BRN (E24), 1 RED (power), 2 GRN. Intake valve timing control solenoid valves bank 1 (pins 2 RED power, 1 LT GRN) and bank 2 (1 BLK, 2 RED). Intake manifold runner control valve motor pins 2 YEL, 1 BRN with shield NCA to E24; its position sensor pins 1 GRN, 3 ORG, 2 LT GRN. Engine oil temperature sensor pins 1 PPL, 2 BRN. Refrigerant pressure sensor pins 3 PNK, 1 LT GRN, 2 BRN. Battery current sensor pins 1 PNK, 2 BLK, 3 RED. Power steering pressure sensor pins 2 PNK, 1 RED, 3 GRN. Knock sensors pins 1 WHT, 2 SHIELD.

## E55 — terminals 97-128 (sheet 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 97 | RED | APS1 | Accelerator pedal position (APP) sensor 1 pin 3 |
| 98 | GRY | APS2 | APP sensor 2 pin 6 |
| 99 | BLU | AVCC | APP sensor 1 pin 2 (supply) |
| 100 | BLK | GND-A | APP sensor 1 pin 4 (ground) |
| 101 | LT BLU | ASCD SW | Cruise control system |
| 102 | WHT | FTPRS | EVAP control system pressure sensor pin 2 (signal, under left rear of vehicle on EVAP canister), via E41/C1 pin 10C |
| 103 | LT GRN | AVCC2 | APP sensor 2 pin 1 (supply) |
| 104 | PPL | K-LINE | Computer data lines system |
| 106 | GRN | CDCV | EVAP canister vent control valve pin 2, via E41/C1 pin 26C |
| 107 | LT BLU | AVCC2-TPRS | EVAP control system pressure sensor pin 3 (supply), via E41/C1 pin 12C |
| 108 | RED | GNDA-ASCDS | Cruise control system (ground) |
| 109 | WHT/RED | IGNSW | Fuse 1 (10 A, hot in ON or START, J/B terminal 15P), via J/C M06 and M31/E152 pin 61G |
| 111 | YEL | TF | Fuel tank temperature sensor (fuel pump and fuel level sensor unit pin 4, top left side of fuel tank), via E41/C1 pin 1C |
| 112 | BLK | GNDA FTPRS | EVAP control system pressure sensor pin 1 (ground), via E41/C1 pin 11C |
| 113 | PNK | CAN-L | Computer data lines system |
| 114 | BLU | CAN-H | Computer data lines system |
| 116 | TAN | GND A2 | APP sensor 2 pin 5 (ground) |
| 117 | TAN (or GRN) | NEUT | M/T: park/neutral position switch pin 1 (TAN, ORG at the switch, right side of transmission; switch pin 2 BLK/YEL grounds at E15 via F14/E5 pin 4). A/T: combination meter pin 7 (GRN), via M31/E152 pin 36G |
| 121 | RED | VBR | ECM relay output (IPDM E/R E119 pin 4) |
| 122 | LT GRN | BRAKE | Stop lamp switch pin 2 (M/T or A/T switch, top of brake pedal assembly; YEL branch to the exterior lights system); switch pin 1 RED/BLK from fuse 20 (10 A, hot at all times, J/B E160 pin 8Q) |
| 123 | PPL | GND | Ground E24 |
| 124 | GRY | GND | Ground E24 |
| 126 | YEL | BNCSW | Brake pedal position switch pin 2 (top of brake pedal assembly; switch pin 1 WHT/GRN from the ignition switch IG1). On M/T the clutch pedal position switch (pins 1 PPL, 2 YEL, top of clutch pedal assembly) is in the same circuit |
| 127 | BLK | GND | Ground E24 |
| 128 | BRN | GND | Ground E24 |

Sheet 4 notes: APP sensor on top of the accelerator pedal assembly (sensor 1 pins 4 BLK, 3 RED, 2 BLU; sensor 2 pins 5 TAN, 6 GRY, 1 LT GRN). Combination meter (unified meter control unit with information display): pin 16 WHT/GRN from fuse 14, pin 7 GRN park/neutral to ECM pin 117 (A/T), pins 12 BLU and 11 PNK to the computer data lines, pins 9 BRN and 4 BLK/YEL from the fuel level sensor (unit pins 2 BRN and 5 BLK/YEL via E41/C1 pins 13C/14C and M31/E152 pins 67G/66G), pin 23 BLK to ground M57 (upper left end of dash). Fuel pump pin 1 RED from the fuel pump relay (E119 pin 13) via E41/C1 pin 28C, pin 3 BLK to ground E9 (left front of engine compartment). Ground pins 123/124/127/128 are printed "PPL (or GRY) (or BLK) (or BRN)".

## Power supply / relays

IPDM E/R (intelligent power distribution module engine room), right rear of engine compartment: throttle control motor relay on fuse 52 (20 A, hot at all times), coil from ECM pin 34 via E122 pin 47, output E119 pin 6 to ECM pin 1; ECM relay on fuse 53 (20 A, hot at all times), which also feeds ECM pin 26 BATT from E121 pin 30, coil from ECM pin 31 via E119 pin 7, outputs E119 pin 3 (GRN, via F32/E2 pin 10 to the ignition coils pin 3, condenser 1 at top left rear of engine, crank and cam sensor power, the VTC solenoids pin 2, the MAF sensor pin 2, the VIAS and purge solenoids and the GRY branch to ECM pin 49) and E119 pin 4 (RED, to ECM pin 121 VBR and the fuel injector and EVAP vent valve side); fuel pump relay on fuse 48 (15 A, hot with ignition relay energized), coil from ECM pin 43 via E122 pin 46, output E119 pin 13 (RED) to the fuel pump; fuse 55 (15 A, E119 pin 17 WHT/GRN) to the fuel injectors pin 1; fuse 54 (15 A, E119 pin 8 WHT/RED, via E2/F32 pin 1) to the A/F sensor 1 and heated oxygen sensor 2 heater power pin 4. Fuse block (J/B, right end of dash): fuse 1 (10 A, 15P) to ECM pin 109; fuse 14 (10 A, 5P) to the combination meter; fuse 12 (10 A, 1Q) to the ignition switch circuit; fuse 20 (10 A, 8Q) to the stop lamp switch.

## Grounds

- **E24** (right front of engine compartment): ECM pins 12, 16, 123, 124, 127, 128; crankshaft position sensor pin 3; camshaft position sensors bank 1 and bank 2 pin 1; runner control valve motor shield; throttle actuator and APP sensor shields (NCA)
- **F16** (front of left cylinder bank): ignition coils pin 2
- **E9** (left front of engine compartment): fuel pump pin 3
- **E15** (right front of engine compartment): park/neutral position switch pin 2 (M/T)
- **M57** (upper left end of dash): combination meter pin 23
- Per-sensor grounds return to the ECM on dedicated pins: 19 (TPS), 59 (rear O2), 64 (refrigerant), 68 (current sensor), 72 (power steering), 76 (coolant and oil temperature), 80 (MAF), 84 (runner position), 91 (knock shields), 100 and 116 (APP), 108 (cruise), 112 (EVAP pressure)
