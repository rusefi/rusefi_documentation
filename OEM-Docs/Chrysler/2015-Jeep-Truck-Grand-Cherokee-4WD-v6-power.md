# 2015 Jeep Grand Cherokee 4WD V6-3.6L — power distribution

Transcribed from [2015-Jeep-Truck-Grand-Cherokee-4WD-v6-power.pdf](2015-Jeep-Truck-Grand-Cherokee-4WD-v6-power.pdf) (ALLDATA "Power Distribution" wiring diagram, Power and Ground Distribution, Electrical - Interactive Color (Non OE), diagram pages 1-5 = PDF pages 2-6, sheets 476677-476681; PDF page 1 carries only the title).

The source is titled for the 4WD V6-3.6L, but the drawing is shared across engines: several branches are marked 3.0L turbo diesel, 5.7L or 6.4L and are labelled that way below. The diagram shows the battery, the remote jump positive post, the power distribution center assembly (PDC), the auxiliary power distribution center and the first load on every fused output. It does not show the load side of most relays; a relay drawn with only some of its terminals is listed with only those terminals.

Assemblies covered:

| Assembly | Location (as printed) | Contents shown |
|----------|-----------------------|----------------|
| Battery | not printed | Positive feed to SP502, radio fuse branch |
| Radio fuse | not printed (in-line between SP211 and SP212) | One 20 A fuse |
| Remote jump positive post | Right rear of engine compartment | Fuses 1-5, unfused starter/generator output |
| Power distribution center assembly (PDC) | Right side of engine compartment | Fuses 3-104, circuit breakers 1-3, 27 relays, connectors C1, C3, C5, C6, C7 |
| Auxiliary power distribution center | Left rear of engine compartment | Fuses 1, 3, 6, 10; PTC 1/2/3 relays; SCR relay 1 |

Fuse numbers repeat between assemblies (fuses 1, 3, 6 and 10 exist in more than one box with different ratings), so every fuse below is named together with its box.

Most wires in this diagram carry only a colour; a Chrysler circuit code is given in the Circuit column only where one is printed (a dash means none is printed). Wire colours are abbreviated as in the source (BLK black, BRN brown, RED, YEL yellow, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; LT GRN / DK GRN light / dark green; LT BLU / DK BLU light / dark blue). Inline connectors are named as printed (I5020, I6020, I6634A, ...) with the terminal number after "pin". Fuses, relays, terminals and loads that are not listed are not shown in this diagram.

## Battery, generator and main feeds (diagram pages 1 and 5)

- **Battery positive** -> RED -> **SP502**. From SP502:
  - RED -> PDC battery input (no terminal number printed). This is the PDC hot-at-all-times bus.
  - RED -> remote jump positive post (off-page reference H).
  - RED -> active noise cancellation module (w/ ANC standalone) connector C2 pin 12. No fuse is drawn in this branch.
- **Battery positive** -> RED -> I300 pin 1 -> RED -> SP211 -> RED -> **radio fuse (20 A)** -> RED (or ORG) -> SP212 -> RED -> I5020 pin 30 -> RED -> radio connector C1 pin 44.
- **Remote jump positive post** internal bus feeds an unfused output and fuses 1-5 (table below). The unfused output (RED) runs to a splice — SP1180 (3.6L), SP2586 (5.7L and 6.4L) or SP1880 (3.0L turbo diesel) — and from there:
  - RED -> starter (terminal not numbered).
  - RED -> SP301 (3.6L) / SP2168 (5.7L) -> RED (or TAN) -> SP300 (3.6L and 5.7L) -> RED (or TAN) -> generator (terminal not numbered).
- The battery negative terminal is drawn without a wire. An intelligent battery sensor is fed from PDC fuse 52.

### Remote jump positive post fuses

All are hot at all times (fed from the battery through SP502).

| Fuse/Relay | Rating | Feed | Output connector-pin | Circuit | Wire | Load (as printed) |
|------------|--------|------|----------------------|---------|------|-------------------|
| Fuse 1 | 30 A | Hot at all times | Post pin 1 | — | RED | Auxiliary power distribution center pin B7 (auxiliary fuse 6) |
| Fuse 2 | 60 A | Hot at all times | Post pin 2 | — | RED | Glow plug module (3.0L turbo diesel) pin 11 via I9030 pin 8 |
| Fuse 3 | 100 A | Hot at all times | Post pin 3 | — | RED | Power steering pump motor C1 pin 1 |
| Fuse 4 | 100 A | Hot at all times | Post pin 4 | — | RED | Radiator cooling fan module pin 1 |
| Fuse 5 | 150 A | Hot at all times | Post pin 5 | — | RED | SP2577 -> auxiliary power distribution center fuses 3, 1 and 10 |

