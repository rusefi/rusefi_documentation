# 2015 Jeep Grand Cherokee 4WD V6-3.6L — computer data lines (CAN C, CAN IHS, private CAN, LIN)

Transcribed from [2015-Jeep-Truck-Grand-Cherokee-4WD-v6-data-lines.pdf](2015-Jeep-Truck-Grand-Cherokee-4WD-v6-data-lines.pdf) (ALLDATA "Computer Data Lines" wiring diagram, Powertrain Management > Computers and Control Systems > Information Bus, Electrical - Interactive Color (Non OE), diagram pages 1-4 = PDF pages 2-5, sheets 476786-476789).

The source is filed under the 2015 Jeep Truck Grand Cherokee 4WD V6-3.6L. The sheets are shared between engines and trim levels: several terminals and inline connectors are selected by notes (3.0L turbo diesel / except 3.0L turbo diesel, base / premium, premium 2 / premium, with / without video module, with / without rain sensor, with rear camera), and the private CAN bus serves only diesel exhaust aftertreatment components. Variant-specific items are marked below.

The diagram shows every module's data-bus terminals and how they reach the four star connectors and the data link connector. It shows no termination resistors and no gateway function; the star connectors are drawn as plain multi-port junctions.

## Buses

| Bus | Hub | Nodes |
|-----|-----|-------|
| CAN C | Star CAN C IP connector (left end of dash) and Star CAN C dash connector (center of dash), joined port C1 to port C1 through I7000 | Data link connector, PCM, TCM, shift lever assembly, body control module, cluster, radio, anti-lock brakes module, occupant restraint controller module, steering column control module, radio frequency hub module, electronic limited slip differential module, drivetrain control module, tire pressure module, forward facing camera, adaptive cruise control module, park assist module, active damping control module, air suspension control module, power steering pump motor, right front lamp assembly (premium) |
| CAN IHS | Star CAN IHS IP connector and Star CAN IHS body connector (under rear of center console); each star's port C1 goes to the body control module (C7 and C6 respectively) | Data link connector, body control module, radio, driver door module, passenger door module, A/C heater control module, integrated center stack switch bank module, heated seats module, intrusion transceiver module, seat back screen video modules, video module or external disc module, power liftgate module, radio amplifier, left/right rear blind spot sensors, memory seat module, active noise cancellation module |
| Private CAN | Splices SP1922 / SP1917 off the PCM | PCM (3.0L turbo diesel connector), boost pressure servo motor, NOx 1/1 sensor, NOx 1/2 sensor, particulate matter sensor, heater control module |
| LIN BUS (PCM) | Splice SP1923 | PCM (3.0L turbo diesel connector), glow plug module, generator |
| LIN BUS 1 (BCM) | Splice SP1911 | Body control module, intelligent battery sensor, transfer case selector switch |
| LIN BUS CBC 2 (BCM) | Splice SP1912 (with rain sensor) | Body control module, inside rear view mirror, rain sensor |
| LIN BUS CBC 3 (BCM) | Splice SP2593 | Body control module, SCCM multi-function switch (LIN AFLS), rear video camera (if equipped) |
| LIN AFLS (lamps) | point to point | Right front lamp assembly (premium), left front lamp assembly (premium) |
| LIN KIN | point to point | Radio frequency hub module, steering column lock module |
| SECRTY K LINE COMM | point to point | Radio frequency hub module, keyless ignition node module |
| LIN BUS / LIN BUS DOOR SW | point to point | Driver door module, driver window/door lock switch |

Chrysler circuit codes (D27, D145, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, TAN; DK = dark, LT = light). Inline connectors are named I#### as printed. On every table, unlisted pins are not connected in this diagram. Where a wire has no circuit code at the module end, the code printed at the star-connector end of the same wire is given.

## Data link connector (under left side of dash)

Sixteen terminals are drawn; the terminals carry no printed function names. Terminals 1, 2, 7, 8, 9, 10, 12, 13 and 15 have no wire.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D157 | GRY | not printed (CAN IHS pair, star port position 1) | Star CAN IHS IP connector C4 pin 1 |
| 4 | Z912 | BLK | not printed (ground) | Ground G912A (under front of center console) |
| 5 | Z912 | BLK | not printed (ground) | Ground G912A |
| 6 | D57 | GRY/WHT | not printed (CAN C pair, star port position 1) | Star CAN C IP connector C8 pin 1 |
| 11 | D158 | WHT | not printed (CAN IHS pair, star port position 2) | Star CAN IHS IP connector C4 pin 2 |
| 14 | D58 | YEL | not printed (CAN C pair, star port position 2) | Star CAN C IP connector C8 pin 2 |
| 16 | A900 | RED | not printed (battery feed) | I5020 pin 19 -> power distribution center C5 pin 27, fuse 44 (10 A), hot at all times |

On every other star port, position 1 is the (+) wire and position 2 the (-) wire of the module connected to it (two exceptions in colour convention are listed under Notes).

## CAN C

Two star connectors carry CAN C. Port C1 of the Star CAN C IP connector (D65 / D64) runs through I7000 pins 1 / 5 to port C1 of the Star CAN C dash connector. Pin 3 of each C1 port is a ground. The star terminals have no printed function names; the Function column gives the name printed at the module end of the wire.

### Star CAN C IP connector (left end of dash)

