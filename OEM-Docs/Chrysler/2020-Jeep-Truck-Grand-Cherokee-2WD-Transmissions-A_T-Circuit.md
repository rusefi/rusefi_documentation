# 2020 Jeep Grand Cherokee 2WD V6-3.6L — TCM, shift lever assembly and paddle shift pinout

Transcribed from [2020-Jeep-Truck-Grand-Cherokee-2WD-Transmissions-A_T-Circuit.pdf](2020-Jeep-Truck-Grand-Cherokee-2WD-Transmissions-A_T-Circuit.pdf) (ALLDATA "Transmissions - A/T Circuit" wiring diagram, Electrical - Interactive Color (Non OE), diagram page 1 of 1 = PDF page 2, sheet 701503; PDF page 1 is the title page only).

The source is titled for the "2020 Jeep Truck Grand Cherokee 2WD V6-3.6L". The diagram is shared with the 5.7L, 6.4L and 6.2L engines and with SRT; where a circuit differs it is marked by engine or (SRT)/(except SRT) below. The source's own legend is: note 1 = 3.6L, note 2 = 5.7L, 6.4L & 6.2L.

The diagram covers the external wiring of the transmission control module (3.6L, 5.7L & 6.2L: top of transmission; 6.4L: right side of transmission) and the shift lever assembly: supply, ground, CAN C, the private data bus between the two modules, the PRNDM indicator, the park signal between the radio frequency hub module and the body control module, and the steering wheel paddle shift switches. Transmission-internal circuits are not shown.

Connectors covered:

| Connector | Pins drawn | Role |
|-----------|-----------|------|
| Transmission control module | 1-16 | Battery feed, ground, ignition control input from the BCM, CAN C, private data bus to the shifter |
| Shift lever assembly C1 | 1-10 | Battery feed, ground, CAN C, private data bus to the TCM |
| Shift lever assembly C2 | 1-3 | PRNDM indicator supply, ground and LIN bus |
| PRNDM indicator | 1-3 | Sensor supply, sensor ground, LIN bus |
| Steering column control module C1, C3 | C1: 2, 3, 4; C3: 2, 5 | Ground, CAN C, paddle shift switch signal and ground |
| Left / right audio paddle switch | 1, 2 each | Paddle shift switch signal, ground |
| Radio frequency hub module C1 | 2, 11, 12 | TRS park signal, CAN C |
| Body control module C1, C4, C5 | C1: 24; C4: 24; C5: 25, 26 | Ignition control output to the TCM, TRS park signal, CAN C |

The source does not name the TCM connector; it is drawn as a single connector. Chrysler circuit codes (A190, D440, T824, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink; DK = dark). Unlisted pins are not connected in this diagram.

## Transmission control module (terminals 1-16 drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D440 | WHT/BRN | DATA BUS (-) | Shift lever assembly C1 pin 3 via XY9030A pin 16, XY7000A pin 12 and XY7402B pin 2 |
| 4 | D441 | WHT/ORG | DATA BUS (+) | Shift lever assembly C1 pin 2 via XY9030A pin 17, XY7000A pin 6 and XY7402B pin 3 |
| 5 | D29 | VIO/WHT | CAN C (+) | Computer data lines system |
| 6 | D30 | YEL | CAN C (-) | Computer data lines system |
| 9 | F1 | PNK/WHT | IGN OFF/RUN/START CTRL OUTPUT | Body control module C1 pin 24 via XY9030A pin 15 |
| 13 | A190 | YEL/RED | FUSED B (+) | PDC C3 pin 13, fuse 60 (15 A), hot at all times; via XY9030A pin 5 (note 1, 3.6L) or pin 20 (note 2, 5.7L, 6.4L & 6.2L); splices SP109 and SP110 are in this wire on the 3.6L |
| 14 | Z903 | BLK | GND | Ground G903A; splice SP112 is in this wire on the 3.6L |

Pins 1, 2, 7, 8, 10, 11, 12, 15 and 16 are drawn without wires.

## Shift lever assembly

Connector C1 (terminals 1-10 drawn):

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | A915 | RED/YEL | FSD B (+) | Splice S001, then PDC C7 pin 11, fuse 94 (10 A), hot at all times |
| 2 | D441 | WHT/ORG | DATA BUS (+) | TCM pin 4 via XY7402B pin 3, XY7000A pin 6 and XY9030A pin 17 |
| 3 | D440 | WHT/BRN | DATA BUS (-) | TCM pin 3 via XY7402B pin 2, XY7000A pin 12 and XY9030A pin 16 |
| 4 | D429 | GRY | CAN C (+) | Computer data lines system |
| 5 | D430 | YEL | CAN C (-) | Computer data lines system |
| 10 | Z911 | BLK | GND | Splice S002, then BLK to ground G911A |

Pins 6, 7, 8 and 9 are drawn without wires. The connector designator C1 is printed below pin 1 and no separate designator is printed at pin 10; pins 1-10 are read as one connector.

