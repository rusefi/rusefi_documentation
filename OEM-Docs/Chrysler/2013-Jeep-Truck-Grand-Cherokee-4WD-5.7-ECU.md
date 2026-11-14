# 2013 Jeep Grand Cherokee 4WD V8-5.7L — PCM pinout

Transcribed from [2013-Jeep-Truck-Grand-Cherokee-4WD-5.7-ECU.pdf](2013-Jeep-Truck-Grand-Cherokee-4WD-5.7-ECU.pdf) (ALLDATA "Engine Controls" wiring diagram, Electrical - Interactive Color (Non OE), diagram pages 1-5 = PDF pages 2-6, sheets 416094-416098). The vehicle printed in the source is "2013 Jeep Truck Grand Cherokee 4WD V8-5.7L", which agrees with the file name.

Powertrain Control Module (PCM), located right front of engine compartment. Four connectors, each drawn with terminals numbered 1-38: C1 and C2 (diagram page 1) and C3 and C4 (diagram page 5). The PCM also controls the automatic transmission; the transmission solenoid/pressure switch assembly, speed sensors and line pressure sensor are part of the same diagram.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 38 | Battery and ignition feeds, grounds, CAN C, ASD feed, coils 7-8, injectors 7-8, MDS cylinder 4, fuel tank pressure, oil pressure, MAP/cam 5 V feed, downstream O2 signals |
| C2 | 38 | Coils 1-6, injectors 1-6, MDS cylinder 6, electronic throttle, crank/cam, knock, MAP/ECT/IAT, sensor ground and 5 V feed, upstream O2 signals and heaters, generator |
| C3 | 38 | ASD and fuel pump relay control, MDS cylinders 1 and 7, VCT, downstream O2 heaters, A/C clutch, brake switch, APP sensor, evap purge and monitor switch, oil temperature, starter relay |
| C4 | 38 | Transmission: solenoid controls, pressure switches, TRS, speed sensors, line pressure, temperature, switched battery feeds, grounds |

Chrysler circuit codes (K11, F342, T16, ...) are printed on each wire at the PCM and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark, LT = light). In-line connectors are C101, C161, C192, C267, C315, C316 and C318; TIPM = Totally Integrated Power Module. Unlisted pins are not connected in this diagram.

