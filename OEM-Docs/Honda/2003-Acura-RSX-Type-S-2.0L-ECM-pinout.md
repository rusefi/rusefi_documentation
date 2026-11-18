# 2003 Acura RSX Type S 2.0L — ECM/PCM pinout

Transcribed from [2003-acura-rsx-type-R.pdf](2003-acura-rsx-type-R.pdf), **Engine Performance > 2.0L**, Fig 1–6 (PDF pages 1–6; page 7 is a printer footer), diagram IDs **150235–150240**. The PDF prints **2003 Acura RSX Type S, 2.0L** despite `type-R` in its filename. The drawings include Type S, except-Type-S, A/T and M/T branches; a branch label is retained wherever it changes a terminal's applicability.

The ECM/PCM is under the right side of the dash, behind the glove box. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. `NC` at C15 is Honda's countershaft-speed signal name, not “not connected.” Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | BLK/WHT | PO2SHTC (−) | Primary A/F sensor heater control; heater negative |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay 1 switched output |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay 1 switched output |
| A4 | BLK | PG2 | G101, middle of engine |
| A5 | BLK | PG1 | G101, middle of engine |
| A6 | RED | PHO2S (+) | Primary A/F sensor positive signal |
| A7 | BLU | CKP | Crankshaft position sensor signal |
| A8 | RED/YEL | IMRC VPS | Intake manifold runner control valve position sensor, except Type S |
| A9 | RED/BLU | KS | Knock sensor; shield grounded at G101 |
| A10 | GRN/YEL | SG2 | Sensor return for TPS, IAT and ECT branches |
| A11 | GRN/WHT | SG1 | Sensor return for MAP and IMRC position-sensor branches |
| A12 | BLK/RED | IACV | Idle air control valve |
| A15 | RED/BLK | TPS | Throttle position sensor signal |
| A16 | RED/YEL | PHO2S (−) | Primary A/F sensor negative signal |
| A18 | WHT/GRN | VSS | Vehicle speed sensor signal, M/T |
| A19 | GRN/RED | MAP | Manifold absolute pressure sensor signal |
| A20 | YEL/BLU | VCC2 | Sensor supply for TPS branch |
| A21 | YEL/RED | VCC1 | Sensor supply for MAP and IMRC position-sensor branches |
| A22 | WHT | PO2SHTC (+) | Primary A/F sensor heater positive |
| A23 | BRN/YEL | LG2 | G101, middle of engine |
| A24 | BRN/YEL | LG1 | G101, middle of engine |
| A25 | BLU/WHT | CMP | Camshaft position sensor signal |
| A26 | GRN | TDC | TDC sensor signal |
| A27 | BRN | IGPLS4 | Ignition coil 4 pin 3 |
| A28 | WHT/BLU | IGPLS3 | Ignition coil 3 pin 3 |
| A29 | BLU/RED | IGPLS2 | Ignition coil 2 pin 3 |
| A30 | YEL/GRN | IGPLS1 | Ignition coil 1 pin 3 |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B1 | BLU/WHT | VTC (+) | VTC oil control solenoid valve pin 1 |
| B2 | YEL | INJ4 | Fuel injector 4 pin 2 |
| B3 | BLU | INJ3 | Fuel injector 3 pin 2 |
| B4 | RED | INJ2 | Fuel injector 2 pin 2 |
| B5 | BRN | INJ1 | Fuel injector 1 pin 2 |
| B6 | GRN | FANC | Cooling-fans system |
| B7 | GRN/WHT | RVS | Reverse lockout solenoid, Type S |
| B8 | RED/WHT | ECT | Engine coolant temperature sensor signal |
| B9 | BLU/BLK | VTPSW | VTEC oil pressure switch pin 1 |
| B10 | WHT/BLU | ALTL | Charging system, alternator L terminal |
| B13 | WHT/RED | ALTF | Charging system, alternator FR terminal |
| B14 | RED/BLK | LSA (+) | A/T clutch pressure control solenoid valve A pin 2, A/T |
| B15 | GRN/YEL | VTS | VTEC solenoid valve pin 2; pin 1 grounds at G101 |
| B16 | BRN/WHT | LSB (+) | A/T clutch pressure control solenoid valve B pin 2, A/T |
| B17 | RED/YEL | IAT | Intake air temperature sensor signal |
| B18 | WHT/GRN | ALTC | Charging system, alternator control |
| B21 | YEL/BLU | PCS | EVAP canister purge valve pin 2 |
| B22 | RED/BLU | IMRC | Intake manifold runner control solenoid valve pin 2, except Type S |
| B23 | BLK/WHT | VTC (−) | VTC oil control solenoid valve pin 2 |
| B24 | BLU/YEL | LSC (+) | A/T clutch pressure control solenoid valve C pin 2, A/T |

