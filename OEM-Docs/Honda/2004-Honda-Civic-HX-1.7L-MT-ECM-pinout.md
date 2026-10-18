# 2004 Honda Civic HX 1.7L M/T — ECM/PCM pinout

Transcribed from [2004-civic-1.7.pdf](2004-civic-1.7.pdf), **Fig 10–12: 1.7L, Engine Performance Circuit, HX M/T**, PDF pages 10–12, diagram IDs **189242–189244**. The file's printer header says GX; the figure titles identify HX M/T and govern this transcription. ECM/PCM is behind the glove box. A/B/E are drawn; the CVT C connector is absent. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | GRN | AFSHTC (−) | A/F sensor heater pin 4 |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay 1 output via J/C C102 |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay 1 output via J/C C102 |
| A4 | BLK | PG2 | G101 via J/C C103 |
| A5 | BLK | PG1 | G101 via J/C C103 |
| A6 | RED | PHO2S | A/F sensor signal pin 1; component is labelled A/F sensor |
| A7 | BLU | CKP | Crankshaft position sensor pin 2 |
| A8 | YEL | VCCR | Knock sensor pin 3 |
| A9 | RED/BLU | KS | Knock sensor pin 1 |
| A10 | GRN/YEL | SG2 | EGR sensor pin 2, TPS pin 3, IAT pin 1 and ECT pin 2 via J/C C103 |
| A11 | GRN/WHT | SG1 | MAP sensor pin 3 |
| A12 | BLK/RED | IACV | Idle air control valve pin 3 |
| A13 | WHT/BLK | EGRP | EGR valve position sensor pin 1 |
| A14 | BLK/WHT | SO2SHTC | Secondary HO2S heater pin 3 |
| A15 | RED/BLK | TPS | Throttle position sensor pin 2 |
| A16 | RED/YEL | AFS (−) | A/F sensor pin 2 |
| A18 | WHT/GRN | VSS | Vehicle speed sensor pin 3; cruise/instrument branch through J/C C102 |
| A19 | GRN/RED | MAP | MAP sensor pin 2 |
| A20 | YEL/BLU | VCC2 | TPS pin 1, EGR sensor pin 3 and knock sensor pin 2 via J/C C103 |
| A21 | YEL/RED | VCC1 | MAP sensor pin 1 |
| A22 | WHT | AFSHTC (+) | A/F sensor heater pin 3 and A/F relay contact pin 1 |
| A23 | BRN/YEL | LG2 | G101, middle of engine |
| A24 | BRN/YEL | LG1 | G101, middle of engine |
| A25 | WHT/RED | SHO2S | Secondary HO2S signal pin 2 |
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
| B8 | RED/WHT | ECT | ECT sensor pin 1; a second branch is explicitly marked NOT USED |
| B9 | BLU/BLK | VTPSW | VTEC oil pressure switch pin 1 |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B14 | BLU/RED | EGR | EGR actuator pin 4 |
| B15 | GRN/YEL | VTS | VTEC solenoid valve (component-side BLU) |
| B17 | RED/YEL | IAT | Intake air temperature sensor pin 2 |
| B18 | WHT/GRN | ALTC | Alternator control |
| B21 | YEL/BLU | VBU | EVAP canister purge valve pin 2 |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | GRN/YEL | IMO FPR | PGM-FI main relay 2 coil pin 3 |
| E2 | BLU | THO2S | Third HO2S signal pin 2 |
| E3 | BRN/YEL | LG3 | G101, shields, anti-theft ground and DLC pins 5/13 |
| E4 | PNK | SG3 | Third HO2S pin 1 and fuel tank pressure sensor pin 2 |
| E5 | YEL/BLU | VCC3 | Fuel tank pressure sensor pin 1 |
| E6 | WHT/BLK | TO2SHTC | Third HO2S heater pin 3 |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 coil pin 3 |
| E8 | ORG | AFSHTOR | A/F sensor relay coil pin 3 |
| E9 | YEL/BLK | IG1 | Under-dash fuse 17 (15 A, ON/START) |
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
| E30 | RED/WHT | WEN | DLC pin 12 |
| E31 | GRN/ORG | MIL | Gauge assembly B3 |

## Manual-transmission and emissions circuits

A18 is WHT/GRN **VSS** from the three-pin vehicle speed sensor, rather than the HX CVT's BLU/WHT VEL2 signal. B7/B16/B24 and all C-connector CVT circuits are absent from these figures. E12/E13/E25 are not wired here.

The three exhaust sensors remain: primary A/F signals A6/A16 and heater A1/A22; secondary HO2S signal/heater A25/A14; third HO2S signal/heater E2/E6. A6 is still printed PHO2S despite the A/F sensor component label. E4 is the third-sensor/tank-pressure return; A10 supplies the secondary-sensor analog return network. VTEC is B15/B9, and EGR position/control A13/B14.

Under-hood fuse 6 (15 A) feeds PGM-FI main relay 1; under-dash fuse 1 (15 A) feeds coils, fuse 17 (15 A) IG1, fuse 2 (20 A) A/F heater relay contacts, and fuse 4 (10 A) the relay coil and emissions branch. Main relay 2 powers fuel pump pin 5; pump pin 4 grounds at G551. G101 is middle engine; G201 behind right front bumper; G501 under gauge assembly. [Honda 125-pin variations](../../Honda-125-variations.md).
