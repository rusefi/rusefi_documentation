# 2025 Dodge Durango 4WD — automatic A/C (HVAC) wiring

Transcribed from [2025-Dodge-or-Ram-Truck-Durango-4WD-HVAC.pdf](2025-Dodge-or-Ram-Truck-Durango-4WD-HVAC.pdf) (ALLDATA "Air Conditioning - Automatic A/C Circuit" wiring diagram, Heating and Air Conditioning, Electrical - Interactive Color (Non OE), diagram pages 1-4 = PDF pages 2-5, sheets 915846-915849). The source header names the vehicle as "2025 Dodge or Ram Truck Durango 4WD V6-3.6L"; the diagram itself is shared between engines and marks 3.6L, 5.7L and 6.2L supercharged variants where they differ.

A/C heater module (right side of dash) with front actuators and temperature sensors, front and rear blower circuits, rear A/C heater control with rear actuators and sensors, and the A/C clutch, radiator fan and A/C pressure circuits at the powertrain control module (PCM).

Connectors covered:

| Module | Connector | Pins shown | Role |
|--------|-----------|-----------|------|
| A/C heater module | C1 | 36 | Power, ground, CAN IHS, front door actuators, duct/evaporator temperature sensors, blower control, defogger relay control, auto headlamp signal |
| A/C heater module | C2 | 8 | Sun sensor and in-car temperature sensor |
| Rear A/C heater control | (not named) | 20 | Power, ground, CAN IHS, rear blower control, rear mode/blend actuators, rear temperature sensors |
| Front blower motor power module | C1, C2 | 6, 2 | Blower supply, control, ground, blower motor outputs |
| Rear blower motor power module | (not named) | 5 | Rear blower relay output, control, ground, rear blower motor outputs |
| Powertrain control module | C1, C2 | only the pins listed | A/C clutch and radiator fan relay control, A/C pressure, ECT, coolant bypass valve, CAN C, LIN |
| Body control module | C4, C6 | only the pins listed | Ambient air temperature sensor, CAN IHS |

Chrysler circuit codes (C56, F948, Z911, ...) are given in the Circuit column where the diagram prints one; an empty Circuit cell means no code is printed on that wire. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). Unlisted pins are not connected in this diagram. Inline connectors are named as printed (XY5020A, XY200A, I209A, I9030A, ...); "PDC" is the power distribution center assembly.

