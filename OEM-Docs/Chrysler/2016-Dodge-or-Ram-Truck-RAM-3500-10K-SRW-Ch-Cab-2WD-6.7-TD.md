# 2016 Ram 3500 L6-6.7L Turbo Diesel — PCM pinout (Engine Controls)

Transcribed from [2016-Dodge-or-Ram-Truck-RAM-3500-10K-SRW-Ch-Cab-2WD-6.7-TD.pdf](2016-Dodge-or-Ram-Truck-RAM-3500-10K-SRW-Ch-Cab-2WD-6.7-TD.pdf) (ALLDATA "Engine Controls" wiring diagram, Powertrain Management, Electrical - Interactive Color (Non OE), diagram pages 1-8 = PDF pages 2, 4, 6, 8, 10, 12, 14 and 16, sheets 498618-498625; the odd PDF pages carry only the "Page n of 8" headings).

The file name says 2WD; the page header inside the PDF reads "2016 Dodge or Ram Truck RAM 3500 10K SRW Ch Cab 4WD L6-6.7L DSL Turbo".

The diagram covers the engine controls of the 6.7L Cummins diesel: the Powertrain Control Module (PCM, lower left front of engine compartment) with its two connectors, the Selective Catalytic Reduction (SCR/DEF) module and urea pump assembly, the fuel heater, intake air heater and SCR heater relays, and the transmission solenoid/TRS wiring that the PCM drives directly on trucks without the Aisin transmission. Circled note 1 marks circuits "W/O AISIN TRANSMISSION", circled note 2 marks "W/ AISIN TRANSMISSION".

Connectors covered:

| Module | Connector | Highest pin shown | Role |
|--------|-----------|-------------------|------|
| PCM | C1 | 96 | Engine side: injectors, high pressure fuel pump motor, VGT actuator supply, EGR valve / EGR cooler bypass / intake throttle, crank/cam/turbo speed, fuel rail, boost, exhaust and crankcase pressure, temperatures, water in fuel sensor 1, 5 V supplies, CAN J1939 2 and actuator data link |
| PCM | C2 | 96 | Chassis side: battery/ignition feeds, grounds, CAN C and CAN J1939 4, APP sensor, A/C, exhaust temperature and differential pressure sensors, SCR dosing valve, relay controls, intake air heater relay, transmission solenoids/pressure switches/speed sensors |
| Selective catalytic reduction module | C1 | 7 | Power, ground, wake-up, CAN J1939 4, module heater supply |
| Selective catalytic reduction module | C2 | 16 | Urea pump assembly and urea line heater |
| Body control module | C1, C4, C5 | — | Ignition output, fuel heater relay control, CAN C, fuel level |
| Transmission control module (w/ Aisin) | C2 | — | Ignition output only |
| Radio frequency hub module | C1 | — | CAN C, clutch interlock |

Chrysler circuit codes (K11, F856, A209, ...) are printed next to the PCM and SCR module terminals and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark, LT = light). Unlisted pins are not connected in this diagram. "Ixxx pin n" is an in-line harness connector; "Sxxxx"/"SKxxx"/"SFxxx" are splices.

