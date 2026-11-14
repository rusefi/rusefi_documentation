# 2013 Jeep Grand Cherokee 4WD SRT-8 V8-6.4L — PCM pinout

Transcribed from [2013-Jeep-Truck-Grand-Cherokee-4WD-SRT-8-6.4-ECU.pdf](2013-Jeep-Truck-Grand-Cherokee-4WD-SRT-8-6.4-ECU.pdf) (ALLDATA "Engine Controls" wiring diagram, Powertrain Management, Electrical - Interactive Color (Non OE), diagram pages 1-5 = PDF pages 2-6, sheets 416089-416093; PDF page 1 carries only the title block). The vehicle printed in the PDF, "2013 Jeep Truck Grand Cherokee 4WD SRT-8 V8-6.4L", agrees with the file name.

Powertrain Control Module (PCM), located right front of engine compartment. Two connectors, C1 and C2, each drawn with terminals 1-96. The diagram does not print an engine-variant note; every component below is as drawn for this vehicle.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 96 | Chassis side: battery and run/start feeds, grounds, CAN C, ASD feed and relay control, fuel pump relay control, accelerator pedal, brake switch signals, fuel tank pressure, leak detection switch, purge solenoid, A/C clutch, starter relay |
| C2 | 96 | Engine side: injectors, coils, MDS solenoids, VCT, crank/cam, knock, MAP/ECT/IAT/oil temperature/oil pressure, exhaust pressure, O2 sensors and heaters, electronic throttle, short runner valve, generator |

Chrysler circuit codes (K11, F342, D64, ...) are printed on the wire at the PCM (and at some TIPM and fuel tank terminals) and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark, LT = light). Function text is the label printed at the PCM terminal. Unlisted pins are not connected in this diagram.

## C1 — chassis side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 17 | B16 | LT BLU/DK GRN | BRK ACTV SNSE SIG 2 | Stop lamp switch pin 4 (BRAKE SIG 2) via C315 pin 39 |
| 23 | F202 | PNK/GRY | ENG CTRL RUN/STRT IGN | S332 -> TIPM C2 pin 22, fuse M33 (10 A), hot with run/start relay energized |
| 24 | N7 | DK BLU/ORG | FUEL TANK PRESS | Fuel tank pressure sensor pin B (FUEL TANK PRESS SNSR SIG) via C315 pin 16 / C318 pin 14 |
| 33 | D64 | WHT/LT BLU | CAN C (-) | Computer data lines system |
| 41 | B15 | DK GRN/WHT | BRK ACTV SNSE SIG | Stop lamp switch pin 6 (BRAKE SIG) via C315 pin 40 |
| 48 | K859 | BRN/DK BLU | 5V ENG TERTIARY FD | Fuel tank pressure sensor pin C (5V ENG TERTIARY FD) via C315 pin 15 / C318 pin 15 (BRN/YEL at sensor) |
| 52 | Z909 | BLK | GND | Ground G909A |
| 53 | Z909 | BLK | GND | Ground G909A |
| 54 | K917 | BRN/TAN | ENG CTRL COM SNSR RTN 5 | Fuel tank pressure sensor pin A via C315 pin 6 / C318 pin 13 |
| 57 | D65 | WHT/LT GRN | CAN C (+) | Computer data lines system |
| 65 | K70 | DK BLU/BRN | PWM PRG SOL RTN | Evap/purge solenoid pin 2 (PWM PRG SOL RTN) |
| 67 | K400 | BRN/VIO | ACCEL PED POSTN SNSR RTN 2 | Accelerator pedal position sensor pin 4 via C315 pin 1 |
| 68 | K167 | BRN/YEL | ACCEL PED POS SNSR RTN | Accelerator pedal position sensor pin 3 via C315 pin 51 |
| 69 | K854 | VIO/BRN | ACCEL PED POS 2 SNSR FD | Accelerator pedal position sensor pin 6 via C315 pin 8 (BRN/YEL at sensor) |
| 70 | K107 | VIO/WHT | LEAK DETCN SW SNSE | Evap system monitor switch pin 2 (LEAK DTCTN SW SIG) via C315 pin 13 |
| 72 | Z909 | BLK | GND | Ground G909A |
| 74 | F342 | BRN/WHT | ASD CTRL FD 1 | S333 (ASD relay output via fuse M19, 25 A) |
| 75 | F342 | BRN/WHT | ASD CTRL FD 1 | S333 |
| 76 | F342 | BRN/WHT | ASD CTRL FD 1 | S333 |
| 79 | C13 | LT BLU/ORG | A/C CLTCH COIL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RTN | Auto shut down relay coil terminal 86 (TIPM C2 pin 14) |
| 81 | T752 | DK GRN/ORG | STRTR OVRDE RLY COIL RTN | Starting/charging system |
| 84 | K31 | BRN | ENG CTRL FUEL PUMP SIG | Fuel pump relay coil terminal 86 (TIPM C1 pin 40) |
| 91 | K29 | WHT/BRN | ACCEL PED POS 2 SNSR SIG | Accelerator pedal position sensor pin 5 via C315 pin 22 |
| 92 | K23 | BRN/WHT | ACCEL PED POS 1 SNSR SIG | Accelerator pedal position sensor pin 2 via C315 pin 2 |
| 93 | K852 | BRN/VIO | ACCEL PED POS 1 SNSR FD | Accelerator pedal position sensor pin 1 via C315 pin 7 (BRN/ORG at sensor) |
| 94 | K52 | DK BLU/WHT | PWM PRG SIG | Evap/purge solenoid pin 1 (PWM PRG SIG) |
| 96 | A209 | RED | ENG CTRL DRCT BATT FD | TIPM C2 pin 9, fuse M28 (15 A), hot at all times |

