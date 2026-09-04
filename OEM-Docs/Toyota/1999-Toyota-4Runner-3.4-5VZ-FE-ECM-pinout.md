# 1999 Toyota 4Runner SR5 4WD V6-3.4L (5VZ-FE) — ECM pinout

Transcribed from [1999 Toyota Truck 4 Runner SR5 4WD v6 ECU.pdf](1999%20Toyota%20Truck%204%20Runner%20SR5%204WD%20v6%20ECU.pdf) (ALLDATA "Engine Controls" wiring diagram, "Page 1 of 4" to "Page 4 of 4" = PDF pages 2, 4, 6, 8; ALLDATA sheet numbers 119999-120002).

Engine Control Module (ECM), located behind right side of dash. Automatic transmission (A340F) with electronically controlled transmission solenoids; the diagram covers both California (air-fuel ratio sensor) and non-California (heated oxygen sensor) variants.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| E9 | 31 | Engine harness: injectors 3-6, igniter IGT/IGF, cam sensor, knock sensors, VSS, IAC, ECT solenoids, TE1 |
| E10 | 24 | Engine harness: injectors 1-2, sensor supply/grounds, MAF, TPS, ECT, O2/A-F sensor, crank sensor, EVAP |
| E11 | 17 | Immobilizer (transponder key amplifier) and anti-theft |
| E12 | 28 | Vehicle harness: park/neutral switch, transmission/transfer switches, cluster indicators, cruise, A/C |
| E14 | 22 | Power and vehicle interfaces: BATT, IGSW, +B, MREL, FC, STA, STP, W (MIL), SIL, PTNK |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink). Terminal names (30, TE1, IGT1, VC, NE+, BATT, ...) are the Toyota terminal names printed next to each pin; "30/40/50/60" and "10/20" are the injector drive terminals (#30, #40, ... in Toyota manuals). Unlisted pins are not connected in this diagram.

## E9 — engine harness connector (31-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRN | 30 | Injector 3 pin 2 |
| 2 | RED/BLK | 40 | Injector 4 pin 2 |
| 3 | BLU | 50 | Injector 5 pin 2 |
| 4 | YEL | 60 | Injector 6 pin 2 |
| 6 | VIO/WHT | TE1 | Data link connector 1 pin 8 (TE1) |
| 7 | LT GRN/RED | S1 | Electronically controlled transmission solenoid pin 1 (solenoid No.1) |
| 8 | BLU/WHT | S2 | Electronically controlled transmission solenoid pin 2 (solenoid No.2); cruise control system (junction I11) |
| 9 | GRN/RED | SL | Electronically controlled transmission solenoid pin 3 (SL) |
| 10 | RED | G2 | Camshaft position sensor pin 1 |
| 11 | BLK/BLU | IGT1 | Igniter pin 7 (IGT1) |
| 12 | BLU/YEL | IGT2 | Igniter pin 6 (IGT2) |
| 13 | GRN/WHT | IGT3 | Igniter pin 5 (IGT3) |
| 14 | YEL/RED | SP2+ | Vehicle speed sensor pin 1 |
| 15 | BLK/RED | RSC | Idle air control valve pin 3 |
| 16 | BRN/RED | RSO | Idle air control valve pin 1 |
| 21 | BRN | E01 | Ground G112 (left intake manifold) |
| 23 | BLK | (no terminal name printed) | Igniter pin 8 (EXT) via junction I11; instrument cluster (tachometer); data link connector 1 pin 19 (IG-) |
| 25 | BLK/YEL | IGF | Igniter pin 4 (IGF) |
| 26 | WHT/RED | SP2- | Vehicle speed sensor pin 2 |
| 27 | BLK | KNK1 | Knock sensor 1 |
| 28 | GRY | KNK2 | Knock sensor 2 |
| 30 | BRN | E03 | Ground G112 (joined with E02 at junction I11) |
| 31 | BRN | E02 | Ground G112 |

Igniter (right side of engine compartment) pins: 1 IGC2 ORG (to ignition coil 3 pin 2), 2 IGC3 BRN/WHT (to coil 2 pin 2), 3 GND BRN (G112), 4 IGF BLK/YEL, 5 IGT3, 6 IGT2, 7 IGT1, 8 EXT BLK, 9 +B BLK/RED, 10 IGC1 RED (to coil 1 pin 2). Coil pin 1 of all three coils is BLK/RED from the IGN fuse; a noise filter (BLK/RED to BRN, grounded at G112) hangs on the same feed.

## E10 — engine harness connector (24-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 2 | GRN/BLK | VC | Throttle position sensor pin 2; vapor pressure sensor pin 3 (VCC) via junction I11 (dash harness, right side of dash) |
| 4 | PNK/BLU (OR BLU) | HT | Except California (PNK/BLU): heated oxygen sensor bank 1 sensor 1 pin 1 (HT). California (BLU): air fuel ratio sensor pin 1 |
| 5 | RED | 10 | Injector 1 pin 2 |
| 6 | WHT | 20 | Injector 2 pin 2 |
| 7 | WHT/GRN | EVP1 | EVAP VSV pin 2 |
| 8 | BRN | E05 | Ground G112 (junction I11 with E02/E03) |
| 9 | PNK | PSW | Power steering oil pressure switch pin 1 |
| 10 | RED/WHT | VG | Mass airflow meter pin 3 (VG) |
| 12 | WHT | OX1 | Except California: heated oxygen sensor bank 1 sensor 1 pin 3 (OX). California: air fuel ratio sensor pin 3 |
| 14 | GRN | THW | Engine coolant temperature sensor pin 2 (GRN/YEL after splice) |
| 15 | VIO/YEL | OIL | A/T fluid temperature sensor pin 1 |
| 16 | RED | NE+ | Crankshaft position sensor pin 1 |
| 17 | BRN | E1 | Ground G112; data link connector 1 pin 3 (E1); heated oxygen sensors B1S1 and B1S2 pin 4 (E1); knock sensor shields (E2, engine harness); crank/cam sensor shields; air fuel ratio sensor shield |
| 18 | BLU/BLK | E2 | Mass airflow meter pin 5 (E2); A/T fluid temperature sensor pin 2; engine coolant temperature sensor pin 1; throttle position sensor pin 1; vapor pressure sensor pin 1 (E2) |
| 19 | BLK/WHT | E2G | Mass airflow meter pin 2 (E2G) |
| 21 | BLK | AF1- | Air fuel ratio sensor pin 4 (California) |
| 22 | YEL/GRN | THA | Mass airflow meter pin 4 (THA) |
| 23 | BLK/YEL | VTA | Throttle position sensor pin 3 |
| 24 | GRN | NE- | Crankshaft position sensor pin 2 |

Note on pin 3/4: the diagram prints "PNK/BLU" beside pin 3 and "(OR BLU)" beside pin 4 as a two-line color label, with the single HT wire drawn at pin 4 and the "HT" name at pin 4; pin 3 has no wire drawn. Verify against the ECM connector before relying on 3 vs 4.

Component locations (page 1-2): crankshaft position sensor — front of engine; camshaft position sensor — top front of engine; knock sensors 1/2 — middle of engine; mass airflow meter — in air intake; throttle position sensor — on throttle body; engine coolant temperature sensor — top front of engine; vehicle speed sensor and A/T fluid temperature sensor — on transmission; vapor pressure sensor, vapor pressure sensor VSV and EVAP VSV — left side/left rear of engine compartment; idle air control valve — top right side of engine; heated oxygen sensor B1S1 (except California) — rear underside of engine compartment; B1S2 — underside of vehicle; air fuel ratio sensor (California) — in exhaust; power steering oil pressure switch — right front of engine.

## E11 — immobilizer connector (17-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 4 | GRY/RED | CODE | Transponder key amplifier pin 2 (left side of dash) |
| 5 | RED/BLK | RXCK | Transponder key amplifier pin 3 |
| 10 | PNK/BLK | TXCT | Transponder key amplifier pin 4 |
| 11 | YEL/RED | KSW | Anti-theft system |
| 16 | BLU | IMLD | Anti-theft system |

## E12 — vehicle harness connector (28-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 2 | RED/YEL | R | Park/neutral position switch pin 8 (RL); instrument cluster C26-3 (R indicator); driver side J/B H5/D4/D3 |
| 3 | VIO/RED | 2 | Park/neutral position switch pin 2 (2L) via junction I19; instrument cluster C26-6 (2 indicator) |
| 4 | YEL/GRN | IDLO | Cruise control system |
| 7 | YEL | OIL-W | Instrument cluster C25-1 (A/T oil temp indicator) |
| 8 | RED | OXS | Heated oxygen sensor bank 1 sensor 2 pin 3 (OX) |
| 9 | RED/WHT | HTS | Heated oxygen sensor bank 1 sensor 2 pin 1 (HT) |
| 10 | BLU/ORG | OD2 | Junction I7 (dash harness, center of dash): instrument cluster C25-16 (O/D OFF indicator); O/D main switch pin 1 (shift lock control computer) |
| 11 | GRN/RED | PWR | Junction I5 (dash harness, left side of dash): electronically controlled transmission pattern select switch pin 3; instrument cluster C29-4 (ECT PWR indicator) |
| 12 | LT GRN | L | Park/neutral position switch pin 3 (LL) via junction I19; instrument cluster C26-7 (L indicator) |
| 13 | BLU/BLK | ACT | A/C system |
| 17 | RED/GRN | TFN | Detection switch (transfer neutral position, on transmission) pin 1 via J/C7,J/C8 (upper right side of dash); instrument cluster C25-15 (A/T P indicator) |
| 18 | BLK/BLU (OR BLU) | 4WD | Transmissions system |
| 19 | BLU/RED | L4 | Detection switch (transfer L4 position, on transmission) pin 1 via J/C7,J/C8 |
| 20 | BLK | NSW | Center J/B E1/E2 from STA fuse 7.5 A (driver side J/B F6, hot in START) |
| 22 | GRN/ORG | SP1 | Instrument cluster C28-3 (speedometer); center J/B E10 and E8 |
| 24 | BRN/YEL | OD1 | Cruise control system |
| 25 | BLU/YEL | AC1 | A/C system |

Park/neutral position switch (page 4): pin 4 BLK/YEL from GAUGE fuse 10 A (driver side J/B F7, hot in RUN or START); pin 7 BLU/YEL (P) and pin 10 BLK/RED (D) go to the instrument cluster only (C26-2, C26-4); pin 9 WHT/RED (N) to cluster C26-5 via J/C7,J/C8. Pattern select switch pin 4 is BLK/YEL from GAUGE fuse F9. Detection switch and O/D main switch return pins (WHT/BLK) ground through center J/B E22/E16/E18 to G203 (right kick panel).

## E14 — power / vehicle interface connector (22-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLU/RED | BATT | EFI fuse 20 A (engine room J/B, hot at all times) via EFI relay pin 5 |
| 2 | BLK/BLU | IGSW | IGN fuse 10 A, driver side J/B F10 (ignition switch pin 6 BLK/RED via J/B I4) |
| 3 | GRN/YEL | FC | Circuit opening relay pin 2 (behind lower left side of dash) |
| 6 | VIO | W | Instrument cluster C29-9 (malfunction indicator) |
| 7 | BLK/WHT | STA | Starting system |
| 8 | GRY/BLK | MREL | EFI relay pin 1 (coil) |
| 9 | YEL/GRN | TPC | Vapor pressure sensor VSV pin 2 |
| 11 | WHT | SIL | Data link connector 3 pin 7 (SIL), below center left of dash, via J/C 6 |
| 12 | WHT/BLK | EOM | Center J/B E13/E16 to ground G203 (right kick panel) |
| 15 | GRN/WHT | STP | Stoplight switch pin 1 via center J/B C15/C11 (STOP fuse 10 A, driver side J/B F2, hot at all times, on switch pin 2 GRN/YEL) |
| 16 | WHT/BLU | +B | EFI relay pin 3 via J/C (behind right side of dash, J7/J8) |
| 17 | YEL | PTNK | Vapor pressure sensor pin 2 (PTNK) |

## Power supply / relays / grounds

- **EFI relay** (engine room J/B, left side of engine compartment): pin 5 BLU/RED from EFI fuse 20 A (hot at all times); pin 3 WHT/BLU is the +B bus feeding E14-16, mass airflow meter pin 1, data link connector 1 pin 12, heated oxygen sensor heaters pin 2, idle air control valve pin 2, vapor pressure sensor VSV pin 1, EVAP VSV pin 1, air fuel ratio sensor pin 2 and circuit opening relay pins 1/5; pin 1 GRY/BLK to E14-8 MREL; pin 2 WHT/BLK to ground G100 (left front fender) via J/C1,J/C2 (near left front shock tower).
- **Circuit opening relay** (behind lower left side of dash): pin 5 WHT/BLU (+B), pin 3 BLU/ORG to fuel pump pin 4 (in fuel tank), pin 1 WHT/BLU, pin 2 GRN/YEL to E14-3 FC. Fuel pump pin 5 WHT/BLK grounds at G200 (left kick panel) via J/C 12 (below driver's seat).
- **IGN fuse 10 A** (driver side J/B, lower left side of dash, fed by ignition switch pin 6 BLK/RED): J7 BLK/RED feeds ignition coils pin 1, igniter pin 9 (+B), injectors pin 1 and the noise filter; F10 BLK/BLU feeds E14-2 IGSW.
- **OBD fuse 7.5 A** (engine room R/B, hot at all times): VIO to data link connector 3 pin 16 (SDL). DLC3 pin 4 CG WHT/BLK to G200, pin 5 SG BRN/RED to G131 (left intake manifold).
- **STA fuse 7.5 A** (driver side J/B F6, hot in START) to E12-20 NSW through center J/B E2/E1.
- **GAUGE fuse 10 A** (driver side J/B, hot in RUN or START): F7 park/neutral position switch pin 4, F8 instrument cluster C29-12, F9 pattern select switch pin 4.
- Grounds: G112 (left intake manifold) — ECM E01/E02/E03/E05/E1 and igniter GND; G131 (left intake manifold) — DLC3 SG; G200 (left kick panel) — DLC3 CG, fuel pump, cluster; G203 (right kick panel) — E14-12 EOM and transmission switch returns; G100 (left front fender) — EFI relay coil.
