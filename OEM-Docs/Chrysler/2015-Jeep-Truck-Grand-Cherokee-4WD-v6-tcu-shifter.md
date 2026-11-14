# 2015 Jeep Grand Cherokee 4WD V6-3.6L — transmission control module and shift lever wiring

Transcribed from [2015-Jeep-Truck-Grand-Cherokee-4WD-v6-tcu-shifter.pdf](2015-Jeep-Truck-Grand-Cherokee-4WD-v6-tcu-shifter.pdf) (ALLDATA "Transmissions - A/T Circuit" wiring diagram, Transmission and Drivetrain, Electrical - Interactive Color (Non OE), diagram page 1 of 1 = PDF page 2, sheet 476506).

The source is filed under the 2015 Jeep Truck Grand Cherokee 4WD V6-3.6L. The sheet itself is shared between engines: the transmission control module location is printed for 3.6L, 3.0L turbo diesel, 5.7L and 6.4L, and two inline connectors and the ground point are selected by the notes (1) DIESEL and (2) GASOLINE. For the 3.6L, the GASOLINE alternatives apply.

The diagram covers the external wiring of the transmission control module (TCM), the electronic shift lever assembly, the paddle shift switches on the steering control module, and the radio frequency hub and body control module terminals that exchange signals with the TCM. Solenoids, speed sensors and other circuits internal to the transmission are not on this sheet.

Connectors covered:

| Module | Connector | Pins drawn | Location (as printed) |
|--------|-----------|-----------|-----------------------|
| Transmission control module | single connector, no designator | 16 | 3.6L & 3.0L turbo diesel: top of transmission; 5.7L & 6.4L: right side of transmission |
| Shift lever assembly | single connector, no designator | 10 | not printed |
| Steering control module | C1, C3 | 4 shown | Steering column |
| Left audio paddle switch | single connector | 2 | not printed |
| Right audio paddle switch | single connector | 2 | not printed |
| Radio frequency hub module | C1 | 3 shown | Behind rear of left quarterpanel |
| Body control module | C1, C5 | 3 shown | Right end of dash |

Chrysler circuit codes (D440, T824, A190, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, YEL yellow, GRY grey, ORG orange, PNK pink, VIO violet, WHT white; DK BLU dark blue). Inline connectors are named I#### as printed. Unlisted pins are not connected in this diagram. "Computer data lines system" entries continue in [2015-Jeep-Truck-Grand-Cherokee-4WD-v6-data-lines.md](2015-Jeep-Truck-Grand-Cherokee-4WD-v6-data-lines.md).

## Transmission control module (16 terminals drawn)

Terminals 1-16 are drawn; 1, 2, 7, 8, 10, 11, 12 and 16 have no wire.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D440 | WHT/BRN | DATA BUS (-) | Shift lever assembly pin 5 (DATA BUS (-)) via I9050 pin 9 (diesel) or I9030 pin 16 (gasoline), I7000 pin 12, I2666B pin 2 |
| 4 | D441 | WHT/ORG | DATA BUS (+) | Shift lever assembly pin 4 (DATA BUS (+)) via I9050 pin 16 (diesel) or I9030 pin 17 (gasoline), I7000 pin 6, I2666B pin 3 |
| 5 | D29 | VIO/WHT | CAN C (+) | Computer data lines system |
| 6 | D30 | YEL | CAN C (-) | Computer data lines system |
| 9 | F1 | PNK/WHT | IGN OFF/RUN/STRT CTRL OUTPUT | Body control module C1 pin 24 (IGN OFF/RUN/STRT CTRL OUTPUT) via I9050 pin 3 (diesel) or I9030 pin 15 (gasoline) |
| 13 | A190 | YEL/RED | FUSED B (+) | Power distribution center C3 pin 13, fuse 60 (15 A), hot at all times |
| 14 | Z903 (or Z909) | BLK | GND | Ground G903A (gasoline); via SP2068 to ground G909A (diesel) |
| 15 | T824 | YEL/DK BLU | TRS PARK SIGNAL | Radio frequency hub module C1 pin 2 (TRS PARK SIGNAL) via I9050 pin 8 (diesel) or I9030 pin 21 (gasoline), I6020 pin 26 |

The DATA BUS (+)/(-) pair is a dedicated two-wire link between the TCM and the shift lever assembly; it is separate from the CAN C pair that each of the two modules also has.

## Shift lever assembly (10 terminals drawn)