Ports C1-C8, C10, C12 and C13 are drawn; C9 and C11 are not shown.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-1 | D65 | WHT/LT BLU | — (star link) | Star CAN C dash connector C1 pin 1 via I7000 pin 1 |
| C1-2 | D64 | WHT/LT GRN | — (star link) | Star CAN C dash connector C1 pin 2 via I7000 pin 5 |
| C1-3 | Z912 | BLK | — (ground) | Ground G912A (under front of center console) |
| C2-1 | D11 | YEL/DK BLU | CAN C (+) | Occupant restraint controller module C2 pin 54 via I5020 pin 11 |
| C2-2 | D12 | YEL | CAN C (-) | Occupant restraint controller module C2 pin 53 via I5020 pin 12 |
| C3-1 | D431 | DK GRN/WHT | CAN C (+) | Electronic limited slip differential module C3 pin 2 via I5010 pin 58, I4301 pin 7 |
| C3-2 | D432 | YEL | CAN C (-) | Electronic limited slip differential module C3 pin 5 via I5010 pin 59, I4301 pin 8 |
| C4-1 | D429 | GRY | CAN C (+) | Shift lever assembly pin 9 via I2666B pin 6 |
| C4-2 | D430 | YEL | CAN C (-) | Shift lever assembly pin 10 via I2666B pin 7 |
| C5-1 | D81 | BRN/WHT | CAN C (+) | Cluster pin 12 |
| C5-2 | D82 | YEL | CAN C (-) | Cluster pin 13 |
| C6-1 | D75 | GRY | CAN C (+) | Radio C1 pin 1 |
| C6-2 | D76 | YEL | CAN C (-) | Radio C1 pin 11 |
| C7-1 | D97 | DK BLU/WHT | CAN C (+) | Steering column control module C1 pin 4 |
| C7-2 | D98 | YEL | CAN C (-) | Steering column control module C1 pin 3 |
| C8-1 | D57 | GRY/WHT | — | Data link connector pin 6 |
| C8-2 | D58 | YEL | — | Data link connector pin 14 |
| C10-1 | D349 | YEL/WHT | CAN C (+) | Forward facing camera pin 2 via I7001 pin 5 |
| C10-2 | D348 | YEL | CAN C (-) | Forward facing camera pin 3 via I7001 pin 4 |
| C12-1 | D39 | DK BLU | CAN C (+) | Radio frequency hub module C1 pin 12 via I5010 pin 52 |
| C12-2 | D40 | YEL | CAN C (-) | Radio frequency hub module C1 pin 11 via I5010 pin 53 |
| C13-1 | D93 | DK GRN | CAN C (+) | Tire pressure module pin 3 via I5010 pin 43, I4301 pin 5 |
| C13-2 | D94 | YEL | CAN C (-) | Tire pressure module pin 4 via I5010 pin 42, I4301 pin 3 |

### Star CAN C dash connector (center of dash)

Ports C1-C12 are drawn.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-1 | D65 | WHT/LT BLU | — (star link) | Star CAN C IP connector C1 pin 1 via I7000 pin 1 |
| C1-2 | D64 | WHT/LT GRN | — (star link) | Star CAN C IP connector C1 pin 2 via I7000 pin 5 |
| C1-3 | Z909 | BLK | — (ground) | Ground G909A (left rear of engine compartment) |
| C2-1 | D27 | TAN/WHT | CAN C (+) | PCM C1 pin 57 (except 3.0L turbo diesel) or C1 pin 24 (3.0L turbo diesel) |
| C2-2 | D28 | YEL | CAN C (-) | PCM C1 pin 33 (except 3.0L turbo diesel) or C1 pin 25 (3.0L turbo diesel) |
| C3-1 | D497 | DK BLU/WHT | CAN C (+) | Anti-lock brakes module pin 5 |
| C3-2 | D498 | YEL | CAN C (-) | Anti-lock brakes module pin 6 |
| C4-1 | D151 | YEL/GRY | CAN C (+) | Air suspension control module C1 pin 5 via I8200 pin 5 |
| C4-2 | D150 | YEL | CAN C (-) | Air suspension control module C1 pin 6 via I8200 pin 4 |
| C5-1 | D153 | GRY/YEL | CAN C (+) | Active damping control module C1 pin 2 via I8200 pin 5 |
| C5-2 | D152 | YEL | CAN C (-) | Active damping control module C1 pin 1 via I8200 pin 4 |
| C6-1 | D29 | VIO/WHT | CAN C (+) | Transmission control module pin 5 via I9030 pin 19 (except 3.0L turbo diesel) or I9030 pin 32 (3.0L turbo diesel), then I9070 pin F (3.0L turbo diesel only) |
| C6-2 | D30 | YEL | CAN C (-) | Transmission control module pin 6 via I9030 pin 23 (except 3.0L turbo diesel) or I9030 pin 35 (3.0L turbo diesel), then I9070 pin G (3.0L turbo diesel only) |
| C7-1 | D45 | BRN | CAN C (+) | Body control module C5 pin 25 via I6020 pin 14 |
| C7-2 | D46 | YEL | CAN C (-) | Body control module C5 pin 26 via I6020 pin 6 |
| C8-1 | D77 | VIO | CAN C (+) | Park assist module C1 pin 6 via I6020 pin 31 |
| C8-2 | D78 | YEL | CAN C (-) | Park assist module C1 pin 12 via I6020 pin 39 |
| C9-1 | D249 | YEL/GRY | CAN C (+) | Adaptive cruise control module pin 2 via I8110 pin 1 |
| C9-2 | D248 | YEL | CAN C (-) | Adaptive cruise control module pin 3 via I8110 pin 2 |
| C10-1 | D257 | YEL/TAN | CAN C (+) | Right front lamp assembly (premium) C1 pin 9 via I8110 pin 25 |
| C10-2 | D256 | YEL | CAN C (-) | Right front lamp assembly (premium) C1 pin 10 via I8110 pin 17 |
| C11-1 | D139 | DK BLU/WHT | CAN C (+) | Power steering pump motor C2 pin 1 |
| C11-2 | D138 | YEL | CAN C (-) | Power steering pump motor C2 pin 3 |
| C12-1 | D301 | WHT | CAN C (+) | Drivetrain control module C1 pin 6 via I8200 pin 3 |
| C12-2 | D302 | DK GRN | CAN C (-) | Drivetrain control module C1 pin 5 via I8200 pin 30 |