## A/C heater module C1 (36-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | F948 | PNK/GRN | FUSED IGN RUN/START CTRL OUTPUT | SP2449 (right end of dash): power distribution system; XY5020A pin 15 -> SP2448 -> PDC C6 pin 36, fuse 99 (10 A); also rear A/C heater control pin 20 via XY200A pin 2 |
| 2 | A391 | RED/DK GRN | FSD B (+) | S2425 -> XY5020A pin 14 -> S2426 -> PDC C5 pin 25, fuse 49 (10 A), hot at all times; S2425 also feeds the power distribution system |
| 3 | C265 | BLU/DK BLU | RIGHT MODE DR 2 CLOCKWISE SIG | Mode door 2 actuator pin 6 |
| 4 | D101 | DK GRN | CAN IHS (+) | Computer data lines system |
| 5 | D102 | WHT | CAN IHS (-) | Computer data lines system |
| 6 | Z911 | BLK | GROUND | Ground G911A |
| 8 | C55 | DK BLU/WHT | LEFT BLEND DR COMM DRIV | Left blend door actuator pin 1 |
| 9 | C255 | WHT/DK BLU | LEFT BLEND DR DRIV | Left blend door actuator pin 6 |
| 11 | C65 | DK BLU/BLU | RIGHT MODE DR 2 CTRL CLOCKWISE SIG | Mode door 2 actuator pin 5 |
| 12 | C245 | BLU/GRY | RIGHT MODE DOOR DRIVER | Mode door 2 actuator pin 2 |
| 14 | C115 | DK BLU | DEFOGGER RELAY CONTROL | Defogger system |
| 15 | C56 | DK BLU/BLU | BLOWER CONTROL | Front blower motor power module C1 pin 3 |
| 17 | C266 | ORG/DK BLU | MODE DOOR DRIVER | Front mode door actuator pin 6 |
| 18 | C66 | DK BLU/ORG | MODE DOOR COMMON DRIVER | Front mode door actuator pin 1 |
| 19 | C134 | ORG/GRY | RT PANEL TEMP SNSR SIG | Right panel duct temperature sensor pin A |
| 20 | C162 | TAN/GRY | PANEL TEMPERATURE SENSOR SIG | Left panel duct temperature sensor pin A |
| 21 | C21 | DK BLU/GRN | EVAPORATOR TEMP SENSOR SIG | Evaporator temperature sensor pin 1 |
| 22 | C235 | BLU/TAN | MODE DOOR SIG | Front mode door actuator pin 4 |
| 23 | C26 | TAN/ORG | REF VOLT SPLY | SP2429: recirculation door actuator pin 3, front mode door actuator pin 3, left blend door actuator pin 3 |
| 24 | C233 | TAN/DK BLU | LEFT BLEND DOOR SIG | Left blend door actuator pin 4 |
| 25 | C333 | TAN/YEL | SIG GND | SP2431: recirculation door actuator pin 2, front mode door actuator pin 2, left blend door actuator pin 2 |
| 26 | C268 | YEL/DK BLU | RECIRCULATION DOOR DRIVER | Recirculation door actuator pin 1 |
| 27 | C68 | DK BLU/YEL | RECIRCULATION DR COMMON DRIV | Recirculation door actuator pin 6 |
| 28 | C130 | ORG/BLU | RIGHT FLOOR TEMP SENS SIG | Right floor duct temperature sensor pin A |
| 29 | C164 | TAN/DK BLU | LEFT FLOOR TEMP SENSOR SIGNAL | Left floor duct temperature sensor pin A |
| 30 | C131 | BLU | SENSOR GROUND | SP2430: right blend door actuator pin 2, mode door 2 actuator pin 1, pin B of the left floor, left panel, right floor and right panel duct temperature sensors, evaporator temperature sensor pin 2 |
| 31 | C224 | ORG/TAN | RIGHT BLEND DOOR SIGNAL | Right blend door actuator pin 4 |
| 32 | C24 | ORG/BLU | RIGHT BLEND DOOR FEED | SP2428: right blend door actuator pin 3, mode door 2 actuator pin 3 |
| 33 | C32 | DK BLU/TAN | RECIRCULATION DOOR DRIVER | Recirculation door actuator pin 4 |
| 34 | L24 | WHT/VIO | AUTO HEADLAMP SIG | Sun sensor pin 1 |
| 35 | C252 | GRN/DK BLU | RIGHT BLEND DOOR DRIVER | Right blend door actuator pin 6 |
| 36 | C52 | DK BLU/GRN | RIGHT BLEND DOOR COMMON DRIVER | Right blend door actuator pin 1 |

Pins 7, 10, 13 and 16 are drawn as empty terminals. Pins 26 and 33 both carry the printed function "RECIRCULATION DOOR DRIVER".

## A/C heater module C2 (8-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | G939 | VIO/DK BLU | SENSOR GROUND | Sun sensor pin 4 |
| 3 | G39 | VIO/BLU | SUN SENSOR SIGNAL 1 | Sun sensor pin 2 |
| 4 | G139 | VIO/ORG | SUN SENSOR SIGNAL 2 | Sun sensor pin 3 |
| 5 | C36 | BLU/BRN | SENS IN CAR TEMP SIG | In-car temperature sensor pin 1 |
| 6 | C37 | BLU/ORG | SENS IN CAR TEMP RTN | In-car temperature sensor pin 2 |

Pins 1, 7 and 8 are drawn as empty terminals.

## Rear A/C heater control (20-pin)

