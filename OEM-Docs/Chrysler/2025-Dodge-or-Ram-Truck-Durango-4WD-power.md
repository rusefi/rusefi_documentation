# 2025 Dodge Durango 4WD — power distribution

Transcribed from [2025-Dodge-or-Ram-Truck-Durango-4WD-power.pdf](2025-Dodge-or-Ram-Truck-Durango-4WD-power.pdf) (ALLDATA "Power Distribution" wiring diagram, Power and Ground Distribution, Electrical - Interactive Color (Non OE), diagrams 1-6 of 6 = PDF pages 2-7, sheets 916048-916053).

The source is filed under "2025 Dodge or Ram Truck Durango 4WD V6-3.6L", but the drawing is shared across the model range: branches are marked 3.6L / except 3.6L, 5.7L, 6.2L supercharged, SRT / except SRT, SSV / except SSV (police full console / police mini console), heavy duty / light duty cooling, base / premium, and with / without start/stop, global telematics box, video entertainment, ventilated seats, charging USB port and rain sensor. Those markings are carried into the tables below.

Scope: battery, auxiliary battery, remote jump positive post, the power distribution center assembly (PDC, right side of engine compartment), the auxiliary power distribution center assembly (under passenger's seat), the in-line radio fuse, and the first load on every fused output. Load-side circuits beyond the first connection (lamps, motors, data lines) belong to other diagrams.

Boxes covered:

| Box | Location (as printed) | Connectors shown | Contents shown |
|-----|-----------------------|------------------|----------------|
| Power distribution center assembly (PDC) | Right side of engine compartment | C1, C3, C4, C5, C6, C7 and the battery feed stud | Fuses 3-104, three circuit breakers, 30 relays |
| Remote jump positive post | Right rear of engine compartment | C2 (feed), C3 (output), fused pins 1-5 | Fuses 1-5 (30-150 A) |
| Auxiliary power distribution center assembly | Under passenger's seat | pins 1, 2, 3, 4, 14 | Fuse IBS, fuse RADIO, fuel pump relay (6.2L supercharged) |
| Radio fuse | In line between SP2422 and SP2548 (under right front passenger's seat, in body harness) | — | One 20 A fuse |

Conventions used below:

- Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark).
- Chrysler circuit codes are printed on only a few wires of this diagram (A910, A401, D39, D40, D122, D402, F781, G201, P801, P802, P805, P806, Z911, Z919). The Circuit column is "—" where no code is printed.
- "Feed" is the supply side of the fuse inside the box: **battery** = hot at all times (internal bus from the PDC battery stud), or the output (pin 87) of the named relay.
- The diagram prints a PDC connector name beside the last pin of each dash-linked group of pins. Pins without their own label are assigned here to the connector name printed at the end of their dashed link line. No pin number is repeated within a connector under that reading; see [Unresolved and ambiguous items](#unresolved-and-ambiguous-items).
- Names such as XY5020A, I6634A are in-line harness connectors; SPxxxx / Sxxxx / SAxxxx / SFxxxx are splices; Gxxxx are grounds.
- Fuses, relays, pins and loads that are not listed are not shown in this diagram.

## Battery, generator and main feeds (diagrams 1 and 3)

Battery positive terminal, all RED:

| From battery (+) | Goes to |
|------------------|---------|
| RED | PDC battery feed stud (internal hot-at-all-times bus) |
| RED | Remote jump positive post connector C2 |
| RED (without start/stop system) | XY300A pin 1 -> RED -> SP2422 -> ORG -> radio fuse (20 A) -> ORG -> SP2548 |
| RED | Intelligent battery sensor feed (see [Auxiliary power distribution center](#auxiliary-power-distribution-center-assembly-diagram-6)) |

The battery negative terminal is drawn without a wire in this diagram.

Auxiliary battery (with start/stop system): positive RED to the PDC battery feed stud; with start/stop system the XY300A pin 1 / SP2422 radio fuse feed is taken from the auxiliary battery positive instead of the main battery; negative BLK to G918A (right front door sill).

PDC battery feed stud, external RED wires:

| Wire at the PDC stud | Goes to |
|----------------------|---------|
| RED | Battery (+) |
| RED | Auxiliary battery (+) (with start/stop system) |
| RED | Power control relay (3.6L) connector C3 pin 1, FUSED B (+) |
| RED (except 3.6L) | Remote jump positive post connector C3 |
| RED (except 3.6L) | SP2586 -> RED to starter; SP2586 -> RED (or TAN) -> SP2168 (5.7L) -> TAN to generator |

Starter and generator feed, 3.6L: remote jump positive post C3 -> RED -> SP2585 (right rear of engine, in positive battery harness) -> RED to starter; SP2585 -> RED -> SP301 -> BLU -> SP300 -> RED to generator (SP301 and SP300: right side of engine compartment, in positive battery harness).

Power control relay (3.6L), right rear of engine compartment:

| Connector-pin | Wire | Function (as printed) | Connects to |
|---------------|------|-----------------------|-------------|
| C3-1 | RED | FUSED B (+) | PDC battery feed stud |
| C2-1 | RED | FUSED B (+) | Remote jump positive post pin 5, fuse 5 (150 A) |
| C1-1 | DK GRN/TAN | STOP/START RLY CTRL | PDC C3 pin 37, PCR control relay (3.6L) pin 87 |
| 2 | BLK | GND | G909A (right rear of engine compartment) |

### Radio feed

SP2548 (under right front passenger's seat, in body harness) -> RED -> XY5020A pin 55 -> RED, which divides:

- direct RED to radio C1 pin 44;
- without global telematics box: SP601 (right end of dash, in instrument panel harness) -> screen center stack display C1 pin 1 and radio C1 pin 10;
- with global telematics box: SP306 (right end of dash, in instrument panel harness) -> global telematic box module C1 pin 3 and radio C1 pin 10.

Except 6.2L supercharged the feed comes from the in-line radio fuse through SP2548. On 6.2L supercharged it is drawn coming from the auxiliary power distribution center fuse RADIO (20 A) through XY301A pin 1.

## Remote jump positive post (diagram 3)

Right rear of engine compartment. Fed at connector C2 by a RED wire from battery (+); all fuses are hot at all times. Connector C3 is the unfused output to the starter/generator splice SP2585 (3.6L) or to the PDC battery feed stud (except 3.6L).

| Fuse/Relay | Rating | Feed | Output connector-pin | Circuit | Wire | Load (as printed) |
|------------|--------|------|----------------------|---------|------|-------------------|
| Fuse 1 | 30 A | battery | pin 1 | — | RED | PDC C3 pin 21 -> PDC fuse 7 (30 A) -> starter solenoid 1 relay (3.6L) / starter solenoid 2 relay (except 3.6L) pin 30 |
| Fuse 2 | 60 A | battery | pin 2 | — | — | (NOT USED) |
| Fuse 3 | 100 A | battery | pin 3 | — | RED | EPS module C1 pin 1 |
| Fuse 4 | 100 A | battery | pin 4 | — | RED | Radiator cooling fan module (heavy duty) pin 1 |
| Fuse 5 | 150 A | battery | pin 5 | — | RED | Power control relay (3.6L) C2 pin 1 |

## Power distribution center assembly (diagrams 1-6)

Right side of engine compartment. Fuse numbers in this box are distinct from the remote jump positive post fuse numbers (both boxes have a fuse 3 and a fuse 4).

### Fuses and circuit breakers

| Fuse/Relay | Rating | Feed | Output connector-pin | Circuit | Wire | Load (as printed) |
|------------|--------|------|----------------------|---------|------|-------------------|
| Fuse 3 | 60 A | battery | internal | — | — | Radiator fan high relay pin 30 and radiator fan low relay pin 30 (3.6L & 5.7L light duty) |
| Fuse 4 | 60 A | battery | C4-1 | — | TAN/RED | Anti-lock brakes module pin 1 (except SRT) |
| Fuse 5 | 20 A | ignition run 3 relay | C5-42 | — | PNK | XY23A pin 4 (upfitter access) |
| Fuse 6 | 40 A | battery | C3-1 | — | TAN/RED | Anti-lock brakes module pin 1 (SRT) |
| Fuse 7 | 30 A | remote jump positive post fuse 1 (30 A), in at C3-21 (RED) | internal | — | — | Starter solenoid 1 relay (3.6L) / starter solenoid 2 relay (except 3.6L) pin 30 |
| Fuse 10 | 40 A | battery | C7-22 | — | RED | Body control module C3 pin 4 |
| Fuse 11 | 30 A | battery | C6-1 | — | TAN/RED | Except SSV: XY5020A pin 56 -> trailer tow module C1 pin 3. SSV: I3822A pin 4 -> (BLUNT CUT) |
| Fuse 12 | 40 A | battery | C7-1 | — | RED/GRY | Body control module C3 pin 3 |
| Fuse 14 | 40 A | battery | C6-21 | — | VIO/RED | Body control module C2 pin 3 |
| Fuse 15 | 40 A | battery | C6-22 | — | RED/BLU | XY6020A pin 5 -> charge air cooler coolant pump (6.2L supercharged) pin 2 |
| Fuse 17 | 20 A | ignition run 4 relay | C1-7 | — | PNK/GRY | XY8120A pin 12 -> XY6020A pin 11 -> XY23A pin 5 (upfitter access) |
| Fuse 18 | 20 A | battery | C3-23 | — | VIO/RED | XY6020A pin 12 -> XY23A pin 2 (SSV) |
| Fuse 19 | 20 A | battery | internal | — | — | Ignition run 5 relay pin 30; 3rd row headrest release relay pin 30 |
| Fuse 20 | 30 A | battery | C5-26 | — | RED | XY1121A pin 8 -> passenger door module C3 pin 1 |
| Fuse 22 | 20 A | battery | C3-3 | — | RED | Powertrain control module C1 pin 96 |
| Fuse 23 | 30 A | battery | C5-3 | — | RED | Body control module C3 pin 1 |
| Fuse 24 | 30 A | battery | C5-5 | — | RED | XY1111A pin 7 -> driver door module C3 pin 1 |
| Fuse 25 | 30 A | battery | internal | — | — | Wiper on/off relay pin 87 |
| Fuse 26 | 30 A | battery | C3-26 | — | RED/DK GRN | SP8110 (except SRT) -> anti-lock brakes module pin 25 (SRT) / pin 30 (except SRT) |
| Fuse 30 | 30 A | battery | C7-38 | — | RED/VIO | XY4300A pin 1 -> 7-way trailer tow wiring pin E |
| Fuse 31 | 20 A | battery | C7-40 | — | WHT/RED | XY23A pin 3 (SSV) |
| Fuse 32 | 30 A | battery | C7-41 | — | RED/GRY | XY6020A pin 1 -> XY8210A pin 1 (except SRT) / XY8200A pin 1 (SRT) -> drivetrain control module C2 pin C |
| Fuse 33 | 20 A | battery | C7-20 | — | GRY/RED | XY23A pin 1 (SSV) |
| Fuse 34 | 30 A | battery | C6-19 | — | RED | XY4300A pin 2 -> electronic limited slip differential module C3 pin 10 |
| Fuse 35 | 30 A | battery | C6-17 | — | RED (or VIO/RED) | SSV: RED -> vehicle system interface module C1 pin 1. Except SSV: VIO/RED -> XY200A pin 1 -> I481A pin 4 -> RED -> sunroof motor pin 10 |
| Fuse 38 | 30 A | battery | C6-38 | A401 | RED/GRN | I6634A pin B7 -> inverter module pin 4 (FUSED B (+)) |
| Fuse 39 | 30 A | battery | C6-24 | — | DK GRN/RED | Power liftgate module C2 pin 1 |
| Fuse 40 | 10 A | run 2 relay | C1-10 | — | PNK/YEL | SP2526 -> right front lamp assembly C1 pin 11 and C2 pin 4; left front lamp assembly pins 3 and 4 |
| Fuse 44 | 10 A | battery | C5-27 | — | GRY/RED | XY5020A pin 19 -> data link connector pin 16 |
| Fuse 45 | 5 A | battery | C5-29 | — | RED/ORG | XY5020A pin 35 -> gateway security module C2 pin 5 |
| Fuse 49 | 10 A | battery | C5-25 | — | RED/DK GRN | SP2426 -> XY5020A pin 14 -> S2425 -> integrated center stack switch bank module pin 4 and A/C heater module C1 pin 2; SP2426 -> XY200A pin 19 -> RED -> rear A/C heater control pin 10 |
| Fuse 50 | 20 A | battery | C5-28 | — | RED | XY6020A pin 23 -> XY3000A pin 9 -> electronic limited slip differential module C3 pin 9 |
| Fuse 51 | 15 A | battery | C5-30 | A910 | RED | SP2419 -> radio frequency hub module C1 pin 8 (FUSED B (+)); SP2419 -> XY5020A pin 17 -> keyless ignition node module pin 6 (FUSED B (+)) |
| Fuse 58 | 15 A | battery | internal | — | — | Left HID headlamps relay pin 30 |
| Fuse 59 | 15 A | battery | C3-15 | — | RED/TAN | XY6020A pin 5 -> XY200A pin 1 (SSV) |
| Fuse 60 | 15 A | battery | C3-13 | — | YEL/RED | I9030A pin 20 -> transmission control module pin 13 |
| Fuse 66 | 10 A | run/accessory 1 relay | C5-9 | — | PNK/YEL | SP2451 -> XY200A pin 23 -> I481A pin 2 -> sunroof motor pin 6; SP2451 -> XY5020A pin 20 -> SP2452 -> see [fuse 66 branches](#fuse-66-branches-at-sp2452) |
| Fuse 67 | 15 A | battery | C5-11 | — | RED/BRN | XY5020A pin 12 -> S2423 -> see [fuse 67 branches](#fuse-67-branches). Premium only: SP2424 -> I500A pin D -> RED -> rear charging USB port pin 1 (FUSED B (+)) |
| Fuse 69 | 15 A | battery | C5-15 | — | RED/WHT | Except SSV: XY200A pin 12 -> S7 -> left spot lamp pin A and right spot lamp pin A. SSV: XY200A pin 16 (upfitter access) |
| Fuse 71 | 30 A | battery | C5-19 | — | RED | Except SRT: radio amplifier C1 pin 12. SRT: SP2525 -> radio amplifier C2 pin 12 and C1 pin 12 |
| Fuse 73 | 15 A | battery | internal | — | — | Right HID headlamps relay pin 30 |
| Fuse 75 | 10 A | run/start relay | internal | — | — | PCR control relay (3.6L) pin 30; starter solenoid 2 relay (3.6L) pin 86 |
| Fuse 76 | 10 A | run/start relay | C3-32 | — | PNK/WHT | Anti-lock brakes module pin 9 (except SRT) / pin 31 (SRT) |
| Fuse 77 | 10 A | run/start relay | C3-30 | — | PNK/GRN | SP1955 -> XY3000A pin 7 -> electronic limited slip differential module C3 pin 12; SP1955 -> XY8210A pin 2 -> drivetrain control module C1 pin 4 |
| Fuse 78 | 10 A | run/start relay | C3-28 and C6-8 | — | PNK/VIO | C3-28 -> powertrain control module C1 pin 23; C6-8 -> XY6020A pin 37 -> EPS module C2 pin 3 |
| Fuse 80 | 10 A | battery | C7-28 | — | — | (NOT USED) |
| Fuse 82 | 10 A | battery | C7-32 | — | RED/TAN | XY5020A pin 21 -> steering column control module C1 pin 5 |
| Fuse 83 | 10 A | battery | C7-34 | — | — | (NOT USED) |
| Fuse 84 | 15 A | battery | C7-36 | — | RED/DK BLU | XY5020A pin 16 -> cluster pin 10 |
| Fuse 85 | 10 A | run 2 relay | C6-15 | — | PNK/YEL | Occupant restraint controller module C1 pin 20 |
| Fuse 86 | 10 A | run/start relay | C6-13 | — | PNK/GRN | XY5020A pin 7 -> occupant restraint controller module C1 pin 10 |
| Fuse 88 | 15 A | run/start relay | C6-7 | — | PNK/GRN | XY5020A pin 1 -> SP2450 -> security gateway module C1 pin 7; cluster pin 20; trailer tow module C2 pin 10 |
| Fuse 91 | 20 A | position 1: battery; position 2: run/accessory 2 relay | C7-5 | — | PNK/YEL | Rear power outlet pin 1 (FSD IGN SW OUT (RUN-ACC)) |
| Fuse 92 | 10 A | run/accessory 2 relay | C7-7 | — | PNK/YEL | I500A pin A -> S003A -> rear IP power outlet pin 1 (FUSED IGN SW OUTPUT); second row console lamp pin 1 |
| Fuse 93 | 20 A | run/accessory 2 relay | C7-9 | — | PNK/YEL | SP2454 -> XY5020A pin 40 -> cigar lighter pin 1 (FUSED IGN SW O/P); with charging USB port: SP2454 -> I500A pin F -> rear charging USB port pin 3 (FUSED IGN SW O/P) |
| Fuse 94 | 10 A | battery | C7-11 | — | RED/YEL | XY5020A pin 32 -> see [fuse 94 branches](#fuse-94-branches) -> upper bank switch pin 1; shift lever assembly C1 pin 1 (SSV) |
| Fuse 95 | 10 A | run 1 relay | C7-13 | — | PNK/YEL | SP2442 -> XY2120A pin 6 -> I6742A pin 1 -> RED -> rear camera pin 1; SP2442 -> XY4000A pin 12 -> I701A pin J -> S04A -> right rear blind spot sensor pin 4 and left blind spot sensor pin 4 (if equipped) |
| Fuse 96 | 10 A | run 1 relay | C7-15 | — | PNK/YEL | SP8111 -> PDC C5-16, C6-11, C5-4 (coils of ignition run 3, 4, 5 relays); I6634A pin A11 -> I9005A pin 11 (with video entertainment system) -> I335A pin B9 -> I337A pin 1 -> SF928 -> left rear heated seat switch pin 1 and right rear heated seat switch pin 1 |
| Fuse 97 | 20 A | run 1 relay | C7-17 | — | PNK/TAN | I6634A pin B4 -> PNK/YEL -> SF922A -> heated seats module C3 pin 6 and C4 pin 2 |
| Fuse 98 | 20 A | run 1 relay | C7-19 | — | PNK/YEL | SP2441 -> see [fuse 98 branches](#fuse-98-branches) |
| Fuse 99 | 10 A | run/start relay | C6-36 | — | PNK/GRN | SP2448 -> see [fuse 99 branches](#fuse-99-branches-at-sp2448) |
| Fuse 100 | 10 A | run 2 relay | C6-34 | — | PNK/YEL | XY6020A pin 33 -> XY8200A pin 8 -> SP2589 -> active damping control module C2 pins 14 and 47 |
| Fuse 101 | 15 A | run 2 relay | C6-32 | — | PNK/BLU | SP2444 -> I6634A pin B5 -> occupant classification module pin 1; SP2444 -> XY5020A pin 13 -> S2443 -> in-car temperature sensor pin 3; S2443 -> XY7001A pin 1 -> humidity sensor pin 3 |
| Fuse 103 | 10 A | run 2 relay | C6-28 | — | PNK | External jumper back to PDC C7-8 -> rear blower motor relay pin 85 |
| Fuse 104 | 20 A | battery | C6-26 | — | RED | XY5020A pin 39 -> SP2421 -> XY7402B pin 2 -> front IP power outlet pin 1 (FUSED B (+)); SP2421 -> XY7402A pin 12 -> I337A pin 7 -> front charging USB port pin 1 (FUSED B (+)) |
| Power window circuit breaker 1 | N/A (as printed) | run/accessory 1 relay | C5-23 | — | PNK/YEL | XY1111A pin 9 -> driver window/door lock switch pin 2 |
| Driver power seat circuit breaker 2 | 25 A | battery | C5-40 | — | RED | I6633A pin A7 -> SA942A -> driver lumbar seat adjuster switch pin G; driver seat switch pin 6; memory seat module C1 pin 8 |
| Passenger power seat circuit breaker 3 | 25 A | battery | C6-2 | — | RED | I6634A pin A7 -> SA949A -> passenger seat switch pin 6; passenger lumbar seat adjuster switch pin F |

#### Fuse 66 branches at SP2452

SP2452 (right end of dash), PNK/YEL:

- XY7402A pin 24 -> I337A pin 8 -> front charging USB port pin 3 (FUSED IGN SW O/P);
- XY7402C pin 1 -> F781 -> wireless charging pad module pin 1 (IGN RUN ACC);
- XY7001A pin 11 -> SP700 (with rain sensor) -> rain light sensor module pin 1 (with rain sensor) and inside rear view mirror pin 5.

#### Fuse 67 branches

S2423 (front of center console, in instrument panel harness), RED/BRN:

- XY7402C pin 2 -> media port C1 pin 1;
- XY7402A pin 1 -> SA383 (in center console harness) -> video module C2 pin 1; external disc module pin 1 (RED/BRN, or RED); I336A pin A1 -> RED -> left seatback video screen module C3 pin 1; I335A pin A1 -> RED -> right seatback video screen module C3 pin 1.

Between PDC C5-11 and XY5020A pin 12 the wire is drawn in two versions, BASE (straight through) and PREMIUM (through splice SP2424, right front door sill, which adds the rear charging USB port FUSED B (+) feed).

#### Fuse 94 branches

After XY5020A pin 32, RED/YEL:

- Except SSV: XY7402B pin 7 -> upper bank switch pin 1.
- SSV, police full console: SP8112 -> XY7402B pin 7 -> SA195 (in center console harness) -> upper bank switch pin 1 and shift lever assembly C1 pin 1.
- SSV, police mini console: SP8112 -> XY7402C pin 1 -> upper bank switch pin 1; SP8112 -> shift lever assembly C1 pin 1.

#### Fuse 98 branches

SP2441 (right front door sill), PNK/YEL:

- I6633A pin A9 -> SF921A (driver's seat cushion harness, with driver seat cushion harness) -> left seat cushion vent motor pin 1 (with ventilation); SF921A -> I334A pin 9 -> left seat back vent motor pin 1 (with ventilation);
- I6634A pin A8 -> SF921A (passenger's seat cushion harness, with ventilation & passenger seat cushion harness) -> right seat cushion vent motor pin 1; I333A pin 9 -> right seat back vent motor pin 1 (with ventilation); heated seats module C1 pin 4.

#### Fuse 99 branches at SP2448

SP2448 (right kick panel), PNK/GRN:

- park assist module C1 pin 1;
- XY5020A pin 15 -> SP2449 (right end of dash) -> A/C heater module C1 pin 1; SP2449 -> XY7001A pin 10 -> forward facing camera pin 12;
- XY200A pin 2 -> rear A/C heater control pin 20;
- XY6020A pin 21 -> XY8120A pin 9 -> XY850A pin 16 -> adaptive cruise control module pin 8.

### Relays drawn with coil and contact

Pin numbers as printed (30 = contact feed, 87 = contact output, 85/86 = coil).

| Relay | Pin 30 | Pin 87 | Pin 85 | Pin 86 |
|-------|--------|--------|--------|--------|
| Run/accessory 1 relay | battery | Fuse 66; power window circuit breaker 1 | PDC C7-25, GRN/BLU -> body control module C5 pin 6 | Relay ground bus -> PDC C1-12 |
| Run/accessory 2 relay | battery | Fuse 91 (position 2); fuses 92, 93 | PDC C7-6, GRN/GRY -> body control module C5 pin 9 | Relay ground bus -> PDC C1-12 |
| Run 1 relay | battery | Fuses 95, 96, 97, 98; blower motor relay pin 85; run 2 relay pin 85 | PDC C7-12, BRN/ORG -> body control module C5 pin 36 | Relay ground bus -> PDC C1-12 |
| Run 2 relay | battery | Fuses 40, 85, 100, 101, 103 | Run 1 relay pin 87 | Relay ground bus -> PDC C1-12 |
| Run/start relay | battery | Fuses 75, 76, 77, 78, 86, 88, 99; vacuum pump relay pin 86; A/C clutch relay pin 86; fuel pump relay pin 85; radiator fan high relay pin 86; radiator fan low relay pin 86 | Relay ground bus -> PDC C1-12 | PDC C6-10, BRN -> XY6020A pin 36 -> body control module C1 pin 18 |
| Ignition run 3 relay | battery | Fuse 5 | PDC C5-35, BLK -> SP2505 -> G919A | PDC C5-16, PNK/YEL <- SP8111 (fuse 96) |
| Ignition run 4 relay | battery | Fuse 17 | PDC C1-12, BLK -> SP2547 -> G909A | PDC C6-11, PNK/YEL <- SP8111 (fuse 96) |
| Ignition run 5 relay | Fuse 19 | PDC C5-2, PNK/DK BLU -> XY23A pin 6 (upfitter access) | PDC C5-4, PNK/YEL <- SP8111 (fuse 96) | PDC C5-6, BLK -> SP2505 -> G919A |
| PCR control relay (3.6L) | Fuse 75 | PDC C3-37, DK GRN/TAN -> power control relay (3.6L) C1 pin 1 (STOP/START RLY CTRL) | PDC C3-39, DK GRN -> I9030A pin 11 -> powertrain control module C2 pin 29 | Internal link to starter solenoid 2 relay (3.6L) pin 30 and starter solenoid 1 relay (3.6L) pin 87 |

Relay ground bus: pin 86 of the run/accessory 1, run/accessory 2, run 1 and run 2 relays and pin 85 of the run/start relay share one internal conductor that leaves the PDC at C1 pin 12 (BLK) -> SP2547 -> G909A (right rear of engine compartment).

The run 1, run/accessory 1, run/accessory 2 and run/start relay coils are switched by the body control module on the pins listed. The run 2 relay coil and the blower motor relay coil are fed by the run 1 relay output. The ignition run 3/4/5 relay coils are fed through fuse 96 (run 1 relay output) and the external splice SP8111 (right side of engine compartment, in body harness).

### Relays shown only as terminals

Only the listed terminals appear in this diagram; the remaining terminals of each relay are not shown in this diagram.

| Relay | Terminals shown |
|-------|-----------------|
| Blower motor relay | 30 battery; 85 run 1 relay pin 87 |
| Rear blower motor relay | 30 battery; 85 PDC C7-8, PNK, jumpered from C6-28 (fuse 103) |
| 3rd row headrest release relay | 30 fuse 19 (diagram 4); 85 battery bus (diagram 1) |
| Vacuum pump relay | 30 battery; 86 run/start relay pin 87 |
| Auto shut down relay | 30 battery; 85 battery |
| A/C clutch relay | 30 battery; 86 run/start relay pin 87 |
| Fuel pump relay (except 6.2L supercharged) | 30 battery; 85 run/start relay pin 87 |
| Radiator fan high relay (3.6L & 5.7L light duty) | 30 fuse 3 (60 A); 86 run/start relay pin 87 |
| Radiator fan low relay (3.6L & 5.7L light duty) | 30 fuse 3 (60 A); 86 run/start relay pin 87 |
| Starter solenoid 1 relay (3.6L) | 30 fuse 7 (30 A); 87 internal link to PCR control relay pin 86 and starter solenoid 2 relay pin 30 |
| Starter solenoid 2 relay (3.6L) | 30 internal link to PCR control relay pin 86 and starter solenoid 1 relay pin 87; 86 fuse 75 |
| Starter solenoid 2 relay (except 3.6L) | 30 fuse 7 (30 A) |
| Rear window defogger relay | 30 battery |
| Horn relay | 30 battery |
| Right trailer tow relay | 30 battery; 85 battery |
| Left trailer tow relay | 30 battery; 85 battery |
| Trailer tow backup lamp relay | 30 battery; 85 battery |
| Trailer tow park lamp relay | 30 battery; 85 battery |
| Rear wiper relay | 87 battery |
| Wiper on/off relay | 87 fuse 25 (30 A) |
| Left HID headlamps relay | 30 fuse 58 (15 A) |
| Right HID headlamps relay | 30 fuse 73 (15 A) |

### PDC connector pins shown

| Connector | Pins shown in this diagram |
|-----------|----------------------------|
| C1 | 7, 10, 12 |
| C3 | 1, 3, 13, 15, 21, 23, 26, 28, 30, 32, 37, 39 |
| C4 | 1 |
| C5 | 2, 3, 4, 5, 6, 9, 11, 15, 16, 19, 23, 25, 26, 27, 28, 29, 30, 35, 40, 42 |
| C6 | 1, 2, 7, 8, 10, 11, 13, 15, 17, 19, 21, 22, 24, 26, 28, 32, 34, 36, 38 |
| C7 | 1, 5, 6, 7, 8, 9, 11, 12, 13, 15, 17, 19, 20, 22, 25, 28, 32, 34, 36, 38, 40, 41 |

Pins that are not fuse outputs: C1-12 relay ground; C3-21 feed in from remote jump positive post fuse 1; C3-37, C3-39 PCR control relay; C5-2, C5-4, C5-6, C5-16, C5-35, C6-11 ignition run relays; C6-10, C7-6, C7-12, C7-25 relay coil controls from the body control module; C7-8 rear blower motor relay coil.

## Auxiliary power distribution center assembly (diagram 6)

Under passenger's seat. Fed from battery (+) by RED through S01A (driver's seat cushion, in video screen jumper harness); this box is in circuit on 6.2L supercharged.

| Fuse/Relay | Rating | Feed | Output connector-pin | Circuit | Wire | Load (as printed) |
|------------|--------|------|----------------------|---------|------|-------------------|
| Fuse IBS | 5 A | battery, in at pin 3 (RED from S01A) | pin 4 | — | RED | XY301A pin 2 -> intelligent battery sensor C1 pin 2 |
| Fuse RADIO | 20 A | battery, in at pin 1 (RED from S01A) | pin 2 | — | RED | XY301A pin 1 -> radio feed (see [Radio feed](#radio-feed)) |
| Fuel pump relay (6.2L supercharged) | — | battery, in at pin 14 (RED from S01A) | — | — | — | Relay pin 30 only; other terminals not shown in this diagram |

Except 6.2L supercharged, the intelligent battery sensor C1 pin 2 is fed directly: battery (+) -> RED -> XY300A pin 2 -> RED -> sensor, with no fuse drawn.

## Loads with printed pin functions

| Component | Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----------|-----|---------|------|-----------------------|-------------|
| Rear power outlet | 1 | — | PNK/YEL | FSD IGN SW OUT (RUN-ACC) | PDC C7-5, fuse 91 |
| Rear power outlet | 3 | — | BLK | GND | G924A |
| Rear IP power outlet | 1 | — | PNK/YEL | FUSED IGN SW OUTPUT | S003A, fuse 92 |
| Rear IP power outlet | 3 | — | BLK | GND | S0001A -> G919A |
| Front IP power outlet | 1 | — | RED | FUSED B (+) | XY7402B pin 2 -> SP2421, fuse 104 |
| Front IP power outlet | 3 | — | BLK | GND | SZ911 -> G911A |
| Cigar lighter | 1 | — | PNK/YEL | FUSED IGN SW O/P | XY5020A pin 40 -> SP2454, fuse 93 |
| Cigar lighter | 3 | — | BLK | GND | G911A |
| Rear charging USB port | 1 | — | RED | FUSED B (+) | I500A pin D -> SP2424, fuse 67 (premium) |
| Rear charging USB port | 3 | — | PNK/YEL | FUSED IGN SW O/P | I500A pin F -> SP2454, fuse 93 |
| Rear charging USB port | 4 | — | BLK | GND | S0001A -> G919A |
| Front charging USB port | 1 | — | RED | FUSED B (+) | I337A pin 7 -> XY7402A pin 12 -> SP2421, fuse 104 |
| Front charging USB port | 2 | — | ORG/GRY | PANEL LAMP DRV | Interior lights system |
| Front charging USB port | 3 | — | PNK/YEL | FUSED IGN SW O/P | I337A pin 8 -> XY7402A pin 24 -> SP2452, fuse 66 |
| Front charging USB port | 4 | — | BLK | GND | SZ911 -> G911A |
| Wireless charging pad module (center console) | 1 | F781 | PNK/YEL | IGN RUN ACC | XY7402C pin 1 -> SP2452, fuse 66 |
| Wireless charging pad module | 4 | D402 | ORG/VIO | LIN BUS CBC 2 | Computer data lines system |
| Wireless charging pad module | 6 | Z911 | BLK | GND | SZ911 -> G911A |
| Radio frequency hub module (behind left quarterpanel) C1 | 8 | A910 | RED | FUSED B (+) | SP2419, fuse 51 |
| Radio frequency hub module C1 | 9 | G201 | VIO/BLU | IGN SW POS SIG | XY5010A pin 5 -> keyless ignition node module pin 4 |
| Radio frequency hub module C1 | 10 | D122 | WHT/GRN | SECURITY K LINE COMMUNICATION | XY5010A pin 8 -> keyless ignition node module pin 5 |
| Radio frequency hub module C1 | 11 | D40 | YEL | CAN C (-) | Computer data lines system |
| Radio frequency hub module C1 | 12 | D39 | DK BLU | CAN C (+) | Computer data lines system |
| Keyless ignition node module (left center of dash) | 3 | Z911 | BLK | GND | G911A |
| Keyless ignition node module | 4 | G201 | VIO/BLU | IGN SW POS SIG | Radio frequency hub module C1 pin 9 |
| Keyless ignition node module | 5 | D122 | WHT/GRN | SECURITY K LINE COMMUNICATION | Radio frequency hub module C1 pin 10 |
| Keyless ignition node module | 6 | A910 | RED | FUSED B (+) | XY5020A pin 17 -> SP2419, fuse 51 |
| Inverter module (under front passenger's seat) | 1 | P802 | GRN/ORG | 110V AC LINE 2 | I9005A pin 6 -> I335A pin B7 -> I337A pin 15 -> AC power outlet pin 6 |
| Inverter module | 4 | A401 | RED/GRN | FUSED B (+) | I6634A pin B7 -> PDC C6-38, fuse 38 |
| Inverter module | 5 | P801 | GRN | 110V AC LINE 1 | I9005A pin 7 -> I335A pin B8 -> I337A pin 13 -> AC power outlet pin 3 |
| Inverter module | 6 | P805 | GRN/BLU | 110V AC LINE 3 | I9005A pin 1 -> I335A pin B2 -> I337A pin 12 -> AC power outlet pin 1 (110 VOLT AC LINE 3) |
| Inverter module | 7 | P806 | GRN/WHT | INVERTER ST IND DRV | I9005A pin 2 -> I335A pin B3 -> XY7402A pin 9 -> XY5020A pin 45 -> body control module C6 pin 21 |
| Inverter module | 8 | Z919 | BLK | GND | SZ919A -> G929A |
| AC power outlet | 4 | — | GRN/BLU | INVERTER SW SIG | I337A pin 14 -> XY7402A pin 10 -> XY5020A pin 18 -> body control module C6 pin 35 |

Body control module pins appearing in this diagram: C1-18 (BRN, run/start relay coil); C2-3 (VIO/RED, fuse 14); C3-1 (RED, fuse 23); C3-3 (RED/GRY, fuse 12); C3-4 (RED, fuse 10); C5-6 (GRN/BLU, run/accessory 1 relay coil); C5-9 (GRN/GRY, run/accessory 2 relay coil); C5-36 (BRN/ORG, run 1 relay coil); C6-21 (GRN/WHT, INVERTER ST IND DRV); C6-35 (GRN/BLU, INVERTER SW SIG).

Powertrain control module pins appearing in this diagram: C1-96 (RED, fuse 22, hot at all times); C1-23 (PNK/VIO, fuse 78, run/start); C2-29 (DK GRN, PCR control relay (3.6L) coil pin 85).

## Grounds

| Ground | Location (as printed) | Served in this diagram |
|--------|-----------------------|------------------------|
| G909A | Right rear of engine compartment | PDC C1-12 via SP2547 (relay ground bus, ignition run 4 relay pin 85); power control relay (3.6L) GND |
| G911A | Under center console | Front charging USB port, wireless charging pad module and front IP power outlet via SZ911; cigar lighter; keyless ignition node module |
| G918A | Right front door sill | Auxiliary battery negative |
| G919A | Right "C" pillar | Rear IP power outlet and rear charging USB port via S0001A; PDC C5-35 and C5-6 via SP2505 (ignition run 3 relay pin 85, ignition run 5 relay pin 86) |
| G924A | Base of right "D" pillar | Rear power outlet |
| G929A | Under right side of passenger's seat | Inverter module via SZ919A |

## Splice locations

Locations as printed; splices without a printed location are listed at the end.

| Splice | Location (as printed) |
|--------|-----------------------|
| SP1955 | Right front of engine compartment, in headlamp & dash harness |
| SP2419, SP2424, SP2426, SP2441, SP2442, SP2451 | Right front door sill |
| SP2454 | Right front door sill (with charging USB port) |
| SP2421, S2425, S2443 | Right side of dash, in instrument panel harness |
| SP2422, SP2548 | Under right front passenger's seat, in body harness |
| S2423 | Front of center console, in instrument panel harness |
| SP2444, SP2448 | Right kick panel |
| SP2449, SP2452 | Right end of dash |
| SP306, SP601 | Right end of dash, in instrument panel harness |
| SP2450 | Center right of dash, in instrument panel harness |
| SP8112 | Center of dash, in instrument panel harness |
| SP2525 | Rear of left quarterpanel, in body harness |
| SP2526 | Right front of engine compartment |
| SP2585 | Right rear of engine, in positive battery harness |
| SP300, SP301 | Right side of engine compartment, in positive battery harness |
| SP2589 | Driver's door sill |
| SP700 | Right front headliner, in interior mirror jumper harness (with rain sensor) |
| SP8110 | Left front of engine compartment, in headlamp & dash harness (except SRT) |
| SP8111 | Right side of engine compartment, in body harness |
| S003A | Under rear of center console |
| S01A | Driver's seat cushion, in video screen jumper harness |
| S04A | Driver's seat back, in video screen jumper harness |
| S7 | Headliner harness |
| SA195, SA383 | In center console harness |
| SA942A, SF921A (driver side) | Driver's seat cushion harness |
| SA949A, SF921A (passenger side), SF922A | Passenger's seat cushion harness |
| SF928 | Rear console harness |
| SP2168 (5.7L), SP2505, SP2547, SP2586, S0001A, SZ911, SZ919A | No location printed |

## Unresolved and ambiguous items

- **PDC connector names for unlabelled pins.** The connector name is printed once per dash-linked pin group. The assignments in this document follow the dashed link lines; the pins affected are C3-1 (fuse 6), C3-15, C3-37, C3-39, C5-4, C5-6, C5-9, C5-11, C5-15, C5-16, C5-19, C5-25, C5-35, C6-1, C6-13, C6-15, C6-24, C6-32, C6-38, C7-5, C7-6, C7-7, C7-11, C7-12, C7-13, C7-19, C7-22, C7-25, C7-34, C7-40 and C7-41.
- **Power control relay (3.6L) GND pin 2.** The pin is drawn between the C3 and C1 labels; its connector name is not resolved.
- **Fuse 91 is drawn twice** (both 20 A), marked "position 1" (battery fed) and "position 2" (run/accessory 2 relay fed), both leading to PDC C7-5. It is read here as one fuse with two alternative cavities.
- **XY6020A pin 5 is printed on two different wires** in diagram 4: RED/BLU from fuse 15 (charge air cooler coolant pump, 6.2L supercharged) and RED/TAN from fuse 59 (SSV).
- **Module naming.** The same module is printed "SECURITY GATEWAY MODULE" (diagram 3, fuse 88, C1 pin 7) and "GATEWAY SECURITY MODULE" (diagram 4, fuse 45, C2 pin 5).
- **Off-page reference captions.** The captions name the nearest drawn component rather than the electrical source: references A ("from rear blower motor relay"), B ("from fuse 25"), C ("from A/C clutch relay" / "to fuse 82"), P ("from fuse 32" / "to fuse 22") and V ("from fuse 104") all continue the unfused battery bus of the PDC, not the output of the named fuse or relay.
- **Intelligent battery sensor feed** is drawn from the battery positive terminal; no connection to the battery negative terminal is shown in this diagram.
- **6.2L supercharged radio feed.** Diagram 1 draws both the in-line radio fuse (ending at SP2548) and, for 6.2L supercharged, the auxiliary power distribution center fuse RADIO as sources of the radio feed; diagram 5 captions the same feed "from splice SP2548". Whether the in-line radio fuse is fitted on 6.2L supercharged is not resolved by the diagram.
- **Fuse 97 "W/ VENTILATION" arrow** points at the heated seats module C3 pin 6 branch of SF922A; whether it also qualifies the C4 pin 2 branch is not resolved.
- **SP700 "(W/ RAIN SENSOR)"** is printed on the splice that also feeds the inside rear view mirror pin 5; the mirror feed without rain sensor is not drawn separately.
- **Generator feed, except 3.6L.** Printed "RED (OR TAN)" from SP2586, with SP2168 marked 5.7L and TAN from SP2168 to the generator.
- **Power window circuit breaker 1** rating is printed "N/A".
- **PDC C1-12** appears on two sheets with the same BLK wire to SP2547/G909A: as the outlet of the relay ground bus (diagram 1) and as ignition run 4 relay pin 85 (diagram 4). The internal connection between the two is not drawn.