Terminals 1-10 are drawn; 2, 3, 6 and 8 have no wire.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | Z911 | BLK | GND | S002 -> ground G911A (under center console) |
| 4 | D441 | WHT/ORG | DATA BUS (+) | TCM pin 4 via I2666B pin 3, I7000 pin 6, I9030 pin 17 (gasoline) or I9050 pin 16 (diesel) |
| 5 | D440 | WHT/BRN | DATA BUS (-) | TCM pin 3 via I2666B pin 2, I7000 pin 12, I9030 pin 16 (gasoline) or I9050 pin 9 (diesel) |
| 7 | A915 | RED/YEL | FSD B (+) | S001 -> power distribution center C7 pin 11, fuse 94 (10 A), hot at all times |
| 9 | D429 | GRY | CAN C (+) | Computer data lines system |
| 10 | D430 | YEL | CAN C (-) | Computer data lines system |

## Steering control module (steering column)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-3 | D98 | YEL | CAN C (-) | Computer data lines system |
| C1-4 | D97 | DK BLU/WHT | CAN C (+) | Computer data lines system |
| C3-2 | T830 | BRN/ORG | PADDLE SHIFT SW SIG | S02A: left audio paddle switch pin 1 and right audio paddle switch pin 1 |
| C3-5 | Z92 | BLK | GND | S03A: left audio paddle switch pin 2 and right audio paddle switch pin 2 |

## Left audio paddle switch / right audio paddle switch

Both switches have the same two-terminal pinout and are wired in parallel onto one signal wire and one ground wire.

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | T830 | BRN/ORG | PADDLE SHIFT SW SIG | S02A -> steering control module C3 pin 2 |
| 2 | Z92 | BLK | GND | S03A -> steering control module C3 pin 5 |

The circuit codes T830 and Z92 are printed on the steering control module side of the splices only.

## Radio frequency hub module — C1 (behind rear of left quarterpanel)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | T824 | YEL/DK BLU | TRS PARK SIGNAL | TCM pin 15 via I6020 pin 26, I9030 pin 21 (gasoline) or I9050 pin 8 (diesel) |
| 11 | D40 | YEL | CAN C (-) | Computer data lines system |
| 12 | D39 | DK BLU | CAN C (+) | Computer data lines system |

## Body control module (right end of dash)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-24 | F1 | PNK/WHT | IGN OFF/RUN/STRT CTRL OUTPUT | TCM pin 9 via I9030 pin 15 (gasoline) or I9050 pin 3 (diesel) |
| C5-25 | D45 | BRN | CAN C (+) | Computer data lines system |
| C5-26 | D46 | YEL | CAN C (-) | Computer data lines system |

## Power supply and grounds

Power distribution center assembly, right side of engine compartment:

- **Fuse 60 (15 A)**, hot at all times -> PDC C3 pin 13 (YEL/RED, A190) -> TCM pin 13 (FUSED B (+)).
- **Fuse 94 (10 A)**, hot at all times -> PDC C7 pin 11 (RED/YEL) -> S001 -> (RED/YEL, A915) -> shift lever assembly pin 7 (FSD B (+)). The segment between PDC C7 pin 11 and S001 is drawn dashed.
- The TCM ignition input (pin 9, F1) is supplied by the body control module C1 pin 24, not by a PDC fuse on this sheet.

Grounds: G903A — right front of engine compartment (gasoline; TCM pin 14, circuit Z903); G909A — left rear of engine compartment (diesel; TCM pin 14 via SP2068, circuit Z909); G911A — under center console (shift lever assembly pin 1 via S002). The segments SP2068-G903A/G909A and S002-G911A are drawn dashed.

Splices: SP2068 (diesel only); S001; S002; S02A — under rear of center console, in rear console harness; S03A — in steering wheel harness.

Inline connectors on this sheet:

| Connector | Pins used | Circuits |
|-----------|-----------|----------|
| I9030 (gasoline) | 15, 16, 17, 21 | F1, D440, D441, T824 |
| I9050 (diesel) | 3, 9, 16, 8 | F1, D440, D441, T824 |
| I7000 | 12, 6 | D440, D441 |
| I2666B | 2, 3 | D440, D441 |
| I6020 | 26 | T824 |

## Notes

- The module on the steering column is printed here as "STEERING CONTROL MODULE (STEERING COLUMN)". The computer data lines diagram prints the module with the same C1 pins 3/4 and circuits D98/D97 as "STEERING COLUMN CONTROL MODULE (IN STEERING WHEEL)".
- The CAN C terminals on this sheet (TCM 5/6, shift lever 9/10, radio frequency hub C1-12/11, body control module C5-25/26, steering control module C1-4/3) agree in pin, circuit code and wire color with [2015-Jeep-Truck-Grand-Cherokee-4WD-v6-data-lines.md](2015-Jeep-Truck-Grand-Cherokee-4WD-v6-data-lines.md).
- Neither the TCM nor the shift lever connector carries a connector designator or a location for the shift lever assembly on this sheet.