## C1 (38-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K98 | DK BLU/YEL | COIL ON PLG DRV 8 | Ignition coil 8 pin 1 |
| 3 | K97 | BRN | COIL ON PLG DRV 7 | Ignition coil 7 pin 1 |
| 4 | K28 | BRN/LT BLU | INJECTOR SIG 8 | Fuel injector 8 pin 1 |
| 5 | K26 | BRN/YEL | INJECTOR SIG 7 | Fuel injector 7 pin 1 |
| 9 | Z903 | BLK | GROUND | Ground G903A |
| 10 | A209 | RED | ENG CTRL DRCT BATT FD | S110 -> C161 pin 5 -> TIPM pin 9, fuse M28 (15 A), hot at all times |
| 11 | F202 | PNK/GRY | ENG CTRL RUN STRT IGN | C161 pin 24 -> TIPM C2 pin 22, fuse M33 (10 A), hot with run/start relay energized |
| 12 | F1 | PNK/WHT | IGN ULK/RUN/STRT | C161 pin 34 -> S331: TIPM C1 pin 49 (circuit board IGN ULK/RUN/START); shift lever assembly pin 8 (RUN/STRT) via C192 pin 10 and C267 pin 11 |
| 14 | K917 | BRN/TAN | SNSR RTN 5 | Fuel tank pressure sensor pin A (SNSR RTN 5) via C161 pin 15, C315 pin 6 and C318 pin 13 |
| 18 | Z903 | BLK | GROUND | Ground G903A |
| 19 | Z903 | BLK | GROUND | Ground G903A |
| 20 | G6 | VIO/GRY | OIL PRESSURE SIG | Oil pressure sensor pin 2 (OIL PRESS SIG) |
| 22 | N7 | DK BLU/ORG | PRESS SNS SIG | Fuel tank pressure sensor pin B (PRESS SNSR SIG) via C161 pin 16, C315 pin 16 and C318 pin 14 |
| 24 | A803 | GRY/RED | ALTR SNSE FLNK TO ALT | Starting/charging system |
| 27 | F856 | BRN/YEL | PRIM SENS FD 2 | S125: MAP sensor pin 3 (SNSR FD 2); camshaft position sensor pin 1 (SNSR FD 2); line pressure sensor pin 2 (5 VOLT SPLY); via C161 pin 14 and C315 pin 15 to S392: accelerator pedal position sensor pin 6 (SENS FD 2) and fuel tank pressure sensor pin C (PRIM SNSR FD, via C318 pin 15) |
| 28 | K452 | BRN/LT BLU | SOL MDS CYL 4 | Multi displacement system cylinder 4 solenoid pin 1 via C101 pin 2 |
| 29 | A209 | RED | ENG CTRL DRCT BATT FD | S110 (with pin 10) |
| 31 | K141 | DK BLU/YEL | O2 1/2 SIG | Oxygen sensor 1/2 pin 4 (SNSR SIG) |
| 32 | K902 | BRN/DK GRN | O2 UPSTREAM SENS RTN | S114: oxygen sensor 1/1 pin 3 and oxygen sensor 2/1 pin 3 (SNSR RTN) |
| 33 | K243 | BRN | O2 2/2 SIG | Oxygen sensor 2/2 pin 4 (SNSR SIG) |
| 34 | D65 | WHT/LT GRN | CAN C (+) | Computer data lines system |
| 35 | D64 | WHT/LT BLU | CAN C (-) | Computer data lines system |
| 38 | F342 | BRN/WHT | ASD CTRL FD | Via C161 pin 8 to S333 (auto shutdown relay output via fuse M19, 25 A); the injector feed splices S111/S119 are tied to this wire on the PCM side of C161 |

