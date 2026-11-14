# 2019 Dodge Durango 2WD V8-5.7L — TCM, shift-by-wire module and paddle shift pinout

Transcribed from [2019-Dodge-or-Ram-Truck-Durango-2WD-Transmissions-A_T-Circuit.pdf](2019-Dodge-or-Ram-Truck-Durango-2WD-Transmissions-A_T-Circuit.pdf) (ALLDATA "Transmissions - A/T Circuit" wiring diagram, Electrical - Interactive Color (Non OE), diagram page 1 of 1 = PDF page 2, sheet 637857; PDF page 1 is the title page only).

The source is titled for the "2019 Dodge or Ram Truck Durango 2WD V8-5.7L". The diagram is shared with the 3.6L and 6.4L engines and with SRT; where a circuit differs it is marked (5.7L & 6.4L)/(3.6L) or (SRT)/(except SRT) below.

The diagram covers the external wiring of the transmission control module (in transmission valve body) and the SBW shift by wire module (under center console): supply, ground, CAN C, the private data bus between the two modules, the park signal between the radio frequency hub module and the body control module, and the steering wheel paddle shift switches. Transmission-internal circuits are not shown.

Connectors covered:

| Connector | Pins drawn | Role |
|-----------|-----------|------|
| Transmission control module | 1-16 | Battery feed, ground, ignition control input from the BCM, CAN C, private data bus to the shifter |
| SBW shift by wire module | 1-10 | Battery feed, ground, CAN C, private data bus to the TCM |
| Steering column control module C1, C3 | C1: 3, 4; C3: 2, 5 | CAN C, paddle shift switch signal and ground |
| Left / right audio paddle switch | 1, 2 each | Paddle shift switch signal, ground |
| Radio frequency hub module C1 | 2, 11, 12 | TRS park signal, CAN C |
| Body control module C1, C4, C5 | C1: 24; C4: 24; C5: 25, 26 | Ignition control output to the TCM, TRS park signal, CAN C |

The source does not name the module connectors for the TCM or the shift by wire module; each is drawn as a single connector. Chrysler circuit codes (A190, D440, T824, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink; DK = dark). Unlisted pins are not connected in this diagram.

## Transmission control module (terminals 1-16 drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D440 | WHT/BRN | DATA BUS(-) | SBW shift by wire module pin 3 via I9030A pin 16, XY7000A pin 12 and XY7402B pin 3 |
| 4 | D441 | WHT/ORG | DATA BUS(+) | SBW shift by wire module pin 2 via I9030A pin 17, XY7000A pin 6 and XY7402B pin 4 |
| 5 | D29 | VIO/WHT | CAN C (+) | Computer data lines system |
| 6 | D30 | YEL | CAN C (-) | Computer data lines system |
| 9 | F1 | PNK/WHT | IGN OFF/RUN/START CTRL OUT | Body control module C1 pin 24 via I9030A pin 15 |
| 13 | A190 | YEL/RED | FUSED B (+) | PDC C3 pin 13, fuse 60 (15 A), hot at all times; via SP109, SP110 and I9030A pin 5 (5.7L & 6.4L) or via I9030A pin 20 (3.6L) |
| 14 | Z903 | BLK | GND | Ground G903A, through splice SP112 (3.6L) |

Pins 1, 2, 7, 8, 10, 11, 12, 15 and 16 are drawn without wires.

## SBW shift by wire module (terminals 1-10 drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | A915 | RED/YEL | FSD B (+) | PDC C7 pin 11, fuse 94 (10 A), hot at all times; via XY5020A pin 17 and XY7402B pin 7 |
| 2 | D441 | WHT/ORG | DATA BUS (+) | TCM pin 4 via XY7402B pin 4, XY7000A pin 6 and I9030A pin 17 |
| 3 | D440 | WHT/BRN | DATA BUS (-) | TCM pin 3 via XY7402B pin 3, XY7000A pin 12 and I9030A pin 16 |
| 4 | D429 | GRY | CAN C (+) | Computer data lines system |
| 5 | D430 | YEL | CAN C (-) | Computer data lines system |
| 10 | Z911 | BLK | GND | Unnamed splice, then BLK to ground G911A |