## Auxiliary power distribution center (diagram page 5)

Left rear of engine compartment. Only terminals B7, B8 and B13 are numbered; the PTC relay and fuse 1/3/10 wires enter and leave the box without printed terminal numbers.

| Fuse/Relay | Rating | Feed | Output connector-pin | Circuit | Wire | Load (as printed) |
|------------|--------|------|----------------------|---------|------|-------------------|
| Fuse 1 | 50 A | Hot at all times (remote jump post fuse 5 via SP2577, RED) | not numbered | — | RED/LT BLU | PTC 2 relay terminal 30 |
| Fuse 3 | 50 A | Hot at all times (remote jump post fuse 5 via SP2577, RED) | not numbered | — | RED/YEL | PTC 1 relay terminal 30 |
| Fuse 6 | 30 A | Hot at all times (remote jump post fuse 1, RED, in at pin B7) | B8 | — | RED | Heater control module (3.0L turbo diesel) pin 11 via I3000 pin 4 |
| Fuse 10 | 50 A | Hot at all times (remote jump post fuse 5 via SP2577, RED) | not numbered | — | RED/LT GRN | PTC 3 relay terminal 30 |
| PTC 1 relay | — | Terminal 30 from auxiliary fuse 3 (RED/YEL); terminal 85 from PDC fuse 103 via SP1950 (PNK/YEL) | not shown | — | — | Terminals 86/87 are not shown |
| PTC 2 relay | — | Terminal 30 from auxiliary fuse 1 (RED/LT BLU); terminal 85 from PDC fuse 103 via SP1950 (PNK/YEL) | not shown | — | — | Terminals 86/87 are not shown |
| PTC 3 relay | — | Terminal 30 from auxiliary fuse 10 (RED/LT GRN); terminal 85 from PDC fuse 103 via SP1950 (PNK/YEL) | not shown | — | — | Terminals 86/87 are not shown |
| SCR relay 1 (3.0L turbo diesel) | — | Terminal 30 from PDC fuse 59 (WHT/BRN, in at pin B13) | not shown | — | — | Other terminals are not shown |

## Power distribution center assembly (diagram pages 1-5)

Right side of engine compartment. Connectors shown: C1, C3, C5, C6 and C7.

### Internal buses

| Bus | Source | Off-page references |
|-----|--------|---------------------|
| Hot at all times | Battery via SP502 (RED) | A, B, C, E |
| Run/accessory relay 2 output | Run/accessory relay 2 terminal 87 | — |
| Run/accessory relay 1 output | Run/accessory relay 1 terminal 87 | — |
| Run relay 1 output | Run relay 1 terminal 87 | — |
| Run relay 2 output | Run relay 2 terminal 87 | J |
| Run/start relay output | Run/start relay terminal 87 | — |
| Relay coil ground | PDC C1 pin 12 (BLK) -> SP2025 -> G909A | K |

The off-page references A, B, C and E are captioned with the name of a neighbouring component ("FROM RUN RELAY 2", "FROM FUSE 25", "FROM FUSE 35" / "TO FUSE 50", "FROM FUSE 71" / "TO FUSE 59"), but each one is drawn joining the supply side of that component, so all four continue the same hot-at-all-times bus. Reference J ("FROM FUSE 85") likewise continues the run relay 2 output bus from the supply side of fuse 85.

### Relays with coil and contact wiring shown

| Relay | Terminal 30 | Terminal 85 | Terminal 86 | Terminal 87 | Terminal 87A |
|-------|-------------|-------------|-------------|-------------|--------------|
| Run/accessory relay 1 | Hot at all times | PDC C7 pin 25, LT GRN/LT BLU -> body control module C5 pin 6 | Relay coil ground bus | Fuse 66, power window circuit breaker 1 | No connection shown |
| Run/accessory relay 2 | Hot at all times | PDC C7 pin 6, LT GRN/YEL -> body control module C5 pin 9 | Relay coil ground bus | Fuses 91, 93 | No connection shown |
| Run relay 1 | Hot at all times | PDC C7 pin 12, BRN/ORG -> body control module C5 pin 36 | Relay coil ground bus | Fuses 95, 96, 97, 98 and run relay 2 terminal 85 | No connection shown |
| Run relay 2 | Hot at all times | Run relay 1 output bus (internal) | Relay coil ground bus | Fuses 40, 85, 100, 101, 103 | No connection shown |
| Run/start relay | Hot at all times | PDC C6 pin 10, BRN -> I6020 pin 36 -> body control module C1 pin 18 | Relay coil ground bus (reference K) | Fuses 76, 77, 78, 86, 87, 88, 99 and terminal 85 of the vacuum pump, A/C clutch, fuel pump, radiator fan high and radiator fan low relays | No connection shown |