The diagram prints no location and no connector name for this module.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | C57 | DK BLU | REAR BLW MTR CTRL | XY200A pin 15 -> I209A pin 3 -> rear blower motor power module pin 2 |
| 2 | D311 | BLU | CAN IHS (+) | Computer data lines system |
| 4 | C67 | DK BLU/VIO | REAR MODE DRIV | XY200A pin 3 -> I209A pin 12 -> rear mode door actuator pin 6 (DK BLU/RED) |
| 5 | C69 | DK BLU/TAN | REAR MODE COMMON DRIV | XY200A pin 4 -> I209A pin 4 -> rear mode door actuator pin 1 (DK BLU/YEL) |
| 6 | C326 | DK BLU/ORG | REAR MODE DOOR SIG | XY200A pin 8 -> I209A pin 13 -> rear mode door actuator pin 4 (DK GRN/DK BLU) |
| 8 | C166 | TAN | REAR FLOOR TEMP SENS SIG | XY200A pin 18 -> I209A pin 2 -> rear air temperature floor sensor pin B (BLK/RED) |
| 10 | A937 | RED | FUSED B (+) | XY200A pin 19 (RED/DK GRN beyond the connector) -> S2426 -> PDC C5 pin 25, fuse 49 (10 A), hot at all times |
| 11 | Z923 | BLK | GROUND | S9 -> ground G923A |
| 12 | D312 | WHT | CAN IHS (-) | Computer data lines system |
| 13 | C323 | BLU/YEL | REAR BLEND DOOR SIG RTN | XY200A pin 14 -> I209A pin 7 -> S2A (BLK): rear blend door actuator pin 2, rear mode door actuator pin 2 |
| 14 | C59 | DK BLU/GRY | REAR BLEND DR DRIV | XY200A pin 5 -> I209A pin 8 -> rear blend door actuator pin 6 |
| 15 | C60 | DK BLU/PNK | REAR BLEND DR COMMN DRIV | XY200A pin 6 -> I209A pin 10 -> rear blend door actuator pin 1 (DK BLU/ORG) |
| 16 | C322 | BLU/ORG | REAR BLEND DOOR SIGNAL | XY200A pin 13 -> I209A pin 9 -> rear blend door actuator pin 4 (GRN/WHT) |
| 17 | C321 | BLU | REAR BLEND DOOR FEED | XY200A pin 7 -> I209A pin 6 -> S3A (RED): rear blend door actuator pin 3, rear mode door actuator pin 3 |
| 18 | C168 | ORG | REAR PANEL TEMP SENS SIG | XY200A pin 20 -> I209A pin 5 -> rear air temperature panel sensor pin B (BLK/YEL) |
| 19 | C169 | BLU/DK BLU | TEMP SENS RTN | XY200A pin 21 -> I209A pin 11 -> S1A (RED/WHT): rear air temperature panel sensor pin A, rear air temperature floor sensor pin A |
| 20 | F948 | PNK/GRN | FSD IGN RUN/START CTRL O/P | XY200A pin 2 -> SP2448 -> PDC C6 pin 36, fuse 99 (10 A) |

Pins 3, 7 and 9 are drawn as empty terminals.

## Front blower motor power module (on blower motor housing)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-3 | C56 | DK BLU/BLU | BLOWER CTRL | A/C heater module C1 pin 15 |
| C1-5 | Z911 | BLK | GND | Ground G911A |
| C1-6 | C7 | DK BLU | BLOWER MTR SPLY | XY5020A pin 58 -> PDC C7 pin 21, fuse 13 (40 A), blower motor relay output |
| C2-1 | C7 | DK BLU/WHT | BLOWER MTR SPLY | Blower motor pin 2 |
| C2-2 | Z134 | DK BLU/BRN | GND | Blower motor pin 1 |

C1 pins 1, 2 and 4 are drawn as empty terminals. A third conductor labelled NCA (circuit S000) leaves the C2 pin 2 terminal and ends at S9151A (right side of dash, in blower motor jumper harness); a shield symbol is drawn around the two C2 wires next to that splice.

## Rear blower motor power module (on rear blower motor housing)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | Z923 | BLK | GND | I209A pin 1 -> ground G924A |
| 2 | C57 | DK BLU | REAR BLW MTR CTRL | I209A pin 3 -> XY200A pin 15 -> rear A/C heater control pin 1 |
| 3 | C51 | DK BLU/DK GRN | FSD REAR BLW MTR RLY OUTPUT | I209A pin 14 (BLU/BRN beyond the connector) -> PDC C7 pin 3, fuse 37 (25 A), rear blower motor relay output |
| 4 | C931 | BLK/WHT | REAR FAN SNS RTN | Rear blower motor pin 2 |
| 5 | C31 | RED | REAR FAN SNS | Rear blower motor pin 1 |

## Powertrain control module (right front of engine compartment)