## C2 (38-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K10 | DK BLU/ORG | COIL ON PLG DRV 6 | Ignition coil 6 pin 1 |
| 2 | K16 | DK BLU/YEL | COIL ON PLG DRV 5 | Ignition coil 5 pin 1 |
| 3 | K15 | DK BLU | COIL ON PLG DRV 4 | Ignition coil 4 pin 1 |
| 4 | K58 | BRN/VIO | INJECTOR SIG 6 | Fuel injector 6 pin 1 |
| 5 | K38 | BRN/ORG | INJECTOR SIG 5 | Fuel injector 5 pin 1 |
| 6 | K124 | DK BLU/GRY | TP MTR POS CTRL | Throttle body pin 1 |
| 7 | K93 | DK BLU/VIO | COIL ON PLG DRV 3 | Ignition coil 3 pin 1 |
| 9 | K85 | DK BLU/WHT | COIL ON PLG DRV 2 | Ignition coil 2 pin 1 |
| 10 | K86 | YEL/DK BLU | COIL ON PLG DRV 1 | Ignition coil 1 pin 1 |
| 11 | K14 | BRN/TAN | INJECTOR SIG 4 | Fuel injector 4 pin 1 |
| 12 | K13 | BRN/LT BLU | INJECTOR SIG 3 | Fuel injector 3 pin 1 |
| 13 | K12 | BRN/DK BLU | INJECTOR SIG 2 | Fuel injector 2 pin 1 |
| 14 | K11 | BRN/YEL | INJECTOR SIG 1 | Fuel injector 1 pin 1 |
| 15 | K922 | BRN/DK BLU | TP SENS RETURN | Throttle body pin 6 (SNSR RTN) |
| 16 | K453 | BRN/RED | SOL MDS CYL 6 | Multi displacement system cylinder 6 solenoid pin 1 via C101 pin 3 (BRN/DK GRN at the solenoid) |
| 17 | K199 | BRN/VIO | O2 2/1UPSTRM HTR FD | Oxygen sensor 2/1 pin 1 (HTR FD) |
| 18 | K99 | BRN/TAN | O2 1/1 UPSTRM HTR FD | Oxygen sensor 1/1 pin 1 (HTR FD) |
| 19 | K125 | BRN/PNK | GEN SOURCE FD | Starting/charging system |
| 20 | K2 | VIO/ORG | COOL TEMP SENS SIG | Engine coolant temperature sensor pin 1 |
| 21 | K22 | BRN | TP SENS SIG 1 | Throttle body pin 5 (SIG 1) |
| 23 | K1 | DK GRN/RED | MAP SENS SIG | MAP sensor pin 1 (MAP SNSR SIG) |
| 24 | K942 | BRN/LT GRN | KNOCK SENS 1 RETURN | Left knock sensor 1 pin 2 |
| 25 | K42 | DK BLU/ORG | KNOCK SENS 1 SIG | Left knock sensor 1 pin 1 |
| 27 | K900 | DK BLU/DK GRN | ENG CTRL COM SENS RTN | S113/S123 splice group: crankshaft position sensor pin 2, camshaft position sensor pin 2, oil pressure sensor pin 3, MAP sensor pin 2, ECT sensor pin 2, IAT sensor pin 2, oil temperature sensor pin 2, line pressure sensor pin 1 (SENS RTN), transmission solenoid/pressure switch assembly pin 22 (SENS RTN), shift lever assembly pin 2 (SENS RTN) via C161 pin 28, C192 pin 3 and C267 pin 12 |
| 28 | K122 | BRN/DK GRN | TP SENS SIG 2 | Throttle body pin 3 (SIG 2) |
| 29 | F855 | BRN/ORG | PRIM SENS FD 1 | S124: throttle body pin 4 (SNSR FD 1); crankshaft position sensor pin 1 (SNSR FD 1); oil pressure sensor pin 1 (SNSR FD 1); accelerator pedal position sensor pin 1 (SNSR FD1) via C161 pin 13 and C315 pin 14 |
| 30 | K21 | LT GRN/WHT | IAT SENS SIG | Intake air temperature sensor pin 1 |
| 31 | K41 | DK BLU/LT BLU | O2 1/1 SIG | Oxygen sensor 1/1 pin 4 (SNSR SIG) |
| 32 | K904 | LT BLU/GRY | O2 DOWNSTREAM SENS RTN | S115: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 (SNSR RTN) |
| 33 | K43 | LT GRN/DK BLU | O2 2/1 UPDTRM SENS SIG | Oxygen sensor 2/1 pin 4 (SNSR SIG) |
| 34 | K44 | GRY/DK BLU | CMP SENS SIG | Camshaft position sensor pin 3 (SNSR SIG) |
| 35 | K24 | BRN/LT BLU | CRK SPD SENS O/P | Crankshaft position sensor pin 3 (CRK SPD SNSR O/P) |
| 36 | K242 | BRN/WHT | KNOCK SENS 2 SIG | Right knock sensor 2 pin 1 |
| 37 | K924 | PNK/RED | KNOCK SENS 2 RETURN | Right knock sensor 2 pin 2 |
| 38 | K126 | DK BLU/LT GRN | TP MTR NEG CTRL | Throttle body pin 2 |