Component locations (diagram pages 1-3): totally integrated power module (TIPM) — left side of engine compartment; stop lamp switch — on brake pedal assembly; fuel pump module — top of fuel tank; accelerator pedal position sensor — base of accelerator pedal; evap system monitor switch — under left rear of vehicle; evap/purge solenoid — left side of engine compartment; G909A — right rear of engine compartment; G916A — base of left "C" pillar; G923A — left "D" pillar. No location is printed for the fuel tank pressure sensor, fuel level sensor, cluster, wireless ignition node or the splices.

Accelerator pedal position sensor pinout (sensor-side colour): 1 ACCEL PED POS 1 SNSR FD (BRN/ORG), 2 ACCEL PED POS 1 SNSR SIG (BRN/WHT), 3 ACCEL PED POSTN SNSR RTN (BRN/YEL), 4 ACCEL PED POSTN SNSR RTN 2 (BRN/VIO), 5 ACCEL PED POS 2 SNSR SIG (WHT/BRN), 6 ACCEL PED POS 2 SNSR FD (BRN/YEL). Pins 1 and 6 change colour at C315 (to BRN/VIO and VIO/BRN).

Fuel tank pressure sensor: A (BRN/TAN, to PCM C1-54 sensor return), B FUEL TANK PRESS SNSR SIG (DK BLU/ORG), C 5V ENG TERTIARY FD (BRN/YEL). The sensor box prints "5V ENG TERTIARY FD" at both pin A and pin C; pin A is wired to the PCM terminal labelled ENG CTRL COM SNSR RTN 5.

Stop lamp switch: 1 CLSTR/CHMSL BATT (TAN/RED, TIPM C6 pin 31, fuse M1 15 A, hot at all times), 2 STP LMP SIG (WHT/DK GRN, S388), 3 IGN RS (PNK/LT GRN, S352 -> TIPM C5 pin 38, fuse M37 10 A, hot with run/start relay energized), 4 BRAKE SIG 2 (LT BLU/DK GRN), 5 GND (BLK, G923A), 6 BRAKE SIG (DK GRN/WHT).

Evap system monitor switch: 1 GND (BLK, G916A), 2 LEAK DTCTN SW SIG (VIO/WHT). Evap/purge solenoid: 1 PWM PRG SIG (DK BLU/WHT), 2 PWM PRG SOL RTN (DK BLU/BRN).