## PCM C1 (pins 1-96)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K611 | ORG/BRN | INJ 1 CTRL | Fuel injectors 1, 2 & 3 connector pin 5 (INJ 1 CTRL) |
| 2 | K612 | YEL/BRN | INJ 2 CTRL | Fuel injectors 1, 2 & 3 connector pin 3 (INJ 2 CTRL) |
| 3 | K613 | GRY/BRN | INJ 3 CTRL | Fuel injectors 1, 2 & 3 connector pin 1 (INJ 3 CTRL) |
| 4 | N639 | ORG/BLK | VGT 12 VLT SPLY | Electronic turbo actuator pin 4 (VGT 12 VLT SPLY) |
| 9 | K161 | BRN/LT BLU | CLUTCH FAN 12 VLT SPLY | Cooling fans system |
| 10 | K365 | DK BLU/BRN | HI PRES FUEL PMP MTR RTN | Fuel pump motor pin 1 |
| 11 | K366 | BRN/LT GRN | HI PRES FUEL PMP MTR DRV | Fuel pump motor pin 2 |
| 14 | K20 | BRN/GRY | GEN FLD CTRL | Starting/charging system |
| 16 | K541 | BRN/VIO | TURBO CHRG SPD SENS RTN | Turbo speed sensor pin 2 |
| 17 | K540 | BRN/GRY | TURBO CHRG SPD SENS SIG | Turbo speed sensor pin 1 |
| 18 | K44 | DK BLU/GRY | CMP SIG | Camshaft position sensor pin 3 |
| 22 | K687 | DK BLU/LT BLU | EGR POS SENS SIG 3 | EGR valve assembly pin 2 |
| 23 | K682 | DK BLU/LT GRN | EGR CTRL 1 | EGR valve assembly pin 8 |
| 24 | K684 | DK BLU/YEL | EGR CTRL 2 | EGR valve assembly pin 7 |
| 25 | K11 | BRN/YEL | INJ CTRL 1 | Fuel injectors 1, 2 & 3 connector pin 6 (INJ CTRL 1) |
| 26 | K12 | BRN/DK BLU | INJ CTRL 2 | Fuel injectors 1, 2 & 3 connector pin 4 (INJ CTRL 2) |
| 27 | K13 | BRN/LT BLU | INJ CTRL 3 | Fuel injectors 1, 2 & 3 connector pin 2 (INJ CTRL 3) |
| 28 | K639 | VIO/BLK | VGT RTN | Electronic turbo actuator pin 1 (VGT RTN) |
| 31 | K24 | BRN/LT BLU | CKP SIG | Crankshaft position sensor pin 3 |
| 32 | K157 | BRN/ORG | MAF SENS SIG | Mass air flow sensor pin 1 |
| 33 | N28 | DK BLU/TAN | RAD FAN SIG RTN C | Cooling fans system |
| 34 | K914 | BRN/WHT | SENS GND | S2456A: intake air temperature sensor pin 1, water in fuel sensor pin 1, EGR temperature sensor pin 1, engine coolant temperature sensor pin 1 (all SENS GND) |
| 35 | A804 | RED/VIO | GEN SENS | Starting/charging system |
| 36 | K355 | BRN/DK GRN | EXHAUST PRESS SIG | Manifold exhaust pressure sensor pin 3 (PRESS SENS SIG) |
| 42 | K179 | BRN/GRY | FRP SENS SIG 2 | Fuel rail pressure sensor pin 1 |
| 44 | K616 | BRN/YEL | AIR PRESS SENS SIG | MAP temperature/pressure sensor pin 1 (PRESS SENS SIG) |
| 45 | K37 | BRN/DK GRN | BOOST PRESS SENS SIG | Boost pressure sensor pin 1 (BST PRESS SENS SIG) |
| 46 | K685 | DK BLU | EGR POS SENS SIG 2 | EGR valve assembly pin 3 |
| 47 | K683 | DK BLU/GRY | EGR POS SENS SIG 1 | EGR valve assembly pin 4 |
| 48 | K686 | DK BLU/WHT | EGR CTRL 3 | EGR valve assembly pin 6 |
| 49 | K14 | BRN/TAN | INJ CTRL 4 | Fuel injectors 4, 5 & 6 connector pin 6 (INJ CTRL 4) |
| 50 | K38 | BRN/ORG | INJ CTRL 5 | Fuel injectors 4, 5 & 6 connector pin 4 (INJ CTRL 5) |
| 51 | K58 | BRN/VIO | INJ CTRL 6 | Fuel injectors 4, 5 & 6 connector pin 2 (INJ CTRL 6) |
| 52 | G6 | VIO/GRY | OIL PRESS SIG | Oil pressure switch pin 1 |
| 54 | K916 | BRN/ORG | SENS GND | S45A: MAP temperature/pressure sensor pin 4, camshaft position sensor pin 2, crankcase pressure sensor 2 pin 2, crankcase pressure sensor pin 2, boost pressure sensor pin 4 (all sensor ground) |
| 55 | K925 | DK BLU/GRY | CKP GND | Crankshaft position sensor pin 2 |
| 56 | K957 | BLK | SENS GND | Mass air flow sensor pin 3 (SENS GND) |
| 57 | K934 | BRN/ORG | SENS GND | S2458A: EGR valve assembly pin 5, manifold exhaust pressure sensor pin 2, radiator fan pin C, EGR cooling bypass actuator pin 3, EGR airflow control valve pin 3 (all SENS GND) |
| 58 | K180 | DK BLU/PNK | SENS RTN | Fuel rail pressure sensor pin 2 |
| 59 | K181 | BRN/YEL | FRP SENS SIG 1 | Fuel rail pressure sensor pin 5 |
| 60 | K21 | DK BLU/LT GRN | IAT SIG | Intake air temperature sensor pin 2 |
| 61 | K615 | BRN/WHT | INLET AIR TEMP SENS SIG | MAP temperature/pressure sensor pin 3 (AIR TEMP SENS SIG) |
| 62 | K48 | DK BLU/WHT | AIR COOLER TEMP SENS SIG | Boost pressure sensor pin 3 (COOLER TEMP SENS SIG) |
| 63 | K926 | DK BLU/GRY | CRANKCASE PRESS SENS SIG | Crankcase pressure sensor pin 3 (PRESS SENS SIG) |
| 64 | G123 | LT BLU/BRN | WIF SENS 1 SIG | Water in fuel sensor pin 2 (SENS 1 SIG) |
| 65 | K935 | DK BLU | EGR OUTLET TEMP SENS SIG | EGR temperature sensor pin 2 (SENS SIG) |
| 66 | K664 | BLK | CRANKCASE HOSE PRESS SIG | Crankcase pressure sensor 2 pin 3 (HOSE PRESS SIG) |
| 68 | K672 | BRN/DK GRN | AIR INTAKE THRTL SENS SIG | EGR airflow control valve pin 2 (INTAKE THRTL SENS SIG) |
| 69 | D130 | WHT/DK GRN | ACT HI DATA LINK | Computer data lines system |
| 70 | D132 | WHT/DK BLU | CAN J1939 2 (+) | Computer data lines system |
| 71 | K689 | DK BLU | EGR COOLER BYPASS MTR (-) | EGR cooling bypass actuator pin 4 (EGR BYPASS MTR (-)) |
| 72 | K688 | DK GRN | EGR COOLER BYPASS MTR (+) | EGR cooling bypass actuator pin 5 (EGR BYPASS MTR (+)) |
| 73 | K614 | WHT/BRN | INJ 4 CTRL | Fuel injectors 4, 5 & 6 connector pin 5 (INJ 4 CTRL) |
| 74 | K638 | LT BLU/BRN | INJ 5 CTRL | Fuel injectors 4, 5 & 6 connector pin 3 (INJ 5 CTRL) |
| 75 | K658 | LT GRN/BRN | INJ 6 CTRL | Fuel injectors 4, 5 & 6 connector pin 1 (INJ 6 CTRL) |
| 78 | F857 | PNK/YEL | 5 VLT SPLY | S46A: MAP temperature/pressure sensor pin 2, boost pressure sensor pin 2, camshaft position sensor pin 1, crankcase pressure sensor 2 pin 1, crankcase pressure sensor pin 1 (all 5 VLT SPLY) |
| 79 | K824 | BRN/ORG | 5 VLT SPLY | Crankshaft position sensor pin 1 (5 VLT SPLY) |
| 80 | K188 | PNK | MAF SENS SPLY | Mass air flow sensor pin 2 |
| 81 | K834 | PNK/YEL | 5 VLT SPLY | S2455A: EGR valve assembly pin 1, manifold exhaust pressure sensor pin 1, radiator fan pin E (5V REF), EGR cooling bypass actuator pin 1, EGR airflow control valve pin 4 (all 5 VLT SPLY) |
| 82 | K350 | BLK | 5 VLT SPLY | Fuel rail pressure sensor pin 3 (5 VLT SPLY) |
| 83 | K2 | VIO/ORG | ECT SIG | Engine coolant temperature sensor pin 2 |
| 90 | K92 | BRN | GEN O/P SIG | Starting/charging system |
| 92 | K671 | BRN/DK BLU | EGR COOLER BYPASS POS SIG | EGR cooling bypass actuator pin 2 (EGR BYPASS POS SIG) |
| 93 | D131 | WHT/LT BLU | ACT LO DATA LINK | Computer data lines system |
| 94 | D133 | WHT/LT GRN | CAN J1939 2 (-) | Computer data lines system |
| 95 | K674 | BRN/YEL | AIR INTKE THRTL MTR (-) | EGR airflow control valve pin 5 (INTKE THRTL MTR (-)) |
| 96 | K673 | BRN/TAN | AIR INTKE THRTL MTR (+) | EGR airflow control valve pin 1 (INTKE THRTL MTR (+)) |