## CAN IHS

Two star connectors carry CAN IHS. They are not wired to each other directly: port C1 of the IP star goes to body control module C7 pins 4 / 5 and port C1 of the body star goes to body control module C6 pins 12 / 11, both on circuits D145 / D146.

### Star CAN IHS IP connector

No location is printed. Ports C1-C6 and C8-C13 are drawn; C7 is not shown.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-1 | D145 | WHT/LT GRN | CAN IHS (+) | Body control module C7 pin 4 |
| C1-2 | D146 | WHT | CAN IHS (-) | Body control module C7 pin 5 |
| C1-3 | Z912 | BLK | — (ground) | Ground G912A (under front of center console) |
| C2-1 | D103 | BRN | CAN IHS (+) | Driver door module C3 pin 2 via I5010 pin 46, I1110 pin 1 |
| C2-2 | D104 | WHT | CAN IHS (-) | Driver door module C3 pin 1 via I5010 pin 47, I1110 pin 2 |
| C3-1 | D101 | DK GRN | CAN IHS (+) | A/C heater control module C1 pin 4 |
| C3-2 | D102 | WHT | CAN IHS (-) | A/C heater control module C1 pin 5 |
| C4-1 | D157 | GRY | — | Data link connector pin 3 |
| C4-2 | D158 | WHT | — | Data link connector pin 11 |
| C5-1 | D463 | ORG | CAN IHS (+) | Integrated center stack switch bank module pin 5 |
| C5-2 | D462 | WHT | CAN IHS (-) | Integrated center stack switch bank module pin 1 |
| C6-1 | D177 | DK BLU | CAN IHS (+) | Radio C1 pin 2 |
| C6-2 | D178 | WHT | CAN IHS (-) | Radio C1 pin 12 |
| C8-1 | D163 | WHT/DK BLU | CAN IHS (+) | Heated seats module C1 pin 1 via I6634A pin A14 |
| C8-2 | D164 | WHT | CAN IHS (-) | Heated seats module C1 pin 2 via I6634A pin A13 |
| C9-1 | D255 | WHT | CAN IHS (+) | Intrusion transceiver module pin 3 via I700A pin 1 |
| C9-2 | D254 | WHT/VIO | CAN IHS (-) | Intrusion transceiver module pin 4 via I700A pin 2 |
| C10-1 | D213 | WHT/BRN | CAN IHS (+) | Passenger door module C3 pin 2 via I5020 pin 58, I1120 pin 1 |
| C10-2 | D214 | WHT | CAN IHS (-) | Passenger door module C3 pin 1 via I5020 pin 59, I1120 pin 2 |
| C11-1 | D297 | LT GRN | CAN IHS (+) | Left seat back screen video module C3 pin 22 via I2666A pin 2, I336A pin B1 |
| C11-2 | D296 | WHT | CAN IHS (-) | Left seat back screen video module C3 pin 23 via I2666A pin 3, I336A pin B2 |
| C12-1 | D199 | WHT/GRY | CAN IHS (+) | Via I2666A pin 7: external disc module pin 5 (without video module) or video module C2 pin 5 (with video module) |
| C12-2 | D198 | WHT | CAN IHS (-) | Via I2666A pin 6: external disc module pin 6 (without video module) or video module C2 pin 6 (with video module) |
| C13-1 | D299 | WHT/DK BLU | CAN IHS (+) | Right seat back screen video module C3 pin 22 via I2666A pin 4, I335A pin A7 |
| C13-2 | D298 | WHT | CAN IHS (-) | Right seat back screen video module C3 pin 23 via I2666A pin 5, I335A pin A8 |

### Star CAN IHS body connector (under rear of center console)

Ports C1-C7 and C11 are drawn; C8, C9 and C10 are not shown.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-1 | D145 | WHT/LT GRN | CAN IHS (+) | Body control module C6 pin 12 |
| C1-2 | D146 | WHT | CAN IHS (-) | Body control module C6 pin 11 |
| C1-3 | Z923 | BLK | — (ground) | Ground G923A (behind rear of left quarterpanel) |
| C2-1 | D251 | WHT/ORG | CAN IHS (+) | Power liftgate module C2 pin 6 |
| C2-2 | D250 | WHT | CAN IHS (-) | Power liftgate module C2 pin 7 |
| C3-1 | D207 | WHT/LT GRN | CAN IHS (+) | Radio amplifier C1 pin 19 (premium 2) or C1 pin 2 (premium) |
| C3-2 | D206 | WHT | CAN IHS (-) | Radio amplifier C1 pin 8 (premium 2) or C1 pin 13 (premium) |
| C4-1 | D215 | DK BLU/WHT | CAN IHS (+) | Left rear blind spot sensor pin 6 via I4300 pin 6, I701 pin L |
| C4-2 | D216 | WHT | CAN IHS (-) | Left rear blind spot sensor pin 7 via I4300 pin 7, I701 pin M |
| C5-1 | D217 | DK GRN/WHT | CAN IHS (+) | Right rear blind spot sensor pin 6 via I4300 pin 8, I701 pin S |
| C5-2 | D218 | WHT | CAN IHS (-) | Right rear blind spot sensor pin 7 via I4300 pin 9, I701 pin R |
| C6-1 | D165 | WHT/LT BLU | CAN IHS (+) | Memory seat module C1 pin 7 via I6633A pin A11 |
| C6-2 | D166 | WHT | CAN IHS (-) | Memory seat module C1 pin 5 via I6633A pin A12 |
| C7-1 | D245 | BRN/GRY | CAN IHS (+) | Active noise cancellation module (if equipped) C2 pin 2 |
| C7-2 | D244 | WHT | CAN IHS (-) | Active noise cancellation module (if equipped) C2 pin 13 |
| C11-1 | D163 | WHT/DK BLU | CAN IHS (+) | Heated seats module C1 pin 1 via I6634A pin A14 |
| C11-2 | D164 | WHT | CAN IHS (-) | Heated seats module C1 pin 2 via I6634A pin A13 |