The PCM is drawn with two rows of terminal numbers: an upper row marked "3.6L & 5.7L" and a lower row marked "6.2L SUPERCHARGED". Pins C1-43 and C1-55 appear only in the 6.2L supercharged row; all other pins carry the same number in both rows.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-33 | D28 | YEL | CAN C (-) | Computer data lines system |
| C1-42 | K914 | BRN/WHT | SENS GND | SP1846: A/C pressure transducer pin 3; engine controls system |
| C1-43 (6.2L supercharged) | K222 | BRN/YEL | LIN BUS | I9030A pin 26 -> charger air coolant temperature sensor pin 1 (terminal printed SENS GND) |
| C1-44 | C18 | BLU/BRN | A/C PRESS SIG | A/C pressure transducer pin 2 |
| C1-52 | Z909 | BLK | GND | Ground G909B |
| C1-55 (6.2L supercharged) | D511 | WHT/TAN | LIN BUS | Charge air cooler coolant pump pin 4 (LIN BUS) |
| C1-57 | D27 | TAN/WHT | CAN C (+) | Computer data lines system |
| C1-69 | K854 | VIO/BRN | 5 VOLT SPLY | SP804: A/C pressure transducer pin 1; engine controls system |
| C1-78 | N112 | DK BLU/ORG | RAD FAN RLY CTRL | PDC C3 pin 8, radiator fan high relay coil (terminal 85) |
| C1-79 | C13 | BLU/ORG | A/C CLUTCH CTRL | PDC C3 pin 10, A/C clutch relay coil (terminal 86) |
| C1-82 | N201 (or K175) | DK BLU/GRN (or BRN/BLU) | LO SPD RAD FAN CTRL (note 1, light duty) / RAD FAN CTRL (note 2, heavy duty) | Light duty: PDC C3 pin 29, radiator fan low relay coil (terminal 85). Heavy duty: radiator cooling fan module (heavy duty) pin 4 |
| C1-95 | K501 | BRN | COOLANT BYPASS VALVE CTRL | I9030A pin 9 -> coolant bypass valve pin 1 |
| C2-12 | K2 | VIO/ORG | ECT SIG | Engine coolant temperature sensor pin 1 (through XY221A pin 25 on the 3.6L) |
| C2-66 | K900 | DK BLU/DK GRN | SENS GND | SP2186: engine coolant temperature sensor pin 2 (through XY221A pin 32 on the 3.6L); charger air coolant temperature sensor pin 2 (terminal printed ECT 2 SIG); engine controls system |

## Body control module (right kick panel)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C4-22 | G31 | VIO/GRN | AAT SIG | XY8120A pin 30 -> ambient air temperature sensor pin 1 |
| C4-23 | G931 | VIO/BRN | SENS GND | XY8120A pin 27 -> SP2457: ambient air temperature sensor pin 2, hood ajar switch pin 2, front washer fluid level sensor pin 1 |
| C6-11 | D146 | WHT | CAN IHS (-) | Computer data lines system |
| C6-12 | D145 | WHT/GRN | CAN IHS (+) | Computer data lines system |

## Component pinouts

Front actuators:

- Recirculation door actuator (right side of HVAC blower housing): 1 RECIRCULATION DOOR DRV (YEL/DK BLU), 2 SIG GND (TAN/YEL), 3 REF VOLT SPLY (TAN/ORG), 4 RECIRCULATION DR DRV (DK BLU/TAN), 6 RECIRCULATION DR COMMON DRV (DK BLU/YEL).
- Front mode door actuator (upper right side of HVAC unit): 1 MODE DR COMMON DRV (DK BLU/ORG), 2 SIG GND (TAN/YEL), 3 REF VOLT SPLY (TAN/ORG), 4 MODE DOOR SIG (BLU/TAN), 6 MODE DOOR DRV (ORG/DK BLU).
- Left blend door actuator (left side of HVAC unit): 1 LEFT BLEND DR COMMON DRV (DK BLU/WHT), 2 SIG GND (TAN/YEL), 3 REF VOLT SPLY (TAN/ORG), 4 LEFT BLIND DOOR SIG (TAN/DK BLU; "BLIND" as printed), 6 LEFT BLEND DR DRV (WHT/DK BLU).
- Right blend door actuator (right side of HVAC unit): 1 RT BLEND DR COMMON DRIV (DK BLU/GRN), 2 SENS GND (BLU), 3 RH BLEND DR FEED (ORG/BLU), 4 RH BLEND DR SIG (ORG/TAN), 6 RH BLEND DR DRIVER (GRN/DK BLU).
- Mode door 2 actuator (right side of HVAC unit): 1 SENS GND (BLU), 2 RH MODE DR DRIVE (BLU/GRY), 3 RH BLEND DR FEED (ORG/BLU), 5 RH MODE DR 2 CTRL CLOCKWISE SIG (DK BLU/BLU), 6 RH MODE DR 2 CLOCKWISE SIG (BLU/DK BLU).