Each injector connector carries two PCM circuits per injector: "INJ n CTRL" (K611-K613, K614/K638/K658) and "INJ CTRL n" (K11-K13, K14/K38/K58). The diagram does not say which is the high side.

Component locations (pages 1-3): PCM — lower left front of engine compartment; fuel pump motor — lower left front of engine; oil pressure switch — lower right side of engine block; manifold exhaust pressure sensor — rear of exhaust manifold; MAP temperature/pressure sensor — on air inlet duct assembly; intake air temperature sensor — left rear of engine; crankshaft position sensor — lower front of engine block; camshaft position sensor — left front of cylinder head; fuel rail pressure sensor — left rear of engine; EGR valve assembly — left rear of engine compartment; water in fuel sensor — left side of engine; EGR temperature sensor — top right of engine; engine coolant temperature sensor — right front of cylinder head; electronic turbo actuator — on turbocharger bearing housing; fuel injectors 1, 2 & 3 — top of engine, over cylinders 1, 2 & 3; fuel injectors 4, 5 & 6 — top of engine, over cylinders 4, 5 & 6; crankcase pressure sensor 2 — upper right rear of engine; crankcase pressure sensor — upper left rear of engine; turbo speed sensor — on turbocharger; mass air flow sensor — right side of engine; radiator fan — behind radiator; boost pressure sensor — left side of engine; EGR cooling bypass actuator — top rear of engine; EGR airflow control valve — left side of engine compartment; urea quality sensor — on urea tank. Splices: S2456A — top left front of engine, in 6.7L engine harness; S45A, S46A, S2455A, S2458A — left side of engine, in 6.7L engine harness.

Component pinouts as printed (pages 1-3):

- Fuel pump motor — 1 HI PRES FUEL PMP MTR RTN (DK BLU/BRN), 2 HI PRES FUEL PMP MTR DRV (BRN/LT GRN).
- Oil pressure switch — 1 OIL PRESS SIG (VIO/GRY); the switch body is shown grounded.
- Manifold exhaust pressure sensor — 1 5 VLT SPLY (PNK/YEL), 2 SENS GND (BRN/ORG), 3 PRESS SENS SIG (BRN/DK GRN).
- MAP temperature/pressure sensor — 1 PRESS SENS SIG (BRN/YEL), 2 5 VLT SPLY (PNK/YEL), 3 AIR TEMP SENS SIG (BRN/WHT), 4 SENS GND (BRN/ORG).
- Intake air temperature sensor — 1 SENS GND (BRN/WHT), 2 IAT SIG (DK BLU/LT GRN).
- Crankshaft position sensor — 1 5 VLT SPLY (BRN/ORG), 2 CKP GND (DK BLU/GRY), 3 CKP SIG (BRN/LT BLU).
- Camshaft position sensor — 1 5 VLT SPLY (PNK/YEL), 2 SENS GND (BRN/ORG), 3 CMP SIG (DK BLU/GRY).
- Fuel rail pressure sensor — 1 FRP SENS SIG 2 (BRN/GRY), 2 SENS RTN (DK BLU/PNK), 3 5 VLT SPLY (BLK), 5 FRP SENS SIG 1 (BRN/YEL).
- EGR valve assembly — 1 5 VLT SPLY (PNK/YEL), 2 EGR POS SENS SIG 3 (DK BLU/LT BLU), 3 EGR POS SENS SIG 2 (DK BLU), 4 EGR POS SENS SIG 1 (DK BLU/GRY), 5 SENS GND (BRN/ORG), 6 EGR CTRL 3 (DK BLU/WHT), 7 EGR CTRL 2 (DK BLU/YEL), 8 EGR CTRL 1 (DK BLU/LT GRN).
- Water in fuel sensor — 1 SENS GND (BRN/WHT), 2 SENS 1 SIG (LT BLU/BRN).
- EGR temperature sensor — 1 SENS GND (BRN/WHT), 2 SENS SIG (DK BLU).
- Engine coolant temperature sensor — 1 SENS GND (BRN/WHT), 2 ECT SIG (VIO/ORG).
- Electronic turbo actuator — 1 VGT RTN (VIO/BLK), 2 ACT LO DATA LINK (WHT/LT BLU, to computer data lines system), 3 ACT HI DATA LINK (WHT/DK GRN, to computer data lines system), 4 VGT 12 VLT SPLY (ORG/BLK).
- Fuel injectors 1, 2 & 3 connector — 1 INJ 3 CTRL (GRY/BRN), 2 INJ CTRL 3 (BRN/LT BLU), 3 INJ 2 CTRL (YEL/BRN), 4 INJ CTRL 2 (BRN/DK BLU), 5 INJ 1 CTRL (ORG/BRN), 6 INJ CTRL 1 (BRN/YEL).
- Fuel injectors 4, 5 & 6 connector — 1 INJ 6 CTRL (LT GRN/BRN), 2 INJ CTRL 6 (BRN/VIO), 3 INJ 5 CTRL (LT BLU/BRN), 4 INJ CTRL 5 (BRN/ORG), 5 INJ 4 CTRL (WHT/BRN), 6 INJ CTRL 4 (BRN/TAN).
- Crankcase pressure sensor 2 — 1 5 VLT SPLY (PNK/YEL), 2 SENS GND (BRN/ORG), 3 HOSE PRESS SIG (BLK).
- Crankcase pressure sensor — 1 5 VLT SPLY (PNK/YEL), 2 SENS GND (BRN/ORG), 3 PRESS SENS SIG (DK BLU/GRY).
- Turbo speed sensor — 1 BRN/GRY (TURBO CHRG SPD SENS SIG), 2 BRN/VIO (TURBO CHRG SPD SENS RTN).
- Mass air flow sensor — 1 MAF SENS SIG (BRN/ORG), 2 MAF SENS SPLY (PNK), 3 SENS GND (BLK).
- Radiator fan — C SENS GND (BRN/ORG), E 5V REF (PNK/YEL); other terminals are in the cooling fans system.
- Boost pressure sensor — 1 BST PRESS SENS SIG (BRN/DK GRN), 2 5 VLT SPLY (PNK/YEL), 3 COOLER TEMP SENS SIG (DK BLU/WHT), 4 SNSE GND (BRN/ORG).
- EGR cooling bypass actuator — 1 5 VLT SPLY (PNK/YEL), 2 EGR BYPASS POS SIG (BRN/DK BLU), 3 SENS GND (BRN/ORG), 4 EGR BYPASS MTR (-) (DK BLU), 5 EGR BYPASS MTR (+) (DK GRN).
- EGR airflow control valve — 1 INTKE THRTL MTR (+) (BRN/TAN), 2 INTAKE THRTL SENS SIG (BRN/DK GRN), 3 SENS GND (BRN/ORG), 4 5 VLT SPLY (PNK/YEL), 5 INTKE THRTL MTR (-) (BRN/YEL).
- Urea quality sensor — 1 SCR RLY 3 O/P (BLK/WHT, via I2855 pin 1 then PNK/ORG to PDC C3 pin 11, fuse 61), 2 CAN J1939 4 (-) (BLK, to computer data lines system), 3 CAN J1939 4 (+) (BLK/WHT, to computer data lines system), 4 GND (BLK, via I2855 pin 4 to G914A).

