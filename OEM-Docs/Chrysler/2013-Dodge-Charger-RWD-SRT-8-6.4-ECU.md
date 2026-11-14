# 2013 Dodge Charger RWD SRT-8 V8-6.4L — PCM pinout

Transcribed from [2013-Dodge-Charger-RWD-SRT-8-6.4-ECU.pdf](2013-Dodge-Charger-RWD-SRT-8-6.4-ECU.pdf) (ALLDATA "Engine Controls" wiring diagram, Electrical - Interactive Color (Non OE), diagram pages 1-5 = PDF pages 2-6, sheets 415895-415899). The vehicle printed in the PDF, "2013 Dodge Charger RWD SRT-8 V8-6.4L", agrees with the file name.

Powertrain Control Module (PCM), located right rear of engine compartment. Two 96-way connectors: C1 (chassis/body side) and C2 (engine side). The diagram carries both Dodge and Chrysler splice numbers and locations; where the source prints two alternatives they are marked (Dodge)/(Chrysler) below.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 96 | Chassis side: battery and ignition feeds, grounds, CAN C, accelerator pedal sensor, A/C and fuel tank pressure, ASD and fuel pump relay controls, starter, radiator fans, A/C clutch, purge, leak detection |
| C2 | 96 | Engine side: injectors, coils, MDS/VCT solenoids, crank/cam, knock, MAP/ECT/IAT/EOT/oil pressure/exhaust gas pressure, O2 sensors and heaters, electronic throttle, short runner valve, generator |

Chrysler circuit codes (K11, F342, D65, ...) are printed on each wire at the PCM and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark, LT = light). Function text is kept as printed, including the source's own spellings ("COIL ON PUG DRV", "DWSTRM", "5V VREV"). Unlisted pins are not connected in this diagram.

## C1 — chassis side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 19 | C18 | LT BLU/BRN | AC PRESS SIG | A/C pressure transducer pin 2 (A/C PRESS SIG) |
| 22 | K914 | BRN/WHT | SNSR GND | A/C pressure transducer pin 3 (SNSR GND) |
| 23 | F942 | PNK/LT GRN | IGN RS | S1324: front PDC terminal 37B (fuse 37, 10 A, hot with run/start relay energized) and fuel pump relay terminal C (IGN RS) via PDC terminal 54C |
| 24 | N7 | DK BLU/ORG | FUEL TANK PRESS SNSR SIG | Fuel tank pressure sensor pin B (FUEL TANK PRESS SNSR SIG) via C104 pin 14 |
| 30 | N201 | DK BLU/LT GRN | RAD FAN LO SPD SIG | Cooling fans system |
| 33 | D64 | YEL | CAN C (-) | Computer data lines system |
| 48 | K859 | DK BLU | 5V VREF | Fuel tank pressure sensor pin C (5V VREF) via C104 pin 15 |
| 52 | Z903 | BLK | GND | Ground G102 |
| 53 | Z903 | BLK | GND | Ground G102 |
| 54 | K917 | BRN/TAN | ENG CTRL COM SNSR RTN 5 | Fuel tank pressure sensor pin A (SNSR GND) via C104 pin 16 |
| 57 | D65 | TAN/WHT | CAN C (+) | Computer data lines system |
| 65 | K70 | DK BLU/BRN | PWM PRG SOL RTN | Evaporator purge solenoid pin 2 (PWM PRG SOL RTN) |
| 67 | K400 | BRN/VIO | ACCEL PED POSTN SNSR RTN 2 | Accelerator pedal position sensor pin 4 |
| 68 | K167 | BRN/YEL | ACCEL PED POS SNSR RTN | Accelerator pedal position sensor pin 3 (ACCEL PED POSTN SNSR RTN) |
| 69 | K854 | VIO/BRN | 5V VREF | Accelerator pedal position sensor pin 6 |
| 70 | K108 | VIO/WHT | LEAK DETCN SW SIG | Evap system monitor switch pin 2 (LEAK DTCTN SW SIG) via C102 pin 11 |
| 72 | Z903 | BLK | GND | Ground G102 |
| 74 | F342 | BRN | ASD CTRL FD 1 | S1320 (ASD relay output via fuse 34, 25 A) |
| 75 | F342 | BRN | ASD CTRL FD 1 | S1320 |
| 76 | F342 | BRN | ASD CTRL FD 1 | S1320 |
| 78 | N112 | DK BLU/ORG | RAD FAN HI SPD SIG | Cooling fans system |
| 79 | C13 | LT BLU/ORG | A/C CLTCH COIL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RTN | Auto shut down relay terminal D (ASD RTN) via front PDC terminal 63D |
| 81 | T752 | DK GRN/ORG | STRTR CTRL | Starting/charging system |
| 84 | K31 | BRN | ENG CTRL FUEL PUMP SIG | Fuel pump relay terminal D (ENG CTRL FUL PUMP SIG) via front PDC terminal 54D |
| 91 | K29 | WHT/BRN | ACCEL PED POS 2 SNSR SIG | Accelerator pedal position sensor pin 5 |
| 92 | K23 | BRN/WHT | ACCEL PED POS 1 SNSR SIG | Accelerator pedal position sensor pin 2 |
| 93 | K852 | BRN/VIO | 5V VREF | S1343: accelerator pedal position sensor pin 1 (5V VREF); A/C pressure transducer pin 1 (5V VREF) |
| 94 | K52 | DK BLU/ORG | PWM PRGE SIG | Evaporator purge solenoid pin 1 (PWM PRG SIG) |
| 96 | A908 | RED/GRY | FSD B(+) | Front PDC terminal 31B, fuse 31 (25 A), hot at all times |

