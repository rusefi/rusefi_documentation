# 2004 Honda Accord 2.4L — ECM/PCM pinout

Transcribed from [2004-accord-2.4.pdf](2004-accord-2.4.pdf), **Engine Performance > 2.4L**, Fig 1–4, PDF pages 1–4 (page 5 is the printer footer). Printed selection: **2004 Honda Accord DX, 2.4L**. The drawings also include SULEV versus non-SULEV, A/T versus M/T and “except USA DX” cruise branches; these qualifiers must be retained even though the selected trim is DX. ECM/PCM is under the middle of the dash. The connector family has A31/B24/C22/D17/E31 positions. Tables list only terminals wired in these diagrams; an omitted terminal is not connected **in this diagram**, not necessarily physically unused in every harness. Wire colours are those printed at the ECU: BLK black, WHT white, BLU blue, GRN green, YEL yellow, BRN brown, RED red, ORG orange, PNK pink, LT light; slash separates base/stripe. Connector labels elsewhere in a drawing can refer to another component, not the ECU. Sheet continuation numbers are not ECU pin numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | RED/BLU | KS | Knock sensor pin 1, shield grounded at G101 |
| A2 | YEL/BLK | IGP2 | Under-dash PGM-FI main relay 1 output X31 |
| A3 | YEL/BLK | IGP1 | Under-dash PGM-FI main relay 1 output X31 |
| A4 | BLK | PG2 | G101 via thermal joint T11 |
| A5 | BLK | PG1 | G101 via thermal joint T10 |
| A6 | GRN | CMPB | Camshaft position sensor B pin 1 |
| A7 | BLU | CKP | Crankshaft position sensor pin 1 |
| A8 | BRN/YEL | LG2 | G101 via thermal joint T13 |
| A9 | BRN/YEL | LG1 | G101 |
| A10 | GRN | AFSHTC | A/F sensor heater pin 3 |
| A12 | BLK/RED | IACV | Idle air control valve pin 1 |
| A13 | BRN | IGPLS4 | Ignition coil 4 pin 1 |
| A14 | WHT/BLU | IGPLS3 | Ignition coil 3 pin 1 |
| A15 | BLU/RED | IGPLS2 | Ignition coil 2 pin 1 |
| A16 | YEL/GRN | IGPLS1 | Ignition coil 1 pin 1 |
| A18 | BLU/WHT | NC | Output/countershaft speed sensor pin 2, A/T or M/T |
| A19 | BLU/WHT | CMPA | Camshaft position sensor A pin 1 |
| A20 | YEL/BLU | VCC2 | TPS pin 3 and EGR position sensor pin 3 via J/C C102 |
| A21 | YEL/RED | VCC1 | MAP sensor pin 1 |
| A23 | GRN/YEL | SG2 | TPS pin 1, EGR position sensor pin 2, ECT pin 2, ATF temperature sensor pin 1, IAT return (SULEV/non-SULEV branches) |
| A24 | GRN/WHT | SG1 | MAP sensor pin 3 |
| A28 | RED/YEL | AFS (−) | A/F sensor pin 1 |
| A29 | RED/BLK | TPS | Throttle position sensor pin 2 |
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
| B6 | GRN/YEL | VTS | VTEC solenoid valve pin 2; pin 1 grounds at G101 |
| B8 | RED/WHT | ECT | Engine coolant temperature sensor pin 1 |
| B10 | WHT/BLU | ALTL | Alternator L terminal |
| B11 | BLU/BLK | VTPSW | VTEC oil pressure switch pin 1 |
| B12 | WHT/BLK | EGRP | EGR valve position sensor pin 1 |
| B13 | WHT/RED | ALTF | Alternator FR terminal |
| B15 | BLU/YEL | MCS | Engine mount control solenoid valve pin 1, A/T |
| B16 | BLU/RED | EGR | EGR valve actuator pin 4; pin 6 grounds to G101 |
| B17 | RED/YEL | IAT | IAT pin 2 (except SULEV) or combined MAF/IAT pin 2 (SULEV) |
| B18 | WHT/GRN | ALTC | Alternator control |
| B21 | YEL/BLU | PCS | EVAP canister purge valve pin 2 |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | RED/BLK | LSA+ | A/T clutch pressure control solenoid A pin 1 |
| C2 | GRN | SHC | Shift control solenoid C |
| C3 | YEL | SHE | Shift control solenoid E |
| C4 | GRN/WHT | SHB | Shift control solenoid B |
| C5 | GRN/RED | SHD | Shift control solenoid D |
| C6 | BLU/BLK | SHA | Shift control solenoid A |
| C7 | BLU/YEL | LSC+ | A/T clutch pressure control solenoid C pin 1 |
| C9 | RED | ATPD3 | Transmission range switch D3 |
| C10 | BLU/WHT | OP3SW | Third clutch pressure switch |
| C11 | GRN/RED | ATP2/1 | Transmission range switch position 2/1 |
| C12 | RED/WHT | ATPRVS | Transmission range switch R |
| C13 | BLU/RED | OP2SW | Second clutch pressure switch |
| C14 | RED/YEL | ATFT | A/T fluid temperature sensor pin 2 |
| C15 | BRN/WHT | LSB+ | A/T clutch pressure control solenoid B pin 1 |
| C17 | YEL/GRN | ATPD | Transmission range switch D; also cruise control system |
| C18 | BLU/YEL | ATPFWD | Transmission range switch forward-position circuit |
| C19 | WHT/RED | NM | A/T input/mainshaft speed sensor pin 2 |
| C20 | RED/BLK | ATPN | Transmission range switch N; also starting/charging system |
| C21 | BLK/RED | VG− | Combined MAF/IAT sensor pin 4, SULEV |
| C22 | RED/GRN | VG+ | Combined MAF/IAT sensor pin 3, SULEV |