## C3 (38-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | K51 | BRN/WHT | ASD RTN | Auto shutdown relay coil terminal 86 (TIPM C2 pin 14) |
| 5 | K454 | BRN/ORG | SOL MDS CYL7 | Multi displacement system cylinder 7 solenoid pin 1 via C161 pin 32 and C101 pin 4 |
| 6 | K451 | BRN/WHT | SOL MDS CYL1 | Multi displacement system cylinder 1 solenoid pin 1 via C161 pin 31 and C101 pin 1 |
| 8 | K442 | DK BLU | VCT SIG | Variable camshaft timing solenoid pin 2 via C161 pin 30 and C101 pin 5 |
| 9 | K299 | BRN/WHT | O2 (1/2) DWNSTRM HTR FD | Oxygen sensor 1/2 pin 1 (HTR FD) via C161 pin 29 |
| 10 | K399 | BRN/GRY | O2 (2/2) DWNSTRM HTR FD | Oxygen sensor 2/2 pin 1 (HTR FD) via C161 pin 23 |
| 11 | C13 | LT BLU/ORG | A/C CLUTCH COIL | TIPM C1 pin 6 (circuit board A/C CLUTCH COIL) |
| 14 | B16 | LT BLU/DK GRN | BRK ACTV SNSE SIG 2 | Stop lamp switch pin 4 (BRK ACTV SNSE SIG 2) via C315 pin 39 |
| 16 | K167 | BRN/YEL | APPS 1 RETURN | Accelerator pedal position sensor pin 3 (APP 1 RTN) via C315 pin 51 |
| 17 | K400 | BRN/VIO | APPS 2 RETURN | Accelerator pedal position sensor pin 4 (APP 2 RTN) via C315 pin 1 |
| 19 | F342 | BRN/WHT | ASD CTRL FD 1 | S333 (auto shutdown relay output via fuse M19, 25 A) |
| 20 | K52 | DK BLU/WHT | PWM PRG SIG | Evap/purge solenoid pin 1 |
| 23 | B15 | DK GRN/WHT | BRK ACTV SNSE SIG | Stop lamp switch pin 6 (BRK ACTV SNSE SIG) via C315 pin 40 |
| 25 | K23 | BRN/WHT | APP 1 SIG | Accelerator pedal position sensor pin 2 (APP 1 SIG) via C315 pin 2 |
| 28 | F342 | BRN/WHT | ASD CTRL FD 1 | S333 (auto shutdown relay output via fuse M19, 25 A) |
| 29 | K70 | DK BLU/BRN | PWM PRG SOL RTN | Evap/purge solenoid pin 2 |
| 33 | G24 | VIO/BRN | OIL TEMPERATURE SIG | Oil temperature sensor pin 1 via C161 pin 11 |
| 35 | K107 | VIO/WHT | STRK SENSE SIG | Evap system monitor switch pin 2 (SNSE SIG) via C315 pin 13 |
| 36 | K29 | WHT/BRN | APPS 2 SIG | Accelerator pedal position sensor pin 5 (APP 2 SIG) via C315 pin 22 |
| 37 | K31 | BRN | FUEL PUMP CTRL | Fuel pump relay coil terminal 86 (TIPM C1 pin 40) |
| 38 | T752 | DK GRN/ORG | STRTR RLY COIL RTN | Starting/charging system |

