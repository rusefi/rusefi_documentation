# 2007 Acura TSX 2.4L — ECM/PCM pinout

Transcribed from [sheet 1](2007-tsx-ecu-1.png), [sheet 2](2007-tsx-ecu-2.png), [sheet 3](2007-tsx-ecu-3.png), [sheet 4](2007-tsx-ecu-4.png), diagram IDs **255463–255466**. Vehicle/year follow the filenames; the cropped images do not print an engine code. ECM/PCM is under the middle of the dash. These drawings include automatic-transmission circuits and explicitly mark the alternative M/T E2 branch. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | RED/BLU | KS | Knock sensor pin 1, shield grounded at G101 |
| A2 | YEL/BLK | IGP2 | Under-dash PGM-FI main relay 1 output X31 |
| A3 | YEL/BLK | IGP1 | Under-dash PGM-FI main relay 1 output X31 |
| A4 | BLK | PG2 | G101, top left rear of engine |
| A5 | BLK | PG1 | G101, top left rear of engine |
| A6 | GRN | CMPB | Camshaft position sensor B pin 1 |
| A7 | BLU | CKP | Crankshaft position sensor pin 1 |
| A8 | BRN/YEL | LG2 | G101 |
| A9 | BRN/YEL | LG1 | G101 |
| A10 | GRN | AFSHTC | A/F sensor heater pin 3 |
| A13 | BRN | IGPLS4 | Ignition coil 4 pin 3 |
| A14 | WHT/BLU | IGPLS3 | Ignition coil 3 pin 3 |
| A15 | BLU/RED | IGPLS2 | Ignition coil 2 pin 3 |
| A16 | YEL/GRN | IGPLS1 | Ignition coil 1 pin 3 |
| A18 | BLK/BLU | NC | Countershaft speed sensor pin 2, A/T or M/T |
| A19 | BLU/WHT | CMPA | Camshaft position sensor A pin 1 |
| A20 | YEL/BLU | VCC2 | APP sensor pin 5 |
| A21 | YEL/RED | VCC1 | MAP sensor pin 1, APP sensor pin 1 |
| A23 | GRN/YEL | SG2 | APP pin 6, ECT1 pin 2, IAT pin 2 and ATF temperature sensor pin 4 |
| A24 | GRN/WHT | SG1 | MAP sensor pin 3 and APP sensor pin 3 |
| A25 | RED/YEL | APSB | Accelerator pedal sensor B, APP pin 2 |
| A26 | RED/BLU | APSA | Accelerator pedal sensor A, APP pin 4 |
| A28 | RED/YEL | AFS (−) | A/F sensor pin 1 |
| A30 | GRN/RED | MAP | MAP sensor pin 2 |
| A31 | RED | AFS (+) | A/F sensor pin 2 |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B1 | BLU/WHT | VTC | VTC oil control solenoid pin 1; pin 2 grounds at G101 |
| B2 | YEL | INJ4 | Injector 4 pin 2 |
| B3 | BLU | INJ3 | Injector 3 pin 2 |
| B4 | RED | INJ2 | Injector 2 pin 2 |
| B5 | BRN | INJ1 | Injector 1 pin 2 |
| B6 | GRN/YEL | VTS | Rocker arm oil control solenoid (VTEC), pin 2 |
| B8 | RED/WHT | ECT1 | Coolant temperature sensor 1 pin 1 |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B11 | BLU/BLK | VTPSW | Rocker arm oil pressure switch (VTEC), pin 1 |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B15 | BLU/YEL | MCS | Engine mount control solenoid valve pin 1, A/T |
| B17 | RED/YEL | IAT | Intake air temperature sensor pin 1 |
| B18 | WHT/GRN | ALTC | Alternator control |
| B19 | GRN | SEFD | Throttle actuator control module pin 6 |
| B20 | BLU | SEDF | Throttle actuator control module pin 14 |
| B21 | YEL/BLU | PCS | EVAP canister purge valve pin 2 |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | RED/BLK | LSA | A/T clutch pressure control solenoid A pin 1 |
| C2 | GRN | SHC | Shift control solenoid C |
| C3 | YEL | SHE | Shift control solenoid E |
| C4 | GRN/WHT | SHB | Shift control solenoid B |
| C5 | GRN/RED | SHD | Shift control solenoid D |
| C6 | BLU/BLK | SHA | Shift control solenoid A |
| C7 | BLU/YEL | LSC | A/T clutch pressure control solenoid C pin 1 |
| C9 | RED | ATPD3 | Transmission range switch D3 |
| C10 | BLU/WHT | OP3SW | Third clutch pressure switch |
| C12 | RED/WHT | ATPRVS | Transmission range switch R |
| C13 | BLU/RED | OP2SW | Second clutch pressure switch |
| C14 | RED/YEL | ATFT | ATF temperature sensor pin 3 |
| C15 | BRN/WHT | LSB | A/T clutch pressure control solenoid B pin 1 |
| C17 | YEL/GRN | ATPD | Transmission range switch D; also cruise control system |
| C18 | BLU/YEL | ATPFWD | Transmission range switch forward-position circuit |
| C19 | WHT/RED | NM | A/T input/mainshaft speed sensor pin 2 |
| C20 | RED/BLK | ATPN | Transmission range switch N; also starting/charging system |

