# 2003 Honda Element 2.4L — ECM/PCM pinout

Transcribed from [sheet 1](2003-honda-element-ecu-1.png), [sheet 2](2003-honda-element-ecu-2.png), [sheet 3](2003-honda-element-ecu-3.png), diagram IDs **173062–173064**; [combined image](2003-honda-element-ecu.png). Vehicle/year are supplied by the filenames and the repository's [Honda Element page](../../Honda-Element.md), which identifies the engine as K24A4; the cropped circuit images do not print that engine code. Supplemental [cooling circuit](2003-element-cooling.png), diagram 172829.

ECM/PCM is behind the glove box. C and the populated D transmission terminals are A/T circuits; A18 is explicitly NC/VSS with both transmission variants shown. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | WHT | KS | Knock sensor pin 1, shield grounded to G101 |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay 1 output via J/C C107 |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay 1 output via J/C C107 |
| A4 | BLK | PG2 | G101, left rear of engine |
| A5 | BLK | PG1 | G101, left rear of engine |
| A6 | GRN | CMPB | Camshaft position sensor B pin 1 |
| A7 | YEL | CKP | Crankshaft position sensor pin 1 |
| A8 | BRN/YEL | LG2 | G101, left rear of engine |
| A9 | BRN/YEL | LG1 | G101, left rear of engine |
| A10 | BLK/WHT | AFSHTC | Primary A/F sensor heater |
| A12 | BLK/RED | IACV | Idle air control valve pin 3 |
| A13 | BRN | IGPLS4 | Ignition coil 4 pin 1 |
| A14 | WHT/BLU | IGPLS3 | Ignition coil 3 pin 1 |
| A15 | BLU/RED | IGPLS2 | Ignition coil 2 pin 1 |
| A16 | YEL/GRN | IGPLS1 | Ignition coil 1 pin 1 |
| A18 | BLU | NC/VSS | Countershaft speed sensor pin 2; drawn for A/T and M/T |
| A19 | BLU/WHT | CMPA | Camshaft position sensor A pin 1 |
| A20 | YEL/BLU | VCC2 | Throttle position sensor pin 3 |
| A21 | YEL/RED | VCC1 | MAP sensor pin 1 |
| A23 | GRN/BLK | SG2 | Sensor-ground splice: IAT, ECT, TPS and A/T temperature sensor |
| A24 | GRN/WHT | SG1 | MAP sensor pin 3 |
| A28 | BLU | AFS (−) | Front A/F sensor pin 1 |
| A29 | RED/BLK | TPS | Throttle position sensor pin 2 |
| A30 | GRN/RED | MAP | MAP sensor pin 2 |
| A31 | RED | AFS (+) | Front A/F sensor pin 2 |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B1 | BLU/WHT | VTC | VTC oil control solenoid pin 2; pin 1 grounds to G102 |
| B2 | YEL | INJ4 | Injector 4 pin 2 |
| B3 | BLU | INJ3 | Injector 3 pin 2 |
| B4 | RED | INJ2 | Injector 2 pin 2 |
| B5 | BRN | INJ1 | Injector 1 pin 2 |
| B6 | GRN/YEL | VTS | VTEC solenoid pin 2; pin 1 grounds to G101 |
| B8 | RED/WHT | ECT | Coolant temperature sensor pin 1 |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B11 | BLU/BLK | VTPSW | VTEC oil pressure switch pin 1 |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B17 | RED/YEL | IAT | Intake air temperature sensor pin 2 |
| B18 | WHT/GRN | ALTC | Alternator control |
| B21 | YEL/GRN | PCS | EVAP canister purge valve pin 2 |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | BLK/BLU | LSA | A/T clutch pressure control solenoid A pin 2 |
| C2 | GRN | SHC | Shift control solenoid C |
| C3 | YEL | SHE | Shift control solenoid E |
| C4 | GRN/WHT | SHB | Shift control solenoid B |
| C6 | BLU/BLK | SHA | Shift control solenoid A |
| C7 | BLU/YEL | LSC | A/T clutch pressure control solenoid C pin 2 |
| C9 | BRN | ATP1 | Transmission range switch position 1 |
| C10 | BLU/WHT | OP3SW | Third clutch pressure switch |
| C11 | BLU | ATP2 | Transmission range switch position 2 |
| C12 | RED/WHT | ATPRVS | Transmission range switch R |
| C13 | BLU/RED | OP2SW | Second clutch pressure switch |
| C14 | RED/YEL | ATFT | A/T fluid temperature sensor pin 2 |
| C15 | BRN/WHT | LSB | A/T clutch pressure control solenoid B pin 2 |
| C17 | YEL/GRN | ATPD | Transmission range switch D; also cruise control system |
| C18 | YEL/RED | ATPFWD | Transmission range switch forward-position contact |
| C19 | WHT/RED | NM | A/T mainshaft speed sensor pin 3 |
| C20 | RED/BLK | ATPN | Transmission range switch N; also starting/charging system |

