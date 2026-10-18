# 2008 Honda Fit 1.5L — ECM/PCM pinout

Transcribed from [2008-fit.pdf](2008-fit.pdf), **Engine Performance > 1.5L**, Fig 1–4, PDF pages 1–4, diagram IDs **269534–269537** (page 5 is the printer footer). Printed vehicle selection is **2008 Honda Fit Base, 1.5L**. Drawings distinguish A/T and M/T, USA versus Canada, and Sport steering-wheel shift switches. ECM/PCM is under the right side of the dash. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | RED/BLU | KS | Knock sensor pin 1 |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay 1 output through J/C C103; transmission-dependent splice |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay 1 output through J/C C103 |
| A4 | BLK | PG1 | G101 via thermal joint S3 |
| A5 | BLK | PG2 | G101 via thermal joint S3 |
| A6 | GRN | CMP | Camshaft position sensor pin 1 |
| A7 | BLU | CKP | Crankshaft position sensor pin 3 |
| A8 | BRN/YEL | LG2 | G101 via J/C C103/S1 (transmission-dependent routing) |
| A9 | BRN/YEL | LG1 | G101, rear of engine |
| A10 | BLK/WHT | AFSHTC | A/F sensor heater pin 4 |
| A13 | WHT/BLU | IGPLS4 | Ignition coil 4 pin 1 |
| A14 | WHT/BLK | IGPLS3 | Ignition coil 3 pin 1 |
| A15 | WHT/GRN | IGPLS2 | Ignition coil 2 pin 1 |
| A16 | WHT | IGPLS1 | Ignition coil 1 pin 1 |
| A18 | BLK/BLU (OR WHT/GRN) | VSS (M/T), NC (A/T) | M/T vehicle speed sensor pin 3 or A/T output/countershaft speed sensor pin 2 |
| A20 | YEL/BLU | VCC2 | EGR position sensor pin 3 and input/mainshaft speed sensor pin 3 |
| A21 | YEL/RED | VCC1 | MAP sensor pin 1; speed-sensor supply branch via J/C C103 |
| A23 | GRN/BLK | SG2 | IAT pin 1, EGR pin 2, ECT1 pin 2, mainshaft speed sensor pin 1 and ATF sensor pin 2 return |
| A24 | GRN/WHT | SG1 | MAP sensor pin 3; speed-sensor return branch via J/C C103 |
| A28 | RED | AFS (−) | A/F sensor pin 2 |
| A30 | RED/GRN | MAP | MAP sensor pin 2 |
| A31 | GRN | AFS (+) | A/F sensor pin 1 |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B2 | YEL | INJ4 | Injector 4 pin 2 |
| B3 | BLU | INJ3 | Injector 3 pin 2 |
| B4 | RED | INJ2 | Injector 2 pin 2 |
| B5 | BRN | INJ1 | Injector 1 pin 2 |
| B6 | GRN/YEL | VTS | Rocker arm oil control solenoid pin 1; pin 2 grounds through S3 |
| B8 | RED/WHT | TW | Coolant temperature sensor 1 pin 1 |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B11 | BLU/BLK | VTPSW | Rocker arm oil pressure switch pin 1 |
| B12 | WHT/BLK | EGRP | EGR valve position sensor pin 1 |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B16 | PNK | EGR | EGR actuator pin 4; pin 6 grounds to G101 |
| B17 | RED/YEL | IAT | Intake air temperature sensor pin 2 |
| B18 | WHT/GRN | ALTC | Alternator control |
| B21 | RED/YEL | PCS | EVAP canister purge valve pin 2 |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | BRN/WHT | LSB | A/T clutch pressure control solenoid B pin 1 |
| C2 | GRN | SHC | Shift control solenoid C |
| C4 | GRN/RED | SHD | Shift control solenoid D (component-side YEL) |
| C5 | GRN/WHT | SHB | Shift control solenoid B (component-side ORG) |
| C6 | BLU | SHA | Shift control solenoid A |
| C7 | BLU/WHT | LSC | A/T clutch pressure control solenoid C pin 1 |
| C9 | RED | ATPD3 | Transmission range switch D3 |
| C10 | BLK/RED | OP3SW | Third-clutch transmission fluid pressure switch |
| C11 | BRN | ATP2-1 | Transmission range switch 2/1 |
| C12 | YEL | ATPRVS | Transmission range switch reverse circuit |
| C13 | BLU/YEL | OP2SW | Second-clutch transmission fluid pressure switch |
| C14 | RED/YEL | ATFT | ATF temperature sensor pin 1 (component-side WHT) |
| C15 | RED/BLK | LSA | A/T clutch pressure control solenoid A pin 1 |
| C17 | YEL/GRN | ATPD | Transmission range switch D; also cruise control system |
| C18 | BLU/YEL | ATPFWD | Transmission range switch forward circuit |
| C19 | WHT/RED | NM | Input/mainshaft speed sensor pin 2 |
| C20 | RED/BLK | ATPN | Transmission range switch N; also starting/charging system |
| C21 | WHT | ATPR | Transmission range switch reverse-position circuit, also exterior lights system |
| C22 | BLK/BLU | ATPP | Transmission range switch park-position circuit, also shift interlock system |