Front sensors:

- Left floor duct temperature sensor (in left floor ventilation duct outlet): A LH FLR TEMP SENS SIG (TAN/DK BLU), B SENS GND (BLU).
- Left panel duct temperature sensor (front of HVAC, in left air duct): A PANEL TEMP SENS SIG (TAN/GRY), B SENS GND (BLU).
- Evaporator temperature sensor (center of HVAC unit): 1 EVAP TEMP SENS SIG (DK BLU/GRN), 2 SENS GND (BLU).
- Right floor duct temperature sensor (in right floor ventilation duct outlet): A RH FLR TEMP SENS SIG (ORG/BLU), B SENS GND (BLU).
- Right panel duct temperature sensor (front of HVAC, in right air duct): A RH PNL TEMP SENS SIG (ORG/GRY), B SENS GND (BLU).
- In-car temperature sensor (lower left center of dash): 1 IN CAR TEMP SIG (BLU/BRN), 2 IN CAR TEMP RTN (BLU/ORG), 3 FSD IGN RUN/START (PNK/BLU, from fuse 101), 4 GND (BLK to G911A).
- Sun sensor (top center of dash pad): 1 AUTO HEADLAMP SIG (WHT/VIO), 2 SUN SENSOR SIG 1 (VIO/BLU), 3 SUN SENSOR SIG 2 (VIO/ORG), 4 SENS GND (VIO/DK BLU).
- Humidity sensor (top center of windshield): 1 GND (BLK), 2 LIN BUS CBC 2 (BLK/VIO, to computer data lines system), 3 FSD IGN RUN/START (PNK/BLU, via XY7001A pin 1 from S2443 / fuse 101). The ground runs through SP200 (premium with light rain sensor), SP1 (premium without light rain sensor) or SP105 (base) to G912A.
- Ambient air temperature sensor (behind left side of front grille): 1 AAT SIG (VIO/GRN), 2 SENS GND (VIO/BRN).
- Hood ajar switch (center front of engine compartment): 2 SENS GND (VIO/BRN). Front washer fluid level sensor (in washer fluid reservoir): 1 SENS GND (VIO/BRN). Only these terminals are drawn; both join SP2457.

Blower motors:

- Blower motor (right side of dash): 1 GND (DK BLU/BRN), 2 BLOWER MTR SPLY (DK BLU/WHT), both to the front blower motor power module C2.
- Rear blower motor (behind right quarter panel): 1 REAR FAN SNS (RED), 2 REAR FAN SNS RTN (BLK/WHT), both to the rear blower motor power module.

Rear actuators and sensors (wire colours on the actuator side of I209A):

- Rear mode door actuator (on rear HVAC unit): 1 REAR MODE DOOR COMMON DRV (DK BLU/YEL), 2 REAR BLEND DOOR SIG RTN (BLK), 3 REAR BLEND DOOR FEED (RED), 4 REAR MODE DOOR SIGNAL (DK GRN/DK BLU), 6 REAR MODE DRIVER (DK BLU/RED).
- Rear blend door actuator (on rear HVAC unit): 1 REAR BLEND DOOR COMMON DRV (DK BLU/ORG), 2 REAR BLEND DOOR SIG RTN (BLK), 3 REAR BLEND DOOR FEED (RED), 4 REAR BLEND DR SIG (GRN/WHT), 6 REAR BLEND DOOR DRV (DK BLU/GRY).
- Rear air temperature floor sensor (right rear quarter panel): A TEMP SENS RTN (RED/WHT), B REAR FLOOR TEMP SENS SIG (BLK/RED).
- Rear air temperature panel sensor (right rear quarter panel): A TEMP SENS RTN (RED/WHT), B REAR PANEL TEMP SENS SIG (BLK/YEL).

