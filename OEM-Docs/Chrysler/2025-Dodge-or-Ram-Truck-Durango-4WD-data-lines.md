# 2025 Dodge Durango 4WD — computer data lines (CAN / LIN buses)

Transcribed from [2025-Dodge-or-Ram-Truck-Durango-4WD-data-lines.pdf](2025-Dodge-or-Ram-Truck-Durango-4WD-data-lines.pdf) (ALLDATA "Computer Data Lines" wiring diagram, Powertrain Management > Computers and Control Systems > Information Bus, Electrical - Interactive Color (Non OE), diagram pages 1-5 = PDF pages 2-6, sheets 916151-916155).

The source is filed under "2025 Dodge or Ram Truck Durango 4WD V6-3.6L". The drawing itself is shared between trim levels: branches are marked SRT / EXCEPT SRT, SSV / EXCEPT SSV, PREMIUM, W/ or W/O ACTIVE DAMPING, W/ or W/O VIDEO MODULE, W/ GLOBAL TELEMATICS BOX, W/ or W/O RAIN SENSOR and DUAL ZONE, and those marks are kept below.

The diagram shows the diagnostic connector, the security gateway module, four CAN star connectors and every module's bus pins. It does not show termination resistors, bus speeds or any pins other than the bus, power and ground pins listed here.

Buses covered:

| Bus | Circuits at the hub | Hub | Members |
|-----|---------------------|-----|---------|
| Diagnostic CAN C | D428 (+) / D427 (-) | Data link connector pins 6 / 14 to security gateway module C1 | Data link connector, security gateway module |
| Diagnostic CAN IHS | D434 (+) / D433 (-) | Data link connector pins 3 / 11 to security gateway module C2 | Data link connector, security gateway module |
| CAN C | D351 (+) / D350 (-) at the gateway | Star CAN C IP connector and star CAN C dash connector, linked by D65 / D64 | Security gateway, PCM, TCM, ABS, BCM, EPS, cluster and further modules |
| CAN IHS | D353 (+) / D352 (-) at the gateway | Star CAN IHS IP connector and star CAN IHS body connector, linked through the BCM on D145 / D146 | Security gateway, BCM, door modules, HVAC, seats, audio and further modules |
| CAN C "AT" | D436 (+) / D435 (-) | Security gateway module C1-4 / C1-11 | Radio, global telematic box module |
| CAN IHS "AT" | D437 (+) / D438 (-) | Security gateway module C2-1 / C2-6 | Radio, global telematic box module |
| Camera / radar CAN | D449 (+) / D448 (-) | Point to point | Forward facing camera, adaptive cruise control module |
| LIN BUS 1 | D401 | BCM C7-7, SP999 | Intelligent battery sensor, upper bank switch (except SSV) |
| LIN BUS CBC 2 | D402 | BCM C7-6, SP300 (SSV), SP1912 / SP106 | Rain light sensor module, inside rear view mirror, humidity sensor, upper bank switch (SSV) |
| LIN BUS CBC 3 | D403 | BCM C5-45, SP2433, SP300 (premium) | Steering column control module, rear camera, wireless charging pad module (premium) |
| Local LIN links | D592, D594, D511, D903 / D512 and others | Point to point | Steering wheel switches, charge coolant pump, PRNDM indicator, driver door switch, front lamps |
| Security K line | D122 | Point to point | Radio frequency hub module, keyless ignition node module |

Chrysler circuit codes (D351, Z912, A900, ...) are printed on the wires and are given in the Circuit column; where a code is printed at only one end of a wire it is repeated for the other end. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). The source prints both BLU and DK BLU and both GRN and DK GRN; they are kept as printed. Inline connectors are named as printed (XY5020A, I6634A, ...) with their pin numbers. A module connector name (C1, C2, ...) is given only where the source prints one. Unlisted pins are not connected in this diagram.

## Data link connector and security gateway (sheet 916151)

The data link connector is wired only to the security gateway module, which separates the two diagnostic pairs from the vehicle CAN C and CAN IHS buses.

### Data link connector (under left end of dash, 16-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D434 | TAN | not labelled at this connector | Security gateway module C2-2 (DIA CAN IHS (+)) |
| 4 | Z911 | BLK | not labelled | Ground G911A (under center console) |
| 5 | Z911 | BLK | not labelled | Ground G911A (under center console) |
| 6 | D428 | TAN | not labelled | Security gateway module C1-3 (DIA CAN C (+)) |
| 11 | D433 | TAN/YEL | not labelled | Security gateway module C2-7 (DIA CAN IHS (-)) |
| 14 | D427 | YEL | not labelled | Security gateway module C1-10 (DIA CAN C (-)) |
| 16 | A900 | GRY/RED | not labelled | XY5020A pin 19 -> power distribution center C5 pin 27, fuse 44 (10 A), hot at all times |

Pins 1, 2, 7-10, 12, 13 and 15 are drawn with no wire.

