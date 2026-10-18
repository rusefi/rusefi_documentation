# 2002–2006 Acura RSX — ECM/PCM pinouts

Transcribed from [RSX ECU pinouts 02–06, page 1](rsx-ecu-pinouts-02-06_page1.jpg) and [page 2](rsx-ecu-pinouts-02-06_page2.jpg), section **203. ECM/PCM**. These two sheets explicitly cover **2002–04** and **2005–06**, including base/Type S and A/T/M/T distinctions. They identify the module beneath the right side of the dash / glove box. Connector A is gray, B white, C black (A/T), D white (A/T), and E white. A/B/C are engine-harness connectors; D/E are on the dashboard harness right branch.

The five connector capacities are **A31 + B24 + C22 + D17 + E31 = 125 positions**. Every position is included below because these source lists explicitly print unassigned positions as dashes. A dash means no assignment in this source. **NC at a wired speed-sensor terminal is a Honda signal name, not “not connected.”** The source does not state the viewing direction of its connector drawings; use the original drawing and terminal markings before locating a physical cavity.

Wire abbreviations: BLK black, WHT white, RED red, BLU blue, YEL yellow, GRN green, BRN brown, ORN orange, PNK pink, LT light; slash separates base/stripe. Function labels are retained; “Connects to” expands their circuit meaning. The sheets do not specify all receiving component pin numbers or supply voltages.

Circuit-diagram companions in this repository: [2003 RSX](2003-acura-rsx-type-R.pdf), Fig 1–6 (PDF pages 1–6; the printed title is **2003 Acura RSX Type S, 2.0L**, despite the filename saying “type-R”); [2005 RSX](2005%20Acura%20RSX%20ECU.pdf), six engine-control sheets on PDF pages 2–7; [2006 RSX](2006-acura-rsx.pdf), Fig 1–6, PDF pages 1–6, printed **RSX Base, 2.0L**. The [2005 image set](2005-rsx-s-1.png) continues in [2](2005-rsx-s-2.png), [3](2005-rsx-s-3.png), [4](2005-rsx-s-4.png), [5](2005-rsx-s-5.png), [6](2005-rsx-s-6.png). These diagrams include alternative base/Type S and transmission branches; the selected vehicle title does not make every drawn branch applicable.