## PCM C2 (pins 1-96)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | A209 | RED | FSD B(+) | SA209ZA, fed from PDC C3 pin 3, fuse 22 (30 A), hot at all times |
| 2 | T752 | DK GRN/ORG | STARTER RLY CTRL | Starting/charging system |
| 5 | F942 | PNK/LT GRN | FSD IGN RUN-STRT | SF942ZA, fed from PDC C3 pin 28, fuse 78 (10 A), run/start relay output; the same splice feeds intake air diverter valve pin 4 |
| 6 | C13 | LT BLU/ORG | A/C CLUTCH CTRL | Air conditioning system |
| 7 | K31 | BRN | FUEL PMP CTRL | Fuel pump relay coil terminal 86 (PDC C3 pin 25) |
| 8 | F856 | YEL/PNK | 5 VLT SPLY | SF856ZA: line pressure sensor pin 2 (5 VLT SPLY); exhaust differential pressure sensor pin 4 (5 VLT SPLY) via I530 pin 13 |
| 9 | F855 | PNK/YEL | 5 VLT SPLY | SF855B: accelerator pedal position sensor pin 1 via I200 pin 18 and pin 6 via I120 pin 19 / I200 pin 31; A/C pressure transducer pin 1 via I120 pin 19 / I200 pin 31 (all 5 VLT SPLY) |
| 10 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 2 via I200 pin 21 |
| 11 | T4 | DK GRN/LT BLU | TRS T4 SIG | Transmission solenoid/TRS assembly pin 13 |
| 12 | T1 | DK GRN/LT BLU | TRS T1 SIG | Transmission solenoid/TRS assembly pin 9 |
| 13 | C18 | LT BLU/BRN | A/C PRESS SIG | A/C pressure transducer pin 2 via I120 pin 20 / I200 pin 32 |
| 19 | T147 | DK GRN/YEL | 2C PRESS SIG | Transmission solenoid/TRS assembly pin 15 |
| 20 | T9 | DK GRN/TAN | OD PRESS SIG | Transmission solenoid/TRS assembly pin 16 |
| 21 | D134 | WHT/DK BLU | CAN J1939 4 (+) | Computer data lines system |
| 22 | D27 | TAN/WHT | CAN C (+) | Computer data lines system |
| 23 | T118 | DK GRN | LP VFS CTRL | Transmission solenoid/TRS assembly pin 12 |
| 24 | T16 | YEL/ORG | TRANS CTRL O/P | ST16A: powertrain module relay terminal 87 (PDC C3 pin 20); transmission solenoid/TRS assembly pin 10 (TRANS CTRL O/P) |
| 25 | A209 | RED | FSD B(+) | SA209ZA (fuse 22) |
| 26 | A209 | RED | FSD B(+) | SA209ZA (fuse 22) |
| 27 | A209 | RED | FSD B(+) | SA209ZA (fuse 22) |
| 28 | A209 | RED | FSD B(+) | SA209ZA (fuse 22) |
| 29 | F1 | PNK/WHT | IGN OFF/RUN/STRT CTRL O/P | SF1A (w/ Aisin transmission): transmission range switch pin 3; via I200 pin 26 to SPF1C: body control module C1 pin 24 and transmission control module C2 pin 19 (all IGN OFF/RUN/STRT CTRL O/P) |
| 32 | K400 | BRN/VIO | APP SENS GND 2 | SK400ZB: accelerator pedal position sensor pin 4 (APP GND 2) via I200 pin 23; A/C pressure transducer pin 3 (SENS GND) via I120 pin 21 / I200 pin 33; line pressure sensor pin 1; exhaust differential pressure sensor pin 1 via I530 pin 9 (both APP SENS GND) |
| 33 | K167 | BRN/YEL | APP SENS GND 1 | Accelerator pedal position sensor pin 3 via I200 pin 22 |
| 34 | K384 | BRN/YEL | EXHAUST TEMP SENS 4 SIG | Exhaust temperature sensor 1/4 pin 1 (SENS 4 SIG) via I530 pin 17 |
| 35 | T38 | YEL/BRN | LINE PRESS SIG | Line pressure sensor pin 3 |
| 36 | K303 | BRN/ORG | WIF SENS 2 SIG | Fuel heater/WIF sensor assembly C2 pin 1 via I530 pin 21 |
| 37 | K387 | BRN/LT GRN | EXHAUST GAS TEMP SENS 5 SIG | Exhaust temperature sensor 1/5 pin 1 (SENS 5 SIG) via I530 pin 18 |
| 38 | K185 | BRN/LT BLU | EXHAUST TEMP SENS 1 SIG | Exhaust temperature sensor 1/1 pin 1 (SENS 1 SIG) via I530 pin 10 |
| 39 | K372 | BRN/DK GRN | EXHAUST TEMP SENS 2 SIG | Exhaust temperature sensor 1/2 pin 1 (printed SENS 1/3 SIG) via I530 pin 16 |
| 40 | K186 | BRN/DK GRN | EXHAUST TEMP SENS 3 SIG | Exhaust temperature sensor 1/3 pin 1 (SENS 3 SIG) via I530 pin 15 |
| 41 | K491 | BRN/LT BLU | SOOT PRESS SENS SIG | Exhaust differential pressure sensor pin 2 (SOOT SENS SIG) via I530 pin 20 |
| 42 | K373 | BRN | EXHST GAS PRESS SENS SIG | Exhaust differential pressure sensor pin 3 (GAS SENS SIG) via I530 pin 22 |
| 43 | T29 | YEL/WHT | UD PRESS SIG | Transmission solenoid/TRS assembly pin 18 |
| 44 | T48 | BRN/YEL | 4C PRESS SIG | Transmission solenoid/TRS assembly pin 11 |
| 45 | D135 | WHT/DK GRN | CAN J1939 4 (-) | Computer data lines system |
| 46 | D28 | YEL | CAN C (-) | Computer data lines system |
| 47 | T50 | YEL/TAN | L/R PRESS SIG | Transmission solenoid/TRS assembly pin 14 |
| 48 | T259 | YEL/DK GRN | 4C CTRL | Transmission solenoid/TRS assembly pin 19 |
| 49 | Z915 | BLK | GND | Ground G915A |
| 50 | Z915 | BLK | GND | Ground G915A |
| 51 | Z915 | BLK | GND | Ground G915A |
| 52 | Z915 | BLK | GND | Ground G915A |
| 53 | K426 | DK BLU/LT GRN | SCR DOSING RTN | Selective catalytic reduction dosing valve pin 2 via I530 pin 5 |
| 55 | N27 | DK BLU/GRY | FAN SPD SENS SIG | Cooling fans system |
| 56 | T54 | DK GRN/ORG | TRANS TEMP SIG | Transmission solenoid/TRS assembly pin 23 |
| 57 | V937 | VIO/BRN | S/C SW GND | Coolant level sensor pin B via I230 pin 6 |
| 58 | T14 | DK GRN/BRN | O/P SPD SIG | Output speed sensor pin 1 |
| 59 | T13 | DK GRN/VIO | SPD SENS GND | ST13YA: output speed sensor pin 2, input speed sensor pin 2 |
| 60 | T52 | DK GRN/ORG | I/P SPD SIG | Input speed sensor pin 1 |
| 62 | K900 | DK BLU/DK GRN | SENS GND | SK900ZA: transmission solenoid/TRS assembly pin 22 (SENS GND); via I530 pin 13 to SK900ZB: exhaust temperature sensors 1/1, 1/2, 1/3, 1/4 and 1/5 pin 2 (SENS GND) and fuel heater/WIF sensor assembly C2 pin 2 (SENS GND) |
| 64 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 5 via I200 pin 20 |
| 65 | N33 | BRN | INTAKE AIR DVR FDBCK | Intake air diverter valve pin 2 via I230 pin 27 |
| 71 | T59 | YEL/LT BLU | UD CTRL | Transmission solenoid/TRS assembly pin 17 |
| 72 | T140 | YEL/GRY | MS CTRL | Transmission solenoid/TRS assembly pin 21 |
| 73 | Z915 | BLK | GND | Ground G915A |
| 74 | T15 | YEL/BRN | TRANS CTRL | Powertrain module relay coil terminal 85 (PDC C3 pin 16) |
| 75 | K174 | BRN/YEL | INTAKE HTR RLY CTRL | Intake air heater relay C3 pin 1 (coil terminal 85) via I230 pin 17 |
| 76 | K974 | BRN/YEL | INTAKE HTR RLY CTRL RTN | Intake air heater relay C4 pin 1 (coil terminal 86) via I230 pin 33 |
| 77 | K428 | DK BLU | SCR DOSING SIG | Selective catalytic reduction dosing valve pin 1 via I530 pin 6 |
| 79 | K20 | BRN/GRY | GEN FLD CTRL | Starting/charging system |
| 81 | N32 | BRN/PNK | INTAKE AIR DRV COMMAND | Intake air diverter valve pin 3 via I230 pin 24 |
| 82 | K401 | DK BLU/YEL | SCR RLY 1 CTRL | SCR heater relay 1 coil terminal 86 (PDC C3 pin 31) |
| 83 | K970 | BRN/ORG | DCU WAKE UP | Selective catalytic reduction module C1 pin 4 (DCU WAKE-UP) |
| 86 | T3 | DK GRN/DK BLU | TRS T3 SIG | Transmission solenoid/TRS assembly pin 8 |
| 87 | T42 | DK GRN/YEL | TRS T42 SIG | Transmission solenoid/TRS assembly pin 5 |
| 88 | T41 | YEL/DK BLU | TRS T41 SIG | Note 1 (w/o Aisin): transmission solenoid/TRS assembly pin 4; note 2 (w/ Aisin): transmission range switch pin 9 |
| 89 | G181 | ORG/VIO | COOL LVL SW SIG | Coolant level sensor pin A via I230 pin 14 |
| 95 | T219 | YEL/LT GRN | 2C CTRL | Transmission solenoid/TRS assembly pin 20 |
| 96 | T20 | DK GRN/WHT | L/R CTRL | Transmission solenoid/TRS assembly pin 2 |

