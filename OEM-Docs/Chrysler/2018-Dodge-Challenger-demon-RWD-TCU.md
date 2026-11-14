# 2018 Dodge Challenger RWD V8-6.2L SC Demon — TCM and shift-by-wire module pinout

Transcribed from [2018-Dodge-Challenger-demon-RWD-TCU.pdf](2018-Dodge-Challenger-demon-RWD-TCU.pdf) (ALLDATA "Transmissions - A/T Circuit" wiring diagram, Electrical - Interactive Color (Non OE), diagram page 1 of 1 = PDF page 2, sheet 585427; PDF page 1 is the title page only).

The diagram covers the external wiring of the automatic transmission controller, printed as "SBW Cygnus TCM module" (right side of transmission), and of the "SBW shift by wire module" (under center console): supply, ground, CAN C, the private data bus between the two modules, and the park signal to the radio frequency hub module. Transmission-internal circuits (solenoids, speed and range sensors) are not shown.

Connectors covered:

| Connector | Pins drawn | Role |
|-----------|-----------|------|
| SBW Cygnus TCM module | 1-16 | Battery feed, ground, ignition control input from the BCM, CAN C, private data bus to the shifter, TRS park signal |
| SBW shift by wire module | 1-10 | Battery feed, ground, CAN C, private data bus to the TCM |
| Radio frequency hub module C1 | 2, 11, 12 only | TRS park signal input, CAN C |
| Body control module C5 | 31 only | IGN OFF/RUN/START CTRL O/P to the TCM |

The source does not name the module connectors (no C1/C2 designator) for the TCM or the shift by wire module; each is drawn as a single connector. Chrysler circuit codes (A190, D440, T824, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink; DK = dark). Unlisted pins are not connected in this diagram.

## SBW Cygnus TCM module (terminals 1-16 drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D440 | WHT/BRN | DATA BUS (-) | SBW shift by wire module pin 3 via I200 pin 23, I251 pin 5 and I660 pin 17 |
| 4 | D441 | WHT/ORG | DATA BUS (+) | SBW shift by wire module pin 2 via I200 pin 24, I251 pin 6 and I660 pin 6 |
| 5 | D29 | VIO/WHT | CAN C (+) | Computer data lines system |
| 6 | D30 | YEL (or YEL/DK BLU) | CAN C (-) | Computer data lines system |
| 9 | F1 | PNK/WHT | IGN OFF/RUN/START CTRL O/P | Body control module C5 pin 31 via I200 pin 18 and I250 pin 8 |
| 13 | A190 | YEL/RED | FUSED B (+) | Splice SA190B via I200 pin 14; SA190B is fed by fuse 29 (15 A) in the front power distribution center |
| 14 | Z904 | BLK | GND | Ground G904A |
| 15 | T824 | YEL/DK BLU | TRS PRK SIG | Radio frequency hub module C1 pin 2 via I200 pin 19 and I251 pin 7 |

Pins 1, 2, 7, 8, 10, 11, 12 and 16 are drawn without wires.

## SBW shift by wire module (terminals 1-10 drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | A190 | YEL/RED | FUSED B (+) | Splice SA190B via I660 pin 10 and I250 pin 10 |
| 2 | D441 | WHT/ORG | DATA BUS (+) | TCM pin 4 via I660 pin 6, I251 pin 6 and I200 pin 24 |
| 3 | D440 | WHT/BRN | DATA BUS (-) | TCM pin 3 via I660 pin 17, I251 pin 5 and I200 pin 23 |
| 4 | D429 | GRY | CAN C (-) | Computer data lines system |
| 5 | D430 | YEL | CAN C (+) | Computer data lines system |
| 10 | Z911 | BLK | GND | Splice SZ911E, then BLK to ground G211 |

Pins 6, 7, 8 and 9 are drawn without wires.

## Other modules on the same diagram

Radio frequency hub module (under center of hat shelf), connector C1:

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | T824 | YEL/DK BLU | TRS PRK SIG | TCM pin 15 via I251 pin 7 and I200 pin 19 |
| 11 | D40 | YEL | CAN C (-) | Computer data lines system |
| 12 | D39 | DK BLU | CAN C (+) | Computer data lines system |

Body control module (right end of dash), connector C5:

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 31 | F1 | PNK/WHT | IGN OFF/RUN/START CTRL O/P | TCM pin 9 via I250 pin 8 and I200 pin 18 |

## Power supply and grounds

- **Fuse 29 (15 A)**, hot at all times, in the front power distribution center assembly (right side of engine compartment) -> PDC terminal 29B (YEL/RED) -> splice SA190B. From SA190B one YEL/RED branch runs through I200 pin 14 to TCM pin 13 (A190), and a second YEL/RED branch runs through I250 pin 10 and I660 pin 10 to shift by wire module pin 1 (A190). Both modules share this fuse.
- **Ignition**: the body control module drives TCM pin 9 (F1, PNK/WHT) from its IGN OFF/RUN/START CTRL O/P at C5 pin 31. The shift by wire module has no ignition input in this diagram.
- **Grounds**: G904A — right side of engine (TCM pin 14, Z904). G211 — left center of dash (shift by wire module pin 10, Z911, through splice SZ911E).

Inline connectors as drawn: I200 (pins 14, 18, 19, 23, 24), I250 (pins 8, 10), I251 (pins 5, 6, 7), I660 (pins 6, 10, 17). Their locations are not printed.

## Notes

- The private data bus (D440/D441) connects only the TCM and the shift by wire module in this diagram; it is separate from CAN C.
- CAN C polarity is printed differently on the two modules: the TCM shows YEL (D30) as CAN C (-), while the shift by wire module shows YEL (D430) as CAN C (+) and GRY (D429) as CAN C (-). The radio frequency hub module shows YEL (D40) as CAN C (-) and DK BLU (D39) as CAN C (+). The labels are reproduced as printed.
- TCM pin 6 is printed with two wire-colour alternatives, YEL or YEL/DK BLU, without a note saying which applies.