Engine compartment:

- A/C compressor clutch (lower left front of engine): 1 A/C CLUTCH CTRL OUTPUT (DK BLU/YEL), 2 GND (BLK, via I9030A pin 12 to G909A).
- A/C pressure transducer (left front of engine compartment): 1 5 VOLT SPLY (VIO/BRN), 2 A/C PRESS SIG (BLU/BRN), 3 SENS GND (BRN/WHT).
- Radiator cooling fan module, light duty (behind radiator): 1 RAD FAN HI (DK BLU/TAN, N43), 2 GND (BLK, Z906, to G906A), 3 RAD FAN LO (DK BLU/DK GRN, N42).
- Radiator cooling fan module, heavy duty (behind radiator): 1 FUSED B (+) (RED, A957), 2 GND (BLK, Z906, to G906A), 4 RADIATOR FAN CTRL (BRN/BLU, K175). Pin 3 is drawn as an empty terminal.
- Coolant bypass valve (right rear of engine): 1 COOLANT BYPASS VALVE CTRL (BRN), 2 GND (BLK to G903A).
- Engine coolant temperature sensor (3.6L: left front of engine; except 3.6L: top front engine): 1 ECT SIG (VIO/ORG), 2 SENS GND (DK BLU/DK GRN). Inline connector XY221A (pins 25 and 32) is marked 3.6L.
- Charge air cooler coolant pump (6.2L supercharged): 1 GND (BLK/ORG to G901A), 2 FUSED B (+) (RED/BLU), 3 ASD RELAY OUTPUT (BRN/WHT), 4 LIN BUS (WHT/TAN).
- Charger air coolant temperature sensor (6.2L supercharged; center rear of engine compartment): 1 SENS GND (BRN/YEL), 2 ECT 2 SIG (DK BLU/DK GRN).

## Power supply / relays

Power distribution center assembly, right side of engine compartment:

- **Fuse 49 (10 A)**, hot at all times -> PDC C5 pin 25 (RED/DK GRN) -> S2426. One branch runs through XY5020A pin 14 to S2425 and A/C heater module C1 pin 2 (A391, FSD B (+)), with a branch to the power distribution system; the other branch runs to XY200A pin 19 and rear A/C heater control pin 10 (A937, FUSED B (+)).
- **Run 1 relay** — terminal 30 hot at all times; terminal 87 feeds the blower motor relay coil (terminal 85).
- **Blower motor relay** — terminal 30 hot at all times; terminal 87 -> fuse 13 (40 A) -> PDC C7 pin 21 (DK BLU) -> XY5020A pin 58 -> front blower motor power module C1 pin 6. Coil terminal 86 -> PDC C7 pin 16 (BLK) -> SP2505 -> G919A.
- **Fuse 103 (10 A)**, hot with run 2 relay energized -> PDC C6 pin 28 (PNK) -> loops back into PDC C7 pin 8 -> rear blower motor relay coil (terminal 85).
- **Rear blower motor relay** — terminal 30 hot at all times; terminal 87 -> fuse 37 (25 A) -> PDC C7 pin 3 (BLU/BRN) -> I209A pin 14 -> rear blower motor power module pin 3. Coil terminal 86 -> PDC C7 pin 4 (BLK) -> SP2505 -> G919A.
- **Fuse 101 (15 A)**, hot with run 2 relay energized -> PDC C6 pin 32 (PNK/BLU) -> SP2444 -> XY5020A pin 13 -> S2443 -> humidity sensor pin 3 (via XY7001A pin 1) and in-car temperature sensor pin 3.
- **Run/start relay** — terminal 30 hot at all times; terminal 87 feeds fuse 99, the A/C clutch relay coil (terminal 85) and the radiator fan high and low relay coils (terminal 86).
- **Fuse 99 (10 A)** -> PDC C6 pin 36 (PNK/GRN) -> SP2448 -> rear A/C heater control pin 20 (via XY200A pin 2) and, via XY5020A pin 15 and SP2449, A/C heater module C1 pin 1 and the power distribution system.
- **A/C clutch relay** — terminal 30 hot at all times; terminal 87 -> fuse 62 (10 A) -> PDC C3 pin 9 (DK BLU/YEL) -> I9030A pin 1 -> A/C compressor clutch pin 1. Coil terminal 86 -> PDC C3 pin 10 (BLU/ORG, C13) -> PCM C1-79.
- **Fuse 3 (60 A)**, hot at all times -> terminal 30 of the radiator fan high and low relays.
- **Radiator fan high relay** — terminal 87 -> PDC C2 pin 2 (DK BLU/TAN, N43) -> radiator cooling fan module (light duty) pin 1. Coil terminal 85 -> PDC C3 pin 8 (DK BLU/ORG, N112) -> PCM C1-78.
- **Radiator fan low relay** — terminal 87 -> PDC C2 pin 1 (DK BLU/DK GRN, N42) -> radiator cooling fan module (light duty) pin 3. Coil terminal 85 -> PDC C3 pin 29 (DK BLU/GRN, N201) -> PCM C1-82 (light duty).
- **Fuse 15 (40 A)**, hot at all times -> PDC C6 pin 22 (RED/BLU) -> XY6020A pin 5 -> charge air cooler coolant pump pin 2 (6.2L supercharged).
- **Fuse 64 (25 A)**, hot with auto shut down relay energized -> PDC C3 pin 5 (BRN/WHT) -> charge air cooler coolant pump pin 3 (6.2L supercharged).