The heated seats module is drawn twice with identical pins, circuits and inline connector: once on port C8 of the IP star (sheet 476786) and once on port C11 of the body star (sheet 476789). The diagram does not say which applies.

## Private CAN (3.0L turbo diesel)

The private CAN pair leaves the PCM connector drawn for the 3.0L turbo diesel and is distributed by splices rather than a star connector. Only the PCM end carries circuit codes (D469 / D468); the node terminals are printed CAN (+) / CAN (-).

| Node | Pin | Wire | Function (as printed) | Connects to |
|------|-----|------|----------------------|-------------|
| PCM C1 (3.0L turbo diesel) | 23 | GRY (D469) | PRIVATE CAN (+) | SP1922 |
| PCM C1 (3.0L turbo diesel) | 45 | GRY/WHT (D468) | PRIVATE CAN (-) | SP1917 |
| Boost pressure servo motor (left rear of engine) | 3 | GRY | CAN (+) | SP1922 via I9030 pin 26 |
| Boost pressure servo motor | 5 | GRY/WHT | CAN (-) | SP1917 via I9030 pin 29 |
| NOx 1/1 sensor (in diesel oxidation catalyst/particulate filter inlet elbow) | 4 | GRY | CAN (+) | SP1918 |
| NOx 1/1 sensor | 3 | GRY/WHT | CAN (-) | Unnamed splice joined to SP1913 |
| Heater control module (behind rear of left quarterpanel) | 10 | GRY | CAN (+) | SP1918 |
| Heater control module | 9 | GRY (as printed) | CAN (-) | Unnamed splice joined to SP1913 |
| NOx 1/2 sensor (in selective catalytic reduction catalyst) | 4 | GRY | CAN (+) | S8801B |
| NOx 1/2 sensor | 3 | GRY/WHT | CAN (-) | S8801A |
| Particulate matter sensor (on diesel particulate filter assembly) | 3 | GRY | CAN (+) | S8801B |
| Particulate matter sensor | 2 | GRY/WHT | CAN (-) | S8801A |

Routing:

- **CAN (+), GRY**: PCM C1 pin 23 -> SP1922 (right front of engine compartment, in headlamp & dash harness). From SP1922: I9030 pin 26 -> boost pressure servo motor pin 3; and I3000 pin 23 -> an unnamed splice that is joined by a dashed line to SP1918 (NOx 1/1 sensor pin 4, heater control module pin 10) -> I6602A pin 14 -> I6604A pin 2 -> S8801B (under center of vehicle, in rear sensor jumper harness) -> particulate matter sensor pin 3 and NOx 1/2 sensor pin 4.
- **CAN (-), GRY/WHT**: PCM C1 pin 45 -> SP1917 (right front of engine compartment, in headlamp & dash harness). From SP1917: I9030 pin 29 -> boost pressure servo motor pin 5; and I3000 pin 1 -> SP1913 (base of right kick panel, in under body harness), joined by a dashed line to an unnamed splice (NOx 1/1 sensor pin 3, heater control module pin 9) -> I6602A pin 13 -> I6604A pin 5 -> S8801A (under center of vehicle, in rear sensor jumper harness) -> particulate matter sensor pin 2 and NOx 1/2 sensor pin 3.

## LIN buses

### LIN BUS — PCM, glow plug module, generator

| Node | Pin | Circuit | Wire | Function (as printed) | Connects to |
|------|-----|---------|------|----------------------|-------------|
| PCM C1 (3.0L turbo diesel) | 90 | D509 | WHT/ORG | LIN BUS | SP1923 (right front of engine compartment, in headlamp & dash harness) |
| Glow plug module (right rear of engine) | 10 | D509 | WHT/ORG | LIN BUS | SP1923 via I9030 pin 34 |
| Generator C2 | 2 | — | WHT/ORG | LIN BUS | SP1923 via I9050 pin 4 |

The PCM LIN BUS terminal number is printed only in the 3.0L turbo diesel column of the PCM connector; no LIN BUS terminal number is printed for the other engines.

### LIN BUS 1 — body control module