## C4 (38-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | T60 | YEL/GRY | OD SOLENOID CTRL | Transmission solenoid/pressure switch assembly pin 7 (OD CTRL) |
| 2 | T259 | YEL | 4C CTRL | Transmission solenoid/pressure switch assembly pin 19 (4C CTRL) |
| 4 | T140 | YEL/PNK | TRANS MS FR LR | Transmission solenoid/pressure switch assembly pin 21 (MS CTRL) |
| 6 | T219 | YEL/LT GRN | 2C SOLENOID CTRL | Transmission solenoid/pressure switch assembly pin 20 (2C CTRL) |
| 8 | T59 | YEL/LT BLU | UD SOLENOID CTRL | Transmission solenoid/pressure switch assembly pin 17 (UD CTRL) |
| 10 | T20 | WHT/DK GRN | LR/CC CTRL | Transmission solenoid/pressure switch assembly pin 2 (L/R CTRL) |
| 11 | T118 | DK GRN | LP VFS CTRL | Transmission solenoid/pressure switch assembly pin 12 (LP VFS CTRL) |
| 12 | Z903 | BLK | GROUND | Ground G903A |
| 13 | Z903 | BLK | GROUND | Ground G903A |
| 14 | Z903 | BLK | GROUND | Ground G903A |
| 15 | T1 | LT BLU/VIO | TRS T1 | Transmission solenoid/pressure switch assembly pin 9 (TRS T1) |
| 16 | T3 | LT BLU/YEL | TRS T3 | Transmission solenoid/pressure switch assembly pin 8 (TRS T3) |
| 18 | T15 | YEL/VIO | ASD RLY FD | Transmission control relay coil terminal 86 via C161 pin 33 and TIPM pin 10 |
| 19 | T16 | YEL/ORG | SW BATT FD | S117 (transmission control relay output via fuse J18, 20 A) |
| 20 | T48 | BRN/YEL | 4C PRESSURE SW SNS | Transmission solenoid/pressure switch assembly pin 11 (4C PRE SIG) |
| 21 | T29 | YEL/WHT | UD PRESSURE SW SNS | Transmission solenoid/pressure switch assembly pin 18 (UD PRE SIG) |
| 22 | T9 | DK GRN/TAN | OD PRESSURE SW SNS | Transmission solenoid/pressure switch assembly pin 16 (OD PRE SIG) |
| 26 | T4 | DK GRN/LT BLU | TRS T4 | Transmission solenoid/pressure switch assembly pin 13 (TRS T4) |
| 27 | T41 | YEL/DK BLU | P/N SIG | Transmission solenoid/pressure switch assembly pin 4 (P/N SIG) |
| 28 | T16 | YEL/ORG | SW BATT FD | S117 (transmission control relay output via fuse J18, 20 A) |
| 29 | T50 | YEL/TAN | L/R PRESSURE SW SNS | Transmission solenoid/pressure switch assembly pin 14 (L/R PRE SIG) |
| 30 | T147 | DK GRN/YEL | 2C PRESSURE SW SNS | Transmission solenoid/pressure switch assembly pin 15 (2C PRE SIG) |
| 31 | T38 | YEL/BRN | LINE PRESS SENS SIG | Line pressure sensor pin 3 (LINE SENS) |
| 32 | T14 | DK GRN/BRN | OUTPUT SPEED SIG | Output speed sensor pin 1 |
| 33 | T52 | DK GRN/WHT | INPUT SPEED SIG | Input speed sensor pin 1 |
| 34 | T13 | DK GRN/VIO | SPEED SENS RTN | S116: input speed sensor pin 2 and output speed sensor pin 2 |
| 35 | T54 | DK GRN/ORG | TRANSMISSION TEMP SIG | Transmission solenoid/pressure switch assembly pin 23 (TRNS TEMP SIG) |
| 37 | T42 | DK GRN/RED | TRS T42 | Transmission solenoid/pressure switch assembly pin 5 (TRS T42) |
| 38 | T16 | YEL/ORG | SW BATT FD | S117 (transmission control relay output via fuse J18, 20 A) |

## Component locations

Totally Integrated Power Module — left side of engine compartment; throttle body — top of front of engine; right knock sensor 2 — lower center of right side of engine; left knock sensor 1 — lower center of left side of engine; MAP sensor — right rear of engine; stop lamp switch — on brake pedal assembly; oxygen sensors 2/2 and 2/1 — right side of engine, in exhaust; oxygen sensors 1/2 and 1/1 — left side of engine, in exhaust; fuel pump module — top of fuel tank; intake air temperature sensor — top front of engine; crankshaft position sensor — front of left cylinder bank; camshaft position sensor — front of right cylinder bank; oil pressure sensor — left side of engine; oil temperature sensor — lower right front of engine; accelerator pedal position sensor — base of accelerator pedal; line pressure sensor — right rear of transmission; ignition capacitor — rear of top of left cylinder bank; ignition capacitor 2 — rear of top of right cylinder bank; engine coolant temperature sensor — top front of engine; fuel injectors — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) cylinder banks; ignition coils — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) cylinder banks; input and output speed sensors — left side of transmission; MDS cylinder 4/6/7/1 solenoids — under engine; variable camshaft timing solenoid — left front of engine; evap/purge solenoid — left side of engine compartment; evap system monitor switch — under left rear of vehicle. No location is printed for the fuel level sensor, fuel tank pressure sensor, shift lever assembly, transmission solenoid/pressure switch assembly, cluster or the splices.

