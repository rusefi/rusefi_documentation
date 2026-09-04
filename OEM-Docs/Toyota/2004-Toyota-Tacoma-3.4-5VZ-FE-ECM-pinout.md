# 2004 Toyota Tacoma S-Runner 3.4L V6 (5VZ-FE) — ECM pinout

Transcribed from [2004-tacoma-3.4.pdf](2004-tacoma-3.4.pdf) (Mitchell ProDemand "Engine Performance > 3.4L" wiring diagram, Figs 1-7; Figs 8-14 of the PDF are a second printing of the same seven diagrams).

Engine Control Module (ECM), located behind right side of dash.

The PDF contains two circuits:

- **Except M/T w/ 2-wheel drive** (Figs 1-4): A/T and 4WD trucks. Electronic throttle (throttle control motor with magnetic clutch, accelerator position sensor), A/T solenoids and park/neutral switch, skid control (VSC) interface. This is the main pinout below.
- **M/T w/ 2-wheel drive** (Figs 5-7): cable throttle, no E6 / E10 connector shown, fewer E8 pins. Differences are listed in the last section.

Connectors covered (Except M/T w/ 2WD circuit):

| Connector | Pins | Role |
|-----------|------|------|
| E5 | 22 | Body harness: power, EFI relay control, DLC3, A/C, cruise, stop lamp, fuel pump relay |
| E6 | 28 | Body harness: A/T shift position, indicators, O/D switch, skid control ECU (VSC) |
| E10 | 17 | Throttle clutch, A/T line-pressure solenoid, accelerator pedal position |
| E7 | 24 | Engine harness: injectors, igniter, crank/cam sensors, VSVs, IAC valve, VSS |
| E8 | 31 | Engine harness: throttle motor, A/T shift solenoids, sensors, knock, A/F sensor, grounds |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink). Terminal names are the Toyota names as printed next to the pin numbers; pins printed without a name are left blank. Unlisted pins are not connected in this diagram. I3/I13/I14/I15 and E1/E4 are harness splices; J/B = junction block, J/C = junction connector, R/B = relay block.

## E5 — body harness connector (22-pin) (Fig 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT/RED | +B | J/B 3 (left) E2, EFI relay output bus (via Figs 2-3) |
| 2 | VIO/RED | W | Combination meter C10 pin 9, malfunction indicator |
| 3 | BLU/BLK | ACT | A/C system |
| 4 | BLK/ORG | MREL | EFI relay terminal 1 (coil; terminal 2 WHT/BLK to ground EA via J/C J10) |
| 6 | GRN/ORG | SP1 | J/B 3 (left) D4/D5 -> combination meter C10 pin 3 (speedometer) |
| 7 | GRN | STA | Starting/charging system |
| 8 | PNK | +BM | ECTS fuse 15 A, R/B 2 (hot at all times) |
| 9 | BLU/YEL | AC1 | A/C system |
| 13 | YEL/RED | WFSE | Data link connector 3 pin 15 (WFSE) |
| 14 | WHT | SIL | Data link connector 3 pin 7 (SIL) via J/C J11 |
| 15 | BLK/WHT | IGSW | IGN fuse 7.5 A, J/B 1 (hot in ON or START) via splice I3; also stoplight switch pin 3 |
| 16 | BLK/YEL | BATT | EFI fuse 20 A, R/B 2 (hot at all times) |
| 17 | BLU/ORG | PI | Cruise control system |
| 20 | GRN/WHT | STP | Stoplight switch pin 1 via J/B 3 (left) F7/F6 |
| 22 | WHT/BLU | FC | Circuit opening relay pin 2 (coil) |