| Node | Pin | Circuit | Wire | Function (as printed) | Connects to |
|------|-----|---------|------|----------------------|-------------|
| Body control module C7 | 7 | D401 | WHT/DK GRN | LIN BUS 1 | SP1911 (right center of dash, in instrument panel harness) |
| Intelligent battery sensor (on battery) | 1 | — | WHT/DK GRN | LIN BUS 1 | SP1911 via I5020 pin 27 (except 3.0L turbo diesel) or I5010 pin 10 (3.0L turbo diesel) |
| Transfer case selector switch | 5 | — | ORG | LIN BUS | SP1911 via I2666B pin 1 (WHT/DK GRN on the SP1911 side of I2666B) |

### LIN BUS CBC 2 — body control module

| Node | Pin | Circuit | Wire | Function (as printed) | Connects to |
|------|-----|---------|------|----------------------|-------------|
| Body control module C7 | 6 | D402 | ORG/VIO | LIN BUS CBC 2 | I7001 pin 9, then inside rear view mirror directly (without rain sensor) or SP1912 (with rain sensor) |
| Inside rear view mirror | 1 | — | ORG/VIO | LIN BUS CBC 2 | I7001 pin 9 (without rain sensor) or SP1912 (with rain sensor) |
| Rain sensor (top center of windshield) | 3 | — | ORG/VIO | LIN BUS CBC 2 | SP1912 (right "A" pillar, in interior mirror jumper harness) |

### LIN BUS CBC 3 — body control module