### Security gateway module (right center of dash) — C1 (12 positions drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D428 | TAN | DIA CAN C (+) | Data link connector pin 6 |
| 4 | D436 | GRY (two wires) | CAN C (+) AT | One GRY wire direct to radio C1-1; the other GRY wire to SP404 -> radio C2-10 and global telematic box module C1-27 |
| 5 | D351 | WHT/BRN | CAN C (+) | Star CAN C IP connector C6-1 |
| 6 | Z912 | BLK/BLU | GND | Ground G912A (under center console) |
| 7 | F949 | PNK/GRN | FSD IGN RUN/START CTRL O/P | SP2450 -> power distribution center C6 pin 7, fuse 88 (15 A), hot with run/start relay energized |
| 10 | D427 | YEL | DIA CAN C (-) | Data link connector pin 14 |
| 11 | D435 | YEL/VIO (two wires) | CAN C (-) AT | One YEL/VIO wire direct to radio C1-11; the other YEL/VIO wire to SP406 -> radio C2-17 and global telematic box module C1-26 |
| 12 | D350 | YEL/GRN | CAN C (-) | Star CAN C IP connector C6-2 |

### Security gateway module — C2 (8 positions drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | D437 | DK BLU and WHT (two wires) | CAN IHS (+) AT | DK BLU wire direct to radio C1-2; WHT wire to SP202 -> radio C2-11 and global telematic box module C1-25 |
| 2 | D434 | TAN | DIA CAN IHS (+) | Data link connector pin 3 |
| 3 | D353 | VIO/WHT | CAN IHS (+) | Star CAN IHS IP connector C6-1 |
| 4 | Z912 | BLK/BLU | GND | SP8041 -> ground G912A (under center console) |
| 5 | A902 | RED/ORG | FSD B (+) | XY5020A pin 35 -> power distribution center C5 pin 29, fuse 45 (5 A), hot at all times |
| 6 | D438 | WHT and DK BLU (two wires) | CAN IHS (-) AT | WHT wire direct to radio C1-12; DK BLU wire to SP203 -> radio C2-18 and global telematic box module C1-24 |
| 7 | D433 | TAN/YEL | DIA CAN IHS (-) | Data link connector pin 11 |
| 8 | D352 | YEL/DK BLU | CAN IHS (-) | Star CAN IHS IP connector C6-2 |

Power distribution center assembly (right side of engine compartment): fuse 44 (10 A, hot at all times) -> C5 pin 27 (GRY/RED); fuse 88 (15 A, hot with run/start relay energized) -> C6 pin 7 (PNK/GRN) -> SP2450; fuse 45 (5 A, hot at all times) -> C5 pin 29 (RED/ORG). Only the SP2450 branch to the gateway is drawn.

## CAN C "AT" and CAN IHS "AT" — gateway, radio, telematics (sheet 916151)

Each of the four "AT" gateway terminals carries two wires. One wire of each pair runs straight to radio connector C1. The other runs to a splice (SP203, SP406, SP202, SP404 — each marked "W/ GLOBAL TELEMATICS BOX", right center of dash, in instrument panel harness) that joins radio connector C2 and the global telematic box module.

### Radio (location not printed)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-1 | D436 | GRY | CAN C (+) AT | Security gateway module C1-4 (direct) |
| C1-2 | D437 | DK BLU | CAN IHS (+) AT | Security gateway module C2-1 (direct) |
| C1-11 | D435 | YEL/VIO | CAN C (-) AT | Security gateway module C1-11 (direct) |
| C1-12 | D438 | WHT | CAN IHS (-) AT | Security gateway module C2-6 (direct) |
| C2-10 | D436 | GRY | CAN C (+) AT | SP404: security gateway module C1-4, global telematic box module C1-27 |
| C2-11 | D437 | WHT | CAN IHS (+) AT | SP202: security gateway module C2-1, global telematic box module C1-25 |
| C2-17 | D435 | YEL/VIO | CAN C (-) AT | SP406: security gateway module C1-11, global telematic box module C1-26 |
| C2-18 | D438 | DK BLU | CAN IHS (-) AT | SP203: security gateway module C2-6, global telematic box module C1-24 |

### Global telematic box module (w/ global telematics box, right side of dash) — C1

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 24 | D438 | DK BLU | CAN IHS (-) AT | SP203 |
| 25 | D437 | WHT | CAN IHS (+) AT | SP202 |
| 26 | D435 | YEL/VIO | CAN C (-) AT | SP406 |
| 27 | D436 | GRY | CAN C (+) AT | SP404 |

The CAN IHS "AT" colors are crossed between the two paths: the direct wires are DK BLU for (+) and WHT for (-), while the spliced wires are WHT for (+) and DK BLU for (-). Circuit codes agree (D437 = (+), D438 = (-)) on both paths.

## CAN C (sheets 916153, 916154)

CAN C runs through two star connectors. The security gateway module joins the star CAN C IP connector at port C6. Port C1 of the IP star and port C1 of the dash star are linked to each other (D65 / D64 through XY7000A). Every other star port carries one module. Star connector terminals have no function labels; on every port pin 1 is the wire that reaches the module's CAN C (+) terminal and pin 2 the wire that reaches CAN C (-), except IP star port C3 in the EXCEPT SSV branch (see the note under the table).