Component locations (pages 4-8): intake air heater relay — right rear of engine compartment; intake air heater — left side of engine; accelerator pedal position sensor — top of accelerator pedal assembly; radio frequency hub module — center rear of cab wall; clutch interlock switch (M/T) — top of clutch pedal assembly; A/C pressure transducer — right front of engine compartment; line pressure sensor (w/o Aisin transmission) — location not printed; exhaust differential pressure sensor — mounted to transmission housing; exhaust temperature sensor 1/1 — in exhaust, upstream of diesel particulate filter; 1/2 — in middle of diesel particulate filter; 1/3 — at rear of diesel particulate filter; 1/4 — in selective catalytic reduction catalyst; 1/5 — in rear of selective catalytic reduction catalyst (printed "selection catalytic reduction catalyst"); transmission range switch (w/ Aisin transmission) — left side of transmission; transmission solenoid/TRS assembly (w/o Aisin transmission) — left side of transmission; output speed sensor (w/o Aisin transmission) — left rear of transmission; input speed sensor (w/o Aisin transmission) — left side of transmission; coolant level sensor — in coolant recovery tank; selective catalytic reduction dosing valve — under right side of vehicle, near SCR catalyst; fuel heater/WIF sensor assembly — center under side of vehicle, forward of rear differential; fuel heater — left rear of engine; NOx sensor 1/1 — in turbocharger outlet; NOx sensor 1/2 — at outlet of selective catalytic reduction catalyst; intake air diverter valve — right front of engine compartment; fuel pump module — on fuel tank; body control module and transmission control module (w/ Aisin transmission) — left end of dash. Splices: SF855B — left side of engine, in transmission harness; SK400ZB, SK900ZA — near transmission, in transmission harness; SF856ZA — left rear of engine, in transmission harness; SK900ZB — under right side of cab, in right chassis harness; ST13YA — top left of engine, in transmission harness.