### Connector D (17 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| D3 | GRN | D3SW | A/T O/D-off switch pin 1 (wire becomes WHT) |
| D5 | WHT | ATPR | A/T range switch reverse circuit |
| D6 | BLK/BLU | ATPP | A/T range switch park circuit |
| D12 | BLU/ORG | CCS | Cruise control system, EX |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E2 | WHT/BLU | SLS | A/T shift interlock system |
| E3 | BRN/YEL | LG3 | G101; shields, anti-theft ground and DLC pin 5 via J/C C456 |
| E4 | WHT/GRN | SG3 | Secondary HO2S and fuel tank pressure sensor ground (GRN/BLK branch) |
| E5 | YEL/BLU | VCC3 | Fuel tank pressure sensor pin 1 |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 coil pin 3 |
| E8 | ORG | AFSHTCR | A/F sensor relay coil pin 3 |
| E9 | BLK/YEL | IG1 | Under-dash fuse 17, 15 A, ON/START, via J/C C105/C456 |
| E12 | GRN/WHT | FANC | Cooling fan system; see cooling diagram, ECM E12 fan control |
| E13 | YEL | SEFMJ | Multiplex control unit E10 |
| E14 | LT GRN | FTP | Fuel tank pressure sensor pin 3 |
| E15 | GRN/BLK | ELD | Electrical load detector pin 3 |
| E16 | LT GRN/BLK | PSPSW | Power steering pressure switch pin 1 |
| E17 | GRN/YEL | IMO FPR | PGM-FI main relay 2 coil pin 3 |
| E18 | RED | ACC | A/C system |
| E19 | LT GRN/RED | SHO2S | EVAP canister vent shut valve pin 2; printed label conflicts with wire destination |
| E20 | WHT/RED | SO2SHTC | Secondary HO2S signal; printed label conflicts with wire destination |
| E21 | GRN/RED | SO2HT | Secondary HO2S heater |
| E22 | WHT/BLK | BKSW | Brake pedal position switch pin 2 |
| E23 | LT BLU | K-LINE | DLC pin 7 |
| E25 | BLU | NEP | Instrument cluster system |
| E26 | BLU/WHT | VSSOUT | Cruise control system |
| E27 | WHT | IMOCD | Anti-theft system |
| E29 | BRN | SCS | DLC pin 9 / computer data lines |
| E30 | RED/WHT | WEN | DLC pin 12 |
| E31 | GRN/BLU | MIL | Gauge assembly B14 |

## Source-label conflicts

Sheet 3 prints **E19 SHO2S**, **E20 SO2SHTC**, **E21 SO2HT**. Tracing back across sheet 2 gives E19 → **EVAP vent shut valve**, E20 → **secondary HO2S signal**, and E21 → **secondary HO2S heater**. The table preserves the printed functions and records the actual destinations separately. Do not swap these wires based solely on the labels.

## Power and grounds

Under-hood fuse 6 (15 A, always hot) supplies PGM-FI main relay 1. Its YEL/BLK output supplies A2/A3 and injector/sensor branches through J/C C107/C105. Relay 2 supplies fuel pump pin 5 YEL/GRN; its return is G552. Under-dash fuse 1 (15 A, ON/START) feeds the BLK/WHT ignition branch, and fuse 17 (15 A) feeds BLK/YEL/IG1. Fuse 4 (10 A) feeds the EVAP/secondary-HO2S and A/F relay coil branch; fuse 15 (20 A) feeds A/F relay contacts. A/F heater control is A10 BLK/WHT → sensor pin 4; relay output supplies sensor pin 3.

G101 is left rear of engine, G102 rear of engine, G301 behind the left front bumper, G502 under the right dash, and G552 under the front passenger seat. The VTC solenoid has a grounded return; the early RSX/Civic B23 VTC− wire is not shown here.

[Honda 125-pin variations](../../Honda-125-variations.md).