Component locations (pages 1-3): front power distribution center — right side of engine compartment; fuel tank pressure sensor and fuel pump module — top of fuel tank; A/C pressure transducer — left rear of engine compartment; accelerator pedal position sensor — top of accelerator pedal bracket; evap system monitor switch — right side of luggage compartment; evaporator purge solenoid — right rear of engine compartment; body control module — right end of dash; S1320, S1343 — right rear of engine compartment, in headlamp and dash harness; G102 — right side of engine compartment; G120 — under driver's seat; G917A — under passenger's seat. No location is printed for S1311, S1324 or the interior power distribution center.

Accelerator pedal position sensor pinout: 1 5V VREF (BRN/VIO), 2 ACCEL PED POS 1 SNSR SIG (BRN/WHT), 3 ACCEL PED POSTN SNSR RTN (BRN/YEL), 4 ACCEL PED POSTN SNSR RTN 2 (BRN/VIO), 5 ACCEL PED POS 2 SNSR SIG (WHT/BRN), 6 5V VREF (VIO/BRN). Fuel tank pressure sensor: A SNSR GND (BRN/TAN), B FUEL TANK PRESS SNSR SIG (DK BLU/ORG), C 5V VREF (DK BLU). A/C pressure transducer: 1 5V VREF (BRN/VIO), 2 A/C PRESS SIG (LT BLU/BRN), 3 SNSR GND (BRN/WHT). Evaporator purge solenoid: 1 PWM PRG SIG (DK BLU/ORG), 2 PWM PRG SOL RTN (DK BLU/BRN). Evap system monitor switch: 1 GND (BLK/WHT to G917A), 2 LEAK DTCTN SW SIG (VIO/WHT).