Component pinouts as printed (pages 5-8):

- Accelerator pedal position sensor — 1 5 VLT SPLY (BRN/VIO at sensor, PNK/YEL after I200 pin 18), 2 APP SIG 1 (BRN/WHT), 3 APP GND 1 (BRN/YEL), 4 APP GND 2 (BRN/VIO), 5 APP SIG 2 (WHT/BRN), 6 5 VLT SPLY (VIO/BRN at sensor, PNK/YEL after I120 pin 19).
- A/C pressure transducer — 1 5 VLT SPLY (PNK/YEL), 2 A/C PRESS SIG (LT BLU/BRN), 3 SENS GND (BRN/VIO at sensor, BRN/WHT after I120 pin 21).
- Line pressure sensor (w/o Aisin transmission) — 1 APP SENS GND (BRN/VIO), 2 5 VLT SPLY (YEL/PNK), 3 LINE PRESS SIG (YEL/BRN).
- Exhaust differential pressure sensor — 1 APP SENS GND (BRN/VIO), 2 SOOT SENS SIG (BRN/LT BLU), 3 GAS SENS SIG (BRN), 4 5 VLT SPLY (YEL/PNK).
- Exhaust temperature sensors 1/1-1/5 — 1 signal (1/1 BRN/LT BLU, 1/2 BRN/DK GRN, 1/3 BRN/DK GRN, 1/4 BRN/YEL, 1/5 BRN/LT GRN), 2 SENS GND (DK BLU/DK GRN).
- Transmission range switch (w/ Aisin transmission) — 3 IGN OFF/RUN/START CTRL O/P (PNK/WHT), 9 TRS T41 SIG (YEL/DK BLU).
- Transmission solenoid/TRS assembly (w/o Aisin transmission) — 2 L/R CTRL (DK GRN/WHT), 4 TRS T41 SIG (YEL/DK BLU), 5 TRS T42 SIG (DK GRN/YEL), 8 TRS T3 SIG (DK GRN/DK BLU), 9 TRS T1 SIG (DK GRN/LT BLU), 10 TRANS CTRL O/P (YEL/ORG), 11 4C PRESS SIG (BRN/YEL), 12 LP VFS CTRL (DK GRN), 13 TRS T4 SIG (DK GRN/LT BLU), 14 L/R PRESS SIG (YEL/TAN), 15 2C PRESS SIG (DK GRN/YEL), 16 OD PRESS SIG (DK GRN/TAN), 17 UD CTRL (YEL/LT BLU), 18 UD PRESS SIG (YEL/WHT), 19 4C CTRL (YEL/DK GRN), 20 2C CTRL (YEL/LT GRN), 21 MS CTRL (YEL/GRY), 22 SENS GND (DK BLU/DK GRN), 23 TRANS TEMP SIG (DK GRN/ORG).
- Output speed sensor — 1 DK GRN/BRN (O/P SPD SIG), 2 DK GRN/VIO (SPD SENS GND). Input speed sensor — 1 DK GRN/ORG (I/P SPD SIG), 2 DK GRN/VIO (SPD SENS GND).
- Coolant level sensor — A COOL LVL SW SIG (ORG/VIO), B S/C SW GND (VIO/BRN).
- Selective catalytic reduction dosing valve — 1 SCR DOSING SIG (DK BLU), 2 SCR DOSING RTN (DK BLU/LT GRN).
- Fuel heater/WIF sensor assembly — C1: 1 FUEL HTR SPLY 2 (PNK/LT BLU), 2 GND (BLK, via SZ915A to G915A); C2: 1 WIF SENS 2 SIG (BRN/ORG), 2 SENS GND (DK BLU/DK GRN).
- Fuel heater — 1 DES FUEL HTR SPLY (RED at heater, PNK/DK GRN after I1B pin 1), 2 GND (BLK to G916A).
- Intake air diverter valve — 1 GND (BLK to G908A), 2 INTAKE AIR DVR FDBCK (BRN), 3 INTAKE AIR DRV COMMAND (BRN/PNK), 4 FSD IGN RUN-START (PNK/LT GRN, via I230 pin 7).
- NOx sensor 1/1 — 1 FSD IGN SW O/P (PNK/ORG, via I1A pin 4), 2 ACT LO DATA LINK (WHT/LT BLU), 3 ACT HI DATA LINK (WHT/DK GRN), 4 GND (BLK to G916A); data link wires go to the computer data lines system.
- NOx sensor 1/2 — 1 CAN J1939 4 (+) (WHT/DK BLU), 2 CAN J1939 4 (-) (WHT/DK GRN), 3 GND (BLK, via SZ915A to G915A), 4 FSD IGN SW O/P (PNK/ORG, via I530 pin 12); CAN wires go to the computer data lines system.
- Intake air heater — 1 RLY O/P (BLK); the heater body is shown grounded.
- Clutch interlock switch (M/T) — 1 CLUTCH INTLK SIG (YEL/GRY), 2 GND (BLK to G906A).
- Fuel pump module — 1 GND (BLK, Z914, to G914A), 2 FUEL LVL SENS RTN (BLK, G109), 3 FUEL LVL SENS SIG (DK BLU/WHT, N4), 4 FUEL PMP CTRL O/P (DK BLU/ORG, N1).

