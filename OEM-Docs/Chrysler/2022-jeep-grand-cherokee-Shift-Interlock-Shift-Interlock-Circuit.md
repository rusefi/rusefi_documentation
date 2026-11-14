# 2022 Jeep Grand Cherokee 4WD V6-3.6L — shift interlock: electronic shift module and TCM pinout

Transcribed from [2022-jeep-grand-cherokee-Shift-Interlock-Shift-Interlock-Circuit.pdf](2022-jeep-grand-cherokee-Shift-Interlock-Shift-Interlock-Circuit.pdf) (ALLDATA "Shift Interlock - Shift Interlock Circuit" wiring diagram, Electrical - Interactive Color (Non OE), diagram page 1 of 1 = PDF page 2, sheet 798534; PDF page 1 is the title page only).

The source is titled for the "2022 Jeep Truck Grand Cherokee 4WD V6-3.6L"; the file name does not state the drive type or engine. One splice in the diagram is marked (2.0L & 3.6L), which indicates the diagram also applies to the 2.0L.

The diagram covers the external wiring of the electronic shift module (under center console) and the pins of the transmission control module (top of transmission) that relate to it: supply, ground, CAN FD, and the private CAN bus between the two modules. The brake system control module appears only with its CAN FD pins. Transmission-internal circuits are not shown.

Connectors covered:

| Connector | Pins drawn | Role |
|-----------|-----------|------|
| Electronic shift module | 1-10 | Battery feed, ground, private CAN to the TCM, CAN FD |
| Transmission control module | 3, 4, 5, 6, 13, 14 only | Battery feed, ground, private CAN to the shift module, CAN FD |
| Brake system control module | 18, 34 only | CAN FD |

The source does not name the module connectors; each module is drawn with a single connector. Chrysler circuit codes (A190, D310, Z914, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, YEL yellow, VIO violet, GRY grey, TAN). Unlisted pins are not connected in this diagram.

## Electronic shift module (terminals 1-10 drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | A195 | VIO/RED | FUSED B (+) | Interior PDC C1 pin 25, fuse 8 (15 A), hot at all times; via XY352A pin 16 and splice SA192 (premium) |
| 6 | D310 | BRN/TAN | PRIVATE CAN (+) | TCM pin 4 via XY450A pin 13, XY230A pin 5 and XY200A pin 27 |
| 7 | D309 | TAN | PRIVATE CAN (-) | TCM pin 3 via XY450A pin 12, XY230A pin 6 and XY200A pin 14 |
| 8 | D284 | GRY/TAN | CAN FD (+) | Computer data lines system |
| 9 | D285 | TAN | CAN FD (-) | Computer data lines system |
| 10 | Z914 | BLK | GND | Ground G914A via XY352A pin 10 |

Pins 2, 3, 4 and 5 are drawn without wires.

## Transmission control module (only the pins below are drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D440 | TAN | PRIVATE CAN (-) | Electronic shift module pin 7 via XY200A pin 14, XY230A pin 6 and XY450A pin 12 |
| 4 | D310 | BRN/TAN | PRIVATE CAN (+) | Electronic shift module pin 6 via XY200A pin 27, XY230A pin 5 and XY450A pin 13 |
| 5 | D284 | GRY/TAN | CAN FD (+) | Computer data lines system |
| 6 | D285 | TAN | CAN FD (-) | Computer data lines system |
| 13 | A190 | YEL/RED | FUSED B (+) | PDC C2 pin 8, fuse 77 (20 A), hot at all times; via XY200A pin 12 |
| 14 | Z910A | BLK | GND | Ground G910A via XY200A pin 29 and splice SZ910B (2.0L & 3.6L) |

The TCM is drawn as a partial (dashed) outline; its other terminals are not shown on this diagram.

## Brake system control module (only the pins below are drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 18 | D284 | GRY/TAN | CAN FD (+) | Computer data lines system |
| 34 | D285 | TAN | CAN FD (-) | Computer data lines system |

The location is printed as "(LEFT REAR CONTROL MODULE)".

## Power supply and grounds

- **Fuse 8 (15 A)**, hot at all times, in the interior power distribution center assembly (left side of dash) -> interior PDC C1 pin 25 (VIO/RED) -> splice SA192 (premium) -> XY352A pin 16 -> electronic shift module pin 1 (A195, FUSED B (+)). The other branches of SA192 are not shown.
- **Fuse 77 (20 A)**, hot at all times, in the power distribution center assembly (right side of engine compartment) -> PDC C2 pin 8 (YEL/RED) -> XY200A pin 12 -> TCM pin 13 (A190, FUSED B (+)).
- **Grounds**: G914A (electronic shift module pin 10, Z914, via XY352A pin 10) — location printed as "(DASH: UNDER REAR OF CENTER CONSOLE) (INJECTOR: TOP LEFT (SIDE OF ENGINE)". G910A — right front of engine compartment (TCM pin 14, Z910A, via XY200A pin 29 and splice SZ910B (2.0L & 3.6L)).

Neither module has an ignition-switched input in this diagram.

Inline connectors as drawn: XY352A (pins 10, 16), XY450A (pins 12, 13), XY230A (pins 5, 6), XY200A (pins 12, 14, 27, 29). Their locations are not printed.

## Notes

- The private CAN pair connects only the electronic shift module and the TCM in this diagram; it is separate from CAN FD.
- The private CAN (-) wire carries two different circuit codes: D309 at electronic shift module pin 7 and D440 at TCM pin 3. It is one continuous TAN wire through XY450A, XY230A and XY200A; both codes are reproduced as printed.
- CAN FD (-) and private CAN (-) are both TAN; the circuit code distinguishes them.
- The G914A location text lists two harness-dependent locations (dash, injector) with unbalanced parentheses in the source; it is reproduced as printed.