## C2 — engine side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K86 | YEL/DK BLU | COIL ON PLG DRV 1 | Ignition coil 1 pin 1 |
| 2 | K20 | BRN/GRY | ALTR FLD FD | Starting/charging system |
| 3 | K124 | DK BLU/GRY | THRTL POS MTR POS CTRL | Throttle body pin 1 |
| 4 | K126 | DK BLU/LT GRN | THRTL POS MTR NEG CTRL | Throttle body pin 2 |
| 5 | K451 | BRN/WHT | SOL MDS CYL 1 | Multi displacement system solenoid (cylinder 1) pin 1 via C101 pin 1 |
| 6 | K452 | BRN/LT BLU | SOL MDS CYL 4 | Multi displacement system solenoid (cylinder 4) pin 1 via C101 pin 2 |
| 8 | K11 | BRN/YEL | FUEL INJ 1 SIG | Fuel injector 1 pin 1 |
| 9 | K12 | BRN/DK BLU | FUEL INJ 2 SIG | Fuel injector 2 pin 1 |
| 10 | K13 | BRN/LT BLU | FUEL INJ 3 SIG | Fuel injector 3 pin 1 |
| 11 | K14 | BRN/TAN | FUEL INJ 4 SIG | Fuel injector 4 pin 1 |
| 12 | K2 | VIO/ORG | COOL TEMP SNSR SIG | Engine coolant temperature sensor pin 1 |
| 13 | K242 | BRN/WHT | SNSR KNOCK 2 SIG | Right knock sensor 2 pin 1 |
| 14 | K42 | DK BLU/ORG | SNSR KNOCK 1 SIG | Left knock sensor 1 pin 1 |
| 16 | G24 | VIO/BRN | SNSR ENG OIL TEMP SIG FOR QUAL | Oil temperature sensor pin 1 |
| 17 | K21 | DK BLU/LT GRN | INTKE TEMP SNSR SIG | Intake air temperature sensor pin 1 |
| 18 | K904 | LT BLU/GRY | O2 DNSTRM SNSE RTN | S115: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 (O2 DNSTRM SNSE RTN) |
| 19 | K902 | BRN/DK GRN | O2 UPSTRM SNSE RTN | S114: oxygen sensor 1/1 pin 3 and oxygen sensor 2/1 pin 3 |
| 20 | G6 | VIO/GRY | OIL PRESS SNSE /SW SIG | Oil pressure sensor pin 2 |
| 22 | K442 | DK BLU | VCT SIG | Variable camshaft timing solenoid pin 2 (VCT SIG) via C101 pin 5 |
| 24 | K99 | BRN/LT GRN | O2 (1/1) UPSTRM HTR FD | Oxygen sensor 1/1 pin 1 |
| 25 | K85 | DK BLU/YEL | COIL ON PLG DRV 2 | Ignition coil 2 pin 1 |
| 37 | K924 | WHT/BRN | SNSR KNOCK 2 RTN | Right knock sensor 2 pin 2 |
| 38 | K942 | BRN/LT GRN | SNSR KNOCK 1 RTN | Left knock sensor 1 pin 2 |
| 40 | A804 | GRY/RED | ALTR SNSE FLNK TO MOD | Starting/charging system |
| 41 | K43 | LT GRN/DK BLU | O2 (2/1) UPSTRM SNSR SIG | Oxygen sensor 2/1 pin 4 |
| 42 | K243 | BRN | O2 (2/2) DWSTRM SNSR SIG | Oxygen sensor 2/2 pin 4 |
| 43 | K141 | DK BLU/YEL | O2 (1/2) DNSTRM SNSR SIG | Oxygen sensor 1/2 pin 4 |
| 44 | K41 | DK BLU/LT BLU | O2 (1/1) UPSTRM SNSR SIG | Oxygen sensor 1/1 pin 4 |
| 45 | K1 | DK GRN/RED | MAP SNSR SIG | Manifold absolute pressure sensor pin 1 |
| 48 | K299 | BRN/WHT | O2 (1/2) DNSTRM HTR FD | Oxygen sensor 1/2 pin 1 |
| 49 | K93 | DK BLU/VIO | COIL ON PLG DRV 3 | Ignition coil 3 pin 1 |
| 50 | K453 | BRN/RED | SOL MDS CYL 6 | Multi displacement system solenoid (cylinder 6) pin 1 via C101 pin 3 (BRN/DK GRN at solenoid) |
| 51 | K454 | BRN/ORG | SOL MDS CYL 7 | Multi displacement system solenoid (cylinder 7) pin 1 via C101 pin 4 |
| 53 | K238 | DK BLU/LT GRN | SRV ACT CTRL SIG | Short runner solenoid valve pin 3 |
| 60 | K237 | DK BLU/YEL | SRV SNSE OUTPT | Short runner solenoid valve pin 4 |
| 65 | K922 | BRN/DK BLU | THRTL POS SENSR RTN | Throttle body pin 6 |
| 66 | K900 | DK BLU/DK GRN | ENG CTRL COM SNSR RTN | S113: camshaft position sensor pin 2, MAP sensor pin 2, oil pressure sensor pin 3, exhaust differential pressure sensor pin 2 (via C161 pin 15 / C315 pin 68), shift lever assembly pin 2 (via C161 pin 16 / C192 pin 3 / C267 pin 12) |
| 67 | K855 | BRN/ORG | PRIM SNSR FD 1 | S124: throttle body pin 4, crankshaft position sensor pin 1, oil pressure sensor pin 1 |
| 68 | K915 | BRN/WHT | ENG CTRL COM SNSR RTN 3 | S162: oil temperature sensor pin 2, intake air temperature sensor pin 2; also engine coolant temperature sensor pin 2 |
| 69 | K373 | BRN | EXHST GAS PRESS SIG | Exhaust differential pressure sensor pin 3 via C161 pin 17 / C315 pin 67 |
| 72 | K199 | BRN/VIO | O2 (2/1) UPSTRM HTR FD | Oxygen sensor 2/1 pin 1 |
| 73 | K15 | DK BLU | COIL ON PLG DRV 4 | Ignition coil 4 pin 1 |
| 74 | K16 | DK BLU/YEL | COIL ON PLG DRV 5 | Ignition coil 5 pin 1 |
| 75 | K10 | DK BLU/ORG | COIL ON PLG DRV 6 | Ignition coil 6 pin 1 |
| 76 | K97 | BRN | COIL ON PLG DRV 7 | Ignition coil 7 pin 1 |
| 77 | K98 | DK BLU/YEL | COIL ON PLG DRV 8 | Ignition coil 8 pin 1 |
| 79 | K38 | BRN/ORG | FUEL INJ 5 SIG | Fuel injector 5 pin 1 |
| 80 | K58 | BRN/VIO | FUEL INJ 6 SIG | Fuel injector 6 pin 1 |
| 81 | K26 | BRN/YEL | FUEL INJ 7 SIG | Fuel injector 7 pin 1 |
| 82 | K28 | BRN/LT BLU | FUEL INJ 8 SIG | Fuel injector 8 pin 1 |
| 85 | K44 | GRY/DK BLU | CAM POSTN SNSR SIG | Camshaft position sensor pin 3 |
| 86 | K24 | BRN/LT BLU | CRNK SPD SNSR OUTPT | Crankshaft position sensor pin 3 |
| 87 | F856 | BRN/YEL | PRIM SNSR FD 2 | S125: camshaft position sensor pin 1, MAP sensor pin 3, exhaust differential pressure sensor pin 1 (via C161 pin 14 / C315 pin 66) |
| 88 | K925 | DK BLU/GRY | CRKSHFT POSTN SNSR RTN | Crankshaft position sensor pin 2 |
| 89 | K22 | BRN | THRTL POS SENSR SIG 1 | Throttle body pin 5 |
| 90 | K122 | BRN/DK GRN | THRTL POS SENSR SIG 2 | Throttle body pin 3 |
| 96 | K399 | BRN/GRY | O2 (2/2) DNSTRM HTR FD | Oxygen sensor 2/2 pin 1 |

