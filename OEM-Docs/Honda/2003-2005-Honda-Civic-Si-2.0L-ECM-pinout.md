# 2003–2005 Honda Civic Si 2.0L — ECM pinout

Transcribed from [2003-civic.pdf](2003-civic.pdf), [2004-Civic-2L-EP3.pdf](2004-Civic-2L-EP3.pdf) and [2005-Civic-2L-unknown.pdf](2005-Civic-2L-unknown.pdf), **Engine Performance > 2.0L**, Fig 1–3 (PDF pages 1–3; page 4 is a printer footer). All three print **Honda Civic Si, 2.0L** for their respective years and repeat the same three circuit drawings (sheets 157338–157340). Despite “unknown” in the 2005 filename, its printed title identifies a Civic Si. These are the cable-throttle 2.0L diagrams, not the 1.7L Civic diagrams.

ECM is behind the glove box. A, B and E are shown; C/D transmission connections are not drawn. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | BLK/WHT | AFSHTC (−) | A/F sensor heater pin 4 via BLK/RED harness wire (sheet 2) |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay 1 output, pin 1 |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay 1 output, pin 1 |
| A4 | BLK | PG2 | G101, middle of engine |
| A5 | BLK | PG1 | G101, middle of engine |
| A6 | RED | PHO2S | A/F sensor pin 1 via BLU harness wire (sheet 2) |
| A7 | BLU | CKP | CKP sensor pin 1 |
| A9 | RED/BLU | KS | Knock sensor; shield grounded at G101 |
| A10 | GRN/YEL | SG2 | TPS pin 3, IAT pin 1, ECT pin 2 |
| A11 | GRN/WHT | SG1 | MAP sensor pin 3 |
| A12 | BLK/RED | IACV | Idle air control valve pin 3 |
| A15 | RED/BLK | TPS | Throttle position sensor pin 2 |
| A16 | RED/YEL | AFS − | A/F sensor pin 2 (sensor-side LT GRN) |
| A18 | WHT/GRN | VSS | Vehicle speed sensor pin 3 |
| A19 | GRN/RED | MAP | MAP sensor pin 2 |
| A20 | YEL/BLU | VCC2 | TPS pin 1 |
| A21 | YEL/RED | VCC1 | MAP sensor pin 1 |
| A22 | WHT | AFSHTC + | A/F sensor heater relay contact pin 1 and A/F sensor pin 3 |
| A23 | BRN/YEL | LG2 | G101, middle of engine |
| A24 | BRN/YEL | LG1 | G101, middle of engine |
| A25 | BLU/WHT | CMP | Camshaft position sensor pin 1 |
| A26 | GRN | TDC | TDC sensor pin 2 |
| A27 | BRN | IGPLS4 | Ignition coil 4 pin 3 |
| A28 | WHT/BLU | IGPLS3 | Ignition coil 3 pin 3 |
| A29 | BLU/RED | IGPLS2 | Ignition coil 2 pin 3 |
| A30 | YEL/GRN | IGPLS1 | Ignition coil 1 pin 3 |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B1 | BLU/WHT | VTC + | VTC oil control solenoid pin 2 |
| B2 | YEL | INJ4 | Injector 4 pin 2 |
| B3 | BLU | INJ3 | Injector 3 pin 2 |
| B4 | RED | INJ2 | Injector 2 pin 2 |
| B5 | BRN | INJ1 | Injector 1 pin 2 |
| B6 | GRN | FANC | Cooling fan control |
| B8 | RED/WHT | ECT | ECT sensor pin 1; a second branch is explicitly marked NOT USED |
| B9 | BLU/BLK | VTPSW | VTEC oil pressure switch pin 1 |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B15 | GRN/YEL | VTS | VTEC solenoid valve pin 2; pin 1 grounds to G101 |
| B17 | RED/YEL | IAT | Intake air temperature sensor pin 2 |
| B18 | WHT/GRN | ALTC | Alternator control |
| B21 | YEL/BLU | VBU | EVAP canister purge valve pin 2; retain the printed VBU label |
| B23 | BLK/WHT | VTC − | VTC oil control solenoid pin 1; shared BLK/WHT splice with ignition coil supplies |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | GRN/YEL | IMO FPR | PGM-FI main relay 2 coil pin 3 |
| E2 | WHT/RED | SHO2S | Secondary HO2S signal pin 2 (sensor-side WHT) |
| E3 | BRN/YEL | LG3 | G101; also shields, immobilizer receiver ground and DLC pin 5 |
| E4 | PNK | SG3 | Secondary HO2S pin 1 (sensor-side GRY) and fuel tank pressure sensor pin 2 |
| E5 | YEL/BLU | VCC3 | Fuel tank pressure sensor pin 1 |
| E6 | BLK/WHT | SO2SHTC | Secondary HO2S heater pin 3 (sensor-side WHT) |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 coil pin 3 |
| E8 | ORG | AFSHTOR | A/F sensor relay coil pin 3 |
| E9 | YEL/BLK | IG1 | Under-dash fuse 17, 15 A, hot in ON or START |
| E14 | LT GRN | FTP | Fuel tank pressure sensor pin 3 |
| E15 | GRN/RED | ELD | Electrical load detector pin 3 (USA only) |
| E16 | LT GRN/BLK | PSPSW | EPS control unit C17 |
| E18 | RED | ACC | Air conditioning system |
| E20 | BLU/RED | 2WBS | EVAP bypass solenoid valve pin 2 |
| E21 | LT GRN/RED | VSV | EVAP vent shut valve pin 2 |
| E22 | WHT/BLK | BKSW | Brake pedal switch pin 2 via under-dash fuse/relay box |
| E23 | LT BLU | K-LINE | DLC pin 7 and ABS diagnostic connection |
| E24 | YEL | SEFMJ | Multiplex control unit E10 |
| E26 | BLU | NEP | Gauge assembly B4, tachometer test connector pin 2 and EPS C19 |
| E27 | RED/BLU | IMOCD | Anti-theft system |
| E29 | BRN | SCS | DLC pin 9 / computer data lines |
| E30 | RED/WHT | WEN | DLC pin 12 |
| E31 | GRN/ORG | MIL | Gauge assembly B8 |

## Power and routing

Under-hood fuse 6 (15 A, always hot) feeds PGM-FI main relay 1; its switched YEL/BLK output feeds A2/A3, injector supplies and the fuel-pump relay. Under-dash fuse 1 (15 A, ON/START) supplies ignition coils and associated BLK/WHT wiring. Under-dash fuse 17 (15 A, ON/START) feeds E9. Main relay 2 powers fuel pump pin 5 YEL/GRN; pump pin 4 grounds at G551.

A/F heater relay contacts receive under-dash fuse 2 (20 A); its coil and the EVAP/secondary-O2 supply branch receive fuse 4 (10 A). Primary A/F heater + is wired through A22 as shown, with heater − on A1. The source calls A6 PHO2S but draws an A/F sensor, and calls B21 VBU although the wire terminates at the purge valve. Those labels are retained.

Engine grounds are G101; ELD ground is G201. The CKP and TDC sensors have engine-ground returns and switched supply; their signal wires must not be confused with ECU sensor-supply VCC1/VCC2. See [125-pin variations](../../Honda-125-variations.md).