## 2002–2004

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | BLK/WHT | AFSHTC | Primary A/F sensor heater − |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay switched supply |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay switched supply |
| A4 | BLK | PG2 | Power ground |
| A5 | BLK | PG1 | Power ground |
| A6 | RED | AFS (+) | Primary A/F sensor + |
| A7 | BLU | CKP | Crankshaft position sensor signal |
| A8 | RED/YEL | IMT (IMRC) VPS | Intake manifold tuning valve position switch, except Type S |
| A9 | RED/BLU | KS | Knock sensor |
| A10 | GRN/YEL | SG2 | Sensor ground 2 |
| A11 | GRN/WHT | SG1 | Sensor ground 1 |
| A12 | BLK/RED | IACV | Idle air control valve |
| A13 | — | — | Dash in source; no assignment listed |
| A14 | — | — | Dash in source; no assignment listed |
| A15 | RED/BLK | TPS | Throttle position sensor |
| A16 | RED/YEL | AFS (−) | Primary A/F sensor − |
| A17 | — | — | Dash in source; no assignment listed |
| A18 | WHT/GRN | VSS | Vehicle speed sensor, M/T |
| A19 | GRN/RED | MAP | Manifold absolute pressure sensor |
| A20 | YEL/BLU | VCC2 | Sensor supply 2 |
| A21 | YEL/RED | VCC1 | Sensor supply 1 |
| A22 | WHT | AFSHTC (+) | Primary A/F sensor heater + |
| A23 | BRN/YEL | LG2 | Logic ground 2 |
| A24 | BRN/YEL | LG1 | Logic ground 1 |
| A25 | BLU/WHT | CMP A | Camshaft position sensor A |
| A26 | GRN | CMP B | Camshaft position sensor B |
| A27 | BRN | IGPLS4 | Ignition coil 4 |
| A28 | WHT/BLU | IGPLS3 | Ignition coil 3 |
| A29 | BLU/RED | IGPLS2 | Ignition coil 2 |
| A30 | YEL/GRN | IGPLS1 | Ignition coil 1 |
| A31 | — | — | Dash in source; no assignment listed |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B1 | BLU/WHT | VTC (+) | VTC oil control solenoid + |
| B2 | YEL | INJ4 | Injector 4 |
| B3 | BLU | INJ3 | Injector 3 |
| B4 | RED | INJ2 | Injector 2 |
| B5 | BRN | INJ1 | Injector 1 |
| B6 | GRN | FANC | Cooling fan control |
| B7 | GRN/WHT | RVS | Reverse lockout solenoid, Type S |
| B8 | RED/WHT | ECT | Engine coolant temperature sensor |
| B9 | BLU/BLK | VTPSW | VTEC oil pressure switch |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B11 | — | — | Dash in source; no assignment listed |
| B12 | — | — | Dash in source; no assignment listed |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B14 | RED/BLK | LSA (+) | A/T clutch pressure control solenoid A + |
| B15 | GRN/YEL | VTS | VTEC solenoid |
| B16 | BRN/WHT | LSB (+) | A/T clutch pressure control solenoid B + |
| B17 | RED/YEL | IAT | Intake air temperature sensor |
| B18 | WHT/GRN | ALTC | Alternator control |
| B19 | — | — | Dash in source; no assignment listed |
| B20 | — | — | Dash in source; no assignment listed |
| B21 | YEL/BLU | PCS | EVAP canister purge valve |
| B22 | RED/BLU | IMT (IMRC) | Intake manifold tuning solenoid circuit, except Type S |
| B23 | BLK/WHT | VTC (−) | VTC oil control solenoid − |
| B24 | BLU/YEL | LSC (+) | A/T clutch pressure control solenoid C + |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | WHT/BLK | LSA (−) | A/T clutch pressure control solenoid A − |
| C2 | GRN | SHC | Shift solenoid C |
| C3 | YEL | SHE | Shift solenoid E |
| C4 | GRN/WHT | SHB | Shift solenoid B |
| C5 | GRN/RED | SHD | Shift solenoid D |
| C6 | BLU/BLK | SHA | Shift solenoid A |
| C7 | WHT/RED | NM | Input/mainshaft speed sensor |
| C8 | BLK/RED | LSB (−) | A/T clutch pressure control solenoid B − |
| C9 | RED | ATPD3 | Transmission D3 position |
| C10 | BLU/WHT | OP3SW | Third clutch pressure switch |
| C11 | — | — | Dash in source; no assignment listed |
| C12 | RED/WHT | ATPRVS | Transmission reverse-position signal |
| C13 | BLU/RED | OP2SW | Second clutch pressure switch |
| C14 | RED/YEL | ATFT | A/T fluid temperature sensor |
| C15 | BLU | NC | Output/countershaft speed sensor; NC is the signal name |
| C16 | WHT/BLU | LSC (−) | A/T clutch pressure control solenoid C − |
| C17 | — | — | Dash in source; no assignment listed |
| C18 | BLU/YEL | ATPFWD | Transmission forward-position signal |
| C19 | — | — | Dash in source; no assignment listed |
| C20 | — | — | Dash in source; no assignment listed |
| C21 | — | — | Dash in source; no assignment listed |
| C22 | — | — | Dash in source; no assignment listed |