### Star CAN C IP connector (left end of dash)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-1 | D65 | WHT/GRN | not labelled | XY7000A pin 1 -> star CAN C dash connector C1-1 |
| C1-2 | D64 | WHT/BLU | not labelled | XY7000A pin 5 -> star CAN C dash connector C1-2 |
| C1-3 | Z912 | BLK/BLU | not labelled | SP8041 -> ground G912A (under center console) |
| C2-1 | D11 | YEL/DK BLU | not labelled | Occupant restraint controller module C1-11 |
| C2-2 | D12 | YEL | not labelled | Occupant restraint controller module C1-21 |
| C3-1 | D431 (or D397) | DK GRN/WHT (or BRN/ORG) | not labelled | EXCEPT SSV: XY5010A pin 43 -> XY4301A pin 7 -> electronic limited slip differential module C3-2. SSV: XY5020A pin 54 -> vehicle system interface module C5-7 |
| C3-2 | D432 (or D396) | YEL | not labelled | EXCEPT SSV: XY5010A pin 44 -> XY4301A pin 8 -> electronic limited slip differential module C3-5. SSV: XY5020A pin 53 -> vehicle system interface module C5-15 |
| C4-1 | D429 | GRY | not labelled | XY7402B pin 18 (EXCEPT SSV) -> shift lever assembly C1-4 (EXCEPT SSV) / C1-8 (SSV) |
| C4-2 | D430 | YEL | not labelled | XY7402B pin 19 (EXCEPT SSV) -> shift lever assembly C1-5 (EXCEPT SSV) / C1-7 (SSV) |
| C5-1 | D81 | BRN/WHT | not labelled | Cluster pin 12 |
| C5-2 | D82 | YEL | not labelled | Cluster pin 13 |
| C6-1 | D351 | WHT/BRN | not labelled | Security gateway module C1-5 |
| C6-2 | D350 | YEL/GRN | not labelled | Security gateway module C1-12 |
| C7-1 | D97 | DK BLU/WHT | not labelled | Steering column control module C1-4 |
| C7-2 | D98 | YEL | not labelled | Steering column control module C1-3 |
| C8-1 | D197 | ORG | not labelled | Trailer tow module C2-2 |
| C8-2 | D196 | YEL | not labelled | Trailer tow module C2-1 |
| C10-1 | D349 | YEL/WHT | not labelled | XY7001A pin 5 -> forward facing camera pin 2 |
| C10-2 | D348 | YEL | not labelled | XY7001A pin 4 -> forward facing camera pin 6 |
| C12-1 | D39 | DK BLU | not labelled | XY5010A pin 52 -> radio frequency hub module C1-12 |
| C12-2 | D40 | YEL | not labelled | XY5010A pin 51 -> radio frequency hub module C1-11 |
| C13-1 | D338 | BRN/YEL | not labelled | XY5020A pin 34 -> I6634A pin A2 -> occupant classification module C5-2 |
| C13-2 | D337 | YEL | not labelled | XY5020A pin 33 -> I6634A pin A1 -> occupant classification module C5-3 |

Ports C9 and C11 are not drawn on this connector.

Port C3, EXCEPT SSV branch: star pin 1 (D431, DK GRN/WHT) arrives at the electronic limited slip differential module terminal printed CAN C (-), and star pin 2 (D432, YEL) at the terminal printed CAN C (+). This is the reverse of every other port, where pin 1 is (+) and the YEL wire is (-).

### Star CAN C dash connector (center rear of engine compartment)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-1 | D65 | WHT/GRN | not labelled | XY7000A pin 1 -> star CAN C IP connector C1-1 |
| C1-2 | D64 | WHT/BLU | not labelled | XY7000A pin 5 -> star CAN C IP connector C1-2 |
| C1-3 | Z909 | BLK | not labelled | Ground G909A (right rear of engine compartment) |
| C2-1 | D27 | TAN/WHT | not labelled | Powertrain control module C1-57 |
| C2-2 | D28 | YEL | not labelled | Powertrain control module C1-33 |
| C3-1 | D497 | DK BLU/WHT | not labelled | Anti-lock brakes module pin 41 (EXCEPT SRT) / pin 5 (SRT) |
| C3-2 | D498 | YEL | not labelled | Anti-lock brakes module pin 25 (EXCEPT SRT) / pin 6 (SRT) |
| C5-1 | D153 | GRY/YEL | not labelled | XY8200A pin 5 -> active damping control module C1-2 |
| C5-2 | D152 | YEL | not labelled | XY8200A pin 4 -> active damping control module C1-1 |
| C6-1 | D29 | VIO/WHT | not labelled | I9030A pin 19 -> transmission control module pin 5 |
| C6-2 | D30 | YEL | not labelled | I9030A pin 18 -> transmission control module pin 6 |
| C7-1 | D45 | BRN | not labelled | XY6020A pin 14 -> body control module C5-25 |
| C7-2 | D46 | YEL | not labelled | XY6020A pin 6 -> body control module C5-26 |
| C8-1 | D77 | VIO | not labelled | XY6020A pin 31 -> park assist module C1-6 |
| C8-2 | D78 | YEL | not labelled | XY6020A pin 39 -> park assist module C1-12 |
| C9-1 | D249 | YEL/GRY | not labelled | XY8110A pin 1 -> XY850B pin 4 -> adaptive cruise control module pin 7 |
| C9-2 | D248 | YEL | not labelled | XY8110A pin 2 -> XY850B pin 3 -> adaptive cruise control module pin 6 |
| C10-1 | D257 | YEL/VIO | not labelled | XY8120A pin 25 -> right front lamp assembly C1-3 |
| C10-2 | D256 | YEL | not labelled | XY8120A pin 17 -> right front lamp assembly C1-10 |
| C11-1 | D139 | YEL/BRN | not labelled | EPS module C2-2 |
| C11-2 | D138 | YEL | not labelled | EPS module C2-1 |
| C12-1 | D301 | WHT | not labelled | XY8200A pin 3 (w/ active damping) or XY8210A pin 3 (w/o active damping) -> drivetrain control module C1-6 |
| C12-2 | D302 | DK GRN | not labelled | XY8200A pin 30 (w/ active damping) or XY8210A pin 5 (w/o active damping) -> drivetrain control module C1-5 |