Component locations (diagram pages 2-5): multi displacement system solenoids (cylinders 1, 4, 7, 6) — under engine (grounds BLK to S270 -> G903A); variable camshaft timing solenoid — left front of engine (pin 1 GND, BLK, to S270); camshaft position sensor — front of right cylinder bank; crankshaft position sensor — front of left cylinder bank; manifold absolute pressure sensor — right rear of engine; engine coolant temperature sensor — top front of engine; oil temperature sensor — lower right front of engine; intake air temperature sensor — top front of engine; oil pressure sensor — left side of engine; right knock sensor 2 — lower center of right side of engine; left knock sensor 1 — lower center of left side of engine; oxygen sensors 1/1 and 1/2 — left side of engine, in exhaust; oxygen sensor 2/1 — right side of engine, in exhaust; oxygen sensor 2/2 — right side of engine, on exhaust; throttle body — top of front of engine; fuel injectors — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) cylinder banks; ignition coils — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) cylinder banks; ignition capacitor — rear of top of left cylinder bank; ignition capacitor 2 — rear of top of right cylinder bank; G903A — right front of engine compartment. No location is printed for the short runner solenoid valve, exhaust differential pressure sensor, shift lever assembly or the splices.

Sensor pinouts as printed: camshaft position sensor — 1 PRIM SNSR FD 2 (BRN/YEL), 2 ENG CTRL COM SNSR RTN (DK BLU/DK GRN), 3 CAM POSTN SNSR SIG (GRY/DK BLU). Crankshaft position sensor — 1 PRIM SNSR FD 1 (BRN/ORG), 2 CRKSHFT POSTN SNSR RTN (DK BLU/GRY), 3 CRK SPD SNSR OUTPT (BRN/LT BLU). MAP — 1 MAP SNSR SIG (DK GRN/RED), 2 ENG CTRL COM SNSR RTN (DK BLU/DK GRN), 3 PRIM SNSR FD 2 (BRN/YEL). ECT — 1 COOL TEMP SNSR SIG (VIO/ORG), 2 ENG CTRL COM SNSR RTN (BRN/WHT). Oil temperature — 1 SNSR ENG OIL TEMP SIG FOR QUAL (VIO/BRN), 2 ENG CTRL COM SNSR RTN 3 (BRN/WHT). IAT — 1 INTKE TEMP SNSR SIG (DK BLU/LT GRN), 2 ENG CTRL COM SNSR RTN 3 (BRN/WHT). Oil pressure sensor — 1 PRIM SNSR FD 1 (BRN/ORG), 2 OIL PRESS SNSE/ SW SIG (VIO/GRY), 3 ENG CTRL COM SNSR RTN (DK BLU/DK GRN). Exhaust differential pressure sensor — 1 PRIM SNSR FD 2 (BRN/YEL), 2 ENG CTRL COM SNSR RTN (DK BLU/DK GRN), 3 EXHST GAS PRESS SIG (BRN). Knock sensors — 1 SNSR KNOCK x SIG, 2 SNSR KNOCK x RTN. Throttle body — 1 THRTL POS MTR POS CTRL (DK BLU/GRY), 2 THRTL POS MTR NEG CTRL (DK BLU/LT GRN), 3 THRTL POS SNSR SIG 2 (BRN/DK GRN), 4 PRIM SNSR FD 1 (BRN/ORG), 5 THRTL POS SNSR SIG 1 (BRN), 6 THRTL POS SNSR RTN (BRN/DK BLU). Upstream O2 sensors (1/1, 2/1) — 1 UPSTRM HTR FD, 2 GND (BLK to G903A), 3 O2 UPSTRM SNSR/SNSE RTN (BRN/DK GRN), 4 UPSTRM SNSR SIG. Downstream O2 sensors (1/2, 2/2) — 1 DNSTRM HTR FD, 2 GND (BLK to G903A), 3 O2 DNSTRM SNSE RTN (LT BLU/GRY), 4 DNSTRM SNSR SIG. Short runner solenoid valve — 1 ASD CTRL FD 3 (BRN/YEL), 2 GND (BLK to G903A), 3 SRV ACT CTRL SIG (DK BLU/LT GRN at the PCM; no colour printed at the valve), 4 SRV SNSE OUTPT (DK BLU/YEL). Injectors — 1 FUEL INJ x SIG (PCM driver), 2 ASD CTRL FD 1 (BRN/WHT). Coils — 1 COIL ON PLG DRIV x (PCM driver), 2 ASD CTRL FD 3 (BRN/YEL). Ignition capacitors — 1 ASD CTRL FD 3 (BRN/YEL). Shift lever assembly — 2 ENG CTRL COM SNSR RTN (DK BLU/DK GRN).