## E6 — body harness connector (28-pin) (Fig 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRY/RED | PWR | ECT pattern select switch pin 2 and combination meter C10 pin 13 (ECT PWR indicator) via J/C J11 |
| 2 | GRY | L4 | Transmissions system (w/ A/T & 4WD) |
| 3 | YEL/GRY | NSW | J/B 3 (left) E22 <- STA fuse 7.5 A, J/B 1 (hot in START) (w/ A/T) |
| 4 | RED | L | Park/neutral position switch pin 8 (L) |
| 5 | PNK | 2 | Park/neutral position switch pin 4 (2) |
| 6 | RED/BLK | R | Park/neutral position switch pin 2 (R) via J/B 3 (left) B2/B4 |
| 8 | VIO/WHT | NEO | Skid control ECU pin 7 (NEO) |
| 9 | BLU/WHT | ST1- | Stoplight switch pin 4 |
| 11 | BLU | TFN | Diode (behind top left of dash) via J/C J13 -> instrument cluster C13 pin 5 (A/T P indicator) |
| 13 | GRN/BLK | 4WD | Transmissions system (w/ 4WD) |
| 14 | LT GRN | ODMS | O/D main switch pin 5 |
| 18 | PNK/BLK | ENG- | Skid control ECU pin 22 (ENG-) |
| 19 | BLU/RED | ENG+ | Skid control ECU pin 14 (ENG+) |
| 20 | BLU/ORG | ODLP | Combination meter C12 pin 6 (O/D OFF indicator) via J/C J13 |
| 21 | ORG | OILW | Combination meter C13 pin 6 (A/T oil temperature indicator) |
| 25 | BLK/WHT | D | Park/neutral position switch pin 7 (D) |
| 27 | YEL/GRN | TRC- | Skid control ECU pin 16 (TRC-) |
| 28 | BRN/YEL | TRC+ | Skid control ECU pin 24 (TRC+) |

Park/neutral position switch (on transmission): pin 3 BLK/RED common, fed from GAUGE fuse 10 A (J/B 1, hot in ON or START) via J/B 3 (left) D18; pin 1 VIO (P) goes to instrument cluster C13 pin 4 (A/T P indicator).

## E10 — throttle clutch / A/T solenoid / pedal connector (17-pin) (Fig 2)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 3 | YEL | CL+ | Throttle control motor pin 3 (magnetic clutch) |
| 5 | VIO | | Throttle position sensor pin 2 |
| 6 | WHT | SLT+ | Electronically controlled transmission solenoid pin 2 (SLT) |
| 7 | YEL | SLT- | Electronically controlled transmission solenoid pin 6 (SLT) |
| 9 | BLU | CL- | Throttle control motor pin 4 (magnetic clutch) |
| 10 | GRY | VPA | Accelerator position sensor pin 3 |
| 16 | BLU | VPA2 | Accelerator position sensor pin 4 |

## E7 — engine harness connector (24-pin) (Fig 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT/BLU | 50 | Injector 5 pin 1 |
| 2 | BLK/YEL | IGF | Igniter pin 4 |
| 3 | BLU/RED | 40 | Injector 4 pin 1 |
| 4 | RED | 30 | Injector 3 pin 1 |
| 5 | BLK | 20 | Injector 2 pin 1 |
| 6 | WHT/RED | 10 | Injector 1 pin 1 |
| 7 | YEL/BLK | TC | Computer data lines system |
| 8 | BLU | 60 | Injector 6 pin 1 |
| 9 | BLK/WHT | IGT3 | Igniter pin 5 |
| 10 | LT GRN/RED | IGT2 | Igniter pin 6 |
| 11 | BLK/BLU | IGT1 | Igniter pin 7 |
| 12 | BLU | NE+ | Crankshaft position sensor pin 1 |
| 13 | RED | | Camshaft position sensor pin 1 |
| 14 | WHT/GRN | EVP1 | VSV (EVAP) pin 2 |
| 16 | BLU/BLK | RSO | Idle air control valve pin 1 |
| 17 | BRN | E1 | Ground EB (near throttle body) via splice I13; also cam/crank sensor shields, A/F sensor shield, heated O2 sensor (bank 1 sensor 2) pin 4 |
| 18 | BLK | PSW | Power steering oil pressure switch pin 1 |
| 19 | PNK/BLU | CCV | VSV (canister closed valve) pin 2 |
| 20 | GRN/BLK | NE- | VSV (pressure switching valve) pin 2, as drawn (see note) |
| 21 | GRN | TBP | Crankshaft position sensor pin 2 and camshaft position sensor pin 2 (joined at splice I13), as drawn (see note) |
| 22 | WHT/RED | SP2+ | Vehicle speed sensor pin 2 |
| 23 | YEL/RED | SP2- | Vehicle speed sensor pin 1 |
| 24 | BLK/RED | RSC | Idle air control valve pin 3 |