### Relays drawn with supply terminals only

The output and control terminals of these relays are not shown in this diagram.

| Relay | Terminals shown | Feed |
|-------|-----------------|------|
| Blower motor relay | 30 | Hot at all times |
| Headlamp washer relay | 30 | Hot at all times |
| Air suspension relay | 30 | Hot at all times |
| Rear window defogger relay | 30 | Hot at all times |
| Horn relay | 30 | Hot at all times |
| SCR relay 2 (3.0L turbo diesel) | 86, 30 | Both hot at all times |
| Starter solenoid 2 relay | 30 | Fuse 7 (40 A), hot at all times |
| Left HID headlamp relay | 30 | Fuse 57 (15 A), hot at all times |
| Right HID headlamp relay | 30 | Fuse 73 (15 A), hot at all times |
| Trailer tow backup lamp relay | 30, 85 | Both hot at all times |
| Left trailer tow relay | 30, 85 | Both hot at all times |
| Right trailer tow relay | 30, 85 | Both hot at all times |
| Trailer tow park lamp relay | 30, 85 | Both hot at all times |
| Rear wiper relay | 87 | Hot at all times |
| Windshield wiper on/off relay | 87 | Fuse 25 (30 A), hot at all times |
| Vacuum pump relay | 30, 85 | 30 hot at all times; 85 from run/start relay output |
| A/C clutch relay | 30, 85 | 30 hot at all times; 85 from run/start relay output |
| Fuel pump relay | 30, 85 | 30 hot at all times; 85 from run/start relay output |
| Radiator fan high relay | 30, 85 | 30 from fuse 3 (60 A); 85 from run/start relay output |
| Radiator fan low relay | 30, 85 | 30 from fuse 3 (60 A); 85 from run/start relay output |
| Auto shut down relay | 30, 85 | Both hot at all times |
| Fuel heater relay (3.0L turbo diesel) | 30 | Hot at all times |

### Fuses and circuit breakers

"Internal" in the output column means the fuse feeds a relay inside the PDC and no connector terminal is shown for it.