## Selective catalytic reduction module (page 4)

Located middle of underside of vehicle, behind transmission.

### C1

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | Z915 | BLK | GND | Ground G915A |
| 2 | D135 | WHT/DK GRN | CAN J1939 4 (-) | Computer data lines system |
| 3 | D134 | WHT/DK BLU | CAN J1939 4 (+) | Computer data lines system |
| 4 | K970 | BRN/ORG | DCU WAKE-UP | PCM C2-83 (DCU WAKE UP) |
| 5 | A969 | RED | FSD B (+) | PDC C5 pin 15, fuse 69 (15 A), hot at all times, via I200 pin 13 |
| 7 | F203 | PNK/LT BLU | SCR MOD HTR SPLY | SCR heater relay terminal 87 (PDC pin 2) via I200 pin 25 |

### C2

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K403 | GRY/WHT | TANK HTR SPLY | Urea pump assembly pin 9 |
| 2 | K413 | BLK/WHT | DEF TEMP SENS SIG | Urea pump assembly pin 1 |
| 3 | K414 | BLK | DEF LVL SIG | Urea pump assembly pin 14 |
| 4 | K421 | GRY/WHT | DEF SPLY PMP PHASE A | Urea pump assembly pin 7 |
| 5 | K470 | YEL/GRY | DEF SPLY PMP PHASE B | Urea pump assembly pin 8 |
| 6 | K434 | BLK | DEF SPLY PMP PHASE C | Urea pump assembly pin 16 |
| 7 | K432 | BLK | DEF LVL SENS SIG | Urea pump assembly pin 12 |
| 8 | K404 | GRY/WHT | PRESS LINE HTR SPLY | Urea line 1 pressure heater pin A |
| 9 | K435 | BLK/WHT | PRESS LINE HTR GND | Urea line 1 pressure heater pin B |
| 10 | K469 | BLK | DEF TEMP SENS RTN | Urea pump assembly pin 2 |
| 11 | K433 | BLK | DEF LVL SENS 5V SPLY | Urea pump assembly pin 13 |
| 12 | K422 | BLK | DEF PRESS 5V SPLY | Urea pump assembly pin 5 |
| 13 | K431 | BLK/WHT | DEF LVL SENS GND | Urea pump assembly pin 6 |
| 14 | K423 | BLK | DEF PRESS SIG | Urea pump assembly pin 4 |
| 15 | K424 | BLK/WHT | DEF PRESS GND | Urea pump assembly pin 3 |
| 16 | K420 | BLK/WHT | TANK HTR GND | Urea pump assembly pin 11 |

Urea pump assembly (in urea tank) pinout as printed: 1 DEF TEMP SENS SIG (BLK/WHT), 2 DEF TEMP SENS RTN (BLK), 3 DEF PRESS GND (BLK/WHT), 4 DEF PRESS SIG (BLK), 5 DEF PRESS 5V SPLY (BLK), 6 DEF LVL SENS GND (BLK/WHT), 7 DEF SPLY PMP PHASE A (GRY/WHT), 8 DEF SPLY PMP PHASE B (YEL/GRY), 9 TANK HTR SPLY (GRY/WHT), 11 TANK HTR GND (BLK/WHT), 12 DEF LVL SENS SIG (BLK), 13 DEF LVL SENS 5V SPLY (BLK), 14 DEF LVL SIG (BLK), 15 GND (BLK, via SP9151A to G917A), 16 DEF SPLY PMP PHASE C (BLK). Urea line 1 pressure heater (under left side of vehicle, near urea tank): A PRESS LINE HTR SPLY (GRY/WHT), B PRESS LINE HTR GND (BLK/WHT).

## Other modules (pages 4 and 6)

### Body control module (left end of dash)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-24 | F1 | PNK/WHT | IGN OFF/RUN/STRT CTRL O/P | SPF1C, then I200 pin 26 to PCM C2-29 |
| C4-12 | K57 | BRN/WHT | FUEL HTR RLY CTRL | Fuel heater relay 2 coil terminal 85 (PDC C7 pin 4) |
| C5-16 | G109 | BLK | FUEL LVL SENS RTN | Fuel pump module pin 2 via I220 pin 6 |
| C5-17 | N4 | DK BLU/WHT | FUEL LVL SENS SIG | Fuel pump module pin 3 via I220 pin 5 |
| C5-25 | D45 | BRN | CAN C (+) | Computer data lines system |
| C5-26 | D46 | YEL | CAN C (-) | Computer data lines system |

### Transmission control module (w/ Aisin transmission, left end of dash)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C2-19 | F1 | PNK/WHT | IGN OFF/RUN/STRT CTRL O/P | SPF1C (w/ Aisin transmission), joining BCM C1-24 and PCM C2-29 |

### Radio frequency hub module (center rear of cab wall)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-7 | T140 | YEL/GRY | CLUTCH INT LK SIG | Clutch interlock switch (M/T) pin 1 |
| C1-11 | D40 | YEL | CAN C (-) | Computer data lines system |
| C1-12 | D39 | DK BLU | CAN C (+) | Computer data lines system |

## Power supply / relays / fuses (pages 4-6 and 8)

Underhood power distribution center (PDC), left front of engine compartment. Relay terminal numbers are as printed.