Note on pins 20/21: the diagram (both circuits) routes the GRN/BLK wire from the pressure switching VSV to the pin labeled NE- and the GRN sensor-return wire from the crank/cam sensors to the pin labeled TBP. Electrically the sensor return belongs on NE- and the tank-bypass VSV on TBP, so the two terminal labels are most likely swapped in the source; the wire colors are as printed.

Injectors 1-6 pin 2 BLK/RED and ignition coils 1-3 pin 1 BLK/RED are fed from ignition switch terminal 6 (Fig 3) via splices I13. Igniter (on right side of engine compartment): pin 1 GRN, 2 GRN/YEL, 10 GRY to coils 1-3 pin 2; pin 9 BLK/RED supply; pin 8 LT GRN/BLK to tachometer (w/ tachometer); pin 3 BRN ground EB.

## E8 — engine harness connector (31-pin) (Fig 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | RED/WHT | SL | Electronically controlled transmission solenoid pin 7 (SL) |
| 2 | LT GRN | S2 | Electronically controlled transmission solenoid pin 8 (2) |
| 3 | VIO | S1 | Electronically controlled transmission solenoid pin 4 (1) |
| 4 | WHT/BLK | E01 | Ground EB (near throttle body) |
| 5 | WHT/BLK | E02 | Ground EB (near throttle body) |
| 6 | WHT/BLK | ME01 | Ground EB (near throttle body) |
| 7 | WHT/BLK | E03 | Ground EB (near throttle body) |
| 8 | WHT/BLK | E05 | Ground EB (near throttle body) |
| 9 | RED | M+ | Throttle control motor pin 2 |
| 10 | BLK/WHT | E2G | Mass airflow meter pin 2 |
| 11 | BLU/BLK | E2 | Vapor pressure sensor pin 1; splice I13 (BLU/BLK) to throttle position sensor pin 1, mass airflow meter pin 5, engine coolant temperature sensor pin 1 (BRN/BLK), accelerator position sensor pin 2 |
| 12 | GRN | VG | Mass airflow meter pin 3 |
| 13 | YEL/GRN | THA | Mass airflow meter pin 4 |
| 14 | VIO | AF1+ | Air fuel ratio sensor (bank 1 sensor 1) pin 3 |
| 15 | YEL | VTA | Throttle position sensor pin 3 |
| 17 | BRN | GE01 | Shield drains (BRN) at throttle control motor / accelerator sensor connectors via splice I13 (Fig 3) |
| 18 | GRN/RED | THW | Engine coolant temperature sensor pin 2 |
| 19 | YEL/RED | THOC | A/T oil temperature sensor pin 1 |
| 21 | WHT | HTAF1 | Air fuel ratio sensor (bank 1 sensor 1) pin 1 |
| 22 | GRY | KNK2 | Knock sensor 2 |
| 23 | BLK | KNK1 | Knock sensor 1 |
| 24 | RED/YEL | PTNK | Vapor pressure sensor pin 2 |
| 25 | GRN/YEL | VC | Vapor pressure sensor pin 3; splice I13 to throttle position sensor pin 4 and accelerator position sensor pin 1 |
| 26 | PNK | AF1- | Air fuel ratio sensor (bank 1 sensor 1) pin 4 |
| 27 | RED | OX2B | Heated oxygen sensor (bank 1 sensor 2) pin 3 |
| 29 | RED/WHT | HT2B | Heated oxygen sensor (bank 1 sensor 2) pin 1 (heater) |
| 31 | GRN | M- | Throttle control motor pin 1 |