| Fuse/Relay | Rating | Feed | Output connector-pin | Circuit | Wire | Load (as printed) |
|------------|--------|------|----------------------|---------|------|-------------------|
| Fuse 3 | 60 A | Hot at all times | Internal | — | — | Radiator fan high relay terminal 30; radiator fan low relay terminal 30 |
| Fuse 6 | 40 A | Hot at all times | C3 pin 1 | — | GRY/RED | Anti-lock brakes module pin 1 |
| Fuse 7 | 40 A | Hot at all times | Internal | — | — | Starter solenoid 2 relay terminal 30 |
| Fuse 10 | 40 A | Hot at all times | C7 pin 22 | — | RED | Body control module C3 pin 4 |
| Fuse 11 | 30 A | Hot at all times | C6 pin 1 | — | RED/VIO | Brake provision module pin 4 |
| Fuse 12 | 40 A | Hot at all times | C7 pin 1 | — | RED | Body control module C3 pin 3 |
| Fuse 14 | 40 A | Hot at all times | C6 pin 21 | — | RED | Body control module C2 pin 3 |
| Fuse 20 | 30 A | Hot at all times | C5 pin 26 | — | RED | Passenger door module C3 pin 5 via I1121 pin 8 |
| Fuse 22 | 20 A | Hot at all times | C3 pin 3 | — | RED | Powertrain control module C1 pin 96 |
| Fuse 23 | 30 A | Hot at all times | C5 pin 3 | — | RED | Body control module C3 pin 1 |
| Fuse 24 | 30 A | Hot at all times | C5 pin 5 | — | RED | Driver door module C3 pin 5 via I1111 pin 7 |
| Fuse 25 | 30 A | Hot at all times | Internal | — | — | Windshield wiper on/off relay terminal 87 |
| Fuse 26 | 30 A | Hot at all times | C3 pin 26 | — | RED | Anti-lock brakes module pin 25 |
| Fuse 30 | 30 A | Hot at all times | C7 pin 38 | — | RED/VIO | 7-way trailer tow wiring pin E via I4000 pin 3 |
| Fuse 32 | 30 A | Hot at all times | C7 pin 41 | — | RED | Drivetrain control module C2 pin C via I6020 pin 1 and I8200 pin 1 |
| Fuse 34 | 30 A | Hot at all times | C6 pin 19 | — | RED | Electronic limited slip differential module C3 pin 10 via I4300 pin 2 |
| Fuse 35 | 30 A | Hot at all times | C6 pin 17 | — | VIO/RED | I200A pin 21 -> I481A pin 1 (w/ double panel sunroof) -> S01A -> sunroof shade motor pin 1 and sunroof motor pin 1; or I481A pin 4 (w/ single panel sunroof) -> sunroof motor pin 10 |
| Fuse 38 | 30 A | Hot at all times | C6 pin 38 | A401 | RED/LT GRN | Inverter module pin 4 (FSD B (+)) via I6634A pin B7 |
| Fuse 39 | 30 A | Hot at all times | C6 pin 24 | — | DK GRN/RED | Power left gate module C2 pin 1 |
| Fuse 40 | 10 A | Run relay 2 output | C1 pin 10 | — | PNK/YEL | SP1949 -> left front lamp assembly pin 11, left daytime running lamp pin 1, right daytime running lamp pin 1, right front lamp assembly pin 11 |
| Fuse 44 | 10 A | Hot at all times | C5 pin 27 | — | RED | Data link connector pin 16 via I5020 pin 19 |
| Fuse 46 | 10 A | Hot at all times | C5 pin 31 | — | RED | Tire pressure module pin 1 via I4100 pin 1 |
| Fuse 49 | 10 A | Hot at all times | C5 pin 25 | — | RED | I5020 pin 14 -> SP1892 -> A/C heater control module C1 pin 2; integrated center stack switch bank module pin 4 |
| Fuse 50 | 20 A | Hot at all times | C5 pin 28 | — | PNK/BLK | I6020 pin 23 -> SP1885 (except 6.4L) -> air suspension control module (except 6.4L) C2 pin 47 via I8200 pin 11; electronic limited slip differential module C3 pin 9 via I3000 pin 9 |
| Fuse 51 | 10 A | Hot at all times | C5 pin 30 | A910 | RED | SP1887 -> radio frequency hub module C1 pin 8 (FSD B (+)); I5020 pin 18 -> SP1886 -> keyless ignition node module pin 6 (FSD B (+)) and steering column lock module pin 6 |
| Fuse 52 | 5 A | Hot at all times | C5 pin 32 | — | RED | Intelligent battery sensor pin 2 |
| Fuse 55 | 10 A | Hot at all times | C5 pin 38 | — | RED | I5020 pin 53 (NOT USED) |
| Fuse 56 | 15 A | Hot at all times | C3 pin 6 | — | BRN/GRY | Power train control module (3.0L turbo diesel & 3.6L) C1 pin 1 |
| Fuse 57 | 15 A | Hot at all times | Internal | — | — | Left HID headlamp relay terminal 30 |
| Fuse 59 | 10 A | Hot at all times | C3 pin 15 | — | WHT/BRN | Auxiliary power distribution center pin B13 (SCR relay 1 terminal 30, 3.0L turbo diesel) via I9030 pin 43 |
| Fuse 60 | 15 A | Hot at all times | C3 pin 13 | — | YEL/RED | Transmission control module pin 13 |
| Fuse 66 | 10 A | Run/accessory relay 1 output | C5 pin 9 | — | PNK/YEL | SP1956 -> I200A pin 8 -> I481A pin 2 -> sunroof motor pin 6 (w/ single panel sunroof), or SP03A -> sunroof shade motor pin 2 and sunroof motor pin 2 (w/ double panel sunroof); SP1956 -> I5020 pin 10 -> SP500 -> charging USB port pin 3 (FSD IGN SW OUTPUT) via I2666A pin 23 and I337A pin 8; SP500 -> I7001 pin 11 -> SP700 (w/ rain sensor) -> rain sensor (if equipped) pin 1 and inside rear view mirror pin 5 |
| Fuse 67 | 15 A | Hot at all times | C5 pin 11 | — | RED | I5020 pin 8 -> SP2588 -> media port C1 pin 1; SP2588 -> I2666A pin 1 -> S002 -> external disc module (base & premium) pin 1, left seatback video screen module C3 pin 1 via I336A pin A1, right seatback video screen module C3 pin 1 via I335A pin A1, video module (premium 2) C2 pin 1 |
| Fuse 71 | 30 A | Hot at all times | C5 pin 19 | — | RED | Radio amplifier C1 pin 12 |
| Fuse 73 | 15 A | Hot at all times | Internal | — | — | Right HID headlamp relay terminal 30 |
| Fuse 76 | 10 A | Run/start relay output | C3 pin 32 | — | RED/LT GRN | Anti-lock brakes module pin 31 |
| Fuse 77 | 10 A | Run/start relay output | C3 pin 30 | — | RED/LT GRN | SP1955 -> electronic limited slip differential module C3 pin 12 via I3000 pin 7; drivetrain control module C1 pin 4 via I8200 pin 2 |
| Fuse 78 | 10 A | Run/start relay output | C3 pin 28 | — | RED/LT GRN | Powertrain control module C1 pin 23 (except 3.0L turbo diesel) or C1 pin 54 (3.0L turbo diesel) |
| Fuse 78 | 10 A | Run/start relay output | C6 pin 8 | — | RED/LT GRN | Power steering pump module C2 pin 2 via I6020 pin 37 |
| Fuse 80 | 10 A | Hot at all times | C7 pin 28 | — | RED | SP2573 -> electronic overhead module pin 1; siren pin 1 via I6020 pin 39; transceiver intrusion module pin 1 via I200A pin 9 |
| Fuse 82 | 30 A | Hot at all times | C7 pin 32 | — | RED | Steering control module C1 pin 5 via I5020 pin 9 |
| Fuse 83 | 10 A | Hot at all times | C7 pin 34 | — | RED/LT GRN | Fuel door switch pin 1 via I5020 pin 3 |
| Fuse 84 | 15 A | Hot at all times | C7 pin 36 | — | RED | Cluster pin 10 via I5020 pin 6 |
| Fuse 85 | 10 A | Run relay 2 output | C6 pin 15 | — | PNK/YEL | Occupant restraint controller module C2 pin 104 |
| Fuse 86 | 10 A | Run/start relay output | C6 pin 13 | — | PNK/LT GRN | Occupant restraint controller module C2 pin 103 |
| Fuse 87 | 10 A | Run/start relay output | C6 pin 9 | — | PNK/LT GRN | Air suspension control module C2 pin 14 via I6020 pin 38 and I8200 pin 8 |
| Fuse 88 | 10 A | Run/start relay output | C6 pin 7 | — | PNK/LT GRN | Cluster pin 20 via I5020 pin 1 |
| Fuse 91 | 10 A | Run/accessory relay 2 output | C7 pin 5 | — | PNK/YEL | Rear power outlet pin 1 (IGN SW) |
| Fuse 93 | 20 A | Run/accessory relay 2 output | C7 pin 9 | — | PNK/YEL | Cigar lighter assembly pin 1 (FSD IGN SW OUTPUT) via I5020 pin 31 |
| Fuse 94 | 10 A | Hot at all times | C7 pin 11 | — | RED/YEL | I5020 pin 17 -> RED -> I2666B pin 4 -> RED/YEL -> S001 -> shift lever assembly pin 7; transfer case selector switch pin 7 |
| Fuse 95 | 10 A | Run relay 1 output | C7 pin 13 | — | PNK/YEL | SP2390 -> rear video camera pin 3 via I2120 pin 6 and D6685 pin 1; park assist module C1 pin 1; I4000 pin 12 -> I701 pin J -> SP04A -> right rear blind spot sensor pin 5 and left rear blind spot sensor pin 5 |
| Fuse 96 | 30 A | Run relay 1 output | C7 pin 15 | — | PNK/YEL | SP100A (w/ heated seats) -> flashlight lamp pin 3; SP100A -> I6634A pin A11 -> I9005A pin 11 -> (w/ video entertainment system) I337A pin 1 -> I336A pin B9 -> S02A -> right rear heated seat switch pin 1 and left rear heated seat switch pin 1 |
| Fuse 97 | 25 A | Run relay 1 output | C7 pin 17 | — | PNK/YEL | I6634A pin A9 -> SP922A -> heated seats module C3 pin 6 and C4 pin 2; SP922A -> (w/o video entertainment system) I337A pin 1 -> I336A pin B9 -> S02A -> rear heated seat switches |
| Fuse 98 | 25 A | Run relay 1 output | C7 pin 19 | — | PNK/YEL | Heated seats module C1 pin 5 via I6634A pin A8 |
| Fuse 99 | 10 A | Run/start relay output | C6 pin 36 | — | PNK/LT GRN | SP2594 -> A/C heater control module C1 pin 1 via I5020 pin 15; adaptive cruise control module pin 8 via I6020 pin 21 and I8120 pin 15 |
| Fuse 100 | 10 A | Run relay 2 output | C6 pin 34 | — | PNK/YEL | I6020 pin 33 -> I8200 pin 8 -> SP2589 -> active damping control module C2 pin 14 and C2 pin 47 |
| Fuse 101 | 15 A | Run relay 2 output | C6 pin 32 | — | PNK/YEL | I5020 pin 7 -> SP1948 -> in-car temperature sensor pin 3; forward facing camera pin 6 via I7001 pin 10 |
| Fuse 103 | 10 A | Run relay 2 output | C6 pin 28 | — | PNK/YEL | I6020 pin 20 -> SP1950 -> PTC 1, PTC 2 and PTC 3 relay terminal 85 (auxiliary power distribution center) |
| Fuse 104 | 20 A | Hot at all times | C6 pin 26 | — | RED | I5020 pin 48 -> SP1888 -> console power outlet pin 1 (BATT FEED) via I2666B pin 9; charging USB port pin 1 (BATT FEED) via I2666A pin 12 and I337A pin 7 |
| Power window circuit breaker 1 | 25 A | Run/accessory relay 1 output | C5 pin 23 | — | PNK/YEL | Driver window/door lock switch pin 2 via I1111 pin 9 |
| Circuit breaker 2 | 25 A | Hot at all times | C5 pin 40 | — | RED | I6633A pin A7 -> SA942A -> driver lumbar seat adjuster switch pin F, memory seat module C1 pin 8, driver seat switch pin 6 |
| Circuit breaker 3 | 25 A | Hot at all times | C6 pin 2 | — | RED | I6634A pin A7 -> SA949A -> passenger seat switch pin 6, passenger lumbar seat adjuster switch pin F |