## Power supply / relays (diagram page 1)

Totally integrated power module (TIPM), left side of engine compartment. Internal TIPM conductors are marked NCA (no circuit code).

- **Auto shut down relay** — terminal 30 from bus bar pin 2 (bus bar pin 43 hot at all times); terminal 87 feeds fuse M21 (20 A) and fuse M19 (25 A); terminal 87A is not wired. Fuse M21 -> TIPM C2 pin 3 (BRN/YEL) -> C161 pin 7 -> S120 / S121 -> ignition coils pin 2, ignition capacitor, ignition capacitor 2 and short runner solenoid valve pin 1 (ASD CTRL FD 3). Fuse M19 -> TIPM C5 pin 9 (BRN/WHT, F342) -> C316 pin 9 -> S333 -> PCM C1-74/75/76 (ASD CTRL FD 1) and, via C161 pin 8 -> S119 / S111, fuel injectors pin 2. Coil: terminal 86 -> TIPM C2 pin 14 (BRN/WHT, K51) -> PCM C1-80 (ASD RTN); terminal 85 from the TIPM circuit board output "ASD CTRL FD 4".
- **Fuel pump relay** — terminal 30 from bus bar pin 4; terminal 87 -> fuse M25 (20 A) -> TIPM C5 pin 10 (DK BLU/ORG, N1) -> C318 pin 8 -> fuel pump module pin 4 (FUEL PMP MTR FD); terminal 87A is not wired. Coil: terminal 86 -> TIPM C1 pin 40 (BRN, K31) -> PCM C1-84 (ENG CTRL FUEL PUMP SIG); terminal 85 from the TIPM circuit board output "FUL PMP RLY FD TO SEC RLY OR RSTR".
- **Fuse M33 (10 A)**, hot with run/start relay energized -> TIPM C2 pin 22 (PNK/GRY, F202) -> S332 -> PCM C1-23 (ENG CTRL RUN/STRT IGN).
- **Fuse M28 (15 A)**, hot at all times -> TIPM C2 pin 9 (RED, A209) -> PCM C1-96 (ENG CTRL DRCT BATT FD).
- **Fuse M1 (15 A)**, hot at all times -> TIPM C6 pin 31 (TAN/RED) -> stop lamp switch pin 1.
- **Fuse M37 (10 A)**, hot with run/start relay energized -> TIPM C5 pin 38 (PNK/LT GRN) -> S352 -> stop lamp switch pin 3.
- **TIPM circuit board** (B(+) hot at all times): CAN C (-) — C1 pin 15 (WHT/LT BLU, D64) and CAN C (+) — C1 pin 16 (WHT/LT GRN, D65), both to the computer data lines system; FUEL LVL SNSR RTN — pin 34 (BLK, G109); FUEL SNDR LVL SIG PRIMARY — pin 7 (DK BLU/WHT, N4); FUL SNDR LVL SIG SECONDARY — pin 19 (DK BLU/GRY, N5); STP LMP SIG — C7 pin 10 (WHT/DK GRN, L51). The connector name C7 is printed once, after pin 10, for the group of terminals 34, 7, 19 and 10; that pins 34, 7 and 19 are also in C7 is implied by the grouping only.