## Component pinouts as printed

- Throttle body — 1 TP MTR POS CTRL (DK BLU/GRY), 2 TP MTR NEG CTRL (DK BLU/LT GRN), 3 SIG 2 (BRN/DK GRN), 4 SNSR FD 1 (BRN/ORG), 5 SIG 1 (BRN), 6 SNSR RTN (BRN/DK BLU).
- Accelerator pedal position sensor — 1 SNSR FD1 (BRN/ORG), 2 APP 1 SIG (BRN/WHT), 3 APP 1 RTN (BRN/YEL), 4 APP 2 RTN (BRN/VIO), 5 APP 2 SIG (WHT/BRN), 6 SENS FD 2 (BRN/YEL). All six wires pass through C315 (pins 14, 2, 51, 1, 22 and 15 respectively).
- Crankshaft position sensor — 1 SNSR FD 1 (BRN/ORG), 2 SNSR RTN (DK BLU/DK GRN), 3 CRK SPD SNSR O/P (BRN/LT BLU).
- Camshaft position sensor — 1 SNSR FD 2 (BRN/YEL), 2 SNSR RTN (DK BLU/DK GRN), 3 SNSR SIG (GRY/DK BLU).
- MAP sensor — 1 MAP SNSR SIG (DK GRN/RED), 2 SNSR RTN (DK BLU/DK GRN), 3 SNSR FD 2 (BRN/YEL).
- Oil pressure sensor — 1 SNSR FD 1 (BRN/ORG), 2 OIL PRESS SIG (VIO/GRY), 3 SNSR RTN (DK BLU/DK GRN).
- Oil temperature sensor — 1 VIO/BRN, 2 DK BLU/DK GRN. ECT sensor — 1 VIO/ORG, 2 DK BLU/DK GRN. IAT sensor — 1 LT GRN/WHT, 2 DK BLU/DK GRN.
- Knock sensors — 1 KNOCK SENS SIG, 2 KNOCK SENS RETURN (sensor 1: DK BLU/ORG, BRN/LT GRN; sensor 2: BRN/WHT, PNK/RED).
- Oxygen sensors — 1 HTR FD, 2 GND (BLK to S122 / G903A), 3 SNSR RTN, 4 SNSR SIG. 1/1: BRN/TAN, BLK, BRN/DK GRN, DK BLU/LT BLU. 2/1: BRN/VIO, BLK, BRN/DK GRN, LT GRN/DK BLU. 1/2: BRN/WHT, BLK, LT BLU/GRY, DK BLU/YEL. 2/2: BRN/GRY, BLK, LT BLU/GRY, BRN.
- Fuel injectors — 1 PCM driver, 2 BRN/WHT (S111/S119). Ignition coils — 1 PCM driver, 2 BRN/YEL (S120/S121). Ignition capacitors — 1 ASD CTRL FD 3 (BRN/YEL).
- MDS solenoids — 1 PCM driver (cyl 4 BRN/LT BLU, cyl 6 BRN/DK GRN, cyl 7 BRN/ORG, cyl 1 BRN/WHT), 2 BLK. Variable camshaft timing solenoid — 1 BLK, 2 DK BLU. The BLK wires join at S157 and run through C101 pin 6 and S122 to G903A.
- Evap/purge solenoid — 1 DK BLU/WHT, 2 DK BLU/BRN. Evap system monitor switch — 1 GND (BLK to G916A), 2 SNSE SIG (VIO/WHT).
- Fuel tank pressure sensor — A SNSR RTN 5 (BRN/TAN), B PRESS SNSR SIG (DK BLU/ORG), C PRIM SNSR FD (BRN/YEL; BRN/DK BLU on the other side of C318 pin 15).
- Line pressure sensor — 1 SENS RTN (DK BLU/DK GRN), 2 5 VOLT SPLY (BRN/YEL), 3 LINE SENS (YEL/BRN).
- Input speed sensor — 1 DK GRN/WHT, 2 DK GRN/VIO. Output speed sensor — 1 DK GRN/BRN, 2 DK GRN/VIO.
- Stop lamp switch — 1 CLSTR/CHMSL BATT FD (TAN/RED), 4 BRK ACTV SNSE SIG 2 (LT BLU/DK GRN), 5 GND (BLK to G923A), 6 BRK ACTV SNSE SIG (DK GRN/WHT).
- Shift lever assembly — 2 SENS RTN (DK BLU/DK GRN), 8 RUN/STRT (PNK/WHT).
- Transmission solenoid/pressure switch assembly — 2 L/R CTRL (WHT/DK GRN), 4 P/N SIG (YEL/DK BLU), 5 TRS T42 (DK GRN/RED), 7 OD CTRL (YEL/GRY), 8 TRS T3 (LT BLU/YEL), 9 TRS T1 (LT BLU/VIO), 10 BATT FD (YEL/ORG, to S117), 11 4C PRE SIG (BRN/YEL), 12 LP VFS CTRL (DK GRN), 13 TRS T4 (DK GRN/LT BLU), 14 L/R PRE SIG (YEL/TAN), 15 2C PRE SIG (DK GRN/YEL), 16 OD PRE SIG (DK GRN/TAN), 17 UD CTRL (YEL/LT BLU), 18 UD PRE SIG (YEL/WHT), 19 4C CTRL (YEL), 20 2C CTRL (YEL/LT GRN), 21 MS CTRL (YEL/PNK), 22 SENS RTN (DK BLU/DK GRN), 23 TRNS TEMP SIG (DK GRN/ORG).