### Other PDC terminals

| PDC terminal | Wire | Function | Connects to |
|--------------|------|----------|-------------|
| Battery input (not numbered) | RED | Hot-at-all-times bus feed | SP502 -> battery positive |
| C1 pin 12 | BLK | Relay coil ground bus | SP2025 -> G909A |
| C6 pin 10 | BRN | Run/start relay terminal 85 | Body control module C1 pin 18 via I6020 pin 36 |
| C7 pin 6 | LT GRN/YEL | Run/accessory relay 2 terminal 85 | Body control module C5 pin 9 |
| C7 pin 12 | BRN/ORG | Run relay 1 terminal 85 | Body control module C5 pin 36 |
| C7 pin 25 | LT GRN/LT BLU | Run/accessory relay 1 terminal 85 | Body control module C5 pin 6 |

## Component pinouts shown (diagram pages 1 and 2)

**Body control module** — C1 pin 18 run/start relay coil (BRN); C2 pin 3 fuse 14 (RED); C3 pins 1, 3, 4 fuses 23, 12, 10 (RED); C5 pin 6 run/accessory relay 1 coil (LT GRN/LT BLU); C5 pin 9 run/accessory relay 2 coil (LT GRN/YEL); C5 pin 36 run relay 1 coil (BRN/ORG); C6 pin 21 INVER ST IND DRIV (P806, LT GRN/WHT); C6 pin 35 INVER SW SIG (P807, LT GRN/LT BLU).