## C2 — engine side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K86 | YEL/DK BLU | COIL ON PLG DRV 1 | Ignition coil 1 pin 1 |
| 2 | K20 | BRN/GRY | ALTR FLD FD | Starting/charging system |
| 3 | K447 | TAN/YEL | MTR ETC + | Throttle body pin 1 |
| 4 | K448 | TAN/ORG | MTR ETC- | Throttle body pin 2 |
| 5 | K451 | BRN/WHT | SOL MDS CYL 1 | Multi displacement system solenoid (cyl 1) pin 1 via C101 pin 1 |
| 6 | K452 | BRN/LT BLU | SOL MDS CYL 4 | Multi displacement system solenoid (cyl 4) pin 1 via C101 pin 2 |
| 8 | K11 | BRN/YEL | FUEL INJ 1 SIG | Fuel injector 1 pin 1 |
| 9 | K12 | BRN/DK BLU | FUEL INJ 2 SIG | Fuel injector 2 pin 1 |
| 10 | K13 | BRN/LT BLU | FUEL INJ 3 SIG | Fuel injector 3 pin 1 |
| 11 | K14 | BRN/TAN | FUEL INJ 4 SIG | Fuel injector 4 pin 1 |
| 12 | K2 | VIO/ORG | COOL TEMP SNSR SIG | Engine coolant temperature sensor pin 1 |
| 13 | K242 | BRN/WHT | SNSR KNOCK 2 SIG | Knock sensor 2 pin 1 |
| 14 | K42 | DK BLU/YEL | SNSR KNOCK 1 SIG | Knock sensor pin 1 (SNSR KNOCK 1 SIG) |
| 16 | G24 | VIO/BRN | EOT | Oil temperature sensor pin 1 |
| 17 | K21 | DK BLU/LT GRN | INTKE TEMP SNSR SIG | Inlet air temperature sensor pin 1 |
| 18 | K904 | DK BLU/DK GRN | O2 DNSTRM SNSE RTN | S156: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 (O2 DNSTRM SNSE RTN) |
| 19 | K902 | BRN/DK GRN | O2 UPSTRM SNSE RTN | S155 (Dodge) / S992 (Chrysler): oxygen sensor 2/1 pin 3 and oxygen sensor 1/1 pin 3 |
| 20 | G6 | VIO/GRY | OIL PRESS SNSE /SW SIG | Oil pressure sensor pin 2 |
| 22 | K442 | DK BLU | VCT SIG | Variable camshaft timing solenoid pin 2 (VCT SIG) via C101 pin 5 |
| 24 | K99 | BRN/LT GRN | O2S11 HTR | Oxygen sensor 1/1 pin 1 |
| 25 | K85 | DK BLU/TAN | COIL ON PLG DRV 2 | Ignition coil 2 pin 1 |
| 37 | K924 | WHT/BRN | SNSR KNOCK 2 RTN | Knock sensor 2 pin 2 |
| 38 | K942 | BRN/LT GRN | SNSR KNOCK 1 RTN | Knock sensor pin 2 (SNSR KNOCK 1 RTN) |
| 40 | A804 | RED/VIO | ALTR SNSE FLNK TO MOD | Starting/charging system |
| 41 | K43 | DK BLU/LT GRN | O2 (2/1) UPSTRM SNSR SIG | Oxygen sensor 2/1 pin 4 |
| 42 | K243 | BRN | O2 (2/2) DWSTRM SNSR SIG | Oxygen sensor 2/2 pin 4 |
| 43 | K141 | DK BLU/YEL | O2 (1/2) DNSTRM SNSR SIG | Oxygen sensor 1/2 pin 4 |
| 44 | K41 | DK BLU/LT BLU | O2 (1/1) UPSTRM SNSR SIG | Oxygen sensor 1/1 pin 4 |
| 45 | K1 | VIO/BRN | MAP SNSR SIG | Manifold absolute pressure sensor pin 1 |
| 48 | K299 | BRN/WHT | O2 (1/2) DNSTRM HTR FD | Oxygen sensor 1/2 pin 1 |
| 49 | K93 | DK BLU | COIL ON PLG DRV 3 | Ignition coil 3 pin 1 |
| 50 | K453 | BRN/DK GRN | SOL MDS CYL 6 | Multi displacement system solenoid (cyl 6) pin 1 via C101 pin 3 |
| 51 | K454 | BRN/ORG | SOL MDS CYL 7 | Multi displacement system solenoid (cyl 7) pin 1 via C101 pin 4 |
| 53 | K238 | DK BLU/LT GRN | SRV ACT CTRL SIG | Short runner solenoid valve pin 3 |
| 60 | K237 | DK BLU/YEL | SRV SNSE OUTPT | Short runner solenoid valve pin 4 |
| 65 | K922 | BRN/DK BLU | THRTL POS SENSR RTN | Throttle body pin 6 |
| 66 | K900 | DK BLU/DK GRN | SNSR GND | S110 (Dodge) / S990 (Chrysler): camshaft position sensor pin 2, MAP sensor pin 2, oil pressure sensor pin 3 |
| 67 | F855 | PNK/YEL | 5V VREF | S105 (Dodge) / S925 (Chrysler): throttle body pin 4, crankshaft position sensor pin 1, oil pressure sensor pin 1 |
| 68 | K915 | BRN/WHT (or BRN) | SNSR GND | S155 (Dodge) / S995 (Chrysler): oil temperature sensor pin 2, inlet air temperature sensor pin 2, engine coolant temperature sensor pin 2, exhaust differential pressure sensor pin 2 |
| 69 | K373 | BRN | EXHST GAS PRESS SIG | Exhaust differential pressure sensor pin 3 (EXHAUST GAS PRESS SIG) |
| 72 | K199 | BRN/VIO | O2 (2/1) UPSTRM HTR FD | Oxygen sensor 2/1 pin 1 |
| 73 | K15 | DK BLU/GRY | COIL ON PUG DRV 4 | Ignition coil 4 pin 1 |
| 74 | K16 | DK BLU/YEL | COIL ON PUG DRV 5 | Ignition coil 5 pin 1 |
| 75 | K10 | DK BLU/ORG | COIL ON PUG DRV 6 | Ignition coil 6 pin 1 |
| 76 | K97 | DK BLU/YEL | COIL ON PUG DRV 7 | Ignition coil 7 pin 1 |
| 77 | K98 | DK BLU/YEL | COIL ON PUG DRV 8 | Ignition coil 8 pin 1 |
| 79 | K38 | BRN/ORG | FUEL INJ 5 SIG | Fuel injector 5 pin 1 |
| 80 | K58 | BRN/VIO | FUEL INJ 6 SIG | Fuel injector 6 pin 1 |
| 81 | K26 | BRN/YEL | FUEL INJ 7 SIG | Fuel injector 7 pin 1 |
| 82 | K28 | BRN/LT BLU | FUEL INJ 8 SIG | Fuel injector 8 pin 1 |
| 85 | K44 | DK BLU/GRY | CAM POSTN SNSR SIG | Camshaft position sensor pin 3 |
| 86 | K24 | BRN/LT BLU | CRNK SPD SNSR OUTPT | Crankshaft position sensor pin 3 |
| 87 | F856 | YEL/PNK | 5V VREF | S106 (Dodge) / S926 (Chrysler): camshaft position sensor pin 1, MAP sensor pin 3, exhaust differential pressure sensor pin 1 |
| 88 | K925 | DK BLU/GRY | CRNK SHFT POSTN SNSR RTN | Crankshaft position sensor pin 2 |
| 89 | K22 | BRN/ORG | THRTL POS SENSR SIG 1 | Throttle body pin 5 |
| 90 | K122 | BRN/DK GRN | THRTL POS SENSR SIG 2 | Throttle body pin 3 |
| 96 | K399 | BRN/GRY | O2 (2/2) DNSTRM HTR FD | Oxygen sensor 2/2 pin 1 |

