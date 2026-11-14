# 2013 Dodge Durango 4WD V8-5.7L — PCM pinout

Transcribed from [2013-Dodge-or-Ram-Truck-Durango-4WD-5.7-ECU.pdf](2013-Dodge-or-Ram-Truck-Durango-4WD-5.7-ECU.pdf) (ALLDATA "Engine Controls" wiring diagram, Powertrain Management, Electrical - Interactive Color (Non OE), diagram pages 1-5 = PDF pages 2-6, sheets 414587-414591; PDF page 1 carries only the title). The vehicle printed in the PDF, "2013 Dodge or Ram Truck Durango 4WD V8-5.7L", agrees with the file name.

Powertrain Control Module (PCM), located right front of engine compartment. Four 38-way connectors: C1 and C2 (engine side, diagram page 1) and C3 and C4 (chassis and transmission side, diagram page 5). The PCM also drives the automatic transmission; the transmission solenoid/pressure switch assembly, speed sensors and line pressure sensor are part of this diagram.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 38 | Battery and ignition feeds, grounds, CAN C, coil drivers 7-8, injectors 7-8, MDS cylinder 4, oil pressure, tank pressure, downstream O2 signals, 5 V reference F856, ASD feed |
| C2 | 38 | Coil drivers 1-6, injectors 1-6, electronic throttle, MDS cylinder 6, crank/cam, knock, MAP/ECT/IAT, upstream O2 signals and heaters, 5 V supply F855, sensor ground, generator |
| C3 | 38 | ASD relay control and ASD feeds, MDS cylinders 1 and 7, VCT, downstream O2 heaters, A/C clutch, brake switch, APP sensor, purge solenoid, evap monitor switch, oil temperature, fuel pump relay, starter relay |
| C4 | 38 | Transmission solenoids, pressure switches, range sensor, line pressure, input/output speed, transmission temperature, transmission control relay, grounds |

Chrysler circuit codes (K11, F342, T16, ...) are printed on each wire at the PCM and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, YEL yellow, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK BLU / LT BLU dark / light blue; DK GRN / LT GRN dark / light green). The Wire column gives the color printed at the PCM; a different color printed at the far end is noted in the Connects to column. Unlisted pins are not connected in this diagram.

"TIPM" below is the Totally Integrated Power Module (right side of engine compartment). Inline connectors C130, C141, C172, C173, C192, C267 and I6602A are named as printed; the diagram gives no location for them.