## Component locations

Vapor pressure sensor — left side of firewall; throttle position sensor — on throttle body assembly; mass airflow meter — part of air intake assembly; A/T oil temperature sensor — on transmission; engine coolant temperature sensor — left front of engine; air fuel ratio sensor (bank 1 sensor 1) — on exhaust system, rear of engine; heated oxygen sensor (bank 1 sensor 2) — on exhaust system, rear of engine; power steering oil pressure switch — on power steering pump; VSV (EVAP), VSV (canister closed valve), VSV (pressure switching valve) — left side of engine compartment (pressure switching valve on fenderwell); camshaft position sensor — top right front of engine; crankshaft position sensor — lower front of engine; throttle control motor — at right rear of engine; accelerator position sensor — behind dash, left of steering column; idle air control valve — on throttle body assembly; knock sensors 1/2 — top front of engine; vehicle speed sensor and ECT solenoid and park/neutral position switch — on transmission; igniter — right side of engine compartment; ignition coils 1-3 — top of cylinder head cover; injectors 1-6; circuit opening relay — behind lower left end of dash; fuel pump — in fuel tank (pin 4 BLU from circuit opening relay pin 3, pin 5 WHT/BLK to ground IG at left side of dash); skid control ECU (w/ VSC) — lower left side of dash; data link connector 3 — below left center of dash; O/D main switch and ECT pattern select switch — dash.

Grounds: EA — right front fender; EB — near throttle body (engine sensors, E01/E02/ME01/E03/E05, E1, igniter); IE — right side of dash (DLC3 CG via J/B 3 A15/A16, O/D switch); IG — left kick panel / left side of dash.

## Power supply / relays

- **EFI fuse 20 A** (R/B 2, left side of engine compartment, hot at all times) -> E5-16 BATT and EFI relay terminal 5 (contact).
- **ECTS fuse 15 A** (R/B 2, hot at all times) -> E5-8 +BM.
- **EFI relay** (R/B 2): terminal 1 coil <- E5-4 MREL (BLK/ORG), terminal 2 coil -> ground EA (WHT/BLK via J/C J10); terminal 5 <- EFI fuse; terminal 3 output WHT/RED -> J/B 3 (left) E1/E2/E3/E4 bus (behind dash, above steering column): E2 -> E5-1 +B; E4 -> circuit opening relay pin 5 (contact); E3 -> splices I14/I13 -> heated O2 sensor (bank 1 sensor 2) pin 2 heater, VSV pressure switching valve pin 1, VSV canister closed valve pin 1, VSV (EVAP) pin 1, idle air control valve pin 2.
- **IGN fuse 7.5 A** (J/B 1, behind dash left of steering column, hot in ON or START) -> splice I3 -> E5-15 IGSW, stoplight switch pin 3, circuit opening relay pin 1 (coil).
- **STA fuse 7.5 A** (J/B 1, hot in START) -> J/B 3 E20/E22 -> E6-3 NSW (w/ A/T); E21 -> starting/charging system.
- **GAUGE fuse 10 A** (J/B 1, hot in ON or START) -> J/B 3 D15/D16/D20/D13/D18/D19 -> park/neutral position switch pin 3, ECT pattern select switch pin 3, instrument cluster.
- **STOP fuse 10 A** (J/B 1, hot at all times) -> stoplight switch pin 2.
- **OBD fuse 10 A** (R/B 2, hot at all times) -> data link connector 3 pin 16 BATT.
- **Ignition switch** terminal 6 (BLK/RED) -> injectors pin 2, ignition coils pin 1, igniter pin 9.
- Circuit opening relay pin 3 BLU -> fuel pump pin 4.