Pin 68 and the sensor ground wires that join it are printed "BRN/WHT (OR BRN)"; the exhaust differential pressure sensor ground branch is printed BRN/WHT only.

Component locations (pages 2-5): multi displacement system solenoids — above cylinders 1, 4, 7 and 6 (grounds BLK to S270 -> G102); variable camshaft timing solenoid — front of right cylinder head (pin 1 GND, BLK to S270); camshaft position sensor — rear of right cylinder head; crankshaft position sensor — lower left front of engine block; exhaust differential pressure sensor — left rear of engine, in exhaust; MAP sensor — top right rear of intake manifold; engine coolant temperature sensor — left rear of engine block; oil temperature sensor — right front of engine; inlet air temperature sensor — top right rear of engine; oil pressure sensor — right front of engine; knock sensor 2 — lower left side of engine block; knock sensor — under intake manifold, on right cylinder bank; oxygen sensors 2/1 and 1/1 — both printed "in right exhaust, upstream of catalytic converter"; oxygen sensor 1/2 — in left exhaust, downstream of catalytic converter; oxygen sensor 2/2 — in right exhaust, downstream of catalytic converter; short runner solenoid valve — center rear of engine; fuel injectors — top of left (7, 1, 5, 3) and right (8, 6, 4, 2) cylinder banks; ignition coils — top of left (5, 1, 3, 7) and right (4, 6, 2, 8) cylinder bank valve covers; ignition capacitor — rear of right cylinder bank; ignition capacitor 2 — rear of left cylinder bank. No location is printed for the throttle body.

Splices: S270 — top of engine, in multiple displacement and variable cam jumper harness; S110 (Dodge) / S990 (Chrysler) — right rear of engine compartment, in engine harness; S106 (Dodge) — driver seat harness, under seat / S926 (Chrysler) — right rear of engine compartment, in engine harness; S155 (Dodge) — top rear of engine, in engine harness / S995 (Chrysler) — left rear of engine, in engine harness (sensor ground, C2-68); S155 (Dodge) — top rear of engine, in engine harness / S992 (Chrysler) — right rear of engine compartment, in engine harness (upstream O2 return, C2-19); S105 (Dodge) / S925 (Chrysler) — right rear of engine, in engine harness; S156 — right rear of engine, in engine harness; S154 (Dodge) / S994 (Chrysler) — no location printed; S922A, S923A — left rear of engine, in engine harness; S922B — top right rear of engine, in engine harness; S923B — right rear of engine, in engine harness.