| Node | Pin | Circuit | Wire | Function (as printed) | Connects to |
|------|-----|---------|------|----------------------|-------------|
| Body control module C5 | 45 | D403 | ORG/DK BLU | LIN BUS CBC 3 | SP2593 (under passenger's door sill, in body harness) |
| SCCM multi-function switch C1 | 1 | — | ORG/DK BLU | LIN AFLS | SP2593 via I5020 pin 27 |
| Rear video camera (if equipped) | 2 | — | BLU | LIN BUS CBC 3 | SP2593 via D6685 pin 4, I2120 pin 10 (ORG/DK BLU on the SP2593 side of D6685); branch marked "W/ REAR CAMERA" |

### Point-to-point LIN and K-line links

| Node | Pin | Circuit | Wire | Function (as printed) | Connects to |
|------|-----|---------|------|----------------------|-------------|
| Right front lamp assembly (premium) C1 | 8 | D412 | ORG/LT GRN | LIN AFLS | Left front lamp assembly (premium) C1 pin 8 (LIN AFLS) |
| Radio frequency hub module C1 | 14 | D410 | WHT/GRY | LIN KIN | Steering column lock module pin 4 (base) or pin 5 (premium) (LIN KIN) via I5010 pin 50 |
| Radio frequency hub module C1 | 10 | D122 | WHT/LT GRN | SECRTY K LINE COMM | Keyless ignition node module pin 5 (SECRTY K LINE COMM) via I5010 pin 8 |
| Driver door module C5 | 1 | D903 | LT GRN/LT BLU | LIN BUS | Driver window/door lock switch pin 10 (LIN BUS) |
| Driver door module C5 | 2 | D512 | GRY/YEL | LIN BUS DOOR SW | Driver window/door lock switch pin 9 (LIN BUS DOOR SW) |

## Module connectors

One table per module connector, in the order the modules appear on the sheets. Routes are abbreviated; the star-connector tables above give every inline connector pin.

### Powertrain control module (PCM) — C1 (right front of engine compartment)

Two terminal-number columns are printed: (1) except 3.0L turbo diesel and (2) 3.0L turbo diesel.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 57 (except diesel) / 24 (diesel) | D27 | TAN/WHT | CAN C (+) | Star CAN C dash connector C2 pin 1 |
| 33 (except diesel) / 25 (diesel) | D28 | YEL | CAN C (-) | Star CAN C dash connector C2 pin 2 |
| 90 (diesel) | D509 | WHT/ORG | LIN BUS | SP1923: glow plug module pin 10, generator C2 pin 2 |
| 23 (diesel) | D469 | GRY | PRIVATE CAN (+) | SP1922 (private CAN) |
| 45 (diesel) | D468 | GRY/WHT | PRIVATE CAN (-) | SP1917 (private CAN) |

### Transmission control module (3.0L & 3.6L: top of transmission; 5.7L & 6.4L: right side of transmission)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 5 | D29 | VIO/WHT | CAN C (+) | Star CAN C dash connector C6 pin 1 via I9070 pin F (3.0L turbo diesel only), I9030 pin 19 (except 3.0L turbo diesel) or pin 32 (3.0L turbo diesel) |
| 6 | D30 | YEL | CAN C (-) | Star CAN C dash connector C6 pin 2 via I9070 pin G (3.0L turbo diesel only), I9030 pin 23 (except 3.0L turbo diesel) or pin 35 (3.0L turbo diesel) |

### Body control module (right end of dash)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C5-25 | D45 | BRN | CAN C (+) | Star CAN C dash connector C7 pin 1 via I6020 pin 14 |
| C5-26 | D46 | YEL | CAN C (-) | Star CAN C dash connector C7 pin 2 via I6020 pin 6 |
| C5-45 | D403 | ORG/DK BLU | LIN BUS CBC 3 | SP2593: SCCM multi-function switch C1 pin 1, rear video camera pin 2 |
| C6-11 | D146 | WHT | CAN IHS (-) | Star CAN IHS body connector C1 pin 2 |
| C6-12 | D145 | WHT/LT GRN | CAN IHS (+) | Star CAN IHS body connector C1 pin 1 |
| C7-4 | D145 | WHT/LT GRN | CAN IHS (+) | Star CAN IHS IP connector C1 pin 1 |
| C7-5 | D146 | WHT | CAN IHS (-) | Star CAN IHS IP connector C1 pin 2 |
| C7-6 | D402 | ORG/VIO | LIN BUS CBC 2 | Inside rear view mirror pin 1, rain sensor pin 3 via I7001 pin 9 |
| C7-7 | D401 | WHT/DK GRN | LIN BUS 1 | SP1911: intelligent battery sensor pin 1, transfer case selector switch pin 5 |

### Radio — C1

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | D75 | GRY | CAN C (+) | Star CAN C IP connector C6 pin 1 |
| 2 | D177 | DK BLU | CAN IHS (+) | Star CAN IHS IP connector C6 pin 1 |
| 11 | D76 | YEL | CAN C (-) | Star CAN C IP connector C6 pin 2 |
| 12 | D178 | WHT | CAN IHS (-) | Star CAN IHS IP connector C6 pin 2 |

### Radio frequency hub module — C1 (behind rear of left quarterpanel)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 10 | D122 | WHT/LT GRN | SECRTY K LINE COMM | Keyless ignition node module pin 5 via I5010 pin 8 |
| 11 | D40 | YEL | CAN C (-) | Star CAN C IP connector C12 pin 2 via I5010 pin 53 |
| 12 | D39 | DK BLU | CAN C (+) | Star CAN C IP connector C12 pin 1 via I5010 pin 52 |
| 14 | D410 | WHT/GRY | LIN KIN | Steering column lock module pin 4 (base) or 5 (premium) via I5010 pin 50 |

### Keyless ignition node module (left center of dash)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 5 | D122 | WHT/LT GRN | SECRTY K LINE COMM | Radio frequency hub module C1 pin 10 via I5010 pin 8 |

### Steering column lock module (steering column)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 4 (base) / 5 (premium) | D410 | WHT/GRY | LIN KIN | Radio frequency hub module C1 pin 14 via I5010 pin 50 |

### Occupant restraint controller module — C2 (under center console)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 53 | D12 | YEL | CAN C (-) | Star CAN C IP connector C2 pin 2 via I5020 pin 12 |
| 54 | D11 | YEL/DK BLU | CAN C (+) | Star CAN C IP connector C2 pin 1 via I5020 pin 11 |

### Electronic limited slip differential module — C3 (above rear differential)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | D431 | DK GRN/WHT | CAN C (+) | Star CAN C IP connector C3 pin 1 via I4301 pin 7, I5010 pin 58 |
| 5 | D432 | YEL | CAN C (-) | Star CAN C IP connector C3 pin 2 via I4301 pin 8, I5010 pin 59 |

### Shift lever assembly

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 9 | D429 | GRY | CAN C (+) | Star CAN C IP connector C4 pin 1 via I2666B pin 6 |
| 10 | D430 | YEL | CAN C (-) | Star CAN C IP connector C4 pin 2 via I2666B pin 7 |

### Cluster

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 12 | D81 | BRN/WHT | CAN C (+) | Star CAN C IP connector C5 pin 1 |
| 13 | D82 | YEL | CAN C (-) | Star CAN C IP connector C5 pin 2 |

### Steering column control module — C1 (in steering wheel)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D98 | YEL | CAN C (-) | Star CAN C IP connector C7 pin 2 |
| 4 | D97 | DK BLU/WHT | CAN C (+) | Star CAN C IP connector C7 pin 1 |

### SCCM multi-function switch — C1

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | — | ORG/DK BLU | LIN AFLS | SP2593 via I5020 pin 27 -> body control module C5 pin 45 (LIN BUS CBC 3, circuit D403) |

### Forward facing camera (front of interior rear view mirror assembly)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | D349 | YEL/WHT | CAN C (+) | Star CAN C IP connector C10 pin 1 via I7001 pin 5 |
| 3 | D348 | YEL | CAN C (-) | Star CAN C IP connector C10 pin 2 via I7001 pin 4 |

### Tire pressure module (left "C" pillar)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D93 | DK GRN | CAN C (+) | Star CAN C IP connector C13 pin 1 via I4301 pin 5, I5010 pin 43 |
| 4 | D94 | YEL | CAN C (-) | Star CAN C IP connector C13 pin 2 via I4301 pin 3, I5010 pin 42 |

### Drivetrain control module — C1 (under driver's seat)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 5 | D302 | DK GRN | CAN C (-) | Star CAN C dash connector C12 pin 2 via I8200 pin 30 |
| 6 | D301 | WHT | CAN C (+) | Star CAN C dash connector C12 pin 1 via I8200 pin 3 |

### Right front lamp assembly (premium) — C1

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 8 | D412 | ORG/LT GRN | LIN AFLS | Left front lamp assembly (premium) C1 pin 8 |
| 9 | D257 | YEL/TAN | CAN C (+) | Star CAN C dash connector C10 pin 1 via I8110 pin 25 |
| 10 | D256 | YEL | CAN C (-) | Star CAN C dash connector C10 pin 2 via I8110 pin 17 |

### Left front lamp assembly (premium) — C1

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 8 | D412 | ORG/LT GRN | LIN AFLS | Right front lamp assembly (premium) C1 pin 8 |

### Active damping control module — C1 (under driver seat)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | D152 | YEL | CAN C (-) | Star CAN C dash connector C5 pin 2 via I8200 pin 4 |
| 2 | D153 | GRY/YEL | CAN C (+) | Star CAN C dash connector C5 pin 1 via I8200 pin 5 |

### Air suspension control module — C1 (under driver seat)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 5 | D151 | YEL/GRY | CAN C (+) | Star CAN C dash connector C4 pin 1 via I8200 pin 5 |
| 6 | D150 | YEL | CAN C (-) | Star CAN C dash connector C4 pin 2 via I8200 pin 4 |

### Anti-lock brakes module (left front of engine compartment)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 5 | D497 | DK BLU/WHT | CAN C (+) | Star CAN C dash connector C3 pin 1 |
| 6 | D498 | YEL | CAN C (-) | Star CAN C dash connector C3 pin 2 |

### Park assist module — C1 (right "D" pillar)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 6 | D77 | VIO | CAN C (+) | Star CAN C dash connector C8 pin 1 via I6020 pin 31 |
| 12 | D78 | YEL | CAN C (-) | Star CAN C dash connector C8 pin 2 via I6020 pin 39 |

### Adaptive cruise control module (behind lower center of front fascia)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | D249 | YEL/GRY | CAN C (+) | Star CAN C dash connector C9 pin 1 via I8110 pin 1 |
| 3 | D248 | YEL | CAN C (-) | Star CAN C dash connector C9 pin 2 via I8110 pin 2 |

### Power steering pump motor — C2 (lower right front of engine)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | D139 | DK BLU/WHT | CAN C (+) | Star CAN C dash connector C11 pin 1 |
| 3 | D138 | YEL | CAN C (-) | Star CAN C dash connector C11 pin 2 |

### Driver door module

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C3-1 | D104 | WHT | CAN IHS (-) | Star CAN IHS IP connector C2 pin 2 via I1110 pin 2, I5010 pin 47 |
| C3-2 | D103 | BRN | CAN IHS (+) | Star CAN IHS IP connector C2 pin 1 via I1110 pin 1, I5010 pin 46 |
| C5-1 | D903 | LT GRN/LT BLU | LIN BUS | Driver window/door lock switch pin 10 |
| C5-2 | D512 | GRY/YEL | LIN BUS DOOR SW | Driver window/door lock switch pin 9 |

### Driver window/door lock switch

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 9 | D512 | GRY/YEL | LIN BUS DOOR SW | Driver door module C5 pin 2 |
| 10 | D903 | LT GRN/LT BLU | LIN BUS | Driver door module C5 pin 1 |

### Passenger door module — C3

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | D214 | WHT | CAN IHS (-) | Star CAN IHS IP connector C10 pin 2 via I1120 pin 2, I5020 pin 59 |
| 2 | D213 | WHT/BRN | CAN IHS (+) | Star CAN IHS IP connector C10 pin 1 via I1120 pin 1, I5020 pin 58 |

### A/C heater control module — C1

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 4 | D101 | DK GRN | CAN IHS (+) | Star CAN IHS IP connector C3 pin 1 |
| 5 | D102 | WHT | CAN IHS (-) | Star CAN IHS IP connector C3 pin 2 |

### Integrated center stack switch bank module

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | D462 | WHT | CAN IHS (-) | Star CAN IHS IP connector C5 pin 2 |
| 5 | D463 | ORG | CAN IHS (+) | Star CAN IHS IP connector C5 pin 1 |

### Heated seats module — C1 (under front passenger seat)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | D163 | WHT/DK BLU | CAN IHS (+) | Via I6634A pin A14: Star CAN IHS IP connector C8 pin 1 (sheet 476786) and Star CAN IHS body connector C11 pin 1 (sheet 476789) |
| 2 | D164 | WHT | CAN IHS (-) | Via I6634A pin A13: Star CAN IHS IP connector C8 pin 2 (sheet 476786) and Star CAN IHS body connector C11 pin 2 (sheet 476789) |

### Intrusion transceiver module (front of overhead console)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D255 | WHT | CAN IHS (+) | Star CAN IHS IP connector C9 pin 1 via I700A pin 1 |
| 4 | D254 | WHT/VIO | CAN IHS (-) | Star CAN IHS IP connector C9 pin 2 via I700A pin 2 |

### Left seat back screen video module — C3

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 22 | D297 | LT GRN | CAN IHS (+) | Star CAN IHS IP connector C11 pin 1 via I336A pin B1, I2666A pin 2 |
| 23 | D296 | WHT | CAN IHS (-) | Star CAN IHS IP connector C11 pin 2 via I336A pin B2, I2666A pin 3 |

### Right seat back screen video module — C3

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 22 | D299 | WHT/DK BLU | CAN IHS (+) | Star CAN IHS IP connector C13 pin 1 via I335A pin A7, I2666A pin 4 |
| 23 | D298 | WHT | CAN IHS (-) | Star CAN IHS IP connector C13 pin 2 via I335A pin A8, I2666A pin 5 |

### Video module — C2 (with video module)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 5 | D199 | WHT/GRY | CAN IHS (+) | Star CAN IHS IP connector C12 pin 1 via I2666A pin 7 |
| 6 | D198 | WHT | CAN IHS (-) | Star CAN IHS IP connector C12 pin 2 via I2666A pin 6 |

### External disc module (without video module)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 5 | D199 | WHT/GRY | CAN IHS (+) | Star CAN IHS IP connector C12 pin 1 via I2666A pin 7 |
| 6 | D198 | WHT | CAN IHS (-) | Star CAN IHS IP connector C12 pin 2 via I2666A pin 6 |

### Power liftgate module — C2 (left "D" pillar)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 6 | D251 | WHT/ORG | CAN IHS (+) | Star CAN IHS body connector C2 pin 1 |
| 7 | D250 | WHT | CAN IHS (-) | Star CAN IHS body connector C2 pin 2 |

### Radio amplifier — C1 (behind rear of left quarterpanel)

Two terminal-number columns are printed: (1) premium 2 and (2) premium.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 19 (premium 2) / 2 (premium) | D207 | WHT/LT GRN | CAN IHS (+) | Star CAN IHS body connector C3 pin 1 |
| 8 (premium 2) / 13 (premium) | D206 | WHT | CAN IHS (-) | Star CAN IHS body connector C3 pin 2 |

### Left rear blind spot sensor (behind left end of rear fascia)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 6 | D215 | DK BLU/WHT | CAN IHS (+) | Star CAN IHS body connector C4 pin 1 via I701 pin L, I4300 pin 6 |
| 7 | D216 | WHT | CAN IHS (-) | Star CAN IHS body connector C4 pin 2 via I701 pin M, I4300 pin 7 |

### Right rear blind spot sensor (behind right end of rear fascia)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 6 | D217 | DK GRN/WHT | CAN IHS (+) | Star CAN IHS body connector C5 pin 1 via I701 pin S, I4300 pin 8 |
| 7 | D218 | WHT | CAN IHS (-) | Star CAN IHS body connector C5 pin 2 via I701 pin R, I4300 pin 9 |

### Memory seat module — C1 (under driver seat)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 5 | D166 | WHT | CAN IHS (-) | Star CAN IHS body connector C6 pin 2 via I6633A pin A12 |
| 7 | D165 | WHT/LT BLU | CAN IHS (+) | Star CAN IHS body connector C6 pin 1 via I6633A pin A11 |

### Active noise cancellation module — C2 (if equipped)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | D245 | BRN/GRY | CAN IHS (+) | Star CAN IHS body connector C7 pin 1 |
| 13 | D244 | WHT | CAN IHS (-) | Star CAN IHS body connector C7 pin 2 |

The glow plug module, generator, intelligent battery sensor, transfer case selector switch, inside rear view mirror, rain sensor, rear video camera and the private CAN nodes each show a single bus terminal or pair; their pins are in the LIN and private CAN tables above.

## Power, grounds and splices

- **Fuse 44 (10 A)**, power distribution center assembly (right side of engine compartment), hot at all times -> PDC C5 pin 27 (RED) -> I5020 pin 19 -> (RED, A900) -> data link connector pin 16.
- Grounds: G912A — under front of center console (data link connector pins 4 and 5, Star CAN IHS IP connector C1 pin 3, Star CAN C IP connector C1 pin 3; circuit Z912); G909A — left rear of engine compartment (Star CAN C dash connector C1 pin 3; circuit Z909); G923A — behind rear of left quarterpanel (Star CAN IHS body connector C1 pin 3; circuit Z923).
- Splices: SP1911 — right center of dash, in instrument panel harness; SP1912 — right "A" pillar, in interior mirror jumper harness; SP1913 — base of right kick panel, in under body harness; SP1917, SP1922, SP1923 — right front of engine compartment, in headlamp & dash harness; SP1918 — no location printed; SP2593 — under passenger's door sill, in body harness; S8801A, S8801B — under center of vehicle, in rear sensor jumper harness.

## Notes

- **I5020 pin 27 is printed on two different circuits** on sheet 476788: the ORG/DK BLU LIN BUS CBC 3 wire between the SCCM multi-function switch and SP2593, and the WHT/DK GRN LIN BUS 1 wire between SP1911 and the intelligent battery sensor (except 3.0L turbo diesel). The source does not resolve which is correct.
- **I8200 pins 5 / 4 are printed on two different circuit pairs** on sheet 476788: D153 / D152 (active damping control module, star port C5) and D151 / D150 (air suspension control module, star port C4). The source does not say whether the two modules are alternatives.
- **Heated seats module** is drawn on both CAN IHS star connectors (IP port C8 and body port C11) with identical wiring.
- **Heater control module pin 9** (CAN (-)) is printed with wire color GRY although it joins the GRY/WHT private CAN (-) circuit; pin 10 (CAN (+)) is also GRY.
- **Intrusion transceiver module**: the CAN IHS (+) wire is plain WHT (D255) and the CAN IHS (-) wire is WHT/VIO (D254). Every other CAN IHS pair uses a coloured or striped (+) wire and plain WHT for (-).
- **Drivetrain control module**: CAN C (+) is WHT (D301) and CAN C (-) is DK GRN (D302). Every other CAN C (-) wire on the vehicle side is YEL.
- "D6685" is printed in the position of an inline connector name on the rear video camera branch, although it has the form of a circuit code.
- The connector for the 3.0L turbo diesel TCM branch, I9070 (pins F / G), is marked with note (2) only; the non-diesel path has no connector at that position.
- The Star CAN IHS IP connector has no printed location. The cluster, radio, shift lever assembly, A/C heater control module, integrated center stack switch bank module, door modules, video modules and SCCM multi-function switch also have no printed location on these sheets.
- The PCM CAN C terminals (C1-57 D27 TAN/WHT, C1-33 D28 YEL) match the 2015 Grand Cherokee entries in [2015-Grand-Cherokee-V6-vs-2018-Durango-V8-ECU-pinout-comparison.md](2015-Grand-Cherokee-V6-vs-2018-Durango-V8-ECU-pinout-comparison.md). The TCM, shift lever, radio frequency hub, body control module and steering column control module CAN C terminals match [2015-Jeep-Truck-Grand-Cherokee-4WD-v6-tcu-shifter.md](2015-Jeep-Truck-Grand-Cherokee-4WD-v6-tcu-shifter.md), which names the steering column module "STEERING CONTROL MODULE (STEERING COLUMN)".
