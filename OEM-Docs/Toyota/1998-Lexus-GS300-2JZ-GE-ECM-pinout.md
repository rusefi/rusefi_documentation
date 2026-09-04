# 1998 Lexus GS 300 L6-3.0L (2JZ-GE) — Engine Control Module pinout

Transcribed from [1998 Lexus GS300 ECU Wiring Diagram.pdf](1998%20Lexus%20GS300%20ECU%20Wiring%20Diagram.pdf) (ALLDATA "Engine Controls - Interactive Color (Non OE)" wiring diagram, pages 1–4, diagram numbers 106271–106274).

Engine Control Module, located left side of engine compartment, in ECU box.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| E2 | 31 (pins 1–31 shown) | Engine harness: injectors 3–6, igniter, cam/crank/knock sensors, OCV, throttle motor, ground |
| E3 | 24 (pins 1–24 shown) | Engine harness: injectors 1–2, MAF, TPS, pedal, O2 heaters/signals (sensor 1), ECT, VSVs, grounds |
| E4 | 17 (unused pins not shown) | Transmission: shift/pressure solenoids, ATF temp, speed sensors |
| E5 | 28 (unused pins not shown) | Vehicle harness: starter, brake, shift position, MPX bus, A/C, cruise, vapor pressure |
| E6 | 22 (unused pins not shown) | Power: BATT, +B, IGSW, MREL, fuel pump ECU, ABS/TRAC/VSC, SIL, ground |
| E7 | 26 (unused pins not shown) | Vehicle harness: immobilizer, key switch, O2 sensor 2 (post-cat), EVAP VSV |

Connector designators and terminal names are as printed on the diagram (`CONN E2` … `CONN E7`). The diagram does not state total housing sizes; "Pins" is the highest pin number shown. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink). Unlisted pins have no wire in this diagram.

## E2 — engine harness connector (31-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLU | 30 | Injector 3 pin 1 |
| 2 | RED | 40 | Injector 4 pin 1 |
| 3 | WHT | 50 | Injector 5 pin 1 |
| 4 | RED/BLU | 60 | Injector 6 pin 1 |
| 5 | BLK/BLU | ACIS | VSV (ACIS) pin 2 (left rear side of engine) |
| 6 | RED/WHT | MOL | Engine oil level sensor pin 1 (left front of engine) |
| 7 | BLK | M- | Throttle control motor pin 1 (on throttle body) |
| 8 | WHT | M+ | Throttle control motor pin 2 |
| 9 | BRN | ME01 | Ground G131 (rear side of intake manifold) |
| 10 | YEL | G2 | Camshaft position sensor pin 1 (top center rear of engine) |
| 11 | BLK/YEL | IGT | Igniter pin 7 IN1 |
| 12 | BLK/BLU | IGT2 | Igniter pin 6 IN2 |
| 13 | BLK/RED | IGT3 | Igniter pin 5 IN3 |
| 14 | RED/YEL | L | Shift lock control ECU pin 9 ATL (under center console) |
| 16 | BLU | PS | Power steering oil pressure switch pin 2 (left rear of engine compt) |
| 17 | RED/WHT | OCV- | Camshaft timing oil control valve pin 2 (top left side of engine) |
| 18 | WHT/RED | OCV+ | Camshaft timing oil control valve pin 1 |
| 19 | YEL/RED | CL- | Throttle control motor pin 4 |
| 20 | GRN/RED | CL+ | Throttle control motor pin 3 |
| 21 | WHT/BLK | E01 | Ground G131 (front side of intake manifold) |
| 22 | BLU | NE- | Camshaft position sensor pin 2 and crankshaft position sensor pin 2, via splice E3 (engine harness, in ECU box) |
| 23 | WHT | NE+ | Crankshaft position sensor pin 1 (left front of engine) |
| 25 | BLK | IGF | Igniter pin 4 IGF |
| 26 | PNK/BLU | RL | Generator |
| 27 | GRY | KNK2 | Knock sensor 2 (left side of engine) |
| 28 | BLK | KNK1 | Knock sensor 1 (left front of engine) |
| 29 | GRY | LCKI | Air conditioning system |
| 30 | BRAIDED | GE01 | Shield of throttle control motor wiring |
| 31 | WHT/BLK | E02 | Ground G131 (front side of intake manifold) |

Pins 15 and 24 have no wire. The cam sensor, crank sensor and knock sensor shields are joined at J/C 2 (in ECU box) and grounded via BRN wire to splice E1 and G131 (rear side of intake manifold); they do not go to the ECM.