Sensor pinouts as printed: camshaft position sensor — 1 5V VREF (YEL/PNK), 2 SNSR GND (DK BLU/DK GRN), 3 CAM POSTN SNSR SIG (DK BLU/GRY). Crankshaft position sensor — 1 5V VREF (PNK/YEL), 2 CRKSHFT POSTN SNSR RTN (DK BLU/GRY), 3 CRK SPD SNSR OUTPT (BRN/LT BLU). Exhaust differential pressure sensor — 1 5V VREF (YEL/PNK), 2 SNSR GND (BRN/WHT), 3 EXHAUST GAS PRESS SIG (BRN). MAP — 1 MAP SNSR SIG (VIO/BRN), 2 SNSR GND (DK BLU/DK GRN), 3 5V VREF (YEL/PNK). ECT — 1 COOL TEMP SNSR SIG (VIO/ORG), 2 SNSR GND (BRN/WHT or BRN). Oil temperature — 1 EOT (VIO/BRN), 2 SNSR GND (BRN/WHT or BRN). Inlet air temperature — 1 INTKE TEMP SNSR SIG (DK BLU/LT GRN), 2 SNSR GND (BRN/WHT or BRN). Oil pressure sensor — 1 5V VREF (PNK/YEL), 2 OIL PRESS SNSE/ SW SIG (VIO/GRY), 3 SNSR GND (DK BLU/DK GRN). Knock sensor 2 — 1 SNSR KNOCK 2 SIG (BRN/WHT), 2 SNSR KNOCK 2 RTN (WHT/BRN). Knock sensor — 1 SNSR KNOCK 1 SIG (DK BLU/YEL), 2 SNSR KNOCK 1 RTN (BRN/LT GRN). Throttle body — 1 MTR ETC + (TAN/YEL), 2 MTR ETC - (TAN/ORG), 3 THRTL POS SNSR SIG 2 (BRN/DK GRN), 4 5V VREV (PNK/YEL), 5 THRTL POS SNSR SIG 1 (BRN/ORG), 6 THRTL POS SNSR RTN (BRN/DK BLU). Oxygen sensor 2/1 — 1 O2 (2/1) UPSTRM HTR FD (BRN/VIO), 2 GND (BLK to G29A), 3 O2 UPSTRM SNSE RTN (BRN/DK GRN), 4 O2 (2/1) UPSTRM SNSR SIG (DK BLU/LT GRN). Oxygen sensor 1/1 — 1 O2S11 HTR (BRN/LT GRN), 2 GND (BLK to G29A), 3 O2 UPSTRM SNSR RTN (BRN/DK GRN), 4 O2 (1/1) UPSTRM SNSR SIG (DK BLU/LT BLU). Oxygen sensor 1/2 — 1 O2 (1/2) DNSTRM HTR FD (BRN/WHT), 2 GND (BLK to G29A), 3 O2 DNSTRM SNSE RTN (DK BLU/DK GRN), 4 O2 (1/2) DNSTRM SNSR SIG (DK BLU/YEL). Oxygen sensor 2/2 — 1 O2 (2/2) DNSTRM HTR FD (BRN/GRY), 2 GND (BLK to G29A), 3 O2 DNSTRM SNSE RTN (DK BLU/DK GRN), 4 O2 (2/2) DNSTRM SNSR SIG (BRN). Short runner solenoid valve — 1 ASD FD (BRN/YEL), 2 GND (BLK/BRN to S154 (Dodge) / S994 (Chrysler) -> G102), 3 SRV ACT CTRL SIG (wire color printed only at the PCM: DK BLU/LT GRN), 4 SRV SNSE OUTPT (DK BLU/YEL). Multi displacement system solenoids — 1 SOL MDS CYL x (PCM driver), 2 GND (BLK). Variable camshaft timing solenoid — 1 GND (BLK), 2 VCT SIG (DK BLU). Injectors — 1 FUEL INJ x SIG (PCM driver), 2 ASD CTRL FD 1 (BRN/WHT). Coils — 1 IGN COIL DRV x (PCM driver), 2 ASD CTRL FD 2 (BRN/YEL). Ignition capacitors — 1 ASD CTRL FD 2 (BRN/YEL).

## Power supply / relays (page 1)

Front power distribution center, right side of engine compartment. PDC terminals are printed as cavity codes (63A, 54D, ...) on the PDC outline rather than as a named connector and pin:

