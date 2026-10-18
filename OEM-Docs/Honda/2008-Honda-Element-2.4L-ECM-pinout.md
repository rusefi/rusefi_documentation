# 2008 Honda Element 2.4L — ECM/PCM pinout

Transcribed from [sheet 1](2008-element-1.png), [sheet 2](2008-element-2.png), [sheet 3](2008-element-3.png), [sheet 4](2008-element-4.png), diagram IDs **269519–269522**. Year/model come from the filenames; the repository's [Honda Element page](../../Honda-Element.md) identifies K24A8. ECM/PCM is behind the glove box. The drawing covers both A/T and M/T branches, with A/T solenoids on C and manual clutch input on D9. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | WHT | KS | Knock sensor pin 1, shield grounded to G101 |
| A2 | YEL/BLK | IGP2 | PGM-FI main relay 1 output via J/C C107 |
| A3 | YEL/BLK | IGP1 | PGM-FI main relay 1 output via J/C C107 |
| A4 | BLK | PG2 | G101 via J/C C106, left rear of engine |
| A5 | BLK | PG1 | G101 via J/C C106, left rear of engine |
| A6 | GRN | CMPB | Camshaft position sensor B pin 3 |
| A7 | YEL | CKP | Crankshaft position sensor pin 1 |
| A8 | BRN/YEL | LG2 | G101, left rear of engine |
| A9 | BRN/YEL | LG1 | G101, left rear of engine |
| A10 | BLK/WHT | AFSHTC | A/F sensor heater pin 4 |
| A13 | BRN | IGPLS4 | Ignition coil 4 pin 1 |
| A14 | WHT/BLU | IGPLS3 | Ignition coil 3 pin 1 |
| A15 | BLU/RED | IGPLS2 | Ignition coil 2 pin 1 |
| A16 | YEL/GRN | IGPLS1 | Ignition coil 1 pin 1 |
| A18 | BLU | NC | Output shaft/countershaft speed sensor pin 2, A/T or M/T |
| A19 | BLU/WHT | CMPA | Camshaft position sensor A pin 1 |
| A20 | YEL/BLU | VCC2 | APP sensor pin 1 and input/mainshaft speed sensor pin 1 via J/C C107 |
| A21 | YEL/RED | VCC1 | MAP sensor pin 1 and APP sensor pin 5 via J/C C105 |
| A23 | GRN/BLK | SG2 | ECT1, combined MAF/IAT pin 4, A/T fluid temperature and APP sensor pin 2 returns via J/C C107 |
| A24 | GRN/WHT | SG1 | MAP sensor pin 3 and APP sensor pin 6 via J/C C105 |
| A25 | RED/YEL | APSB | Accelerator pedal position sensor pin 3 |
| A26 | RED/BLU | APSA | Accelerator pedal position sensor pin 4 |
| A28 | BLU | AFS (−) | A/F sensor pin 1 |
| A30 | GRN/RED | MAP | MAP sensor pin 2 |
| A31 | RED | AFS (+) | A/F sensor pin 2 |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B1 | BLU/WHT | VTC | VTC oil control solenoid pin 2; pin 1 grounds to G101 |
| B2 | YEL | INJ4 | Injector 4 pin 2 |
| B3 | BLU | INJ3 | Injector 3 pin 2 |
| B4 | RED | INJ2 | Injector 2 pin 2 |
| B5 | BRN | INJ1 | Injector 1 pin 2 |
| B6 | GRN/YEL | VTS | VTEC solenoid pin 2; pin 1 grounds to G101 |
| B8 | RED/WHT | ECT1 | Coolant temperature sensor 1 pin 1 |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B11 | BLU/BLK | VTPSW | VTEC oil pressure switch pin 1 |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B17 | RED/YEL | IAT | Combined MAF/IAT sensor pin 5 |
| B18 | WHT/GRN | ALTC | Alternator control |
| B19 | GRN | SEFD | Throttle actuator control module pin 7 |
| B20 | BLU | SEDF | Throttle actuator control module pin 16 |
| B21 | YEL/GRN | PCS | EVAP canister purge valve pin 2 |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | BLK/BLU | LSA | A/T clutch pressure control solenoid A pin 1 |
| C2 | GRN | SHC | Shift control solenoid C |
| C3 | YEL | SHE | Shift control solenoid E |
| C4 | GRN/WHT | SHB | Shift control solenoid B |
| C5 | GRN/RED | SHD | Shift control solenoid D |
| C6 | BLU/BLK | SHA | Shift control solenoid A |
| C7 | BLU/YEL | LSC | A/T clutch pressure control solenoid C pin 1 |
| C9 | BRN | ATP1 | Transmission range switch position 1 |
| C10 | BLU/WHT | OP3SW | Third clutch pressure switch |
| C11 | BLU | ATP2 | Transmission range switch position 2 |
| C12 | RED/WHT | ATPRVS | Transmission range switch R |
| C13 | BLU/RED | OP2SW | Second clutch pressure switch |
| C14 | RED/YEL | ATFT | A/T fluid temperature sensor pin 2 |
| C15 | BRN/WHT | LSB | A/T clutch pressure control solenoid B pin 1 |
| C17 | YEL/GRN | ATPD | Transmission range switch D; also cruise control system |
| C18 | YEL/RED | ATPFWD | Transmission range switch forward-position contact |
| C19 | WHT/RED | NM | A/T input/mainshaft speed sensor pin 2 |
| C20 | RED/BLK | ATPN | Transmission range switch N; also starting/charging system |
| C21 | BLK/RED | VG− | Combined MAF/IAT sensor pin 2, via sheet-2 continuation 18 and sheet-3 continuation 14 |
| C22 | RED/GRN | VG+ | Combined MAF/IAT sensor pin 1, via sheet-2 continuation 19 and sheet-3 continuation 15 |