Port C4 is not drawn on this connector.

### CAN C modules

| Module (location) | Pin | Circuit | Wire | Function (as printed) | Connects to |
|-------------------|-----|---------|------|----------------------|-------------|
| Powertrain control module (right front of engine compartment) | C1-57 | D27 | TAN/WHT | CAN C (+) | Dash star C2-1 |
| Powertrain control module | C1-33 | D28 | YEL | CAN C (-) | Dash star C2-2 |
| Transmission control module (in transmission valve body) | 5 | D29 | VIO/WHT | CAN C (+) | I9030A pin 19 -> dash star C6-1 |
| Transmission control module | 6 | D30 | YEL | CAN C (-) | I9030A pin 18 -> dash star C6-2 |
| Anti-lock brakes module (left front of engine compartment), EXCEPT SRT | 41 | D497 | DK BLU/WHT | CAN C (+) | Dash star C3-1 |
| Anti-lock brakes module, EXCEPT SRT | 25 | D498 | YEL | CAN C (-) | Dash star C3-2 |
| Anti-lock brakes module, SRT | 5 | D497 | DK BLU/WHT | CAN C (+) | Dash star C3-1 |
| Anti-lock brakes module, SRT | 6 | D498 | YEL | CAN C (-) | Dash star C3-2 |
| Body control module (right kick panel) | C5-25 | D45 | BRN | CAN C (+) | XY6020A pin 14 -> dash star C7-1 |
| Body control module | C5-26 | D46 | YEL | CAN C (-) | XY6020A pin 6 -> dash star C7-2 |
| EPS module (right front of engine compartment) | C2-2 | D139 | YEL/BRN | CAN C (+) | Dash star C11-1 |
| EPS module | C2-1 | D138 | YEL | CAN C (-) | Dash star C11-2 |
| Park assist module (right "D" pillar) | C1-6 | D77 | VIO | CAN C (+) | XY6020A pin 31 -> dash star C8-1 |
| Park assist module | C1-12 | D78 | YEL | CAN C (-) | XY6020A pin 39 -> dash star C8-2 |
| Adaptive cruise control module (behind center of front fascia) | 7 | D249 | YEL/GRY | CAN C (+) | XY850B pin 4 -> XY8110A pin 1 -> dash star C9-1 |
| Adaptive cruise control module | 6 | D248 | YEL | CAN C (-) | XY850B pin 3 -> XY8110A pin 2 -> dash star C9-2 |
| Active damping control module (under driver's seat) | C1-2 | D153 | GRY/YEL | CAN C (+) | XY8200A pin 5 -> dash star C5-1 |
| Active damping control module | C1-1 | D152 | YEL | CAN C (-) | XY8200A pin 4 -> dash star C5-2 |
| Drivetrain control module (under driver's seat) | C1-6 | D301 | WHT | CAN C (+) | XY8200A pin 3 (w/ active damping) or XY8210A pin 3 (w/o active damping) -> dash star C12-1 |
| Drivetrain control module | C1-5 | D302 | DK GRN | CAN C (-) | XY8200A pin 30 (w/ active damping) or XY8210A pin 5 (w/o active damping) -> dash star C12-2 |
| Right front lamp assembly (location not printed) | C1-3 | D257 | YEL/VIO | CAN C (+) | XY8120A pin 25 -> dash star C10-1 |
| Right front lamp assembly | C1-10 | D256 | YEL | CAN C (-) | XY8120A pin 17 -> dash star C10-2 |
| Occupant restraint controller module (under rear of center console) | C1-11 | D11 | YEL/DK BLU | CAN C (+) | IP star C2-1 |
| Occupant restraint controller module | C1-21 | D12 | YEL | CAN C (-) | IP star C2-2 |
| Electronic limited slip differential module (left rear corner of cargo area), EXCEPT SSV | C3-5 | D432 | YEL | CAN C (+) | XY4301A pin 8 -> XY5010A pin 44 -> IP star C3-2 |
| Electronic limited slip differential module, EXCEPT SSV | C3-2 | D431 | DK GRN/WHT | CAN C (-) | XY4301A pin 7 -> XY5010A pin 43 -> IP star C3-1 |
| Vehicle system interface module (right side of floor pan behind rear seats), SSV | C5-7 | D397 | BRN/ORG | CAN C (+) | XY5020A pin 54 -> IP star C3-1 |
| Vehicle system interface module, SSV | C5-15 | D396 | YEL | CAN C (-) | XY5020A pin 53 -> IP star C3-2 |
| Shift lever assembly (location not printed), EXCEPT SSV | C1-4 | D429 | GRY | CAN C (+) | XY7402B pin 18 -> IP star C4-1 |
| Shift lever assembly, EXCEPT SSV | C1-5 | D430 | YEL | CAN C (-) | XY7402B pin 19 -> IP star C4-2 |
| Shift lever assembly, SSV | C1-8 | D429 | GRY | CAN C (+) | IP star C4-1 |
| Shift lever assembly, SSV | C1-7 | D430 | YEL | CAN C (-) | IP star C4-2 |
| Cluster (location not printed) | 12 | D81 | BRN/WHT | CAN C (+) | IP star C5-1 |
| Cluster | 13 | D82 | YEL | CAN C (-) | IP star C5-2 |
| Steering column control module (steering column) | C1-4 | D97 | DK BLU/WHT | CAN C (+) | IP star C7-1 |
| Steering column control module | C1-3 | D98 | YEL | CAN C (-) | IP star C7-2 |
| Trailer tow module (center of dash) | C2-2 | D197 | ORG | CAN C (+) | IP star C8-1 |
| Trailer tow module | C2-1 | D196 | YEL | CAN C (-) | IP star C8-2 |
| Forward facing camera (front of interior rear view mirror assembly) | 2 | D349 | YEL/WHT | CAN C (+) | XY7001A pin 5 -> IP star C10-1 |
| Forward facing camera | 6 | D348 | YEL | CAN C (-) | XY7001A pin 4 -> IP star C10-2 |
| Radio frequency hub module (behind left quarterpanel) | C1-12 | D39 | DK BLU | CAN C (+) | XY5010A pin 52 -> IP star C12-1 |
| Radio frequency hub module | C1-11 | D40 | YEL | CAN C (-) | XY5010A pin 51 -> IP star C12-2 |
| Occupant classification module (under front passenger's seat) | C5-2 | D338 | BRN/YEL | CAN C (+) | I6634A pin A2 -> XY5020A pin 34 -> IP star C13-1 |
| Occupant classification module | C5-3 | D337 | YEL | CAN C (-) | I6634A pin A1 -> XY5020A pin 33 -> IP star C13-2 |

The "EXCEPT SSV" arrow at XY7402B is read here as applying to the inline connector; the shift lever connector C1 is drawn twice, pins 4 / 5 marked EXCEPT SSV and pins 8 / 7 marked SSV.

### Forward facing camera to adaptive cruise control module

A second CAN pair links these two modules directly and does not touch either star connector.

| Module | Pin | Circuit | Wire | Function (as printed) | Connects to |
|--------|-----|---------|------|----------------------|-------------|
| Forward facing camera | 7 | D449 | WHT/TAN | CAN C (+) | XY7001A pin 6 -> XY7000A pin 3 -> XY8110A pin 21 -> XY850B pin 2 -> adaptive cruise control module pin 4 |
| Forward facing camera | 8 | D448 | TAN | CAN C (-) | XY7001A pin 3 -> XY7000A pin 4 -> XY8110A pin 5 -> XY850B pin 1 -> adaptive cruise control module pin 3 |
| Adaptive cruise control module | 4 | D449 | WHT/TAN | CAN C (+) | Forward facing camera pin 7 |
| Adaptive cruise control module | 3 | D448 | TAN | CAN C (-) | Forward facing camera pin 8 |

## CAN IHS (sheets 916152, 916154, 916155)

CAN IHS runs through two star connectors. The security gateway module joins the star CAN IHS IP connector at port C6. The body control module joins both stars: BCM C7-4 / C7-5 go to IP star port C1 and BCM C6-12 / C6-11 go to body star port C1, all four on circuits D145 / D146. Star connector terminals have no function labels; on every port pin 1 is the wire that reaches the module's CAN IHS (+) terminal and pin 2 the wire that reaches CAN IHS (-).

### Star CAN IHS IP connector (left end of dash)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-1 | D145 | WHT/GRN | not labelled | Body control module C7-4 |
| C1-2 | D146 | WHT | not labelled | Body control module C7-5 |
| C1-3 | Z912 | BLK/BLU | not labelled | SP8041 -> ground G912A (under center console) |
| C2-1 | D103 | BRN | not labelled | XY5010A pin 48 -> XY1110A pin 1 -> driver door module C3-3 |
| C2-2 | D104 | WHT | not labelled | XY5010A pin 49 -> XY1110A pin 2 -> driver door module C3-4 |
| C3-1 | D101 | DK GRN | not labelled | A/C heater module C1-4 |
| C3-2 | D102 | WHT | not labelled | A/C heater module C1-5 |
| C5-1 | D463 | ORG | not labelled | Integrated center stack switch bank module pin 5 |
| C5-2 | D462 | WHT | not labelled | Integrated center stack switch bank module pin 1 |
| C6-1 | D353 | VIO/WHT | not labelled | Security gateway module C2-3 |
| C6-2 | D352 | YEL/DK BLU | not labelled | Security gateway module C2-8 |
| C7-1 | D311 | BLU | not labelled | XY700A pin 1 -> rear A/C heater control module pin 2 |
| C7-2 | D312 | WHT | not labelled | XY700A pin 2 -> rear A/C heater control module pin 12 |
| C8-1 | D267 | DK GRN | not labelled | Center stack screen display C1-2 |
| C8-2 | D266 | WHT/ORG | not labelled | Center stack screen display C1-6 |
| C10-1 | D213 | WHT/BRN | not labelled | XY5020A pin 48 -> XY1120A pin 1 -> passenger door module C3-3 |
| C10-2 | D214 | WHT | not labelled | XY5020A pin 49 -> XY1120A pin 2 -> passenger door module C3-4 |
| C12-1 | D199 | WHT/GRY | not labelled | XY7402A pin 6 -> video module C2-5 (w/ video module) or external disc module pin 5 (w/o video module) |
| C12-2 | D198 | WHT | not labelled | XY7402A pin 7 -> video module C2-6 (w/ video module) or external disc module pin 6 (w/o video module) |

Ports C4, C9 and C11 are not drawn on this connector.

### Star CAN IHS body connector (floor pan, behind rear of center console)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-1 | D145 | WHT/GRN | not labelled | Body control module C6-12 |
| C1-2 | D146 | WHT | not labelled | Body control module C6-11 |
| C2-1 | D251 | WHT/ORG | not labelled | Power liftgate module C2-6 |
| C2-2 | D250 | WHT | not labelled | Power liftgate module C2-7 |
| C3-1 | D207 | WHT/GRN | not labelled | Radio amplifier C2-2 (SRT) / C1-2 (EXCEPT SRT) |
| C3-2 | D206 | WHT | not labelled | Radio amplifier C2-13 (SRT) / C1-13 (EXCEPT SRT) |
| C4-1 | D215 | DK BLU/WHT | not labelled | XY4300A pin 6 -> I701A pin L -> left blind spot sensor pin 6 |
| C4-2 | D216 | WHT | not labelled | XY4300A pin 7 -> I701A pin M -> left blind spot sensor pin 5 |
| C5-1 | D217 | DK GRN/WHT | not labelled | XY4300A pin 8 -> I701A pin S -> right rear blind spot sensor pin 6 |
| C5-2 | D218 | WHT | not labelled | XY4300A pin 9 -> I701A pin R -> right rear blind spot sensor pin 5 |
| C6-1 | D165 | WHT/BLU | not labelled | I6633A pin A11 -> memory seat module C1-7 |
| C6-2 | D166 | WHT | not labelled | I6633A pin A12 -> memory seat module C1-5 |
| C11-1 | D163 | WHT/DK BLU | not labelled | I6634A pin A14 -> heated seats module C1-1 |
| C11-2 | D164 | WHT | not labelled | I6634A pin A13 -> heated seats module C1-2 |
| C12-1 | Z923 | BLK | not labelled | Ground G923A (base of left "D" pillar) |

Ports C7-C10 are not drawn on this connector.

### CAN IHS modules

| Module (location) | Pin | Circuit | Wire | Function (as printed) | Connects to |
|-------------------|-----|---------|------|----------------------|-------------|
| Body control module (right kick panel) | C7-4 | D145 | WHT/GRN | CAN IHS (+) | IP star C1-1 |
| Body control module | C7-5 | D146 | WHT | CAN IHS (-) | IP star C1-2 |
| Body control module | C6-12 | D145 | WHT/GRN | CAN IHS (+) | Body star C1-1 |
| Body control module | C6-11 | D146 | WHT | CAN IHS (-) | Body star C1-2 |
| Driver door module (in driver door) | C3-3 | D103 | BRN | CAN IHS (+) | XY1110A pin 1 -> XY5010A pin 48 -> IP star C2-1 |
| Driver door module | C3-4 | D104 | WHT | CAN IHS (-) | XY1110A pin 2 -> XY5010A pin 49 -> IP star C2-2 |
| Passenger door module (in passenger door) | C3-3 | D213 | WHT/BRN | CAN IHS (+) | XY1120A pin 1 -> XY5020A pin 48 -> IP star C10-1 |
| Passenger door module | C3-4 | D214 | WHT | CAN IHS (-) | XY1120A pin 2 -> XY5020A pin 49 -> IP star C10-2 |
| A/C heater module (right side of dash) | C1-4 | D101 | DK GRN | CAN IHS (+) | IP star C3-1 |
| A/C heater module | C1-5 | D102 | WHT | CAN IHS (-) | IP star C3-2 |
| Rear A/C heater control module (dual zone; location not printed) | 2 | D311 | BLU | CAN IHS (+) | XY700A pin 1 -> IP star C7-1 |
| Rear A/C heater control module | 12 | D312 | WHT | CAN IHS (-) | XY700A pin 2 -> IP star C7-2 |
| Integrated center stack switch bank module (center of dash) | 5 | D463 | ORG | CAN IHS (+) | IP star C5-1 |
| Integrated center stack switch bank module | 1 | D462 | WHT | CAN IHS (-) | IP star C5-2 |
| Center stack screen display (location not printed) | C1-2 | D267 | DK GRN | CAN IHS (+) | IP star C8-1 |
| Center stack screen display | C1-6 | D266 | WHT/ORG | CAN IHS (-) | IP star C8-2 |
| Video module (under center console), w/ video module | C2-5 | D199 | WHT/GRY | CAN IHS (+) | XY7402A pin 6 -> IP star C12-1 |
| Video module, w/ video module | C2-6 | D198 | WHT | CAN IHS (-) | XY7402A pin 7 -> IP star C12-2 |
| External disc module (rear of center console), w/o video module | 5 | D199 | WHT/GRY | CAN IHS (+) | XY7402A pin 6 -> IP star C12-1 |
| External disc module, w/o video module | 6 | D198 | WHT | CAN IHS (-) | XY7402A pin 7 -> IP star C12-2 |
| Power liftgate module (left "D" pillar) | C2-6 | D251 | WHT/ORG | CAN IHS (+) | Body star C2-1 |
| Power liftgate module | C2-7 | D250 | WHT | CAN IHS (-) | Body star C2-2 |
| Radio amplifier (behind left quarterpanel), SRT | C2-2 | D207 | WHT/GRN | CAN IHS (+) | Body star C3-1 |
| Radio amplifier, SRT | C2-13 | D206 | WHT | CAN IHS (-) | Body star C3-2 |
| Radio amplifier, EXCEPT SRT | C1-2 | D207 | WHT/GRN | CAN IHS (+) | Body star C3-1 |
| Radio amplifier, EXCEPT SRT | C1-13 | D206 | WHT | CAN IHS (-) | Body star C3-2 |
| Left blind spot sensor (behind left end of rear bumper) | 6 | D215 | DK BLU/WHT | CAN IHS (+) | I701A pin L -> XY4300A pin 6 -> body star C4-1 |
| Left blind spot sensor | 5 | D216 | WHT | CAN IHS (-) | I701A pin M -> XY4300A pin 7 -> body star C4-2 |
| Right rear blind spot sensor (behind right end of rear bumper) | 6 | D217 | DK GRN/WHT | CAN IHS (+) | I701A pin S -> XY4300A pin 8 -> body star C5-1 |
| Right rear blind spot sensor | 5 | D218 | WHT | CAN IHS (-) | I701A pin R -> XY4300A pin 9 -> body star C5-2 |
| Memory seat module (under driver's seat) | C1-7 | D165 | WHT/BLU | CAN IHS (+) | I6633A pin A11 -> body star C6-1 |
| Memory seat module | C1-5 | D166 | WHT | CAN IHS (-) | I6633A pin A12 -> body star C6-2 |
| Heated seats module (under passenger's seat) | C1-1 | D163 | WHT/DK BLU | CAN IHS (+) | I6634A pin A14 -> body star C11-1 |
| Heated seats module | C1-2 | D164 | WHT | CAN IHS (-) | I6634A pin A13 -> body star C11-2 |

## LIN buses and K line (sheets 916152-916155)

### Body control module (right kick panel) — LIN masters

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C7-7 | D401 | ORG | LIN BUS 1 | SP999 (right end of dash, in instrument panel harness): XY5020A pin 43 -> intelligent battery sensor C1-1; EXCEPT SSV branch -> XY7402B pin 1 -> upper bank switch pin 3 |
| C7-6 | D402 | ORG/VIO | LIN BUS CBC 2 | SP300 (SSV) -> XY7001A pin 9 -> SP1912 (w/ rain sensor) / SP106 (w/o rain sensor): rain light sensor module pin 3, inside rear view mirror pin 1, humidity sensor pin 2 |
| C5-45 | D403 | ORG/DK BLU | LIN BUS CBC 3 | SP2433 (right front door sill): XY2120A pin 10 -> I6742A pin 5 -> rear camera pin 5; XY5020A pin 26 -> SP300 (premium) -> steering column control module C1-1 |

### LIN nodes

| Module (location) | Pin | Circuit | Wire | Function (as printed) | Connects to |
|-------------------|-----|---------|------|----------------------|-------------|
| Intelligent battery sensor (on battery negative post) | C1-1 | D401 | ORG | LIN BUS 1 | XY5020A pin 43 -> SP999 -> BCM C7-7 |
| Upper bank switch (location not printed) | 3 | not printed | ORG | LIN BUS 1 | EXCEPT SSV: XY7402B pin 1 -> ORG -> SP999 -> BCM C7-7. SSV: XY7402C pin 3 -> ORG (or ORG/VIO) -> SP300 (SSV) on the LIN BUS CBC 2 wire |
| Rain light sensor module (w/ rain sensor, top center of windshield) | 3 | D402 | ORG/VIO | LIN BUS CBC 2 | SP1912 -> XY7001A pin 9 -> BCM C7-6 |
| Inside rear view mirror (location not printed) | 1 | D402 | ORG/VIO | LIN BUS CBC 2 | SP1912 / SP106 -> XY7001A pin 9 -> BCM C7-6 |
| Humidity sensor (top center of windshield) | 2 | D402 | BLK/VIO | LIN BUS CBC 2 | SP1912 / SP106 -> XY7001A pin 9 -> BCM C7-6 |
| Rear camera (center of liftgate) | 5 | D403 | BLU (ORG/DK BLU on the body side of I6742A) | LIN BUS CBC 3 | I6742A pin 5 -> XY2120A pin 10 -> SP2433 -> BCM C5-45 |
| Steering column control module (steering column) | C1-1 | D403 | ORG/DK BLU | LIN BUS CBC 3 | SP300 (premium) -> XY5020A pin 26 -> SP2433 -> BCM C5-45 |
| Wireless charging pad module (center console) | 4 | D402 | ORG/VIO (ORG/DK BLU after XY7402C) | LIN BUS CBC 2 | XY7402C pin 3 -> ORG/DK BLU -> SP300 (premium), which is on the D403 LIN BUS CBC 3 wire |
| Steering column control module | C3-4 | D592 | TAN (or BLU/RED) | LIN BUS | Speed control switch (EXCEPT SRT) / right steering wheel switch (SRT) pin 4 |
| Steering column control module | C3-6 | D594 | BLU (or RED/BLK) | LIN BUS | Left steering wheel switch pin 8 |
| Speed control switch (EXCEPT SRT) / right steering wheel switch (SRT) | 4 | D592 | TAN (or BLU/RED) | LIN BUS | Steering column control module C3-4 |
| Left steering wheel switch | 8 | D594 | BLU (or RED/BLK) | LIN BUS | Steering column control module C3-6 |
| Shift lever assembly | C2-3 | not printed | WHT | LIN BUS | PRNDM indicator pin 3 |
| PRNDM indicator | 3 | not printed | WHT | LIN BUS | Shift lever assembly C2-3 |
| Powertrain control module (right front of engine compartment) | C1-55 | D511 | WHT/TAN | LIN BUS | Air cooler charge coolant pump pin 4 |
| Air cooler charge coolant pump (right front of engine compartment) | 4 | D511 | WHT/TAN | LIN BUS | Powertrain control module C1-55 |
| Driver door module (in driver door) | C5-3 | D903 | GRN/BLU | LIN BUS | Driver window/door lock switch pin 10 |
| Driver door module | C5-4 | D512 | GRY/YEL | LIN BUS DOOR SW MOD RTN | Driver window/door lock switch pin 9 |
| Driver window/door lock switch | 10 | D903 | GRN/BLU | LIN BUS | Driver door module C5-3 |
| Driver window/door lock switch | 9 | D512 | GRY/YEL | LIN BUS DOOR SW MOD RTN | Driver door module C5-4 |
| Right front lamp assembly | C1-12 | not printed | WHT/ORG | LIN LIGHTING | Left front lamp assembly pin 1 |
| Left front lamp assembly | 1 | not printed | WHT/ORG | LIN LIGHTING | Right front lamp assembly C1-12 |
| Right front lamp assembly | C1-4 | not printed | WHT/VIO | RH LIN BUS LIGHTING SIG | Right front lamp assembly C2-1 |
| Right front lamp assembly | C2-1 | not printed | WHT/VIO | RH LIN BUS LIGHTING SIG | Right front lamp assembly C1-4 |

### Security K line

| Module (location) | Pin | Circuit | Wire | Function (as printed) | Connects to |
|-------------------|-----|---------|------|----------------------|-------------|
| Radio frequency hub module (behind left quarterpanel) | C1-10 | D122 | WHT/GRN | SECURITY K LINE COMM | XY5010A pin 8 -> keyless ignition node module pin 5 |
| Keyless ignition node module (left center of dash) | 5 | D122 | WHT/GRN | SECURITY K LINE COMM | XY5010A pin 8 -> radio frequency hub module C1-10 |

## Splices and grounds

- SP202, SP203, SP404, SP406 — right center of dash, in instrument panel harness (w/ global telematics box): CAN IHS (+) AT, CAN IHS (-) AT, CAN C (+) AT, CAN C (-) AT.
- SP300 — right end of dash, in instrument panel harness. Drawn twice: marked (PREMIUM) on the ORG/DK BLU LIN BUS CBC 3 wire with the wireless charging pad branch, and marked (SSV) on the ORG/VIO LIN BUS CBC 2 wire with the upper bank switch branch.
- SP999 — right end of dash, in instrument panel harness: LIN BUS 1.
- SP2433 — right front door sill: LIN BUS CBC 3.
- SP1912 (w/ rain sensor) / SP106 (w/o rain sensor) — right "A" pillar, in mirror harness: LIN BUS CBC 2.
- SP2450 — location not printed: PNK/GRN run/start feed from fuse 88.
- SP8041 — location not printed: BLK/BLU Z912 grounds of security gateway module C2-4, star CAN IHS IP connector C1-3 and star CAN C IP connector C1-3, to G912A.
- G911A — under center console: data link connector pins 4 and 5.
- G912A — under center console: security gateway module C1-6 (direct) and SP8041.
- G909A — right rear of engine compartment: star CAN C dash connector C1-3.
- G923A — base of left "D" pillar: star CAN IHS body connector C12-1.

## Notes

- Variant key printed on sheet 916154: 1 = w/ active damping, 2 = w/o active damping, 3 = except SSV, 4 = SSV.
- No termination resistor is drawn anywhere in this diagram, inside or outside a module or star connector.
- The star connectors are drawn as rows of two-pin ports with no internal detail. The ground wire on port C1 pin 3 (IP stars and dash star) and port C12 pin 1 (body star) is the only non-bus wire on them.
- The wireless charging pad module terminal is printed LIN BUS CBC 2 with circuit D402, but its wire joins SP300 (premium) on the D403 LIN BUS CBC 3 wire.
- XY7402C pin 3 is used by the wireless charging pad module wire (sheet 916153) and by the SSV upper bank switch wire (sheet 916154).
- The upper bank switch terminal is printed LIN BUS 1 in both branches; in the SSV branch its wire joins the LIN BUS CBC 2 wire at SP300.
