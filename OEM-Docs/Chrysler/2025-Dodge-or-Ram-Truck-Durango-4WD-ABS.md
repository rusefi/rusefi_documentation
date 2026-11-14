# 2025 Dodge Durango 4WD V6-3.6L — anti-lock brakes module pinout

Transcribed from [2025-Dodge-or-Ram-Truck-Durango-4WD-ABS.pdf](2025-Dodge-or-Ram-Truck-Durango-4WD-ABS.pdf) (ALLDATA "Anti-Lock Brakes - Except SRT" wiring diagram, Electrical - Interactive Color (Non OE), diagram page 1 of 1 = PDF page 2, sheet 914096; PDF page 1 is the title page only).

Anti-lock brakes module, located left front of engine compartment, as fitted to the 2025 Dodge or Ram Truck Durango 4WD V6-3.6L except SRT. The module is drawn with one connector of 46 terminals (1-46); the diagram does not name the connector. The same sheet shows the four wheel speed sensors, the brake vacuum pressure sensor, the brake pedal travel sensor, the vacuum pump and its relay, and the brake-related pins of the body control module, powertrain control module and cluster.

Connectors covered:

| Module | Connector | Terminals drawn | Role |
|--------|-----------|-----------------|------|
| Anti-lock brakes module | (unnamed) | 46 | Battery feeds, ignition feed, grounds, CAN C, four wheel speed sensors, vacuum pressure sensor, pedal travel sensor, brake signal |
| Body control module | C4 | pins 18, 19, 21 shown | Brake signal, brake fluid level sensor |
| Body control module | C5 | pins 11, 25, 26 shown | Parking brake switch, CAN C |
| Powertrain control module | C1 | pins 33, 57, 77 shown | Vacuum pump relay control, CAN C |
| Cluster | (unnamed) | pins 12, 13 shown | CAN C |

Chrysler circuit codes (B9, A107, Z901, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). Unlisted pins are not connected in this diagram.

## Anti-lock brakes module (46 terminals)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | A107 | TAN/RED | FSD B (+) | PDC C4 pin 1, fuse 4 (60 A), hot at all times |
| 4 | B9 | DK GRN/GRN | LF WHEEL SPD SENS (+) | Left front ABS wheel speed sensor pin 1 |
| 5 | B8 | DK GRN/TAN | LF WHEEL SPD SENS (-) | Left front ABS wheel speed sensor pin 2 |
| 6 | B237 | DK GRN/YEL | PEDAL TRAVEL SENS FEED | Brake pedal travel sensor pin 3 (PEDAL TRAVEL SENS FEED) via XY6020A pin 43 |
| 9 | F941 | PNK/WHT | IGN RUN/START CTRL OUTPUT | PDC C3 pin 32, fuse 76 (10 A), hot with run/start relay energized |
| 10 | B7 | DK GRN/VIO | RF WHEEL SPD SENS (+) | Right front ABS wheel speed sensor pin 1 |
| 11 | B6 | DK GRN/WHT | RF WHEEL SPD SENS (-) | Right front ABS wheel speed sensor pin 2 |
| 14 | Z901 | BLK/ORG | GND | Ground G901A |
| 15 | B4 | DK GRN/GRY | LR WHEEL SPD SENS (+) | Left rear ABS wheel speed sensor pin 1 via XY3000A pin 18 |
| 16 | B3 | DK GRN/YEL | LR WHEEL SPD SENS (-) | Left rear ABS wheel speed sensor pin 2 via XY3000A pin 16 |
| 17 | B31 | DK GRN/DK BLU | VAC PRESSURE SENS SPLY | Vacuum pressure sensor pin 3 (VAC PRESSURE SENS SPLY) |
| 18 | B32 | DK GRN/ORG | VAC PRESSURE SENS SIG | Vacuum pressure sensor pin 1 (VAC PRESSURE SENS SIG) |
| 20 | B33 | DK GRN/TAN | VAC PRESSURE SENS RTN | Vacuum pressure sensor pin 2 (VAC PRESSURE SENS RTN) |
| 25 | D498 | YEL | CAN C (-) | Computer data lines system |
| 28 | B2 | DK GRN/BLU | RR WHEEL SPD SENS (+) | Right rear ABS wheel speed sensor pin 1 via XY3000A pin 34 |
| 29 | B1 | DK GRN/ORG | RR WHEEL SPD SENS (-) | Right rear ABS wheel speed sensor pin 2 via XY3000A pin 20 |
| 30 | A200 | RED/DK GRN | FSD B (+) | SP8110 -> PDC C3 pin 26, fuse 26 (30 A), hot at all times |
| 33 | B137 | DK GRN/BRN | PEDAL TRAVEL SENS SIG | Brake pedal travel sensor pin 2 (PEDAL TRAVEL SENS SIG) via XY6020A pin 42 |
| 34 | B937 | DK GRN/ORG | PEDAL TRAVEL SENS RTN | Brake pedal travel sensor pin 1 (PEDAL TRAVEL SENS RTN) via XY6020A pin 40 |
| 41 | D497 | DK BLU/WHT | CAN C (+) | Computer data lines system |
| 43 | B15 | DK GRN/WHT | BRK SIG 1 | SP1010: body control module C4 pin 18 (BRK SIG 1); exterior lights system |
| 46 | Z901 | BLK/ORG | GND | Ground G901A |

The RED/DK GRN wire between PDC C3 pin 26 and SP8110 is drawn as a dashed line; from SP8110 to module pin 30 it is solid. SP8110 shows no other branch on this sheet.