### Connector D (17 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| D3 | GRN | D3SW | D3 switch pin 1 in shift-lock solenoid/D3 assembly |
| D5 | WHT | ATPR | A/T range switch reverse circuit |
| D6 | BLU/BLK | ATPP | Transmission range switch park circuit |
| D8 | BLU | BKSWNC | Brake pedal position switch pin 3 (second contact) |
| D9 | YEL/GRN | CCCLSW | M/T clutch pedal position switch pin 2 |
| D15 | BRN | STS RLY | Starting/charging system |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | GRN | ECT2 | Coolant temperature sensor 2 pin 1, bottom of radiator |
| E2 | WHT/BLU | SLS | A/T shift interlock system |
| E3 | BRN/YEL | LG3 | Ground/shield network through J/C C457, G101 |
| E4 | WHT/GRN | SG3 | ECT2 pin 2, fuel tank pressure pin 3 and secondary HO2S pin 1 returns via J/C C559/C405 |
| E5 | YEL/BLU | VCC3 | Fuel tank pressure sensor pin 2 |
| E7 | RED/YEL | MRLY | PGM-FI main relay 1 coil and ignition coil relay pin 3 |
| E8 | ORG | AFSHTCR | A/F sensor relay coil pin 2 |
| E9 | BLK/YEL | IG1 | Under-dash fuse 17, 15 A, ON/START |
| E11 | WHT | CAN-H | Computer data lines system |
| E12 | GRN/WHT | FANC | Cooling fans system |
| E14 | LT GRN | FTP | Fuel tank pressure sensor pin 1 |
| E15 | GRN/BLK | ELD | Starting/charging system |
| E16 | LT GRN/BLK | PSPSW | Power steering pressure switch pin 1, lower centre rear of engine |
| E17 | GRN/YEL | IMO FPR | PGM-FI main relay 2 coil |
| E18 | RED | ACC | A/C system |
| E19 | LT GRN/RED | VSV | EVAP canister vent shut valve pin 1 (component-side LT GRN) |
| E20 | WHT/RED | SHO2S | Secondary HO2S signal pin 2 (sensor-side BLU) |
| E21 | GRN/RED | SHO2SHTC | Secondary HO2S heater pin 3 (sensor-side BLK) |
| E22 | WHT/BLK | BKSW | Brake pedal position switch pin 2 |
| E24 | RED | CAN-L | Computer data lines system |
| E27 | WHT | IMOCD | Anti-theft system |
| E29 | BRN | SCS | Computer data lines system |
| E30 | RED/WHT | WEN | Computer data lines system |

## Electronic throttle, power and source limits

This diagram uses a **separate throttle actuator control module** (under the left dash). B19/B20 carry its two serial signals; the throttle motor and dual throttle-position sensors terminate at that controller, not at A29. APP sensor signals are A25/A26. The source also draws a combined MAF/IAT sensor: B17 is the IAT lead (sensor pin 5), and C21/C22 are VG−/VG+ (sensor pins 2/1).

Under-hood fuse 6 (15 A) supplies PGM-FI main relay 1; its output feeds A2/A3 and injectors. Fuse 8 (15 A) supplies the throttle-controller relay contacts. Relay 2 powers the fuel pump, grounded at G552. Under-dash fuse 15 (20 A) supplies the A/F heater relay, fuse 16 (15 A) feeds the ignition coil relay contact/coil supply (pins 2/4), fuse 4 (10 A) feeds the emissions branch, and fuse 17 (15 A) supplies IG1. E7 controls ignition relay coil pin 3; relay contact output pin 1 feeds the ignition coils. The separate BLK/RED wire on C21 runs through the sheet continuations to the MAF sensor, not to the relay.

E11 is printed **WHT CAN-H**, E24 **RED CAN-L**. Those colours are opposite the red/white CAN assignments in the S2000 table. E15 ELD ends at a starting/charging-system reference; E16 PSPSW runs to the pressure switch shown at the lower left of sheet 4.

Compared with 2003, this source has ECT2 on E1, electronic throttle serial lines B19/B20, CAN E11/E24, extra brake/clutch/start inputs and MAF terminals C21/C22; the earlier dedicated MIL and tachometer outputs are not connected in this diagram. [Honda 125-pin variations](../../Honda-125-variations.md).