Pins 6, 7, 8 and 9 are drawn without wires.

## Steering column control module and paddle switches

Steering column control module (steering column):

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-4 | D97 | DK BLU/WHT | CAN C (+) | Computer data lines system |
| C1-3 | D98 | YEL | CAN C (-) | Computer data lines system |
| C3-2 | T830 | ORG/BRN (or DK GRN) | PADDLE SHIFT SW SIG | Splice S02A (in steering wheel): left audio paddle switch pin 1 and right audio paddle switch pin 1 |
| C3-5 | Z92 | BLK | GND | Splice S003A (SRT) / S01A (except SRT), in steering wheel: left audio paddle switch pin 2, right audio paddle switch pin 2, and a BLK branch to the horns system |

Left audio paddle switch and right audio paddle switch (identical pinout):

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | T830 | ORG/BRN (or DK GRN) | PADDLE SHIFT SW SIG | Splice S02A -> steering column control module C3 pin 2 |
| 2 | Z92 | BLK | GND | Splice S003A (SRT) / S01A (except SRT) -> steering column control module C3 pin 5 |

Both paddle switches share the single PADDLE SHIFT SW SIG wire and the single GND wire to the steering column control module. No dedicated paddle wire to the TCM is drawn.

## Other modules on the same diagram

Radio frequency hub module (behind left quarter panel), connector C1:

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | T824 | YEL/DK BLU | TRS PARK SIGNAL | Body control module C4 pin 24 via XY6020A pin 26 |
| 11 | D40 | YEL | CAN C (-) | Computer data lines system |
| 12 | D39 | DK BLU | CAN C (+) | Computer data lines system |

Body control module (right kick panel):

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C4-24 | T824 | YEL/DK BLU | TRS PARK SIGNAL | Radio frequency hub module C1 pin 2 via XY6020A pin 26 |
| C1-24 | F1 | PNK/WHT | IGN OFF/RUN/START CTRL OUT | TCM pin 9 via I9030A pin 15 |
| C5-25 | D45 | BRN | CAN C (+) | Computer data lines system |
| C5-26 | D46 | YEL | CAN C (-) | Computer data lines system |

## Power supply and grounds

Power distribution center assembly, right side of engine compartment:

- **Fuse 60 (15 A)**, hot at all times -> PDC C3 pin 13 (YEL/RED) -> TCM pin 13 (A190, FUSED B (+)). On the 5.7L and 6.4L the wire passes splices SP109 and SP110 and then I9030A pin 5; on the 3.6L it runs directly through I9030A pin 20. The other branches of SP109 and SP110 are not shown.
- **Fuse 94 (10 A)**, hot at all times -> PDC C7 pin 11 (RED/YEL) -> XY5020A pin 17 -> XY7402B pin 7 -> shift by wire module pin 1 (A915, FSD B (+)).
- **Ignition**: the body control module drives TCM pin 9 (F1, PNK/WHT) from its IGN OFF/RUN/START CTRL OUT at C1 pin 24. The shift by wire module has no ignition input in this diagram.
- **Grounds**: G903A — right front of engine compartment (TCM pin 14, Z903; splice SP112 is in this wire on the 3.6L). G911A — under center console (shift by wire module pin 10, Z911).

Inline connectors as drawn: I9030A (pins 5, 15, 16, 17, 20), XY7000A (pins 6, 12), XY7402B (pins 3, 4, 7), XY5020A (pin 17), XY6020A (pin 26). Their locations are not printed.

## Notes

- The private data bus (D440/D441) connects only the TCM and the shift by wire module in this diagram; it is separate from CAN C.
- The TRS PARK SIGNAL wire (T824) runs between the radio frequency hub module and the body control module only. It does not connect to the TCM in this diagram; TCM pin 15 is drawn without a wire.
- The splice between shift by wire module pin 10 and G911A is drawn without a designator.
- The paddle signal wire is printed with two colour alternatives, ORG/BRN or DK GRN, without a note saying which applies.
