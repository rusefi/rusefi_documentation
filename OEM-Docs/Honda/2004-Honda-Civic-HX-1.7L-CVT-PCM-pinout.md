# 2004 Honda Civic HX 1.7L A/T (CVT) — ECM/PCM pinout

Transcribed from [2004-civic-1.7.pdf](2004-civic-1.7.pdf), **Fig 7–9: 1.7L, Engine Performance Circuit, HX A/T**, PDF pages 7–9, diagram IDs **189239–189241**. The A/T is identified as CVT by its solenoid and pulley-speed-sensor labels. The printer header says GX, but these figure titles explicitly identify HX A/T. ECM/PCM is behind the glove box. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

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
| A18 | BLU/WHT | VEL2 | CVT speed sensor 2 pin 2 |
| A19 | GRN/RED | MAP | MAP sensor pin 2 |
| A20 | YEL/BLU | VCC2 | TPS/EGR/knock and CVT speed-sensor supply network via J/C C103 |
| A21 | YEL/RED | VCC1 | MAP sensor supply and CVT sensor supply network via J/C C102 |
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
| B7 | GRN/WHT | HLC LS + | CVT pulley-pressure control solenoid pin 2 |
| B8 | RED/WHT | ECT | ECT sensor pin 1; a second branch is explicitly marked NOT USED |
| B9 | BLU/BLK | VTPSW | VTEC oil pressure switch pin 1 |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B14 | BLU/RED | EGR | EGR actuator pin 4 |
| B15 | GRN/YEL | VTS | VTEC solenoid valve (component-side BLU) |
| B16 | YEL/GRN | SC LS + | CVT start-pressure control solenoid pin 4 |
| B17 | RED/YEL | IAT | Intake air temperature sensor pin 2 |
| B18 | WHT/GRN | ALTC | Alternator control |
| B21 | YEL/BLU | VBU | EVAP canister purge valve pin 2 |
| B24 | BLU/WHT | SH LS + | CVT speed-change control solenoid pin 3 |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | BLK/RED | HLCLS (−) | CVT pulley-pressure control solenoid pin 6 |
| C3 | BLK | PG | Transmission ground G102 |
| C5 | BLK | PG | Transmission ground G102 |
| C6 | GRN/RED | INHSOL | CVT inhibitor solenoid pin 5 |
| C7 | RED/BLU | NDR | CVT drive pulley speed sensor pin 2 |
| C8 | BLU/RED | SCLS (−) | CVT start-pressure control solenoid pin 8 |
| C9 | RED | ATPS | Transmission range switch S |
| C10 | WHT | ATPR | Transmission range switch R; gauge/multiplex branch through J/C C102 |
| C11 | BLU | ATPL | Transmission range switch L |
| C12 | BLU/WHT | ATPNP | Transmission park/neutral circuit and starting/charging branch |
| C14 | — | NCSG | Label printed but no wire drawn |
| C15 | WHT/GRN | NDN | CVT driven pulley speed sensor pin 2 |
| C16 | GRN/YEL | SHLS (−) | CVT speed-change control solenoid pin 7 |
| C18 | BLU/YEL | ATPFWD | Transmission forward-position circuit; cruise branch |
| C20 | YEL | ATPD4 | Transmission range switch D |
| C22 | WHT/RED | VEL1 | CVT speed sensor 1 pin 2 |

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
| E12 | BLU/ORG | CRS | Cruise control system |
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
| E25 | BLU/WHT | VSSOUT | Cruise control system |
| E26 | BLU | NEP | Computer data lines system |
| E27 | RED/BLU | IMOCD | Anti-theft system |
| E29 | BRN | SCS | DLC pin 9 / computer data lines |
| E30 | RED/WHT | WEN | DLC pin 12 |
| E31 | GRN/ORG | MIL | Gauge assembly B3 |

## HX A/T differences

This source has an A/F sensor, a **secondary HO2S** and a **third HO2S**. Secondary signal/heater are A25/A14; third signal/heater are E2/E6. The third sensor's return is E4, while the secondary return uses the GRN/YEL sensor-ground network. A6 is printed PHO2S even though the component is called an A/F sensor; retain the source's wording.

The CVT uses A18 VEL2, C7 NDR, C15 NDN and C22 VEL1. C14 NCSG is printed without a wire. C3/C5 are grounds to **G102 on the transmission**, a difference from the GX figures. B7/C1, B16/C8 and B24/C16 are the three paired CVT solenoid circuits; C6 drives the inhibitor solenoid. E12/E13/E25 carry additional cruise/interlock/speed circuits absent from the HX manual figures.

Under-hood fuse 6 (15 A) supplies PGM-FI main relay 1; under-dash fuse 1 (15 A) supplies coils, fuse 17 (15 A) supplies IG1, fuse 2 (20 A) supplies the A/F relay contact and fuse 4 (10 A) supplies its coil and emissions branch. Main relay 2 supplies the fuel pump, with return G551. Other grounds include G101 (middle engine), G201 (behind right front bumper), G501 (under gauge assembly). [Honda 125-pin variations](../../Honda-125-variations.md).
