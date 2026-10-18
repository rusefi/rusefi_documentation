# 2004 Honda Civic 1.7L except HX/GX — ECM/PCM pinout

Transcribed from [2004-civic-1.7.pdf](2004-civic-1.7.pdf), **Engine Performance > 1.7L**, **Fig 1–3: Except HX & GX**, PDF pages 1–3, diagram IDs **189233–189235**. The printer header selects **2004 Honda Civic GX**, but these first three figures explicitly exclude GX and HX; this transcription follows the figure titles, not that header. EX versus DX/LX and Canada/USA branches are marked within the figures. ECM/PCM is behind the glove box. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | GRN | AFSHTC | A/F sensor heater pin 4 |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay 1 output via J/C C102 |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay 1 output via J/C C102 |
| A4 | BLK | PG2 | G101 via J/C C103 |
| A5 | BLK | PG1 | G101 via J/C C103 |
| A6 | RED | AFS (+) | A/F sensor pin 1 |
| A7 | BLU | CKP | Crankshaft position sensor pin 2 |
| A8 | YEL | VCCR | Knock sensor pin 3 |
| A9 | RED/BLU | KS | Knock sensor pin 1 |
| A10 | GRN/YEL | SG2 | EGR sensor pin 2, TPS pin 3, IAT pin 1 and ECT pin 2 via J/C C103 |
| A11 | GRN/WHT | SG1 | MAP sensor pin 3 |
| A12 | BLK/RED | IACV | Idle air control valve pin 2 |
| A13 | WHT/BLK | EGRP | EGR valve position sensor pin 1 |
| A14 | BLK/WHT | SO2SHTC | Secondary HO2S heater pin 3, DX/LX branch |
| A15 | RED/BLK | TPS | Throttle position sensor pin 2 |
| A16 | RED/YEL | AFS (−) | A/F sensor pin 2 |
| A18 | WHT/GRN | VSS | Vehicle speed sensor pin 3; J/C C102 also branches to cruise/instrument cluster |
| A19 | GRN/RED | MAP | MAP sensor pin 2 |
| A20 | YEL/BLU | VCC2 | EGR sensor pin 3, TPS pin 1 and knock sensor pin 2 via J/C C103 |
| A21 | YEL/RED | VCC1 | MAP sensor pin 1 |
| A22 | WHT | AFSHTC (+) | A/F sensor heater pin 3 and A/F relay contact pin 1 |
| A23 | BRN/YEL | LG2 | G101, middle of engine |
| A24 | BRN/YEL | LG1 | G101, middle of engine |
| A25 | WHT/RED | SHO2S | Secondary HO2S signal pin 4, DX/LX branch |
| A26 | GRN | TDC | CMP/TDC sensor pin 1 |
| A27 | BRN | IGPLS4 | Ignition coil 4 pin 1 |
| A28 | WHT/BLU | IGPLS3 | Ignition coil 3 pin 1 |
| A29 | BLU/RED | IGPLS2 | Ignition coil 2 pin 1 |
| A30 | YEL/GRN | IGPLS1 | Ignition coil 1 pin 1 |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B2 | YEL | INJ4 | Injector 4 pin 2 |
| B3 | BLU | INJ3 | Injector 3 pin 2 |
| B4 | RED | INJ2 | Injector 2 pin 2 |
| B5 | BRN | INJ1 | Injector 1 pin 2 |
| B6 | GRN | FANC | Cooling fan control |
| B7 | RED/BLK | LSA+ | A/T clutch pressure control solenoid A pin 2 |
| B8 | RED/WHT | ECT | ECT sensor pin 1; a second branch is explicitly marked NOT USED |
| B9 | BLU/BLK | VTPSW | VTEC oil pressure switch pin 1, EX |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B14 | BLU/RED | EGR | EGR actuator pin 4 |
| B15 | GRN/YEL | VTS | VTEC solenoid, EX (component-side BLU) |
| B16 | BLK/RED | LSB+ | A/T clutch pressure control solenoid B pin 2 |
| B17 | RED/YEL | IAT | Intake air temperature sensor pin 2 |
| B18 | WHT/GRN | ALTC | Alternator control |
| B21 | YEL/BLU | VBU | EVAP canister purge valve pin 2 |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | WHT/BLK | LSA− | A/T clutch pressure control solenoid A pin 1 |
| C2 | YEL/BLU | LC | Torque converter clutch solenoid pin 2 |
| C4 | GRN/WHT | SHB | Shift solenoid B pin 2 |
| C6 | BLU/BLK | SHA | Shift solenoid A pin 1 |
| C7 | WHT/RED | NM | Input/mainshaft speed sensor pin 2 |
| C8 | BRN/WHT | LSB− | A/T clutch pressure control solenoid B pin 1 |
| C9 | RED | ATPD3 | Transmission range switch D3 |
| C10 | WHT | ATPR | Transmission range switch R; gauge/multiplex branch through J/C C102 |
| C11 | BLU | ATP2 | Transmission range switch 2 |
| C12 | BLU/WHT | ATPNP | Transmission park/neutral circuit and starting/charging branch |
| C14 | GRN | NCSG | Output/countershaft speed sensor pin 1 |
| C15 | BLU | NC | Output/countershaft speed sensor pin 2 |
| C18 | BLU/YEL | ATPFWD | Transmission forward-position circuit; cruise branch |
| C20 | YEL | ATPD4 | Transmission range switch D |
| C21 | WHT/GRN | NMSG | Input/mainshaft speed sensor pin 1 |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | GRN/YEL | IMO FPR | PGM-FI main relay 2 coil pin 3 |
| E2 | WHT/RED | SO2S | Secondary HO2S signal pin 4, EX branch |
| E3 | BRN/YEL | LG3 | G101, shields, anti-theft ground and DLC pins 5/13 |
| E4 | PNK | SG3 | Fuel tank pressure sensor pin 2 and EX secondary-HO2S return |
| E5 | YEL/BLU | VCC3 | Fuel tank pressure sensor pin 1 |
| E6 | BLK/WHT | SO2SHTC | Secondary HO2S heater pin 3, EX branch |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 coil pin 3 |
| E8 | ORG | AFSHTCR | A/F sensor relay coil pin 3 |
| E9 | YEL/BLK | IG1 | Under-dash fuse 17 (15 A, ON/START) |
| E12 | BLU/ORG | CCS | Cruise control system |
| E13 | WHT/BLU | ILU | Multiplex control unit D13 |
| E14 | LT GRN | FTP | Fuel tank pressure sensor pin 3 |
| E15 | GRN/RED | ELD | Electrical load detector pin 3 (USA only) |
| E16 | LT GRN/BLK | PSPSW | Power steering pressure switch pin 1 |
| E18 | RED | ACC | Air conditioning system |
| E20 | BLU/RED | 2WBS | EVAP bypass solenoid valve pin 2 |
| E21 | LT GRN/RED | VSV | EVAP vent shut valve pin 2 |
| E22 | WHT/BLK | BKSW | Brake pedal switch pin 2 via under-dash fuse/relay box |
| E23 | LT BLU | K-LINE | DLC pin 7 and ABS diagnostic connection |
| E24 | YEL | SEFMJ | Multiplex control unit E10 |
| E26 | BLU | NEP | Computer data lines system |
| E27 | RED/BLU | IMOCD | Anti-theft system |
| E29 | BRN | SCS | DLC pin 9 / computer data lines |
| E30 | RED/WHT | WEN INPUT | DLC pin 12 |
| E31 | GRN/ORG | MIL | Gauge assembly B21 (DX) / B3 (LX, EX) |