Grounds: G909A — right rear of engine compartment (PCM C1-52/53/72); G903A — right front of engine compartment (MDS and VCT solenoid grounds via S270, all four O2 sensor GND pins, short runner solenoid valve GND); G916A — base of left "C" pillar (fuel pump module pin 1 via C318 pin 1, circuit Z916; evap system monitor switch pin 1); G923A — left "D" pillar (stop lamp switch pin 5).

Other modules on the same diagram (not PCM pins):

- Fuel pump module (top of fuel tank): 1 GND (BLK, Z916), 2 FUEL LVL SNSR RTN (BLK/WHT, G109, S381 -> C318 pin 2 -> TIPM pin 34), 3 FUEL SNDR LVL SIG PRIMARY (DK BLU/WHT, N4, C318 pin 4 -> TIPM pin 7), 4 FUEL PMP MTR FD (DK BLU/ORG, N1).
- Fuel level sensor: 2 FUEL LVL SNSR RTN (BLK/WHT, to S381), 3 FUEL SNSR LVL SIG SECONDARY/SW (DK BLU/GRY, N5, C318 pin 5 -> TIPM pin 19). The fuel level senders report to the TIPM, not the PCM.
- Wireless ignition node: 5 CAN C (+) (WHT/LT BLU) and 6 CAN C (-) (WHT/BRN) to the computer data lines system; 8 STP LMP SIG (WHT/DK GRN) via C202 pin 6 to S388 (TIPM C7 pin 10, stop lamp switch pin 2).
- Cluster connector C1: 1 CAN IHS (+) (WHT/GRY), 2 CAN IHS (-) (WHT/ORG) to the computer data lines system.

## Notes

- WHT/LT BLU is printed as CAN C (-) (D64) at the PCM and TIPM but as CAN C (+) at the wireless ignition node, where CAN C (-) is WHT/BRN. The diagram does not resolve this; the CAN wires end at the computer data lines system reference.
- The engine coolant temperature sensor return is labelled ENG CTRL COM SNSR RTN at the sensor but is wired (BRN/WHT) to PCM C2-68, labelled ENG CTRL COM SNSR RTN 3.
- PCM C2-42 is printed "O2 (2/2) DWSTRM SNSR SIG" (the other downstream labels use DNSTRM), and the oxygen sensor 2/1 return is printed "O2 UPSTRM SNSE RTN" where sensor 1/1 prints "O2 UPSTRM SNSR RTN".
- The sensor-side labels use "COIL ON PLG DRIV x" and "THRTL POS SNSR", the PCM-side labels "COIL ON PLG DRV x" and "THRTL POS SENSR".