## Power supply / relays (pages 1, 2 and 5)

Totally Integrated Power Module, left side of engine compartment. Internal TIPM paths are printed without wire colors (NCA).

- **Auto shutdown relay** — terminal 30 fed from the bus bar (hot at all times). Terminal 87 feeds fuse M19 (25 A) and fuse M21 (20 A). Fuse M19 -> TIPM C5 pin 9 (BRN/WHT) -> C316 pin 9 -> S333 -> PCM C3-19 and C3-28 (ASD CTRL FD 1) and, via C161 pin 8, PCM C1-38 (F342, ASD CTRL FD) and the fuel injector pin 2 splices S111/S119. Fuse M21 -> TIPM C2 pin 3 (BRN/YEL) -> C161 pin 7 -> S120/S121 -> ignition coils pin 2 and ignition capacitors 1 and 2. Relay coil: terminal 85 from the TIPM circuit board (ASCD CTRL); terminal 86 -> TIPM C2 pin 14 (BRN/WHT, K51) -> PCM C3-3 (ASD RTN).
- **Fuel pump relay** — terminal 30 fed from the bus bar (hot at all times). Terminal 87 -> fuse M25 (20 A) -> TIPM C5 pin 10 (DK BLU/ORG, N1) -> C318 pin 8 -> fuel pump module pin 4 (PMP MTR FD). Terminal 87A is not connected. Relay coil: terminal 85 from the TIPM circuit board (PMP RLY FD); terminal 86 -> TIPM C1 pin 40 (BRN, K31) -> PCM C3-37 (FUEL PUMP CTRL).
- **Transmission control relay** — terminal 30 hot at all times. Terminal 87 -> fuse J18 (20 A) -> TIPM C2 pin 26 (YEL/ORG, T16) -> C161 pin 6 -> S117 -> PCM C4-19, C4-28 and C4-38 (SW BATT FD) and transmission solenoid/pressure switch assembly pin 10 (BATT FD). Relay coil: terminal 85 -> G306; terminal 86 -> TIPM pin 10 (YEL/VIO, T15) -> C161 pin 33 -> PCM C4-18.
- **Fuse M28 (15 A)**, hot at all times -> TIPM pin 9 (RED) -> C161 pin 5 -> S110 -> PCM C1-10 and C1-29 (A209, ENG CTRL DRCT BATT FD).
- **Fuse M33 (10 A)**, hot with run/start relay energized -> TIPM C2 pin 22 (PNK/GRY) -> C161 pin 24 -> PCM C1-11 (F202, ENG CTRL RUN STRT IGN).
- **Fuse M01 (15 A)**, hot at all times -> TIPM C6 pin 31 (TAN/RED) -> stop lamp switch pin 1 (CLSTR/CHMSL BATT FD).
- **TIPM circuit board** — IGN ULK/RUN/START -> TIPM C1 pin 49 (PNK/WHT, F1) -> S331; A/C CLUTCH COIL -> TIPM C1 pin 6 (LT BLU/ORG, C13) -> PCM C3-11; CAN C (+) pin 16 (WHT/LT GRN, D65) and CAN C (-) pin 15 (WHT/LT BLU, D64) to the computer data lines system; fuel level inputs on pins 34, 7 and 19 (see below).