Igniter (on left front shock tower) pinout as printed: 7 IN1 BLK/YEL, 6 IN2 BLK/BLU, 5 IN3 BLK/RED, 4 IGF BLK, 1 C2 BLK/RED (to ignition coil 1 pin 2), 2 C3 BLK (to ignition coil 2 pin 2), 10 C1 WHT (to ignition coil 3 pin 2), 9 +B BLK/WHT, 8 TAC GRN/BLK (to instrument cluster tachometer), 3 GRD BRN (G131). Coil pin 1 (BLK/WHT) of all three coils and igniter +B are fed from ignition switch IG2 via splice E2 (engine harness, left side of engine) and J/C 15 (behind left side of dash); a noise filter (top left front of engine) hangs on this feed.

## E3 — engine harness connector (24-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT/BLK | E03 | Ground G131 (front side of intake manifold) |
| 2 | BLU/YEL | VC | Throttle position sensor pin 1, accel position sensor pin 4 (via splice E2), vapor pressure sensor pin 3 VCC (BLU/RED after in-line connector) |
| 3 | YEL | HT2A | Heated oxygen sensor bank 2 sensor 1 pin 1 HT (right side of engine, in exhaust manifold) |
| 4 | RED | HT1A | Heated oxygen sensor bank 1 sensor 1 pin 1 HT (left side of engine, in exhaust manifold) |
| 5 | YEL | 10 | Injector 1 pin 1 |
| 6 | BLK/WHT | 20 | Injector 2 pin 1 |
| 7 | BLK/YEL | PRG | VSV (EVAP) pin 2 (top rear of engine) |
| 8 | BLU/BLK | MOPS | Oil pressure switch (left front side of engine) |
| 10 | RED/BLU | VG | Mass airflow meter pin 5 VG (in air intake duct) |
| 11 | WHT | OX2A | Heated oxygen sensor bank 2 sensor 1 pin 3 OX |
| 12 | BLK | OX1A | Heated oxygen sensor bank 1 sensor 1 pin 3 OX |
| 13 | GRN/RED | N | Electronically controlled transmission pattern select switch pin 1 (SNOW) |
| 14 | BLK/RED | THW | Engine coolant temperature sensor pin 2 (top left front of engine) |
| 15 | BLU | VPA | Accel position sensor pin 2 (rear left side of engine) |
| 16 | BLU/RED | VPA2 | Accel position sensor pin 1 |
| 17 | BRN | E1 | Splice E1 to ground G131 (rear side of intake manifold) |
| 18 | BRN | E2 | Sensor ground: MAF pin 2 E2, ECT sensor pin 1, TPS pin 4, accel position sensor pin 3, vapor pressure sensor pin 1 E2, transmission solenoid connector pin 7 (ATF temp sensor), via splices E2 |
| 19 | GRY | EVG | Mass airflow meter pin 3 E2G |
| 20 | GRN | 3 | A/T indicator light switch pin 2 (contact "2") |
| 21 | GRN/BLK | 2 | J/C 1 (in ECU box): A/T indicator light switch pin 3 (contact "L") and shift lock control ECU pin 3 NSSL |
| 22 | WHT/RED | THA | Mass airflow meter pin 1 THA |
| 23 | YEL/GRN | VTA | Throttle position sensor pin 2 (on throttle body) |
| 24 | YEL/RED | VTA2 | Throttle position sensor pin 3 |

Pin 9 has no wire.

Mass airflow meter pinout as printed: 4 +B BLK/RED, 1 THA WHT/RED, 3 E2G GRY, 5 VG RED/BLU, 2 E2 BRN. Throttle position sensor: 2 YEL/GRN, 1 BLU/YEL, 3 YEL/RED, 4 BRN. Accel position sensor: 1 BLU/RED, 3 BRN, 2 BLU, 4 BLU/YEL. Heated oxygen sensors (sensor 1, 4-wire): 1 HT, 2 B (+B BLK/RED), 3 OX, 4 E1 (BRN, to E1/G131); shields go to J/C 2 (behind right side of dash).

## E4 — transmission connector (17-pin, unused pins not shown)

All solenoid wires go to the electronically controlled transmission solenoid connector (in transmission); the O/D direct clutch speed sensor and vehicle speed sensor are on the transmission.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLU | S1 | ECT solenoid connector pin 6 BLU |
| 2 | GRN/YEL | S2 | ECT solenoid connector pin 12 GRN/YEL |
| 3 | YEL/GRN | S3 | ECT solenoid connector pin 5 YEL/GRN |
| 4 | RED | NCO+ | O/D direct clutch speed sensor pin 2 |
| 5 | BLU/YEL | SP2+ | Vehicle speed sensor pin 1 |
| 6 | YEL | S4 | ECT solenoid connector pin 11 YEL |
| 7 | GRN/WHT | SLU+ | ECT solenoid connector pin 4 GRN/WHT |
| 8 | PNK | SLN+ | ECT solenoid connector pin 3 PNK |
| 9 | GRN/BLK | SLT+ | ECT solenoid connector pin 2 GRN/BLK |
| 10 | GRN | NCO- | O/D direct clutch speed sensor pin 1 |
| 11 | RED/BLU | SP2- | Vehicle speed sensor pin 2 |
| 13 | BLU/RED | SLU- | ECT solenoid connector pin 10 BLU/RED |
| 14 | BLU/BLK | SLN- | ECT solenoid connector pin 9 BLU/BLK |
| 15 | RED/BLK | SLT- | ECT solenoid connector pin 8 RED/BLK |
| 17 | GRN/RED | OIL | ECT solenoid connector pin 1 GRN/RED (ATF temperature sensor; its other side, pin 7 BRN, goes to sensor ground E2) |