## C1 (38-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K98 | DK BLU/YEL | COIL ON PLG DRV 8 | Ignition coil 8 pin 1 |
| 3 | K97 | BRN | COIL ON PLG DRV 7 | Ignition coil 7 pin 1 |
| 4 | K28 | BRN/LT BLU | INJECTOR SIG 8 | Fuel injector 8 pin 1 |
| 5 | K26 | BRN/YEL | INJECTOR SIG 7 | Fuel injector 7 pin 1 |
| 9 | Z903 | BLK | GROUND | Ground G903A |
| 10 | A209 | RED | ENG CTRL DRCT BATT FD | S4500 -> C130 pin 5 -> TIPM pin 9, fuse M28 (15 A), hot at all times |
| 11 | F202 | PNK/GRY | ENG CTRL RUN STRT IGN | C130 pin 24 -> TIPM C2 pin 22, fuse M33 (10 A), hot with run/start relay energized |
| 12 | F1 | PNK/WHT | IGN ULK/RUN/STRT | C130 pin 34 -> SF1: TIPM C1 pin 49 (circuit board IGN ULK/RUN/START); shift lever assembly pin 8 (RUN/STRT) via C192 pin 10 and C267 pin 11 |
| 14 | K917 | BRN/TAN | SNSR RTN 5 | Tank pressure sensor pin A (SNSR GND) via C130 pin 15, C172 pin 6 and I6602A pin 13 |
| 18 | Z903 | BLK | GROUND | Ground G903A |
| 19 | Z903 | BLK | GROUND | Ground G903A |
| 20 | G6 | VIO/GRY | OIL PRESSURE SIG | Oil pressure sensor pin 2 |
| 22 | N7 | DK BLU/ORG | PRESS SNS SIG | Tank pressure sensor pin B (PRESS SNSR SIG) via C130 pin 16, C172 pin 16 and I6602A pin 14 |
| 24 | A803 | GRY/RED | B(+) | Starting/charging system |
| 27 | F856 | BRN/YEL | 5V REF | S4516: MAP sensor pin 3; camshaft position sensor pin 1; line pressure sensor pin 2 (5 VOLT SPLY); and via C130 pin 14 / C172 pin 15 to SK856: accelerator pedal position sensor pin 6 (SENS FD 2) and tank pressure sensor pin C (5V REF, circuit K856, via I6602A pin 15) |
| 28 | K452 | BRN/LT BLU | SOL MDS CYL 4 | Multi displacement system cylinder 4 solenoid pin 1 via C141 pin 2 |
| 29 | A209 | RED | ENG CTRL DRCT BATT FD | S4500 (same feed as pin 10) |
| 31 | K141 | DK BLU/YEL | O2 1/2 SIG | Oxygen sensor 1/2 pin 4 |
| 32 | K902 | BRN/DK GRN | O2 UPSTREAM SENS RTN | S4506: oxygen sensor 1/1 pin 3 and oxygen sensor 2/1 pin 3 |
| 33 | K243 | BRN | O2 2/2 SIG | Oxygen sensor 2/2 pin 4 |
| 34 | D65 | WHT/LT GRN | CAN C (+) | Computer data lines system |
| 35 | D64 | WHT/LT BLU | CAN C (-) | Computer data lines system |
| 38 | F342 | BRN/WHT | ASD CTRL FD | S4511 (ASD relay output via fuse M19, see power supply section) |

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
| 10 | K19 | YEL/DK BLU | COIL ON PLG DRV 1 | Ignition coil 1 pin 1 |
| 11 | K14 | BRN/TAN | INJECTOR SIG 4 | Fuel injector 4 pin 1 |
| 12 | K13 | BRN/LT BLU | INJECTOR SIG 3 | Fuel injector 3 pin 1 |
| 13 | K12 | BRN/DK BLU | INJECTOR SIG 2 | Fuel injector 2 pin 1 |
| 14 | K11 | BRN/YEL | INJECTOR SIG 1 | Fuel injector 1 pin 1 |
| 15 | K922 | BRN/DK BLU | TP SENS RETURN | Throttle body pin 6 |
| 16 | K453 | BRN/RED | SOL MDS CYL 6 | Multi displacement system cylinder 6 solenoid pin 1 via C141 pin 3 (BRN/DK GRN at solenoid) |
| 17 | K199 | BRN/VIO | O2 2/1UPSTRM HTR FD | Oxygen sensor 2/1 pin 1 |
| 18 | K99 | BRN/TAN | O2 1/1 UPSTRM HTR FD | Oxygen sensor 1/1 pin 1 |
| 19 | K125 | BRN/PNK | GEN SOURCE FD | Starting/charging system |
| 20 | K2 | VIO/ORG | COOL TEMP SENS SIG | Engine coolant temperature sensor pin 1 |
| 21 | K22 | BRN | TP SENS SIG 1 | Throttle body pin 5 |
| 23 | K1 | DK GRN/RED | MAP SENS SIG | Manifold absolute pressure sensor pin 1 |
| 24 | K942 | BRN/LT GRN | KNOCK SENS 1 RETURN | Knock sensor 1 pin 2 |
| 25 | K42 | DK BLU/ORG | KNOCK SENS 1 SIG | Knock sensor 1 pin 1 |
| 27 | K900 | DK BLU/DK GRN | SENS GND | S4505 / S4513: crankshaft position sensor pin 2, camshaft position sensor pin 2, oil pressure sensor pin 3, IAT sensor pin 2, MAP sensor pin 2, ECT sensor pin 2, oil temperature sensor pin 2, line pressure sensor pin 1 (SENS GND), transmission solenoid/pressure switch assembly pin 22 (SENS GND), shift lever assembly pin 2 (SENS RTN) via C130 pin 28, C192 pin 3 and C267 pin 12 |
| 28 | K122 | BRN/DK GRN | TP SENS SIG 2 | Throttle body pin 3 |
| 29 | F855 | BRN/ORG | PRIM SENS FD 1 | S4515: throttle body pin 4; crankshaft position sensor pin 1; oil pressure sensor pin 1; accelerator pedal position sensor pin 1 (5V SPLY) via C130 pin 13 and C172 pin 14 |
| 30 | K21 | LT GRN/WHT | IAT SENS SIG | Intake air temperature sensor pin 1 |
| 31 | K41 | DK BLU/LT BLU | O2 1/1 SIG | Oxygen sensor 1/1 pin 4 |
| 32 | K904 | LT BLU/GRY | O2 DOWNSTREAM SENS RTN | S4507: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 |
| 33 | K43 | LT GRN/DK BLU | O2 2/1 UPDTRM SENS SIG | Oxygen sensor 2/1 pin 4 |
| 34 | K44 | GRY/DK BLU | CMP SENS SIG | Camshaft position sensor pin 3 |
| 35 | K24 | BRN/LT BLU | CRK SPD SENS O/P | Crankshaft position sensor pin 3 |
| 36 | K242 | BRN/WHT | KNOCK SENS 2 SIG | Knock sensor 2 pin 1 (KNOCK SENS 2 SIG) |
| 37 | K924 | PNK/RED | KNOCK SENS 2 RETURN | Knock sensor 2 pin 2 (KNOCK SENS 2 RETURN) |
| 38 | K126 | DK BLU/LT GRN | TP MTR NEG CTRL | Throttle body pin 2 |