### Connector D (17 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| D5 | BLU/ORG | APSB | Accelerator pedal position sensor pin 4 |
| D6 | PPL | APSA | Accelerator pedal position sensor pin 1 |
| D8 | BLU | BKSWNC | Cruise control system |
| D9 | LT GRN/RED (OR LT BLU) | SDNP (A/T), CRMTCLS (M/T) | A/T steering-wheel downshift switch (Sport), or M/T clutch pedal position switch |
| D10 | BLK | SG3 | APP sensor pin 2 |
| D12 | BRN | VCC3 | APP sensor pin 3 |
| D13 | BLU/RED | SEFD | Throttle actuator control module pin 6; WHT/RED in harness |
| D14 | BLU/BLK | SEDF | Throttle actuator control module pin 14; GRN/BLK in harness |
| D15 | ORG | DBWRLY | Throttle actuator control module relay coil pin 3 |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | LT BLU | TW2 | Coolant temperature sensor 2 pin 2 |
| E3 | BRN/YEL | LG | Ground/shield and computer data lines ground network |
| E4 | PNK | SG4 | Evaporator temperature sensor pin 2, ECT2 pin 1, FTP sensor pin 3 and APP sensor pin 5 return network |
| E5 | ORG | VCC4 | APP sensor pin 6 and fuel tank pressure sensor pin 1 |
| E6 | BLU | TAC | Evaporator temperature sensor pin 1, HVAC unit |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 coil pin 3 and ignition coil relay coil pin 3 |
| E8 | PNK/BLK | AFSHTCR | A/F sensor relay coil pin 3 |
| E9 | BLK/YEL | IG1 | Under-dash fuse 3 (10 A, ON/START), F8 |
| E11 | WHT | CAN-H | Gauge control module C13 via J/C C402 |
| E12 | GRN | FAN | Cooling fan system |
| E14 | LT GRN | FTP | Fuel tank pressure sensor pin 2 |
| E15 | BLU/ORG | ELD | Electrical load detector pin 3 (USA) |
| E16 | YEL | SUPP | Steering-wheel upshift switch via cable reel C6, USA Fit Sport / Canada Sport |
| E17 | GRN/YEL | IMOFPR | PGM-FI main relay 2 coil pin 3 |
| E18 | RED | ACC | A/C system |
| E19 | LT GRN/RED | VSV | EVAP canister vent shut valve pin 1 |
| E20 | WHT/RED | SHO2S | Secondary HO2S signal pin 2 |
| E21 | BLK/WHT | SHO2SHTC | Secondary HO2S heater pin 3 |
| E22 | WHT/BLK | BKSW | Brake pedal position switch pin 2 |
| E24 | RED | CAN-L | Gauge control module C12 via J/C C402 |
| E25 | GRN/ORG | NEP | Electronic power steering system |
| E26 | PPL/WHT | VSS OUT | Cruise control system |
| E27 | LT GRN/BLK | IMOCD | Anti-theft system |
| E28 | BLU/WHT | ACS | Air conditioning system |
| E29 | BRN | SCS | Computer data lines system |
| E30 | RED/BLU | WEN | Computer data lines system |

## Differences that affect interchangeability

The pedal inputs are **D5/D6**, with supplies **D12/E5** and returns **D10/E4-network** (APP pin 5 PNK in the drawing). The separate throttle actuator module uses **D13/D14** serial lines and **D15** relay control. Do not substitute the TSX/Element A25/A26 and B19/B20 assignments. C1 is **LSB**, C15 **LSA**, and C21/C22 are reverse/park inputs, unlike several other 125-position PCMs. A4/A5 are printed PG1/PG2 in that order.

A18 is VSS for M/T or NC for A/T; NC is a wired speed signal, not an unused pin. D9 has separate A/T downshift and M/T clutch functions. E16 is a Sport upshift input, not a power-steering pressure switch. E6 TAC goes to the evaporator temperature sensor; it is not a throttle motor terminal.

## Power and grounds

PGM-FI main relay 1 and ignition coil relay are in the under-dash fuse/relay box. Their coil controls share RED/YEL to E7. Relay 1 supplies A2/A3 and injector/sensor power; relay 2 supplies fuel pump pin 2 YEL/GRN and is controlled by E17. Under-dash fuse 14 (15 A, always hot) supplies the main-relay contact branch; fuse 3 (10 A, ON/START) supplies IG1. Auxiliary fuse 32 (15 A) feeds the throttle-controller relay contacts; the controller itself, rather than the ECM, drives the throttle motor. The source also shows auxiliary fuse 33 (15 A) in the ignition branch. A/F sensor heater relay receives WHT/RED from under-dash fuse 23 (10 A).

G101 is rear of engine; G301 behind left front bumper; G402/G403 behind middle of dash. Thermal joints S1/S2/S3 and J/C C103 combine supplies/returns, with A/T/M/T splice alternatives drawn explicitly. APP pin 5 and FTP pin 3 join the PNK sensor-return network; do not join that to engine ground based only on the connector family. [Honda 125-pin variations](../../Honda-125-variations.md).