Component locations: anti-lock brakes module — left front of engine compartment; power distribution center assembly — right side of engine compartment; left front / right front ABS wheel speed sensors — on left / right front wheel hub assembly; left rear / right rear ABS wheel speed sensors — on left / right rear wheel hub assembly; vacuum pressure sensor — on brake vacuum booster assembly; brake pedal travel sensor — top of brake pedal assembly; vacuum pump — top front of engine; parking brake switch — base of parking brake; brake fluid level sensor — on brake fluid reservoir; body control module — right kick panel; powertrain control module — right front of engine compartment; SP1010 — right front of engine compartment, in headlamp and dash harness; G901A — left rear of engine compartment; G906A — right front of engine compartment. The locations of SP8110 and the cluster are not printed.

Component pinouts as printed:

- Wheel speed sensors (all four) — 1 WHEEL SPD SENS (+), 2 WHEEL SPD SENS (-). Left front: 1 DK GRN/GRN, 2 DK GRN/TAN. Right front: 1 DK GRN/VIO, 2 DK GRN/WHT. Left rear: 1 DK GRN/GRY, 2 DK GRN/YEL. Right rear: 1 DK GRN/BLU, 2 DK GRN/ORG.
- Vacuum pressure sensor — 1 VAC PRESSURE SENS SIG (DK GRN/ORG), 2 VAC PRESSURE SENS RTN (DK GRN/TAN), 3 VAC PRESSURE SENS SPLY (DK GRN/DK BLU).
- Brake pedal travel sensor — 1 PEDAL TRAVEL SENS RTN (DK GRN/ORG), 2 PEDAL TRAVEL SENS SIG (DK GRN/BRN), 3 PEDAL TRAVEL SENS FEED (DK GRN/YEL).
- Vacuum pump — 1 VAC PUMP RLY O/P (DK GRN/VIO), 2 GND (BLK).
- Parking brake switch — 1 PARK BRK SW SENSE (DK GRN/WHT).
- Brake fluid level sensor — 1 BRK FLUID LVL SIG (DK GRN/ORG), 2 GND (BLK/ORG).

## Power supply / relay / grounds

Power distribution center assembly, right side of engine compartment:

- **Fuse 4 (60 A)**, hot at all times -> PDC C4 pin 1 (TAN/RED, A107) -> anti-lock brakes module pin 1 (FSD B (+)).
- **Fuse 26 (30 A)**, hot at all times (same feed as fuse 4) -> PDC C3 pin 26 (RED/DK GRN, A200) -> SP8110 -> anti-lock brakes module pin 30 (FSD B (+)).
- **Fuse 76 (10 A)**, hot with run/start relay energized -> PDC C3 pin 32 (PNK/WHT, F941) -> anti-lock brakes module pin 9 (IGN RUN/START CTRL OUTPUT).
- **Vacuum pump relay (3.6L)** — coil terminal 86 is fed from the same run/start relay feed as fuse 76; coil terminal 85 -> PDC C7 pin 10 (DK GRN/YEL) -> XY4000A pin 11 -> XY3000A pin 5 -> (T110) powertrain control module C1 pin 77 (VAC PUMP RLY CTRL). Contact terminal 30 is hot at all times; terminal 87 -> fuse 9 (30 A) -> PDC C3 pin 22 (DK GRN/VIO) -> I9030A pin 6 -> vacuum pump pin 1 (VAC PUMP RLY O/P). Vacuum pump pin 2 (BLK) -> I9030A pin 8 -> G906A.

Grounds: G901A (left rear of engine compartment) carries anti-lock brakes module pins 14 and 46 (Z901, BLK/ORG); G906A (right front of engine compartment) carries the vacuum pump.

## Other modules on the same diagram

### Body control module C4 (right kick panel)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 18 | B15 | DK GRN/WHT | BRK SIG 1 | SP1010: anti-lock brakes module pin 43; exterior lights system |
| 19 | Z420 | BLK/ORG | GND | Brake fluid level sensor pin 2 (GND) |
| 21 | B20 | DK GRN/ORG | BRK FLUID LVL SIG | Brake fluid level sensor pin 1 (BRK FLUID LVL SIG) |

### Body control module C5 (right kick panel)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 11 | B25 | DK GRN/WHT | PARK BRK SW SENSE | Parking brake switch pin 1 (PARK BRK SW SENSE) |
| 25 | D45 | BRN | CAN C (+) | Computer data lines system |
| 26 | D46 | YEL | CAN C (-) | Computer data lines system |

### Powertrain control module C1 (right front of engine compartment)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 33 | D28 | YEL | CAN C (-) | Computer data lines system |
| 57 | D27 | TAN/WHT | CAN C (+) | Computer data lines system |
| 77 | T110 | DK GRN/YEL | VAC PUMP RLY CTRL | Vacuum pump relay coil terminal 85 via XY3000A pin 5, XY4000A pin 11 and PDC C7 pin 10 |

### Cluster

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 12 | (not printed) | BRN/WHT | CAN C (+) | Computer data lines system |
| 13 | (not printed) | YEL | CAN C (-) | Computer data lines system |

## Notes

- The parking brake switch and the brake fluid level sensor are wired to the body control module, not to the anti-lock brakes module.
- The body control module rows agree with [2025-Dodge-or-Ram-Truck-Durango-4WD-BCM.md](2025-Dodge-or-Ram-Truck-Durango-4WD-BCM.md) in pin, circuit and colour. Function labels differ only in abbreviation: this sheet prints "PARK BRK SW SENSE" and "BRK FLUID LVL SIG" where the body control module sheet prints "PARK BRK SW SNS" and "BRAKE FLUID LVL SIG".
- In-line connectors XY3000A, XY4000A, XY6020A and I9030A are identified by name and pin number only; their locations are not printed.