"UPDTRM" at pin 33 is the source's spelling.

Component locations (diagram pages 1-3): throttle body — top front of engine; knock sensor 1 — left side of engine block; knock sensor 2 — right side of engine block; MAP sensor — right rear of engine; oxygen sensor 1/1 — in left exhaust, upstream of catalytic converter; 1/2 — in left exhaust, downstream; 2/1 — in right exhaust, upstream; 2/2 — in right exhaust, downstream; intake air temperature sensor — top front of engine; tank pressure sensor, fuel pump module, fuel level sensor — top of fuel tank; crankshaft position sensor — left side of engine; camshaft position sensor — front of right cylinder bank; oil pressure sensor, oil temperature sensor — right front of engine; engine coolant temperature sensor — front of engine; fuel injectors — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) cylinder banks; ignition coils — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) cylinder bank valve covers; ignition capacitor — rear of left cylinder bank; ignition capacitor 2 — rear of right cylinder bank. Splices: S4515 — engine harness, right front of engine; S4516 — engine harness, right side of engine; S4506, S4501 — engine harness, right rear of engine; S4505 — engine harness, right side of engine (the same note's arrow points at S4513); S4511, S4512 — engine harness, left rear of engine; S4502 — engine harness, center rear of engine. No location is printed for S4500, SF1, S4507, S4510 or S01A.

Sensor pinouts as printed (colors at the component):

- Throttle body (pin functions are not printed at the component) — 1 DK BLU/GRY, 2 DK BLU/LT GRN (unlabelled at the component; traced from C2-38), 3 BRN/DK GRN, 4 BRN/ORG, 5 BRN, 6 BRN/DK BLU.
- Knock sensor 1 — 1 KNOCK SENS 1 SIG (DK BLU/ORG), 2 KNOCK SENS 1 RETURN (BRN/LT GRN). Knock sensor 2 — 1 KNOCK SENS 2 SIG (BRN/WHT), 2 KNOCK SENS 2 RETURN (PNK/RED).
- MAP sensor — 1 DK GRN/RED, 2 DK BLU/DK GRN, 3 BRN/YEL.
- Crankshaft position sensor — 1 BRN/ORG, 2 DK BLU/DK GRN, 3 BRN/LT BLU. Camshaft position sensor — 1 BRN/YEL, 2 DK BLU/DK GRN, 3 GRY/DK BLU.
- Oil pressure sensor — 1 BRN/ORG, 2 VIO/GRY, 3 DK BLU/DK GRN. Oil temperature sensor — 1 VIO/BRN, 2 DK BLU/DK GRN.
- ECT sensor — 1 VIO/ORG, 2 DK BLU/DK GRN. IAT sensor — 1 LT GRN/WHT, 2 DK BLU/DK GRN.
- Oxygen sensor 1/1 — 1 BRN/TAN, 2 BLK, 3 BRN/DK GRN, 4 DK BLU/LT BLU. Oxygen sensor 2/1 — 1 BRN/VIO, 2 BLK, 3 BRN/DK GRN, 4 LT GRN/DK BLU. Oxygen sensor 1/2 — 1 BRN/WHT, 2 BLK, 3 LT BLU/GRY, 4 DK BLU/YEL. Oxygen sensor 2/2 — 1 BRN/GRY, 2 BLK, 3 LT BLU/GRY, 4 BRN. All four pin 2 wires join at S4510 to ground G903A.
- Tank pressure sensor — A SNSR GND (BRN/TAN, K917), B PRESS SNSR SIG (DK BLU/ORG, N7), C 5V REF (BRN/YEL, K856).
- Fuel injectors — 1 PCM driver, 2 BRN/WHT (ASD output). Ignition coils — 1 PCM driver, 2 BRN/YEL (ASD output). Ignition capacitors — 1 BRN/YEL, other side grounded at the component.

## C3 (38-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | K51 | BRN/WHT | ASD RTN | TIPM C2 pin 14 (auto shutdown relay coil, terminal 86) |
| 5 | K454 | BRN/ORG | SOL MDS CY27 | Multi displacement system cylinder 7 solenoid pin 1 via C130 pin 32 and C141 pin 4 |
| 6 | K451 | BRN/WHT | SOL MDS CY21 | Multi displacement system cylinder 1 solenoid pin 1 via C130 pin 31 and C141 pin 1 |
| 8 | K442 | DK BLU | VCT SIG | Variable camshaft timing solenoid pin 2 via C130 pin 30 and C141 pin 5 |
| 9 | K299 | BRN/WHT | O2 (1/2) DWNSTRM HTR FD | Oxygen sensor 1/2 pin 1 via C130 pin 29 |
| 10 | K399 | BRN/GRY | O2 (2/2) DWNSTRM HTR FD | Oxygen sensor 2/2 pin 1 via C130 pin 23 |
| 11 | C13 | LT BLU/ORG | A/C CLUTCH COIL | TIPM C1 pin 6 (circuit board A/C CLUTCH COIL) |
| 14 | B16 | LT BLU/DK GRN | BRK ACTV SNSE SIG 2 | Stop lamp switch pin 4 (BRK ACTV SNSE SIG 2) via C172 pin 39 |
| 16 | K167 | BRN/YEL | APPS 1 RETURN | Accelerator pedal position sensor pin 3 (APP 1 RTN) via C172 pin 51 |
| 17 | K400 | BRN/VIO | APPS 2 RETURN | Accelerator pedal position sensor pin 4 (APP 2 RTN) via C172 pin 1 |
| 19 | F342 | BRN/WHT | ASD CTRL FD 1 | SF342 (ASD relay output via fuse M19) |
| 20 | K52 | DK BLU/WHT | PWM PRG SIG | Evap/purge solenoid pin 1 |
| 23 | B15 | DK GRN/WHT | BRK SIG | Stop lamp switch pin 6 (BRK ACTV SNSE SIG) via C172 pin 40 |
| 25 | K23 | BRN/WHT | APP 1 SIG | Accelerator pedal position sensor pin 2 (APP 1 SIG) via C172 pin 2 |
| 28 | F342 | BRN/WHT | ASD CTRL FD 1 | SF342 (ASD relay output via fuse M19) |
| 29 | K70 | DK BLU/BRN | PWM PRG SOL RTN | Evap/purge solenoid pin 2 |
| 33 | G24 | VIO/BRN | OIL TEMPERATURE SIG | Oil temperature sensor pin 1 via C130 pin 11 |
| 35 | K107 | VIO/WHT | STRK SENSE SIG | Evap monitor system switch pin 2 via C172 pin 13 |
| 36 | K29 | WHT/BRN | APPS 2 SIG | Accelerator pedal position sensor pin 5 (APP 2 SIG) via C172 pin 22 |
| 37 | K31 | BRN | FUEL PUMP CTRL | TIPM C1 pin 40 (fuel pump relay coil, terminal 86) |
| 38 | T752 | DK GRN/ORG | STRTR RLY COIL RTN | Starting/charging system |

"CY27" and "CY21" at pins 5 and 6 are the source's labels; the wires run to the cylinder 7 and cylinder 1 solenoids.

Component locations (diagram pages 2-4): stop lamp switch — base of brake pedal; accelerator pedal position sensor — accelerator pedal assembly; MDS cylinder 4, 6, 7 and 1 solenoids and variable camshaft timing solenoid — left front of engine; evap/purge solenoid — left rear of engine; SK856 — body harness, behind right kick panel; SF342 — right rear of engine compartment. No location is printed for the evap monitor system switch, line pressure sensor or S270.

Component pinouts as printed:

- Accelerator pedal position sensor — 1 5V SPLY (BRN/ORG, C172 pin 14), 2 APP 1 SIG (BRN/WHT, C172 pin 2), 3 APP 1 RTN (BRN/YEL, C172 pin 51), 4 APP 2 RTN (BRN/VIO, C172 pin 1), 5 APP 2 SIG (WHT/BRN, C172 pin 22), 6 SENS FD 2 (BRN/YEL, SK856 then C172 pin 15).
- Stop lamp switch — 1 CLSTR/CHMSL BATT FD (TAN/RED, TIPM C6 pin 31, fuse M01 15 A, hot at all times), 4 BRK ACTV SNSE SIG 2 (LT BLU/DK GRN), 5 GND (BLK, G916A), 6 BRK ACTV SNSE SIG (DK GRN/WHT).
- MDS solenoids — pin 1 PCM driver (cylinder 4 BRN/LT BLU, cylinder 6 BRN/DK GRN, cylinder 7 BRN/ORG, cylinder 1 BRN/WHT), pin 2 BLK to S270. Variable camshaft timing solenoid — 1 BLK to S270, 2 DK BLU. S270 -> C141 pin 6 -> S4510 -> G903A.
- Evap/purge solenoid — 1 DK BLU/WHT, 2 DK BLU/BRN. Evap monitor system switch — 1 BLK to ground G916, 2 VIO/WHT.

## C4 (38-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | T60 | YEL/GRY | OD SOLENOID CTRL | Transmission solenoid/pressure switch assembly pin 7 (OD CTRL) |
| 2 | T259 | YEL | 4C CTRL | Transmission assembly pin 19 (4C CTRL) |
| 4 | T140 | YEL/PNK | TRANS MS FR LR | Transmission assembly pin 21 (MS CTRL) |
| 6 | T219 | YEL/LT GRN | 2C SOLENOID CTRL | Transmission assembly pin 20 (2C CTRL) |
| 8 | T59 | YEL/LT BLU | UD SOLENOID CTRL | Transmission assembly pin 17 (UD CTRL) |
| 10 | T20 | WHT/DK GRN | LR/CC CTRL | Transmission assembly pin 2 (L/R CTRL) |
| 11 | T118 | DK GRN | PRESSURE CTRL SOLENOID | Transmission assembly pin 12 (CLUTCH SOL CTRL) |
| 12 | Z903 | BLK | GROUND | Ground G903A |
| 13 | Z903 | BLK | GROUND | Ground G903A |
| 14 | Z903 | BLK | GROUND | Ground G903A |
| 15 | T1 | LT BLU/VIO | TRS C4 SIG | Transmission assembly pin 9 (TRS T4 SIG) |
| 16 | T3 | LT BLU/YEL | TRS C3 SIG | Transmission assembly pin 8 (TRS T3 SIG) |
| 18 | T15 | YEL/VIO | ASD RLY FD | Transmission control relay coil (terminal 86) via C130 pin 33 and TIPM pin 10 |
| 19 | T16 | YEL/ORG | SW BATT FD | S4509 (transmission control relay output via fuse J18) |
| 20 | T48 | BRN/YEL | 4C PRESSURE SW SNS | Transmission assembly pin 11 (4C PRE SIG) |
| 21 | T29 | YEL/WHT | UD PRESSURE SW SNS | Transmission assembly pin 18 (UD PRE SIG) |
| 22 | T9 | DK GRN/TAN | OD PRESSURE SW SNS | Transmission assembly pin 16 (OD PRE SIG) |
| 26 | T4 | DK GRN/LT BLU | TRS C5 SNS | Transmission assembly pin 13 (TRS T5 SIG) |
| 27 | T41 | YEL/DK BLU | P/N SIG | Transmission assembly pin 4 (TRS T1 SIG) |
| 28 | T16 | YEL/ORG | SW BATT FD | S4509 |
| 29 | T50 | YEL/TAN | L/R PRESSURE SW SNS | Transmission assembly pin 14 (L/R PRE SIG) |
| 30 | T147 | DK GRN/YEL | 2C PRESSURE SW SNS | Transmission assembly pin 15 (2C PRE SIG) |
| 31 | T38 | YEL/BRN | LINE PRESS SENS SIG | Line pressure sensor pin 3 (LINE SENS) |
| 32 | T14 | DK GRN/BRN | OUTPUT SPEED SIG | Output speed sensor pin 1 |
| 33 | T52 | DK GRN/WHT | INPUT SPEED SIG | Input speed sensor pin 1 |
| 34 | T13 | DK GRN/VIO | SPEED SENS RTN | S4508: input speed sensor pin 2 and output speed sensor pin 2 |
| 35 | T54 | DK GRN/ORG | TRANSMISSION TEMP SIG | Transmission assembly pin 23 (TRNS TEMP SIG) |
| 37 | T42 | DK GRN/RED | TRS C2 SNS | Transmission assembly pin 5 (TRS T2 SIG) |
| 38 | T16 | YEL/ORG | SW BATT FD | S4509 |

Pin 18 is printed "ASD RLY FD" although its wire runs to the transmission control relay coil.

Component locations (diagram pages 4-5): S4508, S4509 — engine harness, right rear of engine. No location is printed for the transmission solenoid/pressure switch assembly, input speed sensor, output speed sensor or line pressure sensor.

Component pinouts as printed:

- Transmission solenoid/pressure switch assembly — 2 L/R CTRL (WHT/DK GRN), 4 TRS T1 SIG (YEL/DK BLU), 5 TRS T2 SIG (DK GRN/RED), 7 OD CTRL (YEL/GRY), 8 TRS T3 SIG (LT BLU/YEL), 9 TRS T4 SIG (LT BLU/VIO), 10 TRNS CTRL OUT (YEL/ORG, from S4509), 11 4C PRE SIG (BRN/YEL), 12 CLUTCH SOL CTRL (DK GRN), 13 TRS T5 SIG (DK GRN/LT BLU), 14 L/R PRE SIG (YEL/TAN), 15 2C PRE SIG (DK GRN/YEL), 16 OD PRE SIG (DK GRN/TAN), 17 UD CTRL (YEL/LT BLU), 18 UD PRE SIG (YEL/WHT), 19 4C CTRL (YEL), 20 2C CTRL (YEL/LT GRN), 21 MS CTRL (YEL/PNK), 22 SENS GND (DK BLU/DK GRN, K900), 23 TRNS TEMP SIG (DK GRN/ORG).
- Line pressure sensor — 1 SENS GND (DK BLU/DK GRN), 2 5 VOLT SPLY (BRN/YEL), 3 LINE SENS (YEL/BRN).
- Input speed sensor — 1 DK GRN/WHT, 2 DK GRN/VIO. Output speed sensor — 1 DK GRN/BRN, 2 DK GRN/VIO.

## Power supply / relays (diagram pages 1, 2 and 5)

Totally Integrated Power Module, right side of engine compartment. Where a TIPM pin has no connector label of its own, the connector is implied only by the dashed grouping line that links it to a labelled neighbour; these are marked "(implied)".

- **Auto shutdown relay** — terminal 30 hot at all times; terminal 87 feeds fuse M19 (25 A) and fuse M21 (20 A). Fuse M19 -> TIPM C5 pin 9 (BRN/WHT, F342) -> C173 pin 9 -> SF342 -> PCM C3-19 and C3-28 (ASD CTRL FD 1) and, via C130 pin 8, S4511 -> PCM C1-38 (ASD CTRL FD) and fuel injectors 1-8 pin 2 (S4501). Fuse M21 -> TIPM C2 pin 3 (BRN/YEL) -> C130 pin 7 -> S4512 / S4502 -> ignition coils 1-8 pin 2, ignition capacitor pin 1 and ignition capacitor 2 pin 1. Coil: terminal 85 from the TIPM circuit board (ASCD CTRL); terminal 86 -> TIPM C2 pin 14 (BRN/WHT, K51) -> PCM C3-3 (ASD RTN).
- **Fuel pump relay** — terminal 30 hot at all times; terminal 87 -> fuse M25 (20 A) -> TIPM C5 pin 10 (DK BLU/ORG, N1) -> I6602A pin 8 -> fuel pump module pin 4 (FUEL PMP MTR FD). Terminal 87A is not wired. Coil: terminal 85 from the TIPM circuit board (PMP RLY FD); terminal 86 -> TIPM C1 pin 40 (BRN, K31) -> PCM C3-37 (FUEL PUMP CTRL).
- **Transmission control relay** — terminal 30 hot at all times; terminal 87 -> fuse J18 (20 A) -> TIPM C2 pin 26 (YEL/ORG, T16) -> C130 pin 6 -> S4509 -> PCM C4-19, C4-28 and C4-38 (SW BATT FD) and transmission assembly pin 10 (TRNS CTRL OUT). Coil: terminal 85 -> ground G306; terminal 86 -> TIPM pin 10 (C1 implied) (YEL/VIO, T15) -> C130 pin 33 -> PCM C4-18.
- **Fuse M28 (15 A)**, hot at all times -> TIPM pin 9 (C2 implied) (RED, A209) -> C130 pin 5 -> S4500 -> PCM C1-10 and C1-29 (ENG CTRL DRCT BATT FD).
- **Fuse M33 (10 A)**, hot with run/start relay energized -> TIPM C2 pin 22 (PNK/GRY, F202) -> C130 pin 24 -> PCM C1-11 (ENG CTRL RUN STRT IGN).
- **Fuse M01 (15 A)**, hot at all times -> TIPM C6 pin 31 (TAN/RED) -> stop lamp switch pin 1 (CLSTR/CHMSL BATT FD).
- **TIPM circuit board** — C1 pin 49 IGN ULK/RUN/START (PNK/WHT, F1) to SF1 and PCM C1-12; C1 pin 6 A/C CLUTCH COIL (LT BLU/ORG, C13) to PCM C3-11; pins 16 CAN C (+) (WHT/LT GRN, D65) and 15 CAN C (-) (WHT/LT BLU, D64) (C1 implied) to the computer data lines system; C7 pin 34 FUEL LVL RTN (BLK/WHT, G109), pin 7 PRMRY SIG (DK BLU/WHT, N4) and pin 19 SNSR RTN (DK BLU/GRY, N5) (pins 34 and 7: C7 implied) to the fuel level circuits below.

Fuel level circuits (to the TIPM, not the PCM): fuel pump module — 1 GND (BLK, Z916, I6602A pin 1, to G916A), 2 FUEL LVL SNSR RTN (BLK/WHT, G109, to S01A), 3 FL SNDR SIG PMRY (DK BLU/WHT, N4, I6602A pin 4, to TIPM C7 pin 7), 4 FUEL PMP MTR FD (DK BLU/ORG, N1). Fuel level sensor — 2 FUEL LVL SNSR RTN (BLK/WHT, to S01A), 3 FLI2 (DK BLU/GRY, I6602A pin 5, to TIPM C7 pin 19). S01A -> I6602A pin 2 -> TIPM C7 pin 34.

Shift lever assembly: pin 8 RUN/STRT (PNK/WHT, C267 pin 11) from SF1; pin 2 SENS RTN (DK BLU/DK GRN, C267 pin 12) to the K900 sensor ground.

Grounds: G903A — right front of engine (PCM C1-9/18/19 and C4-12/13/14; oxygen sensor grounds via S4510; MDS and VCT solenoid grounds via S270 and C141 pin 6); G916A — printed "left rear of cargo area" at the stop lamp switch and "left front of cargo area" at the fuel pump module; G916 — evap monitor system switch (no location printed); G306 — transmission control relay coil (no location printed).

Other modules on the same diagram (not PCM pins): cluster connector C1 pins 1 CAN C (+) (WHT/GRY) and 2 CAN C (-) (WHT/ORG) to the computer data lines system.

## Notes

- The wire from SK856 toward the tank pressure sensor is labelled BRN/DK BLU where it crosses between diagram pages 2 and 3, and BRN/YEL (K856) at the sensor and at I6602A pin 15.
- The PCM labels the range-sensor inputs TRS C2-C5 and P/N SIG; the transmission assembly labels the same wires TRS T2-T5 and TRS T1.
- The 5 V circuit is printed F856 at PCM C1-27 and K856 at the tank pressure sensor end of the same net.