- **Fuse 22 (30 A)**, hot at all times -> PDC C3 pin 3 (RED, A209) -> SA209ZA -> PCM C2-1, C2-25, C2-26, C2-27, C2-28 (FSD B(+)).
- **Run/start relay** — terminal 30 hot at all times; terminal 87 feeds the fuel pump relay coil (85), the fuel heater relay coil (85) and fuse 78 (10 A) -> PDC C3 pin 28 (PNK/LT GRN) -> SF942ZA -> PCM C2-5 (FSD IGN RUN-STRT, F942) and, via I230 pin 7, intake air diverter valve pin 4.
- **Fuel pump relay** — terminal 30 hot at all times; 87 -> fuse 70 (30 A) -> PDC C5 pin 17 (DK BLU/ORG) -> I220 pin 4 -> fuel pump module pin 4 (FUEL PMP CTRL O/P, N1). Coil: 85 from the run/start relay output; 86 -> PDC C3 pin 25 (BRN) -> PCM C2-7 (FUEL PMP CTRL, K31).
- **Powertrain module relay** — terminal 30 from the hot-at-all-times bus through fuse 57 (15 A); 87 -> PDC C3 pin 20 (YEL/ORG) -> ST16A -> PCM C2-24 (TRANS CTRL O/P, T16) and transmission solenoid/TRS assembly pin 10. Coil: 85 -> PDC C3 pin 16 (YEL/BRN) -> PCM C2-74 (TRANS CTRL, T15); 86 -> PDC C1 pin 12 (BLK) -> G904A.
- **SCR heater relay 1** — terminal 30 hot at all times; 87 -> fuse 8 (20 A) -> PDC C3 pin 42 (PNK/ORG) -> SF204A -> NOx sensor 1/1 pin 1 (via I1A pin 4) and NOx sensor 1/2 pin 4 (via I530 pin 12); 87 also -> fuse 61 (10 A) -> PDC C3 pin 11 (PNK/ORG) -> I2855 pin 1 -> urea quality sensor pin 1 (SCR RLY 3 O/P). Coil: 86 -> PDC C3 pin 31 (DK BLU/YEL) -> PCM C2-82 (SCR RLY 1 CTRL, K401); 85 -> PDC C1 pin 12 (BLK) -> G904A.
- **SCR heater relay** (page 4) — terminal 30 from fuse 19 (30 A), hot at all times; 87 -> PDC pin 2 (PNK/LT BLU) -> I200 pin 25 -> SCR module C1-7 (SCR MOD HTR SPLY, F203). Coil: 85 <- PDC pin 4 (PNK/LT GRN) <- I200 pin 3 <- PDC C3 pin 34, fuse 75 (10 A), hot with run/start relay energized; 86 -> PDC pin 6 (BLK) -> G905A. Pins 2, 4 and 6 are drawn in the same connector group as PDC C5 pin 15.
- **Fuse 69 (15 A)**, hot at all times -> PDC C5 pin 15 (RED) -> I200 pin 13 -> SCR module C1-5 (FSD B (+), A969).
- **Fuel heater relay** — terminal 30 hot at all times; 87 -> fuse 9 (40 A) -> PDC C3 pin 22 (PNK/DK GRN) -> I1B pin 1 -> fuel heater pin 1 (DES FUEL HTR SPLY). Coil: 85 from the run/start relay output; 86 -> PDC C1 pin 12 (BLK) -> G904A. No module control wire is drawn for this relay.
- **Fuel heater relay 2** — terminal 30 hot at all times; 87 -> fuse 37 (30 A) -> PDC C7 pin 3 (PNK/LT BLU) -> I200 pin 8 -> I530 pin 1 -> fuel heater/WIF sensor assembly C1 pin 1 (FUEL HTR SPLY 2). Coil: 85 -> PDC C7 pin 4 (BRN/WHT) -> body control module C4-12 (FUEL HTR RLY CTRL, K57); 86 -> PDC C7 pin 8 (BLK) -> G905A.
- **Intake air heater relay** (right rear of engine compartment, not in the PDC) — C1 pin 1 (terminal 30, RED/YEL) -> SA19 -> TAN -> battery positive; C2 pin 1 (terminal 87, BLK) -> intake air heater pin 1 (RLY O/P); C3 pin 1 (coil terminal 85, BRN/YEL) -> I230 pin 17 -> PCM C2-75 (INTAKE HTR RLY CTRL, K174); C4 pin 1 (coil terminal 86, BRN/YEL) -> I230 pin 33 -> PCM C2-76 (INTAKE HTR RLY CTRL RTN, K974). Terminal 87A is not connected in this diagram.

Grounds: G915A — on frame, behind right side of rear axle (PCM C2-49/50/51/52 and C2-73, SCR module C1-1, NOx sensor 1/2 and fuel heater/WIF sensor assembly via SZ915A); G904A (PDC C1 pin 12: powertrain module relay, SCR heater relay 1 and fuel heater relay coils); G905A (SCR heater relay and fuel heater relay 2 coils); G906A (clutch interlock switch); G908A (intake air diverter valve); G914A (fuel pump module, urea quality sensor via I2855 pin 4); G916A — lower right front of engine compartment (fuel heater, NOx sensor 1/1); G917A — in urea tank harness (urea pump assembly via SP9151A). No ground wire is drawn at PCM C1; its SENS GND/SENS RTN pins are sensor returns.

## Notes

- The page header says 4WD while the file name says 2WD.
- Circuit K20 / BRN/GRY "GEN FLD CTRL" is printed at both PCM C1-14 and PCM C2-79, each going to the starting/charging system.
- Circuit T140 / YEL/GRY is printed both at PCM C2-72 (MS CTRL, to the transmission solenoid/TRS assembly) and at radio frequency hub module C1-7 (clutch interlock); the two wires are not joined in this diagram.
- In-line connector pins I120 pin 19 and I200 pin 31 are drawn twice with a PNK/YEL 5 V wire: once from accelerator pedal position sensor pin 6 (page 6) and once from A/C pressure transducer pin 1 (page 7). Both drawings end at splice SF855B / PCM C2-9.
- Several 5 V supply and signal wires carry colours that are unusual for their function and are transcribed as printed: crankshaft position sensor 5 VLT SPLY is BRN/ORG (K824), fuel rail pressure sensor 5 VLT SPLY is BLK (K350), crankcase hose pressure signal is BLK (K664), mass air flow sensor ground is BLK (K957).
- The line pressure sensor and exhaust differential pressure sensor ground terminals are printed "APP SENS GND" and share splice SK400ZB with the accelerator pedal ground 2 circuit (K400).
- Exhaust temperature sensor 1/2 has its signal terminal printed "SENS 1/3 SIG" but is wired to PCM C2-39 "EXHAUST TEMP SENS 2 SIG"; sensor 1/3 ("SENS 3 SIG") goes to C2-40.
- The boost pressure sensor ground terminal is printed "SNSE GND".
- The relay named "POWERTRAIN MODULE RELAY" is switched by PCM C2-74 "TRANS CTRL" and its output is named "TRANS CTRL O/P".
- CAN C, CAN J1939 2, CAN J1939 4 and the ACT HI/LO DATA LINK wires leave to the computer data lines system; their far ends are not shown in this diagram.