Connector C2:

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | F857 | YEL | SENS SUPPLY | PRNDM indicator pin 1 (SENS SUPPLY) |
| 2 | T296 | BRN | SENS GND | PRNDM indicator pin 2 (SENS GND) |
| 3 | D405 | WHT | LIN BUS | PRNDM indicator pin 3 (LIN BUS) |

PRNDM indicator pinout: 1 SENS SUPPLY (YEL), 2 SENS GND (BRN), 3 LIN BUS (WHT). All three wires run directly to shift lever assembly C2 with no inline connector drawn. No location is printed for the PRNDM indicator or the shift lever assembly.

## Steering column control module and paddle switches

Steering column control module (in steering wheel):

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-2 | Z912 | BLK | GND | Ground G912A |
| C1-4 | D97 | DK BLU/WHT | CAN C (+) | Computer data lines system |
| C1-3 | D98 | YEL | CAN C (-) | Computer data lines system |
| C3-5 | Z92 | BLK (or BLU) | GND | Splice S003A (SRT) / S03A (except SRT): left audio paddle switch pin 2, right audio paddle switch pin 2, and a BLK (or BLU) branch to the sound systems |
| C3-2 | T830 | DK GRN (or GRN) | PADDLE SHIFT SW SIG | Splice S02A (in steering wheel harness): left audio paddle switch pin 1 and right audio paddle switch pin 1 |

Left audio paddle switch and right audio paddle switch (identical pinout):

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | T830 | DK GRN (or GRN) | PADDLE SHIFT SW SIG | Splice S02A -> steering column control module C3 pin 2 |
| 2 | Z92 | BLK (or BLU) | GND | Splice S003A (SRT) / S03A (except SRT) -> steering column control module C3 pin 5 |

Both paddle switches share the single PADDLE SHIFT SW SIG wire and the single GND wire to the steering column control module. No dedicated paddle wire to the TCM is drawn.

## Other modules on the same diagram

Radio frequency hub module (behind rear of left quarter panel), connector C1:

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | T824 | YEL/DK BLU | TRS PARK SIGNAL | Body control module C4 pin 24 via XY6020A pin 26 |
| 11 | D40 | YEL | CAN C (-) | Computer data lines system |
| 12 | D39 | DK BLU | CAN C (+) | Computer data lines system |

Body control module (right end of dash):

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C4-24 | T824 | YEL/DK BLU | TRS PARK SIGNAL | Radio frequency hub module C1 pin 2 via XY6020A pin 26 |
| C1-24 | F1 | PNK/WHT | IGN OFF/RUN/START CTRL OUTPUT | TCM pin 9 via XY9030A pin 15 |
| C5-25 | D45 | BRN | CAN C (+) | Computer data lines system |
| C5-26 | D46 | YEL | CAN C (-) | Computer data lines system |

## Power supply and grounds

Power distribution center assembly, right side of engine compartment:

- **Fuse 60 (15 A)**, hot at all times -> PDC C3 pin 13 (YEL/RED) -> SP109 (3.6L) -> SP110 (3.6L) -> XY9030A pin 5 (3.6L) or pin 20 (5.7L, 6.4L & 6.2L) -> TCM pin 13 (A190, FUSED B (+)). The other branches of SP109 and SP110 are not shown.
- **Fuse 94 (10 A)**, hot at all times -> PDC C7 pin 11 (RED/YEL) -> splice S001 -> shift lever assembly C1 pin 1 (A915, FSD B (+)). No inline connector is drawn in this wire. The other branches of S001 are not shown.
- **Ignition**: the body control module drives TCM pin 9 (F1, PNK/WHT) from its IGN OFF/RUN/START CTRL OUTPUT at C1 pin 24. The shift lever assembly has no ignition input in this diagram.
- **Grounds**: G903A — right front of engine compartment (TCM pin 14, Z903). G911A — under center console (shift lever assembly C1 pin 10, Z911, through splice S002). G912A — under front of center console (steering column control module C1 pin 2, Z912).

Splice locations as printed: S003A (SRT) — in steering wheel harness; S03A (except SRT) — left side of steering wheel harness; S02A — in steering wheel harness.

Inline connectors as drawn: XY9030A (pins 5, 15, 16, 17, 20), XY7000A (pins 6, 12), XY7402B (pins 2, 3), XY6020A (pin 26). Their locations are not printed.

## Notes

- The private data bus (D440/D441) connects only the TCM and the shift lever assembly in this diagram; it is separate from CAN C.
- The TRS PARK SIGNAL wire (T824) runs between the radio frequency hub module and the body control module only. It does not connect to the TCM in this diagram; TCM pin 15 is drawn without a wire.
- The paddle switch wires are printed with colour alternatives, DK GRN or GRN for the signal and BLK or BLU for the ground, without a note saying which applies.