Solenoid connector internal pairs as printed: 7/1 ORG–ORG (temp sensor), 8 GRY, 2 GRN, 9 BLU, 3 RED, 10 BRN, 4 LT GRN (three solenoids with + and - wires), 11 VIO, 5 YEL, 12 BLK, 6 WHT (four solenoids grounded in the transmission).

## E5 — vehicle harness connector (28-pin, unused pins not shown)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 2 | BLK | STA | Park/neutral position switch pin 5 via J/C 3 (left side of dash); starter signal from ignition switch ST2 through starter fuse 5A |
| 5 | PNK/BLK | TC | Data link connector 1 pin 11 TC (YEL/GRN or PNK) via J/C 9 (behind left side of dash) |
| 6 | GRN/WHT | STP | Stoplight switch pin 1 via J/C 7 (behind left kick panel); stop fuse 15A |
| 7 | YEL/GRN | 4 | Shift lock control ECU pin 2 AT4 |
| 8 | WHT | OX1B | Heated oxygen sensor bank 1 sensor 2 pin 3 OX (near catalytic converter) |
| 10 | LT GRN/RED | TAM | Air conditioning system |
| 11 | BLK/BLU | STI- | Cruise control system |
| 13 | BLU/ORG | ACMG | Air conditioning system |
| 16 | RED/BLK | R | A/T indicator light switch pin 8 RED (contact R) via J/C 3 (in ECU box) |
| 17 | YEL/BLK | D | A/T indicator light switch pin 9 (contact D); also shift lock control ECU pin 5 NSSD via J/C 4 / J/C 3 (in ECU box) |
| 18 | BLU/YEL | PTNK | Vapor pressure sensor pin 2 PTNK (under left rear of vehicle) |
| 21 | BLU/BLK | PRE | Air conditioning system |
| 23 | RED/YEL | CCS | Cruise control system |
| 26 | RED/WHT | P | A/T indicator light switch pin 7 RED/WHT (contact P) via J/C 3 (in ECU box) |
| 27 | BLU | MPX2 | A/C control assembly pin 5 MPX+ (behind center of dash); MPX bus also to tilt & telescopic ECU, combination meter C13-2, multi-display |
| 28 | WHT | MPX1 | Body ECU 1 pin 19 MPX1 (in passenger side junction block) |

A/T indicator light switch (integral to park/neutral position switch, on transmission) pins as printed: 3 GRN/BLK (L), 2 GRN (2), 9 YEL/BLK (D), 10 GRN/RED (N), 8 RED (R), 7 RED/WHT (P), 4 RED/BLU (common, to combination meter C12-1 and gauge fuse 10A via J/C 1 and J/C 17).

## E6 — power / vehicle connector (22-pin, unused pins not shown)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK/YEL | BATT | EFI fuse 25A, engine room relay block 1 (hot at all times) |
| 4 | BLK/RED | DI | Fuel pump control ECU pin 9 DI (left side of luggage compartment) |
| 5 | BLK/BLU | FPC | Fuel pump control ECU pin 8 FPC |
| 6 | GRY/RED | W | Combination meter C13-12 (GRY, malfunction indicator light) via in-line connector |
| 7 | VIO/YEL | BM | ETCS fuse 15A, engine room relay block 1 (hot at all times), BLU/YEL via in-line connector |
| 8 | BLK/RED | B2 | EFI relay pin 3 via J/C 11, J/C 4 / J/C 3 (behind left side of dash) |
| 9 | BLK/ORG | IGSW | IGN fuse 5A (driver side junction block) via J/C 14; ignition switch IG2 |
| 10 | BLK/YEL | MREL | EFI relay pin 1 (relay coil), engine room relay block 1 |
| 11 | WHT | SIL | Data link connector 3 pin 7 SIL via J/C 9 (behind left side of dash) |
| 13 | PNK | TRC+ | ABS & TRAC & VSC ECU pin 24 TRC+ (behind left side of dash) |
| 14 | LT GRN | ENG+ | ABS & TRAC & VSC ECU pin 14 ENG+ |
| 15 | GRN/RED | NEO | ABS & TRAC & VSC ECU pin 7 NEO |
| 16 | BLK/RED | +B | EFI relay pin 3 via splice B3 (body harness, forward of left rear wheelwell); shared with fuel pump control ECU pin 10 +B |
| 20 | VIO | TRC- | ABS & TRAC & VSC ECU pin 16 TRC- |
| 21 | BLU | ENG_ | ABS & TRAC & VSC ECU pin 22 ENG- |
| 22 | WHT/BLK | EC | Splice E4 to ground G100 (front of left front fender) |