TIPM connector names that are only implied: pin 9 (fuse M28) is joined by a dashed grouping line to pin 14, which is labelled C2. Pins 10 (T15), 16 and 15 (CAN C) are joined by a dashed grouping line to pin 6, which is labelled C1. Pins 34 and 7 are drawn beside pin 19, which is labelled C7, without a label of their own.

Grounds: G903A — right front of engine compartment (PCM C1-9/18/19 and C4-12/13/14; via S122 all four oxygen sensor GND pins and the MDS/VCT solenoid grounds); G916A — base of left "C" pillar (fuel pump module pin 1 via C318 pin 1, circuit Z916; evap system monitor switch pin 1); G923A — left "D" pillar (stop lamp switch pin 5); G306 — transmission control relay coil (no location printed).

Other modules on the same diagram (not PCM pins): fuel level sensor pins 2 LVL SNSR RTN (BLK/WHT) and 3 FUEL SNDL LVL SECONDARY (DK BLU/GRY), and fuel pump module pins 2 LVL SNSR RTN (BLK/WHT) and 3 FL SNDR SIG PMRY (DK BLU/WHT), report to the TIPM circuit board, not the PCM: BLK/WHT wires join at S381 -> C318 pin 2 -> BLK, G109 -> TIPM pin 34; DK BLU/WHT -> C318 pin 4 -> N4 -> TIPM pin 7 (PRMRY SIG); DK BLU/GRY -> C318 pin 5 -> N5 -> TIPM C7 pin 19. Cluster connector C1 pins 1 CAN IHS (+) (WHT/GRY) and 2 CAN IHS (-) (WHT/ORG) go to the computer data lines system.

## Notes

- PCM C4-18 is printed "ASD RLY FD", but circuit T15 runs to the transmission control relay coil; the auto shutdown relay coil is on C3-3 (K51).
- The TIPM labels for the fuel level circuits disagree with the sensor-end labels: the wire from both LVL SNSR RTN terminals (G109) lands on TIPM pin 34, printed SCNDRY SIG, while the wire from FUEL SNDL LVL SECONDARY (N5) lands on TIPM pin 19, printed SNSR RTN.
- Wire color changes at in-line connectors as drawn: MDS cylinder 6 is BRN/DK GRN at the solenoid and BRN/RED (K453) from C101 pin 3 to the PCM; the fuel tank pressure sensor feed is BRN/YEL at the sensor and BRN/DK BLU from C318 pin 15 to S392.
- Function text is kept as printed, including "O2 2/1 UPDTRM SENS SIG" (C2-33), "O2 2/1UPSTRM HTR FD" (C2-17) and "ASCD CTRL" (TIPM).
- Splices drawn as dots joined by dashed lines are treated as one splice; only one dot of each group carries a name (S111/S119, S113/S123, S120/S121, S122, S124, S125, S157). The dot where the S125 feed branches to C161 pin 14 and the line pressure sensor has no name printed.
- The stop lamp switch, shift lever assembly, cluster and TIPM are drawn with dashed outlines (partial views); only the terminals listed here appear.