Remote jump positive post (right rear of engine compartment): fuse 4 (100 A), hot at all times -> C1 pin 4 (RED, A957) -> radiator cooling fan module (heavy duty) pin 1.

Grounds: G911A — under center console (A/C heater module C1 pin 6, front blower motor power module C1 pin 5, in-car temperature sensor pin 4); G912A — under center console (humidity sensor); G919A — right "C" pillar (blower motor relay and rear blower motor relay coils via SP2505); G923A — base of left "D" pillar (rear A/C heater control pin 11 via S9); G924A — base of right "D" pillar (rear blower motor power module); G909A — right rear of engine compartment (A/C compressor clutch); G906A — right front of engine compartment (radiator cooling fan modules); G909B — right front of engine compartment (PCM C1-52); G903A — right front of engine compartment (coolant bypass valve); G901A — left rear of engine compartment (charge air cooler coolant pump).

Splices with a printed location: SP2449 — right end of dash; SP2428, SP2429, SP2431 — right side of dash, in instrument panel harness; SP2430 — center right of dash, in instrument panel harness; S9151A — right side of dash, in blower motor jumper harness; SP1846, SP804 — right front of engine compartment, in headlamp and dash harness; SP2457 — right side of front bumper, in front end module harness; S2A — behind right quarter panel, in rear HVAC harness; S1A, S3A — rear HVAC harness.

## Notes

- The charger air coolant temperature sensor terminals are printed with pin 1 "SENS GND" on the BRN/YEL wire to PCM C1-43, whose PCM function is printed "LIN BUS", and pin 2 "ECT 2 SIG" on the DK BLU/DK GRN wire to the SP2186 sensor ground splice. The labels are transcribed as printed; the source does not resolve which is the signal and which is the return.
- Two different wires are printed with circuit C7: the PDC feed to the front blower motor power module (C1 pin 6, DK BLU) and the module output to the blower motor (C2 pin 1, DK BLU/WHT).
- The BCM prints CAN IHS (+) as WHT/GRN (D145) and CAN IHS (-) as WHT (D146); the A/C heater module prints CAN IHS (+) as DK GRN (D101) and CAN IHS (-) as WHT (D102); the rear A/C heater control prints CAN IHS (+) as BLU (D311) and CAN IHS (-) as WHT (D312). All run to the computer data lines system, which this diagram does not show.
- Fuse numbers and ratings in this diagram agree with the PDC table in [2025-Dodge-or-Ram-Truck-Durango-fuse-box.md](2025-Dodge-or-Ram-Truck-Durango-fuse-box.md) for fuses 3, 13, 15, 37, 49, 62, 64, 99, 101 and 103. Fuse 4 (100 A) here sits at the remote jump positive post, not in the PDC.
