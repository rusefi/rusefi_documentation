# 2006 Honda S2000 — ECM inputs, outputs and reference voltages

Transcribed from the local **ECM Inputs and Outputs** tables: connector A (31P), [part 1](2006-s2000-ecu-A-1.gif) and [part 2](2006-s2000-ecu-A-2.gif); connector [B (24P)](2006-s2000-ecu-B.gif); connector E (31P), [part 1](2006-s2000-ecu-E-1.gif) and [part 2](2006-s2000-ecu-E-2.gif). “2006 S2000” is the source filename identification; the image excerpts themselves do not print a model year or engine code.

The drawings explicitly show the **wire side of female terminals**. They cover A31, B24 and E31 within the 125-position connector family; C/D are not documented in this excerpt. Only listed terminals are transcribed. Other cavities in these three drawings are crossed out. Standard battery voltage is **12 V**. Reference voltages and operating conditions below are copied from the tables, not generalized to another vehicle. Source abbreviations use BLK black, WHT white, BLU blue, GRN green, BRN brown, YEL yellow, RED red, ORN orange and LT light; slash denotes stripe. NC means the countershaft-speed signal here.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | RED/BLU | KS | Knock sensor; pulses when engine is knocking |
| A2 | YEL/BLK | IGP2 | ECM power; ignition ON (II): battery voltage, OFF: about 0 V |
| A3 | YEL/BLK | IGP1 | ECM power; ignition ON (II): battery voltage, OFF: about 0 V |
| A4 | BLK | PG2 | ECM power ground; less than 1.0 V at all times |
| A5 | BLK | PG1 | ECM power ground; less than 1.0 V at all times |
| A6 | GRN | CMP | Camshaft position sensor; running: pulses, ignition ON (II): about 5.0 V |
| A7 | BLU | CKP | Crankshaft position sensor; running: pulses, ignition ON (II): about 5.0 V |
| A8 | BRN/YEL | LG2 | Logic ground; less than 1.0 V at all times |
| A9 | BRN/YEL | LG1 | Logic ground; less than 1.0 V at all times |
| A10 | GRN | AFSHTC | A/F sensor heater control; ignition ON (II): battery voltage, fully warm and running: about 0 V |
| A13 | WHT/BLU | IGPLS4 | Ignition coil 4; ignition ON (II): about 0 V, running: pulses |
| A14 | WHT/BLK | IGPLS3 | Ignition coil 3; ignition ON (II): about 0 V, running: pulses |
| A15 | WHT/GRN | IGPLS2 | Ignition coil 2; ignition ON (II): about 0 V, running: pulses |
| A16 | WHT | IGPLS1 | Ignition coil 1; ignition ON (II): about 0 V, running: pulses |
| A18 | BLU/WHT | NC | Output shaft (countershaft) speed sensor; ignition ON (II): about 0 or 5.0 V, driving: about 2.5 V |
| A20 | YEL/BLU | VCC2 | Sensor voltage; ignition ON (II): about 5.0 V, OFF: about 0 V |
| A21 | YEL/RED | VCC1 | Sensor voltage; ignition ON (II): about 5.0 V, OFF: about 0 V |
| A23 | GRN/YEL | SG2 | Sensor ground; less than 1.0 V at all times |
| A24 | GRN/WHT | SG1 | Sensor ground; less than 1.0 V at all times |
| A25 | RED/YEL | APSB | Accelerator pedal sensor B; ignition ON (II): about 2.3 V pedal pressed, about 0.2 V released |
| A26 | RED/BLU | APSA | Accelerator pedal sensor A; ignition ON (II): about 4.5 V pedal pressed, about 0.5 V released |
| A28 | RED/YEL | AFS− | A/F sensor 1 negative signal; no reference voltage listed |
| A30 | GRN/RED | MAP | MAP sensor; ignition ON (II): about 3.0 V, idle: about 1.0 V (depending on engine speed) |
| A31 | RED | AFS+ | A/F sensor 1 positive signal; no reference voltage listed |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B2 | YEL | INJ4 | Injector 4; idle: duty controlled, ignition ON (II): battery voltage |
| B3 | BLU | INJ3 | Injector 3; idle: duty controlled, ignition ON (II): battery voltage |
| B4 | RED | INJ2 | Injector 2; idle: duty controlled, ignition ON (II): battery voltage |
| B5 | BRN | INJ1 | Injector 1; idle: duty controlled, ignition ON (II): battery voltage |
| B6 | GRN/YEL | VTS | Rocker arm oil control solenoid (VTEC); idle: about 0 V |
| B8 | RED/WHT | ECT1 | Coolant temperature sensor 1; ignition ON (II): about 0.1–4.8 V with temperature, fully warm and running: about 0.5–0.7 V |
| B10 | WHT/BLU | ALTL | Alternator L signal; ignition ON (II): about 0 V, running: battery voltage |
| B11 | BLU/BLK | VTPSW | VTEC oil pressure switch; idle: about 0 V, at high engine speed: battery voltage |
| B13 | WHT/RED | ALTF | Alternator FR signal; running: about 0–5.0 V depending on electrical load |
| B17 | RED/YEL | IAT | Intake air temperature sensor; ignition ON (II): about 0.1–4.8 V depending on temperature |
| B18 | WHT/GRN | ALTC | Alternator control; running, fully warm: about 8.0 V |
| B19 | GRN | SEFD | Throttle actuator control serial output; no voltage listed |
| B20 | BLU | SEDF | Throttle actuator control serial input; no voltage listed |
| B21 | RED/YEL | PCS | EVAP canister purge valve; running below 149 °F (65 °C): battery voltage, above 149 °F: duty controlled |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | BLU | ECT2 | Coolant temperature sensor 2; ignition ON (II): about 0.1–4.8 V depending on temperature |
| E3 | GRN/WHT | LG3 | ECM logic ground; less than 1.0 V at all times |
| E4 | GRN | SG3 | Sensor ground; less than 1.0 V at all times |
| E5 | YEL/BLU | VCC3 | Sensor voltage; ignition ON (II): about 5.0 V, OFF: about 0 V |
| E7 | GRN | MRLY | PGM-FI main relay 1 (FI MAIN), also power source for DTC memory; ignition OFF: about 0 V, ignition ON (II): battery voltage (as printed) |
| E8 | ORN | AFSHTCR | A/F sensor heater control relay; ignition ON (II): about 0 V |
| E9 | BLK/YEL | IG1 | Ignition signal; ignition ON (II): battery voltage, OFF: about 0 V |
| E11 | RED | CANH | CAN communication high; ignition ON (II): pulses |
| E12 | GRN | FANC | Radiator fan relay; fan running: about 0 V, stopped: battery voltage |
| E13 | YEL | SEFMJ | Multiplex control unit communication; ignition ON (II): about 5.0 V, running with load: pulses |
| E14 | LT GRN | FTP | Fuel tank pressure sensor; ignition ON (II), fuel-fill cap open: about 2.5 V |
| E15 | GRN/RED | ELD | Electrical load detector; ignition ON (II): about 0.1–4.8 V depending on electrical load |
| E16 | BLU/BLK | EPSLD | Electrical power steering load; idle, wheels straight: about 0 V, idle at full lock: battery voltage |
| E17 | GRN/YEL | IMOFPR | PGM-FI main relay 2 (fuel pump); about 0 V for two seconds after ignition ON (II), then battery voltage |
| E18 | RED | ACC | A/C clutch relay; compressor ON: about 0 V, OFF: battery voltage |
| E19 | LT GRN/WHT | VSV | EVAP canister vent shut valve; ignition ON (II): battery voltage |
| E20 | RED | SHO2S | Secondary heated oxygen sensor 2 signal; fully warm idle, throttle closed: above 0.6 V; throttle quickly closed: below 0.4 V |
| E21 | BLK/WHT | SO2SHTC | Secondary heated oxygen sensor 2 heater; ignition ON (II): battery voltage, fully warm and running: duty controlled |
| E22 | WHT/BLK | BKSW | Brake pedal switch; released: about 0 V, pressed: battery voltage |
| E24 | WHT | CANL | CAN communication low; ignition ON (II): pulses |
| E25 | BLU | NEP | Engine speed pulse output; running: pulses |
| E27 | RED/BLU | IMOCD | Immobilizer code signal; no voltage listed |
| E28 | BLU/RED | ACS | A/C switch signal; ON: about 0 V, OFF: about 5.0 V |
| E29 | BRN | SCS | Service check signal; SCS shorted with HDS: about 0 V, service check open: about 5.0 V |
| E30 | GRN/WHT | WEN | Write enable signal; ignition ON (II): about 0 V |

## Reading the variations

A25/A26 are pedal sensors, while the RSX tables leave them unassigned in 2005–06. B19/B20 carry serial signals to/from a separate throttle actuator controller. E11/E24 are CAN high/low; the RSX's earlier E24 multiplex assignment must not be applied here. E1 is a second coolant sensor. The E7 voltage entry is retained exactly as the source states it; do not substitute a relay-driver assumption for the listed test condition.

[Honda 125-pin variation notes](../../Honda-125-variations.md).