## M/T w/ 2-wheel drive variant (Figs 5-7)

Cable throttle: no throttle control motor, accelerator position sensor, A/T solenoid, park/neutral switch, skid control ECU or E6/E10 connector is shown. The throttle position sensor is a 3-wire unit (pin 1 BLU/BLK E2, pin 2 GRN/YEL VC, pin 3 YEL VTA). The igniter is labeled IGC1/IGC2/IGC3, +B, TACH, IGT1-3, IGF, GND (coils: coil 1 pin 2 BRN/BLK, coil 2 pin 2 BRN/WHT, coil 3 pin 2 BRN/RED to igniter pins 10/2/1). Stoplight switch has pins 1 (GRN/WHT, STP) and 2 (GRN/YEL, STOP fuse) only.

### E5 (M/T 2WD, Fig 5) — differs from the table above as follows

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 5 | BLK/WHT | IGSW | IGN fuse 7.5 A via splice I3 (same net as pin 15) |
| 8 | | | not connected (no ECTS fuse) |
| 17 | LT GRN/RED | IDLO | Cruise control system |

Pins 1, 2, 3, 4, 6, 7, 9, 13, 14, 15, 16, 20, 22 are wired as in the main E5 table (pin 1 +B via J/B 3 E-bus, pin 15 IGSW also feeds circuit opening relay pin 1). Tachometer (C10 pin 4, LT GRN/BLK) is driven by igniter TACH pin 8, not by the ECM.

### E7 (M/T 2WD, Fig 7)

Pins 1-14, 16-21 and 24 are wired exactly as in the main E7 table (same colors and destinations), except pin 7 TC (YEL/BLK) which comes from data link connector 3 pin 13 (TL) via J/C J11 and splice I14 (which also feeds the cruise control system). Pins 22 (SP2+) and 23 (SP2-) are not connected (no vehicle speed sensor in this circuit).

### E8 (M/T 2WD, Fig 7)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 4 | WHT/BLK | E01 | Ground EB |
| 5 | WHT/BLK | E02 | Ground EB |
| 7 | YEL/BLK | TC | Computer data lines system |
| 8 | WHT/BLK | E05 | Ground EB |
| 10 | BLK/WHT | E2G | Mass airflow meter pin 2 |
| 11 | BLU/BLK | E2 | Vapor pressure sensor pin 1; splice I13 to throttle position sensor pin 1, mass airflow meter pin 5, engine coolant temperature sensor pin 1 |
| 12 | GRN | VG | Mass airflow meter pin 3 |
| 13 | YEL/GRN | THA | Mass airflow meter pin 4 |
| 14 | VIO | AF1+ | Air fuel ratio sensor (bank 1 sensor 1) pin 3 |
| 15 | YEL | VTA | Throttle position sensor pin 3 |
| 18 | GRN/RED | THW | Engine coolant temperature sensor pin 2 |
| 21 | WHT | HTAF1 | Air fuel ratio sensor (bank 1 sensor 1) pin 1 |
| 22 | GRY | KNK2 | Knock sensor 2 |
| 23 | BLK | KNK1 | Knock sensor 1 |
| 24 | RED/YEL | PTNK | Vapor pressure sensor pin 2 |
| 25 | GRN/YEL | VC | Vapor pressure sensor pin 3; splice I13 to throttle position sensor pin 2 |
| 26 | PNK | AF1- | Air fuel ratio sensor (bank 1 sensor 1) pin 4 |
| 27 | RED | OX2B | Heated oxygen sensor (bank 1 sensor 2) pin 3 |
| 29 | RED/WHT | HT2B | Heated oxygen sensor (bank 1 sensor 2) pin 1 (heater) |

E8 pins 1, 2, 3, 6, 9, 17, 19, 31 (SL, S2, S1, ME01, M+, GE01, THOC, M-) are not connected in the M/T 2WD circuit.