### Connector D (17 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| D1 | — | — | Dash in source; no assignment listed |
| D2 | BRN | S-MODE | Sequential shift mode switch |
| D3 | WHT/BLU | S-UP | Sequential upshift switch |
| D4 | BLK/RED | ATPN | Transmission neutral-position signal |
| D5 | WHT | ATPR | Transmission reverse-position signal |
| D6 | BLU/BLK | ATPP | Transmission park-position signal |
| D7 | — | — | Dash in source; no assignment listed |
| D8 | — | — | Dash in source; no assignment listed |
| D9 | BRN/WHT | S-DN | Sequential downshift switch |
| D10 | RED | ATPD | Transmission drive-position signal |
| D11 | — | — | Dash in source; no assignment listed |
| D12 | BLU/ORN | CRS | Cruise control circuit |
| D13 | — | — | Dash in source; no assignment listed |
| D14 | — | — | Dash in source; no assignment listed |
| D15 | — | — | Dash in source; no assignment listed |
| D16 | — | — | Dash in source; no assignment listed |
| D17 | — | — | Dash in source; no assignment listed |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | GRN/YEL | IMO FPR | Immobilizer/fuel-pump relay control |
| E2 | WHT/RED | SHO2S | Secondary heated oxygen sensor signal |
| E3 | BRN/YEL | LG3 | Logic ground 3 |
| E4 | PNK | SG3 | Sensor ground 3 |
| E5 | YEL/BLU | VCC3 | Sensor supply 3 |
| E6 | BLK/WHT | SO2SHTC | Secondary oxygen sensor heater |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 control |
| E8 | ORN | AFSHTCR | Primary A/F sensor heater relay control |
| E9 | BLK/YEL | IG1 | Ignition switch input |
| E10 | — | — | Dash in source; no assignment listed |
| E11 | — | — | Dash in source; no assignment listed |
| E12 | — | — | Dash in source; no assignment listed |
| E13 | WHT/BLU | ILU | A/T interlock circuit |
| E14 | LT GRN | FTP | Fuel tank pressure sensor |
| E15 | GRN/RED | ELD | Electrical load detector |
| E16 | LT GRN/BLK | PSPSW | Power steering pressure switch |
| E17 | — | — | Dash in source; no assignment listed |
| E18 | RED | ACC | A/C compressor control |
| E19 | — | — | Dash in source; no assignment listed |
| E20 | BLU/RED | 2WBS | EVAP bypass solenoid |
| E21 | LT GRN/RED | VSV | EVAP vent shut valve |
| E22 | WHT/BLK | BKSW | Brake switch |
| E23 | LT BLU | K-LINE | Diagnostic communication |
| E24 | YEL | SEFMJ | Multiplex communication |
| E25 | BLU/WHT | VSSOUT | Vehicle speed output, A/T |
| E26 | BLU | NEP | Engine speed/tachometer output |
| E27 | RED/BLU | IMOCD | Immobilizer communication |
| E28 | — | — | Dash in source; no assignment listed |
| E29 | BRN | SCS | Service check signal |
| E30 | RED/WHT | WEN | Write-enable signal |
| E31 | GRN/ORN | MIL | Malfunction indicator lamp |