## E7 — vehicle harness connector (26-pin, unused pins not shown)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 9 | WHT/BLK | EOM | Splice E4 to ground G100 (front of left front fender) |
| 10 | YEL | KSW | Unlock warning switch pin 2 via J/C 9 (behind left side of dash) |
| 13 | WHT/RED | TPC | VSV (vapor pressure sensor) pin 1 (under left rear of vehicle) |
| 20 | VIO | IMLD | Anti-theft system (security indicator) |
| 21 | BLU/RED | TXCT | Transponder key amplifier pin 4 TXCT (behind left side of dash) |
| 22 | BLK/WHT | RXCK | Transponder key amplifier pin 3 RXCK |
| 23 | GRN/BLK | CODE | Transponder key amplifier pin 2 CODE |
| 24 | RED | OX2B | Heated oxygen sensor bank 2 sensor 2 pin 3 OX (near catalytic converter) |
| 25 | GRY/BLK | HT2B | Heated oxygen sensor bank 2 sensor 2 pin 1 HT |
| 26 | GRY | HT1B | Heated oxygen sensor bank 1 sensor 2 pin 1 HT |

## Component locations

Camshaft position sensor — top center rear of engine; crankshaft position sensor — left front of engine; knock sensor 1 — left front of engine; knock sensor 2 — left side of engine; camshaft timing oil control valve — top left side of engine; ignition coils 1–3 and igniter — igniter on left front shock tower; injectors 1–6 — engine harness, left side of engine; throttle control motor and throttle position sensor — on throttle body; accel position sensor — rear left side of engine; engine coolant temperature sensor — top left front of engine; mass airflow meter — in air intake duct; engine oil level sensor — left front of engine; oil pressure switch — left front side of engine (grounds to G202 behind left side of dash on Canada models, G100 front of left front fender on USA models); power steering oil pressure switch — left rear of engine compt; VSV (EVAP) — top rear of engine; VSV (ACIS) — left rear side of engine; VSV (vapor pressure sensor) and vapor pressure sensor — under left rear of vehicle; heated oxygen sensors sensor 1 — in exhaust manifolds; sensor 2 — on exhaust system near catalytic converter; fuel pump control ECU — left side of luggage compartment; fuel pump — in fuel tank; park/neutral position switch and A/T indicator light switch — on transmission; shift lock control ECU — under center console; ECT pattern select switch, ABS & TRAC & VSC ECU, transponder key amplifier, unlock warning switch, data link connector 3 — behind left side of dash; data link connector 1 — behind ECU box; body ECU 1 — in passenger side junction block.

Grounds: G131 — rear side / front side of intake manifold; G100 — front of left front fender; G104 — left rear corner of engine compt (EFI relay coil); G201 — behind right side of dash; G202 — behind left side of dash.

## Power supply / relays (pages 2–4)

- **EFI relay** (engine room relay block 1): pin 5 contact feed from EFI fuse 25A (hot at all times), pin 3 contact output BLK/RED (to splice B3 → ECM +B and fuel pump control ECU +B; via J/C 11 to ECM B2, O2 sensor heaters +B, MAF +B, VSV (EVAP), VSV (ACIS), VSV (vapor pressure sensor), transponder key amplifier +B, data link connector 1 +B), pin 1 coil BLK/YEL to ECM MREL, pin 2 coil WHT/BLK to G104 via J/C 5 (engine room relay block 2).
- **EFI fuse 25A** — ECM BATT directly (hot at all times).
- **ETCS fuse 15A** (engine room relay block 1) — ECM BM (hot at all times).
- **IGN fuse 5A** (driver side junction block) — ECM IGSW via J/C 14, from ignition switch IG2.
- **Starter fuse 5A** (driver side junction block) — park/neutral position switch pin 6 → pin 5 → starter and ECM STA, from ignition switch ST2.
- **Gauge fuse 10A** (hot in ON or START) — combination meter C12-1 and A/T indicator light switch common; **stop fuse 15A** (hot at all times) — stoplight switch → ECM STP; **OBD fuse 7.5A** (hot at all times) — data link connector 3 BAT.
- Ignition switch IG2 (BLK/WHT, via J/C 15) feeds the ignition coils, igniter +B and injector pin 2 supply (BLK/WHT, splice E2 on engine harness).
- The fuel pump is driven by the fuel pump control ECU (FP+/FP-), which the ECM commands through FPC and DI.
