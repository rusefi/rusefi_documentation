# 2004 Honda Civic GX 1.7L — PCM pinout

Transcribed from [2004-civic-1.7.pdf](2004-civic-1.7.pdf), **Fig 4–6: 1.7L, Engine Performance Circuit, GX**, PDF pages 4–6, diagram IDs **189236–189238**. PCM is behind the glove box. This is the GX gaseous-fuel circuit with an injector control module and CVT; it must not be merged with the first three “Except HX & GX” figures. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | BLK/WHT | PO2SHTC | Primary HO2S heater pin 4 |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay 1 output via J/C C102 |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay 1 output via J/C C102 |
| A4 | BLK | PG2 | G101 via J/C C103 |
| A5 | BLK | PG1 | G101 via J/C C103 |
| A6 | WHT | PHO2S | Primary HO2S signal pin 1 |
| A7 | BLU | CKP | Crankshaft position sensor pin 2 |
| A10 | GRN/YEL | SG2 | TPS, IAT, ECT, primary/secondary HO2S, fuel temperature and CVT sensor return network via J/C C103 |
| A11 | GRN/WHT | SG1 | MAP sensor pin 3 |
| A12 | BLK/RED | IACV | Idle air control valve pin 2 |
| A14 | BLK/WHT | SO2SHTC | Secondary HO2S heater pin 3 |
| A15 | RED/BLK | TPS | Throttle position sensor pin 2 |
| A17 | BRN/WHT | INJ MODE | Injector control module pin 24, under front passenger seat |
| A18 | BLU/WHT | VEL2 | CVT speed sensor 2 pin 2 |
| A19 | GRN/RED | MAP | MAP sensor pin 2 |
| A20 | YEL/BLU | VCC2 | TPS pin 1 and CVT speed-sensor supply network |
| A21 | YEL/RED | VCC1 | MAP sensor pin 1; shared sensor-supply network via J/C C102 |
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
| B2 | YEL | INJ4 | Injector control module pin 9; module drives injector 4 |
| B3 | BLU | INJ3 | Injector control module pin 10; module drives injector 3 |
| B4 | RED | INJ2 | Injector control module pin 11; module drives injector 2 |
| B5 | BRN | INJ1 | Injector control module pin 12; module drives injector 1 |
| B6 | GRN | FANC | Cooling fan control |
| B7 | GRN/WHT | HLC LS + | CVT pulley-pressure control solenoid pin 2 |
| B8 | RED/WHT | ECT | ECT sensor pin 1; a second branch is explicitly marked NOT USED |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B16 | YEL/GRN | SC LS + | CVT start-pressure control solenoid pin 4 |
| B17 | RED/YEL | IAT | Intake air temperature sensor pin 2 |
| B18 | WHT/GRN | ALTC | Alternator control |
| B24 | BLU/WHT | SH LS + | CVT speed-change control solenoid pin 3 |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | BLK/RED | HLCLS (−) | CVT pulley-pressure control solenoid pin 6 |
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
| E1 | GRN/YEL | IMO FPR | Injector relay coil pin 3; not a fuel-pump motor in this GX circuit |
| E3 | BRN/YEL | LG3 | G101, shields, anti-theft ground and DLC pins 5/13 |
| E4 | PNK | SG3 | Fuel pressure sensor pin 2, fuel tank temperature sensor pin 2 and FTP sensor pin 2 |
| E5 | YEL/BLU | VCC3 | Fuel pressure sensor pin 1 and FTP sensor pin 1 |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 coil pin 3 |
| E9 | YEL/BLK | IG1 | Under-dash fuse 17 (15 A, ON/START) |
| E12 | BLU/ORG | CRS | Cruise control system |
| E13 | WHT/BLU | ILU | Multiplex control unit D13 |
| E14 | LT GRN | PF2 | Fuel pressure sensor pin 3, middle of engine |
| E15 | GRN/RED | ELD | Electrical load detector pin 3 (USA only) |
| E16 | LT GRN/BLK | PSPSW | Power steering pressure switch pin 1 |
| E17 | BLU/RED | TF2 | Fuel temperature sensor pin 2 |
| E18 | RED | ACC | Air conditioning system |
| E19 | ORG | PFO | FTP sensor pin 3, behind rear seat |
| E20 | GRN | STSWC | Starting/charging system |
| E21 | LT GRN/RED | TFO | Fuel tank temperature sensor pin 1, behind rear seat |
| E22 | WHT/BLK | BKSW | Brake pedal switch pin 2 via under-dash fuse/relay box |
| E23 | LT BLU | K-LINE | DLC pin 7 and ABS diagnostic connection |
| E24 | YEL | SEFMJ | Multiplex control unit E10 |
| E25 | BLU/WHT | VSSOUT | Cruise control system |
| E26 | BLU | NEP | Computer data lines system |
| E27 | RED/BLU | IMOCD | Anti-theft system |
| E28 | PPL | P1SW | Fuel pressure regulator switch pin 1 and PGM-FI main relay 2 coil pin 3 |
| E29 | BRN | SCS | DLC pin 9 / computer data lines |
| E30 | RED/WHT | WEN | DLC pin 12 |
| E31 | GRN/ORG | MIL | Gauge assembly B21 |

## GX-specific routing

The four INJ outputs go to an **injector control module** under the front passenger seat, not directly to the injectors. A17 INJ MODE goes to module pin 24. Module outputs to the injectors are shown separately, with an injector relay supplying their power branch. E1 controls that relay; E28 P1SW joins the fuel pressure regulator switch and main relay 2 coil. Relay 2 feeds the **fuel tank internal solenoid valve** and **fuel pressure regulator shut-off solenoid valve**, not a gasoline fuel pump.

E14/E17 measure fuel pressure/temperature at the engine; E19/E21 measure fuel-tank pressure/temperature. The CVT has speed signals A18, C7, C15 and C22, and paired solenoid outputs B7/C1, B16/C8, B24/C16. C14 NCSG is a printed label without a connected wire.

Power sources shown are under-hood fuse 6 (15 A), under-dash fuse 1 (15 A, ignition/coil branch), fuse 17 (15 A, ignition signal) and fuse 4 (10 A, emissions/ELD branch). G101 is middle of engine; G201 behind right front bumper; G551 under front passenger seat; G501 under gauge assembly. The primary/secondary O2 signals are narrowband-labelled PHO2S/SHO2S, unlike the A/F labels in the other 1.7L figures. [Honda 125-pin variations](../../Honda-125-variations.md).