**Powertrain control module** — C1 pin 1 from fuse 56 (BRN/GRY, 3.0L turbo diesel & 3.6L); C1 pin 23 (except 3.0L turbo diesel) or C1 pin 54 (3.0L turbo diesel) from fuse 78 (RED/LT GRN); C1 pin 96 from fuse 22 (RED).

**Inverter module** (under front passenger's seat):

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | P802 | LT GRN/ORG | 110V AC LINE 2 | AC power outlet pin 6 (110V AC LINE 2) via I9005A pin 6, I335A pin B7, I337A pin 15 |
| 4 | A401 | RED/LT GRN | FSD B (+) | PDC C6 pin 38 (fuse 38, 30 A) via I6634A pin B7 |
| 5 | P801 | LT GRN | 110V AC LINE 1 | AC power outlet pin 3 (110V AC LINE 1) via I9005A pin 7, I335A pin B8, I337A pin 13 |
| 6 | P805 | LT GRN/LT BLU | INVERT SW SIG | AC power outlet pin 1 (110 VOLT AC LINE 3) via I9005A pin 1, I335A pin B2, I337A pin 12 |
| 7 | P806 | LT GRN/WHT | INVER ST IND DRV | Body control module C6 pin 21 (INVER ST IND DRIV) via I335A pin B3, I2666A pin 9, I5020 pin 4 |
| 8 | Z919 | BLK | GND | G919A via I6634A pin B9 |

Inverter module pins 2 and 3 are drawn without wires.

**AC power outlet** — pin 1 110 VOLT AC LINE 3 (LT GRN/LT BLU) to inverter module pin 6; pin 3 110V AC LINE 1 (LT GRN) to inverter module pin 5; pin 4 INVTR SW SIG (LT GRN/LT BLU) via I337A pin 14, I2666A pin 10 and I5020 pin 32 to body control module C6 pin 35 (P807); pin 6 110V AC LINE 2 (LT GRN/ORG) to inverter module pin 1.

**Radio frequency hub module** connector C1:

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 8 | A910 | RED | FSD B (+) | SP1887 -> PDC C5 pin 30 (fuse 51, 10 A) |
| 9 | G201 | VIO/BRN | IGN SW POS SIG | Keyless ignition node module pin 4 via I5010 pin 5 |
| 10 | D122 | WHT/LT GRN | IGN SW POS SIG COMMUNICATION | Keyless ignition node module pin 5 via I5010 pin 8 |
| 11 | D40 | YEL | CAN C (-) | Computer data lines system |
| 12 | D39 | DK BLU | CAN C (+) | Computer data lines system |

**Keyless ignition node module** (left center of dash):

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | Z912 | BLK | GND | G912A |
| 4 | G201 | VIO/BRN | IGN SW POS SIG | Radio frequency hub module C1 pin 9 via I5010 pin 5 |
| 5 | D122 | WHT/LT GRN | SECURITY K LINE COMMUNICATION | Radio frequency hub module C1 pin 10 via I5010 pin 8 |
| 6 | A910 | RED | FSD B (+) | SP1886 -> I5020 pin 18 -> SP1887 -> PDC C5 pin 30 (fuse 51, 10 A) |

Keyless ignition node module pins 1 and 2 are drawn without wires.

**Charging USB port** — pin 1 BATT FEED (RED) from SP1888 (fuse 104); pin 2 PANEL LMP DRIV (ORG/GRY) to the interior lights system; pin 3 FSD IGN SW OUTPUT (PNK/YEL) from SP500 (fuse 66); pin 4 GND (BLK) -> S03A -> G911A.

**Cigar lighter assembly** — pin 1 FSD IGN SW OUTPUT (PNK/YEL) from fuse 93; pin 3 GND (BLK) -> G911A.

**Console power outlet** — pin 1 BATT FEED (RED) from SP1888 (fuse 104); pin 3 GND (BLK) -> S002 -> G911A.

**Rear power outlet** — pin 1 IGN SW (PNK/YEL) from fuse 91; pin 3 GND (BLK) -> G924A.

## Grounds and splices

Grounds:

| Ground | Location (as printed) | Circuits shown |
|--------|-----------------------|----------------|
| G909A | Left rear of engine compartment | PDC C1 pin 12 (relay coil ground bus) via SP2025, BLK |
| G911A | Under center console | Console power outlet pin 3 via S002; charging USB port pin 4 via S03A; cigar lighter assembly pin 3 |
| G912A | Under front of center console | Keyless ignition node module pin 3 (Z912, BLK) |
| G919A | Behind front of right quarterpanel | Inverter module pin 8 (Z919, BLK) via I6634A pin B9 |
| G924A | Behind rear of right quarterpanel | Rear power outlet pin 3 (BLK) |

Splices with a printed location:

| Splice | Location (as printed) | Circuit |
|--------|-----------------------|---------|
| SP500 | Lower left center of dash, in instrument panel harness | Fuse 66, PNK/YEL |
| SP700 | Right "A" pillar, in interior mirror jumper harness (w/ rain sensor) | Fuse 66, PNK/YEL |
| SP1180 (3.6L) / SP2586 (5.7L & 6.4L) | Front of left cylinder bank, in engine harness (location printed for 5.7L & 6.4L) | Remote jump post unfused output, RED |
| SP1880 (3.0L turbo diesel) | Lower right front of engine, in diesel battery harness | Remote jump post unfused output, RED |
| SP301 (3.6L) / SP2168 (5.7L) | Top center front of engine, in engine harness (location printed for 5.7L) | Generator feed, RED |
| SP1885 | Right rear of engine compartment, in headlamp & dash harness (except 6.4L) | Fuse 50, PNK/BLK |
| SP1886 | Left side of dash, in instrument panel harness (6.4L & 3.0L turbo diesel) | Fuse 51, RED |
| SP1887 | Under passenger's door sill, in body harness | Fuse 51, RED |
| SP1888 | Right center of dash, in instrument panel harness | Fuse 104, RED |
| SP1892 | Right side of dash, in instrument panel harness | Fuse 49, RED |
| SP1948 | Right side of dash, in instrument panel harness | Fuse 101, PNK/YEL |
| SP1949 | Behind right side of front fascia, in front end module harness | Fuse 40, PNK/YEL |
| SP1950 | Left rear of engine compartment, in headlamp & dash harness | Fuse 103, PNK/YEL |
| SP1955 | Right side of engine compartment, in headlamp & dash harness | Fuse 77, RED/LT GRN |
| SP1956 | Under passenger's door sill, in body harness | Fuse 66, PNK/YEL |
| SP2390 | Under passenger's door sill, in body harness | Fuse 95, PNK/YEL |
| SP2573 | Under passenger's door sill, in body harness | Fuse 80, RED |
| SP2577 | Right rear of engine compartment, in headlamp & dash harness | Remote jump post fuse 5, RED |
| SP2588 | Right side of dash, in instrument panel harness | Fuse 67, RED |
| SP2589 | Under driver's door sill, in suspension jumper harness | Fuse 100, PNK/YEL |
| SP2594 | Under passenger's door sill, in body harness | Fuse 99, PNK/LT GRN |
| SP922A | In driver seat cushion harness | Fuse 97, PNK/YEL |
| SA942A | In driver seat cushion harness | Circuit breaker 2, RED |
| SA949A | In passenger seat cushion harness | Circuit breaker 3, RED |
| S001 | Under center console, in console harness | Fuse 94, RED/YEL |
| S002 | Under center console, in console harness | Fuse 67, RED (diagram page 2); also printed on the console power outlet ground, BLK (diagram page 1) |
| S01A | Under rear of center console, in rear console harness | Fuse 35, VIO/RED |
| S02A | Under rear of center console, in rear console harness | Rear heated seat switch feed, PNK/YEL |

Splices printed without a location: SP502 (battery positive, RED), SP211 and SP212 (radio fuse, RED), SP300 (3.6L & 5.7L, generator feed), SP2025 (PDC ground, BLK), SP03A (fuse 66, double panel sunroof), SP04A (fuse 95, blind spot sensors), SP100A (fuse 96, w/ heated seats), S03A (charging USB port ground, BLK).

## Component locations

Only these locations are printed in this diagram: power distribution center assembly — right side of engine compartment; auxiliary power distribution center — left rear of engine compartment; remote jump positive post — right rear of engine compartment; inverter module — under front passenger's seat; keyless ignition node module — left center of dash. Ground and splice locations are in the tables above. Locations of the battery, radio fuse and all other loads are not shown in this diagram.

## Notes

- Option callouts printed on the sheets: w/ and w/o video entertainment system (rear heated seat switch feed); w/ double panel and w/ single panel sunroof (fuses 35 and 66); 3.0L turbo diesel and except 3.0L turbo diesel (powertrain control module C1 pin 54 / C1 pin 23 on fuse 78).
- Run relay 2 has no separate control terminal on the PDC connectors: its coil terminal 85 is drawn fed from the run relay 1 output bus, so run relay 2 follows run relay 1.
- The auto shut down relay, the four trailer tow relays and SCR relay 2 are drawn with both the contact terminal (30) and a coil terminal (85 or 86) on the hot-at-all-times bus; their switched outputs and control terminals are not shown in this diagram.
- Inline connector I8200 pin 8 is printed on two different circuits: fuse 87 (PNK/LT GRN) to the air suspension control module C2 pin 14 and fuse 100 (PNK/YEL) to the active damping control module C2 pins 14 and 47. Fuse 50 also reaches an air suspension control module (except 6.4L) C2 pin 47. The source does not print an option callout that separates these.
- Splice name S002 is printed on a RED fuse 67 feed (diagram page 2) and on the BLK console power outlet ground to G911A (diagram page 1).
- The AC power outlet terminal labelled 110 VOLT AC LINE 3 is wired to the inverter module terminal labelled INVERT SW SIG (P805), while the outlet terminal labelled INVTR SW SIG goes to the body control module INVER SW SIG terminal (P807). Both are transcribed as drawn.
- Cross-check with [2015-Grand-Cherokee-V6-vs-2018-Durango-V8-ECU-pinout-comparison.md](2015-Grand-Cherokee-V6-vs-2018-Durango-V8-ECU-pinout-comparison.md): PCM C1 pin 23 (RED/LT GRN, ignition feed, fuse 78) and C1 pin 96 (RED, battery feed, fuse 22) agree. PCM C1 pin 1 (BRN/GRY, fuse 56) is listed there as "ASD RLY OUTPUT" (F344); this diagram draws fuse 56 on the hot-at-all-times bus and does not show the auto shut down relay output, so the two sources disagree on what feeds fuse 56.
- Compared with [2018-Dodge-Durango-2WD-5.7-Hemi-PCM-pinout.md](2018-Dodge-Durango-2WD-5.7-Hemi-PCM-pinout.md): fuse 22 (20 A) -> PDC C3 pin 3 -> PCM C1 pin 96 is the same on both vehicles; the fuse 78 ignition feed leaves the PDC at C3 pin 28 (RED/LT GRN) here and at C7 pin 28 (PNK/GRN) on the Durango.