### Connector C (22 positions, A/T)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | WHT/BLK | LSA (−) | A/T clutch pressure control solenoid valve A return |
| C2 | GRN | SHC | Shift control solenoid valve C |
| C3 | YEL | SHE | Shift control solenoid valve E |
| C4 | GRN/WHT | SHB | Shift control solenoid valve B |
| C5 | GRN/RED | SHD | Shift control solenoid valve D |
| C6 | BLU/BLK | SHA | Shift control solenoid valve A |
| C7 | WHT/RED | NM | Mainshaft speed sensor signal |
| C8 | BLK/RED | LSB (−) | A/T clutch pressure control solenoid valve B return |
| C9 | RED | ATPD3 | Transmission range switch D3 position |
| C10 | BLU/WHT | OP3SW | Third clutch pressure switch |
| C12 | RED/WHT | ATPRVS | Transmission range switch reverse circuit |
| C13 | BLU/RED | OP2SW | Second clutch pressure switch |
| C14 | RED/YEL | ATFT | A/T fluid temperature sensor signal |
| C15 | BLU | NC | Countershaft speed sensor signal; `NC` is the printed signal name |
| C16 | WHT/BLU | LSC (−) | A/T clutch pressure control solenoid valve C return |
| C18 | BLU/YEL | ATPFWD | Transmission range switch forward-position circuit |

### Connector D (17 positions, A/T)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| D2 | BRN | S-MODE | Sequential sportshift mode switch |
| D3 | WHT/BLU | S-UP | Sequential sportshift up switch |
| D4 | BLK/RED | ATPN | Transmission range switch neutral position |
| D5 | WHT | ATPR | Transmission range switch reverse position |
| D6 | BLU/BLK | ATPP | Transmission range switch park position |
| D9 | BRN/WHT | S-DN | Sequential sportshift down switch |
| D10 | RED | ATPD | Transmission range switch drive position |
| D12 | BLU/ORG | CCS | Cruise-control unit |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | GRN/YEL | IMO FPR | PGM-FI main relay 2 coil; fuel-pump relay control |
| E2 | WHT/RED | SHO2S | Secondary heated oxygen sensor signal pin 2 |
| E3 | BRN/YEL | LG3 | Logic ground; G101 and diagnostic-ground branches |
| E4 | PNK | SG3 | Secondary HO2S pin 1 and fuel tank pressure sensor pin 2 |
| E5 | YEL/BLU | VCC3 | Fuel tank pressure sensor pin 1 |
| E6 | BLK/WHT | SO2SHTC | Secondary HO2S heater pin 3 |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 coil |
| E8 | ORG | PO2SHTCR | Primary A/F sensor heater relay coil |
| E9 | BLK/YEL | IG1 | Ignition-switch input, hot in ON or START |
| E13 | WHT/BLU | ILU | A/T interlock circuit, A/T |
| E14 | LT GRN | FTP | Fuel tank pressure sensor pin 3 |
| E15 | GRN/RED | ELD | Electrical load detector |
| E16 | LT GRN/BLK | PSPSW | Power steering pressure switch pin 1 |
| E18 | RED | ACC | A/C system |
| E20 | BLU/RED | 2WBS | EVAP bypass solenoid valve pin 2 |
| E21 | LT GRN/RED | VSV | EVAP canister vent shut valve pin 2 |
| E22 | WHT/BLK | BKSW | Brake pedal position switch pin 2 |
| E23 | LT BLU | K-LINE | Diagnostic link connector communication line |
| E24 | YEL | SEFMJ | Gauge/multiplex communication line |
| E25 | BLU/WHT | VSSOUT | Vehicle-speed output, A/T |
| E26 | BLU | NEP | Gauge assembly and tachometer test connector |
| E27 | RED/BLU | IMOCD | Immobilizer control-unit receiver |
| E29 | BRN | SCS | Service-check signal |
| E30 | RED/WHT | WEN | Write-enable signal |
| E31 | GRN/ORG | MIL | Gauge-assembly malfunction indicator lamp |

## Power, grounds and branch notes

PGM-FI main relay 1 supplies A2/A3 and the injector, sensor and solenoid power splices; E7 controls its coil. E1 controls PGM-FI main relay 2, whose contact powers the fuel pump. E8 controls the separate A/F sensor heater relay. A4/A5 are power grounds and A23/A24 logic grounds at G101, middle of engine; the sensor returns A10/A11/E4 are separate circuits.

The Type S-only B7 circuit drives the reverse lockout solenoid. A8 and B22 are explicitly **except Type S**. A18 is the M/T vehicle-speed input; the A/T drawing instead uses the transmission speed sensors and E25 vehicle-speed output. Connectors C and D, B14/B16/B24 and E13 are A/T branches. D4 and D10 are present in this 2003 drawing and must not be carried forward to later RSX pinouts without checking the year-specific source.

The source prints `PO2SHTC`, `PHO2S`, `PO2SHTCR`, `IMRC` and `CCS`; those labels are retained here even where later Honda sources use AFS/AFSHTC/AFSHTCR, IMT or CRS terminology. For the complete 2002–04 versus 2005–06 terminal lists, including every unwired position, see [2002–2006 Acura RSX ECM/PCM pinouts](2002-2006-Acura-RSX-ECM-pinouts.md) and [Honda 125-pin variations](../../Honda-125-variations.md).