## 2005–2006

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | RED/BLU | KS | Knock sensor |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay switched supply |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay switched supply |
| A4 | BLK | PG2 | Power ground |
| A5 | BLK | PG1 | Power ground |
| A6 | GRN | CMP B | Camshaft position sensor B |
| A7 | BLU | CKP | Crankshaft position sensor signal |
| A8 | BRN/YEL | LG2 | Logic ground 2 |
| A9 | BRN/YEL | LG1 | Logic ground 1 |
| A10 | BLK/WHT | AFSHTC | Primary A/F sensor heater |
| A11 | RED/BLU | IMT (IMRC) VPS | Intake manifold tuning valve position switch, except Type S |
| A12 | BLK/RED | IACV | Idle air control valve |
| A13 | BRN | IGPLS4 | Ignition coil 4 |
| A14 | WHT/BLU | IGPLS3 | Ignition coil 3 |
| A15 | BLU/RED | IGPLS2 | Ignition coil 2 |
| A16 | YEL/GRN | IGPLS1 | Ignition coil 1 |
| A17 | — | — | Dash in source; no assignment listed |
| A18 | BLU | NC | Output/countershaft speed sensor; NC is the signal name |
| A19 | BLU/WHT | CMP A | Camshaft position sensor A |
| A20 | YEL/BLU | VCC2 | Sensor supply 2 |
| A21 | YEL/RED | VCC1 | Sensor supply 1 |
| A22 | — | — | Dash in source; no assignment listed |
| A23 | GRN/YEL | SG2 | Sensor ground 2 |
| A24 | GRN/WHT | SG1 | Sensor ground 1 |
| A25 | — | — | Dash in source; no assignment listed |
| A26 | — | — | Dash in source; no assignment listed |
| A27 | — | — | Dash in source; no assignment listed |
| A28 | RED/YEL | AFS (−) | Primary A/F sensor − |
| A29 | RED/BLK | TPS | Throttle position sensor |
| A30 | GRN/RED | MAP | Manifold absolute pressure sensor |
| A31 | RED | AFS (+) | Primary A/F sensor + |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B1 | BLU/WHT | VTC (+) | VTC oil control solenoid + |
| B2 | YEL | INJ4 | Injector 4 |
| B3 | BLU | INJ3 | Injector 3 |
| B4 | RED | INJ2 | Injector 2 |
| B5 | BRN | INJ1 | Injector 1 |
| B6 | GRN/YEL | VTS | VTEC solenoid |
| B7 | — | — | Dash in source; no assignment listed |
| B8 | RED/WHT | ECT | Engine coolant temperature sensor |
| B9 | — | — | Dash in source; no assignment listed |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B11 | BLU/BLK | VTPSW | VTEC oil pressure switch |
| B12 | — | — | Dash in source; no assignment listed |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B14 | — | — | Dash in source; no assignment listed |
| B15 | — | — | Dash in source; no assignment listed |
| B16 | — | — | Dash in source; no assignment listed |
| B17 | RED/YEL | IAT | Intake air temperature sensor |
| B18 | WHT/GRN | ALTC | Alternator control |
| B19 | — | — | Dash in source; no assignment listed |
| B20 | — | — | Dash in source; no assignment listed |
| B21 | YEL/BLU | PCS | EVAP canister purge valve |
| B22 | RED/YEL | IMT (IMRC) VPS | Intake manifold tuning circuit, except Type S; see source discrepancy below |
| B23 | — | — | Dash in source; no assignment listed |
| B24 | — | — | Dash in source; no assignment listed |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | RED/BLK | LSA (+) | A/T clutch pressure control solenoid A + |
| C2 | GRN | SHC | Shift solenoid C |
| C3 | YEL | SHE | Shift solenoid E |
| C4 | GRN/WHT | SHB | Shift solenoid B |
| C5 | GRN/RED | SHD | Shift solenoid D |
| C6 | BLU/BLK | SHA | Shift solenoid A |
| C7 | BLU/YEL | LSC (+) | A/T clutch pressure control solenoid C + |
| C8 | BLK/RED | LSB (−) | A/T clutch pressure control solenoid B − |
| C9 | RED | ATPD3 | Transmission D3 position |
| C10 | BLU/WHT | OP3SW | Third clutch pressure switch |
| C11 | — | — | Dash in source; no assignment listed |
| C12 | RED/WHT | ATPRVS | Transmission reverse-position signal |
| C13 | BLU/RED | OP2SW | Second clutch pressure switch |
| C14 | RED/YEL | ATFT | A/T fluid temperature sensor |
| C15 | BRN/WHT | LSB (+) | A/T clutch pressure control solenoid B + |
| C16 | — | — | Dash in source; no assignment listed |
| C17 | — | — | Dash in source; no assignment listed |
| C18 | BLU/YEL | ATPFWD | Transmission forward-position signal |
| C19 | WHT/RED | NM | Input/mainshaft speed sensor |
| C20 | RED/BLK | ATPN | Transmission neutral-position signal |
| C21 | — | — | Dash in source; no assignment listed |
| C22 | — | — | Dash in source; no assignment listed |