### Connector D (17 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| D2 | BRN | SMODE | A/T sequential sportshift mode switch pin 3 |
| D3 | WHT | S-UP | A/T sequential sportshift switch UP, pin 1 |
| D5 | WHT | ATPR | A/T range switch reverse circuit |
| D6 | BLU | ATPP | A/T park circuit; MICU via J/C C555 |
| D9 | ORG | S-DN | A/T sequential sportshift switch DN, pin 6 |
| D10 | LT GRN | METERINH | Gauge control module B11, A/T |
| D15 | BRN | DBWRLY | Throttle actuator control module relay coil pin 3 |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | BLU | (no label) | Coolant temperature sensor 2 pin 1, bottom left side of radiator |
| E2 | GRY | RVS (M/T) | Shift interlock system reference as drawn; printed function is RVS (M/T) |
| E3 | BRN/YEL | LG3 | G101 via J/C C407; DLC pin 5 |
| E4 | GRN/BLK | SG3 | Fuel tank pressure sensor pin 3, secondary HO2S pin 1 and ECT2 pin 2 return network |
| E5 | GRN | VCC3 | Fuel tank pressure sensor pin 1 (changes to YEL/GRN in harness) |
| E7 | YEL | MRLY | Ignition coil relay coil X11 |
| E8 | ORG | AFSHTCR | A/F sensor relay coil X21 |
| E9 | BLK/YEL | IG1 | Under-dash fuse 19 (15 A, ON/START), X38 |
| E11 | WHT | CAN H | Gauge control module B12 via J/C C554 |
| E12 | GRN | FANC | Cooling fans system |
| E14 | LT GRN | FTP | Fuel tank pressure sensor pin 2 |
| E15 | BLU | ELD | Electrical load detector A3 via under-dash fuse box D13/X7 |
| E16 | BLU | PSPSW | Power steering pressure switch pin 1; BLU/YEL harness branch |
| E17 | GRN | IMO FPR | PGM-FI main relay 2 coil X3 |
| E18 | RED | ACC | A/C system |
| E19 | LT GRN/RED | VSV | EVAP canister vent shut valve pin 1 |
| E20 | WHT/RED | SHO2S | Secondary HO2S signal pin 2 |
| E21 | WHT | SO2SHTC | Secondary HO2S heater pin 3; changes to BLK/WHT harness branch |
| E22 | WHT/BLK | BKSW | Brake pedal position switch pin 2 |
| E24 | RED | CAN L | Gauge control module B13 via J/C C554 |
| E26 | BLU | VSSOUT | Navigation system |
| E27 | RED | IMOCD | Anti-theft system |
| E29 | BRN | SCS | DLC pin 9 via J/C C405 |
| E30 | WHT | WEN | DLC pin 12 via J/C C405 |

## Changes and routing

The separate throttle actuator controller still uses B19/B20 serial communication, A25/A26 pedal inputs and D15 relay control. E1 now has the second coolant-temperature sensor; the ECU end has no printed function label. E2 is printed **RVS (M/T)** although the outgoing arrow says **shift interlock system**. Both are retained rather than converting this into a confirmed solenoid endpoint.

E23 has no wire in this drawing. DLC pin 7 is instead shown connected to the MICU K-line circuit; do not import the 2005 E23 K-LINE assignment. E25 NEP is also absent. E26 BLU remains a vehicle-speed output to navigation. CAN remains E11 WHT / E24 RED. Colour changes include E7 RED/YEL → YEL, E17 GRN/YEL → GRN, E27 RED/BLU → RED and E30 RED/WHT → WHT compared with the 2005 drawing.

Power arrangement follows the drawing's under-dash PGM-FI main relay 1 output X31 to A2/A3; relay 2 X3 is driven by E17. Fuse 2 (15 A) supplies ignition relay contacts; fuse 19 (15 A, ON/START) supplies IG1; fuses 4 (10 A) and 23 (7.5 A) supply A/F heater relay contacts/coil, fuse 1 (15 A) supplies the throttle-controller relay contacts, and fuse 18 (15 A) supplies the emissions branch. G101 is top left rear of engine; G202/G302 are behind the right/left front bumper and G503 behind the glove box. [Honda 125-pin variations](../../Honda-125-variations.md).