- **Auto shut down relay** — terminals A and C (FSD B(+)) -> PDC 63A and 63C (RED/WHT, A751) -> S1311 -> C106 pin 2 -> interior power distribution center terminal 4B, fuse 4 (60 A), hot at all times. Terminal B (SW BATT FD PRE) -> PDC 63B (DK BLU/VIO, F800) -> PDC 34A -> fuse 34 (25 A) -> PDC 34B (BRN) -> S1320 -> PCM C1-74/75/76 (ASD CTRL FD 1, F342) and, via C100 pin 12 (BRN/WHT) -> S922A / S922B, fuel injectors pin 2 (ASD CTRL FD 1). Terminal D (ASD RTN) -> PDC 63D (BRN/WHT, K51) -> PCM C1-80.
- **Fuse 35 (25 A)**, printed "(ASD FEED)" — supply side PDC 35A is printed "(INFO NOT AVAILABLE)"; load side PDC 35B (BRN/YEL) -> C100 pin 9 -> S923A / S923B -> ignition coils pin 2 (ASD CTRL FD 2), ignition capacitor, ignition capacitor 2 and short runner solenoid valve pin 1 (ASD FD).
- **Fuel pump relay** — terminal A (FSD B(+)) -> PDC 54A (RED/WHT, A703) -> PDC 28B, fuse 28 (25 A), hot at all times. Terminal B (FUEL PUMP MTR FD) -> PDC 54B (DK BLU/ORG, N1) -> C102 pin 3 -> fuel pump module pin 5 (FUEL PMP MTR FD). Terminal C (IGN RS) -> PDC 54C (PNK/LT GRN) -> S1324. Terminal D (ENG CTRL FUL PUMP SIG) -> PDC 54D (BRN, K31) -> PCM C1-84.
- **Fuse 37 (10 A)**, hot with run/start relay energized -> PDC 37B (PNK/LT GRN) -> S1324 -> PCM C1-23 (IGN RS, F942) and fuel pump relay terminal C.
- **Fuse 31 (25 A)**, hot at all times -> PDC 31B (RED/GRY, A908) -> PCM C1-96 (FSD B(+)).
- **Vacuum pump relay** — terminal C (IGN RS) -> PDC 25C (PNK/TAN) -> PDC 39B, fuse 39 (10 A), hot with run/start relay energized. Terminal A (FSD B(+)) -> terminal 16 of the "UREA PDC BUS BAR" (FSD B(+)) inside the PDC. Terminals B (SW BATT FD PRE 2, PDC 25B) and D (VACUUM PMP RLY COIL CTRL, PDC 25D) are printed "(NOT USED)"; no PCM pin is wired to this relay in this diagram.

Grounds: G102 — right side of engine compartment (PCM C1-52/53/72; MDS and VCT solenoid grounds via S270; short runner solenoid valve GND via S154 (Dodge) / S994 (Chrysler)); G29A — all four oxygen sensor GND pins, no location printed; G120 — under driver's seat (fuel pump module pin 4 GND, BLK/ORG, Z916); G917A — under passenger's seat (evap system monitor switch pin 1 GND, BLK/WHT).

Inline connectors: C100 (pins 9, 12), C101 (pins 1-5, MDS/VCT jumper harness), C102 (pins 3, 11), C104 (pins 14, 15, 16, fuel tank pressure sensor), C106 (pin 2). The C101 and C104 pin groups are tied to their connector label by a dashed grouping line.

Other modules on the same diagram (not PCM pins): body control module (right end of dash) connector C6 pins 11 CAN IHC (-) (WHT, D264) and 12 CAN IHC (+) (LT GRN, D265) to the computer data lines system; connector C5 pins 17 FUEL SNDR LVL SIG PRIMARY (DK BLU/WHT, N4), 16 FUEL LVL SNSR RTN (BLK, G109), 15 FLI 2 (DK BLU/GRY, N5) to fuel pump module pins 3, 2 and 1 — the fuel level sender in the fuel pump module (top of fuel tank) reports to the BCM, not the PCM.

## Notes

- The source prints splice number S155 (Dodge) for two different splices: the sensor ground splice on C2-68 (Chrysler S995) and the upstream O2 return splice on C2-19 (Chrysler S992).
- Oxygen sensors 1/1 and 2/1 are both printed as located in the right exhaust, while 1/2 is printed in the left exhaust and 2/2 in the right exhaust.
- C2 coil driver functions are printed "COIL ON PLG DRV" for pins 1, 25 and 49 and "COIL ON PUG DRV" for pins 73-77.
- The first ignition capacitor is printed without a number; the second is printed "IGNITION CAPACITOR 2".