### Connector D (17 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| D1 | — | — | Dash in source; no assignment listed |
| D2 | BRN | S-MODE | Sequential shift mode switch |
| D3 | WHT/BLU | S-UP | Sequential upshift switch |
| D4 | — | — | Dash in source; no assignment listed |
| D5 | WHT | ATPR | Transmission reverse-position signal |
| D6 | BLU/BLK | ATPP | Transmission park-position signal |
| D7 | — | — | Dash in source; no assignment listed |
| D8 | — | — | Dash in source; no assignment listed |
| D9 | BRN/WHT | S-DN | Sequential downshift switch |
| D10 | — | — | Dash in source; no assignment listed |
| D11 | — | — | Dash in source; no assignment listed |
| D12 | BLU/ORN | CRS | Cruise control circuit |
| D13 | — | — | Dash in source; no assignment listed |
| D14 | — | — | Dash in source; no assignment listed |
| D15 | — | — | Dash in source; no assignment listed |
| D16 | — | — | Dash in source; no assignment listed |
| D17 | — | — | Dash in source; no assignment listed |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | — | — | Dash in source; no assignment listed |
| E2 | WHT/BLU (A/T); YEL/RED (Type S) | ILU (A/T); RVS (Type S) | A/T interlock circuit or Type S reverse lockout solenoid |
| E3 | BRN/YEL | LG3 | Logic ground 3 |
| E4 | PNK | SG3 | Sensor ground 3 |
| E5 | YEL/BLU | VCC3 | Sensor supply 3 |
| E6 | — | — | Dash in source; no assignment listed |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 control |
| E8 | ORN | AFSHTCR | Primary A/F sensor heater relay control |
| E9 | BLK/YEL | IG1 | Ignition switch input |
| E10 | — | — | Dash in source; no assignment listed |
| E11 | — | — | Dash in source; no assignment listed |
| E12 | GRN/WHT | FANC | Cooling fan control |
| E13 | YEL | SEFMJ | Multiplex communication |
| E14 | LT GRN | FTP | Fuel tank pressure sensor |
| E15 | GRN/RED | ELD | Electrical load detector |
| E16 | LT GRN/BLK | PSPSW | Power steering pressure switch |
| E17 | GRN/YEL | IMO FPR | Immobilizer/fuel-pump relay control |
| E18 | RED | ACC | A/C compressor control |
| E19 | LT GRN/RED | VSV | EVAP vent shut valve |
| E20 | WHT/RED | SHO2S | Secondary heated oxygen sensor signal |
| E21 | BLK/WHT | SO2SHTC | Secondary oxygen sensor heater |
| E22 | WHT/BLK | BKSW | Brake switch |
| E23 | LT BLU | K-LINE | Diagnostic communication |
| E24 | — | — | Dash in source; no assignment listed |
| E25 | BLU | NEP | Engine speed/tachometer output |
| E26 | BLU/WHT | VSSOUT | Vehicle speed output |
| E27 | RED/BLU | IMOCD | Immobilizer communication |
| E28 | — | — | Dash in source; no assignment listed |
| E29 | BRN | SCS | Service check signal |
| E30 | RED/WHT | WEN | Write-enable signal |
| E31 | GRN/ORN | MIL | Malfunction indicator lamp |

## Source discrepancies and circuit notes

- The connector-list image labels B22 `IMT (IMRC)` for 2002–04 but `IMT (IMRC) VPS` for 2005–06. The circuit drawings show the **IMRC solenoid valve** there, while A8 (2002–04) / A11 (2005–06) is the valve position switch. The function column preserves the list's text rather than silently correcting it. Its wire colours also differ: the list prints A8 RED/YEL and B22 RED/BLU for 2002–04, then A11 RED/BLU and B22 RED/YEL for 2005–06. Check the exact vehicle's circuit sheet when resolving these wires.
- The C connector face picture repeats `10/11/12` on its bottom row where the consecutive positions would be `18/19/20`. The terminal list, not those repeated drawing numerals, supplies the C18/C19/C20 assignments above.
- The shared C list prints C8 BLK/RED LSB (−) without a year qualifier. The later engine circuit drawings leave C8 unwired and ground the solenoid return externally. The table retains the pin-list entry; use the year-specific circuit diagram for that return.
- D4 and D10 are **2002–04 only**. The shared D list leaves them unassigned for 2005–06; neutral moves to C20. Do not carry the earlier assignments into the later harness.
- In the engine diagrams, A2/A3 receive the PGM-FI main relay 1 output; E7 drives that relay. E1 (early) / E17 (late) controls PGM-FI main relay 2 for the fuel pump. The separate A/F sensor heater relay is driven by E8. A4/A5 and A23/A24 (early) or A8/A9 (late) are chassis/engine grounds; these are distinct from sensor-return terminals.
- The early circuit has both A1 and A22 on the A/F heater circuit. The later list has the heater control on A10 and leaves A22 unassigned. This is more than a move of the sensor signal wires.

See [Honda 125-pin variations](../../Honda-125-variations.md) for comparisons with the other transcribed vehicles.