### Connector D (17 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| D5 | WHT | ATPR | A/T range switch reverse circuit |
| D6 | BLU/RED | ATPP | Transmission park circuit, MICU P16 via J/C C556 |
| D10 | GRN | METERINH | Gauge control module pin 2 via J/C C556, A/T |
| D11 | PNK | ATCCFWD | Cruise control system, A/T, except USA DX |
| D12 | BLU/BLK | CCS | Cruise control system, A/T, except USA DX |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E2 | YEL/BLK | SLS | A/T shift interlock system |
| E3 | BRN/YEL | LG3 | G101 via J/C C406; DLC pin 5 |
| E4 | GRN/BLK | SG3 | Secondary HO2S pin 1 and fuel tank pressure sensor pin 3 |
| E5 | YEL/GRN | VCC3 | Fuel tank pressure sensor pin 1 |
| E7 | RED/BLK | MRLY | Ignition coil relay coil X1 |
| E8 | PNK | AFSHTCR | A/F sensor relay coil X2 |
| E9 | BLK/YEL | IG1 | Under-dash fuse 19 (15 A, ON/START), X38; anti-theft and starting branches |
| E11 | WHT | CAN H | Gauge control module pin 24 |
| E12 | GRN | FANC | Cooling fans system |
| E14 | LT GRN | FTP | Fuel tank pressure sensor pin 2 |
| E15 | BLU/BLK | ELD | Electrical load detector A3 via under-dash D13/X10 |
| E16 | BLU/YEL | PSPSW | Power steering pressure switch pin 1 |
| E17 | GRN/YEL | IMO FPR | PGM-FI main relay 2 coil X3 |
| E18 | RED | ACC | A/C system |
| E19 | LT GRN/RED | VSV | EVAP canister vent shut valve pin 1 |
| E20 | WHT/RED | SHO2S | Secondary HO2S signal pin 2 |
| E21 | BLK/WHT | SO2SHTC | Secondary HO2S heater pin 3 |
| E22 | WHT/BLK | BKSW | Brake pedal position switch pin 2 |
| E23 | BLU | K-LINE | DLC pin 7 via J/C C404 |
| E24 | RED | CAN L | Gauge control module pin 23 |
| E25 | BLU/RED | NEP | Continuation 11 explicitly marked NOT USED |
| E26 | BLU/WHT | VSSOUT | Cruise control system, except USA DX |
| E27 | RED/BLU | IMOCD | Anti-theft system |
| E29 | BRN | SCS | DLC pin 9 via J/C C404 |
| E30 | RED/WHT | WEN | DLC pin 12 via J/C C404 |

## Variant-specific circuits and source limits

This is a cable-throttle diagram with A12 IACV and A29 TPS. EGR position/control are B12/B16. B15 is an A/T engine mount solenoid. **SULEV adds a combined MAF/IAT sensor**, with VG− on C21 and VG+ on C22; its IAT signal is still B17. The 2008 Element also uses C21/C22 for the MAF circuit, but the 2008 Fit uses them for transmission reverse/park inputs.

E5 VCC3 supplies fuel tank pressure sensor pin 1; E14 FTP reads pin 2 and E4 SG3 returns pin 3 on sheet 4. E25 NEP is explicitly terminated as NOT USED. D11/D12 and the E26 cruise branch are qualified “except USA DX.”

## Power and grounds

PGM-FI main relay 1 supplies A2/A3 and the injector/sensor branch. Under-dash fuse 2 (15 A, always hot) supplies ignition relay contacts; E7 RED/BLK drives its X1 coil connection. Fuse 19 (15 A, ON/START) feeds IG1. A/F relay contacts use fuse 4 (15 A), its coil fuse 23 (7.5 A); fuse 18 (15 A, ON/START) supplies the emissions/cruise branch. A/F sensor heater is A10 GRN to sensor pin 3, with relay feed at sensor pin 4.

G101 is top middle of engine, G202/G302 behind the right/left front bumper, G503 behind the glove box, and G603 behind the centre of rear seats. Fuel pump pin 4 grounds to G603. [Honda 125-pin variations](../../Honda-125-variations.md).