## Trim and circuit qualifications

EX VTEC uses B15 and pressure switch B9. The secondary oxygen sensor differs by trim: **DX/LX signal/heater A25/A14**, **EX signal/heater E2/E6**; the EX sensor-return branch uses E4. The drawing shows A25/A14 and E2/E6 simultaneously to describe alternatives, not four wires for one universal sensor circuit. A13/B14 are EGR position/control. A8 VCCR is a third knock-sensor connection; it must not be equated to the later A8 chassis-ground assignment.

The A/T mainshaft and countershaft sensors have separate **two-wire** signal/return pairs C7/C21 and C15/C14. A18 is the separate vehicle speed signal. C1/C8 are negative clutch-solenoid connections, with positives B7/B16. No ECU D connector terminals are wired in these figures.

## Power and grounds

Under-hood fuse 6 (15 A, always hot) feeds main relay 1, whose YEL/BLK output powers A2/A3 and injectors. Under-dash fuse 1 (15 A, ON/START) supplies ignition coils; fuse 17 (15 A) supplies IG1. A/F heater relay contacts use fuse 2 (20 A), and its coil/emissions branch fuse 4 (10 A). Main relay 2 powers fuel pump pin 5, with pin 4 returning to G551.

G101 is middle of engine; G201 behind right front bumper, G501 under gauge assembly. The USA ELD circuit is explicitly not used for Canada. The source's B21 label VBU is retained even though it wires to the purge valve. [Honda 125-pin variations](../../Honda-125-variations.md).
