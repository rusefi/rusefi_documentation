# 2025 Dodge Durango 4WD V6-3.6L — transmission control module and shift lever pinout

Transcribed from [2025-Dodge-or-Ram-Truck-Durango-4WD-TCU-and-shifter.pdf](2025-Dodge-or-Ram-Truck-Durango-4WD-TCU-and-shifter.pdf) (ALLDATA "Transmissions - A/T Circuit" wiring diagram, Electrical - Interactive Color (Non OE), diagram page 1 of 1 = PDF page 2, sheet 915928; PDF page 1 is the title page only).

Transmission Control Module (TCM), located in the transmission valve body, and the electronic shift lever assembly, as fitted to the 2025 Dodge or Ram Truck Durango 4WD V6-3.6L. The sheet shows only the vehicle-harness side of the TCM (power, ground, ignition, CAN C and the private eshift data bus); solenoids and sensors inside the transmission are not shown. The shift lever assembly is drawn twice, as an "except police" version and a "police" version with different pin assignments. The sheet also shows the PRNDM indicator, the paddle shift switches and steering column control module, and the transmission-related pins of the radio frequency hub module and body control module.

Connectors covered:

| Module | Connector | Terminals drawn | Role |
|--------|-----------|-----------------|------|
| Transmission control module | (unnamed) | 16 | Fused battery, ground, ignition, CAN C, eshift data bus |
| Shift lever assembly (except police) | C1 | 10 | Battery feed, ground, CAN C, data bus to TCM |
| Shift lever assembly (except police) | C2 | 3 | PRNDM indicator supply, ground and LIN |
| Shift lever assembly (police) | C1 | 12 | Battery feed, ground, CAN C, eshift data bus to TCM, shifter lever sensor |
| PRNDM indicator | (unnamed) | 3 | Supply, ground, LIN |
| Steering column control module | C1, C3 | pins C1-3, C1-4, C3-2, C3-5 shown | CAN C, paddle shift switch input |
| Radio frequency hub module | C1 | pins 2, 11, 12 shown | CAN C, TRS park signal |
| Body control module | C1, C4, C5 | pins C1-24, C4-24, C5-25, C5-26 shown | Ignition output, TRS park signal, CAN C |

Chrysler circuit codes (D440, A190, Z903, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). Unlisted pins are not connected in this diagram.

## Transmission control module (16 terminals)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 3 | D440 | WHT/BRN | DATA BUS (-) ESHIFT | Via I9030A pin 16 and XY7000A pin 12 -> except police: XY7402B pin 3 -> shift lever assembly C1 pin 3 (DATA BUS (-)); police: shift lever assembly C1 pin 6 (DATA BUS (-) ESHIFT) |
| 4 | D441 | WHT/ORG | DATA BUS (+) ESHIFT | Via I9030A pin 17 and XY7000A pin 6 -> except police: XY7402B pin 4 -> shift lever assembly C1 pin 2 (DATA BUS (+)); police: shift lever assembly C1 pin 2 (DATA BUS (+) ESHIFT) |
| 5 | D29 | VIO/WHT | CAN C (+) | Computer data lines system |
| 6 | D30 | YEL | CAN C (-) | Computer data lines system |
| 9 | F1 | PNK/WHT | IGN OFF/RUN/START CTRL OUT | Body control module C1 pin 24 (IGN OFF/RUN/START CTRL OUT) via I9030A pin 15 |
| 13 | A190 | YEL/RED | FUSED B (+) | PDC C3 pin 13, fuse 60 (15 A), hot at all times, via I9030A pin 20 |
| 14 | Z903 | BLK | GND | SP112 (3.6L) -> ground G903A |

## Shift lever assembly — except police

### C1 (10 terminals drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | A915 | RED/YEL | FSD B (+) | SA195 -> XY7402B pin 7 -> XY5020A pin 32 -> PDC C7 pin 11, fuse 94 (10 A), hot at all times; SA195 also feeds the power distribution system |
| 2 | D441 | WHT/ORG | DATA BUS (+) | TCM pin 4 via XY7402B pin 4, XY7000A pin 6 and I9030A pin 17 |
| 3 | D440 | WHT/BRN | DATA BUS (-) | TCM pin 3 via XY7402B pin 3, XY7000A pin 12 and I9030A pin 16 |
| 4 | D429 | GRY | CAN C (+) | Computer data lines system |
| 5 | D430 | YEL | CAN C (-) | Computer data lines system |
| 10 | Z911 | BLK | GND | SZ911 -> ground G911A |

### C2 (3 terminals drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | F857 | YEL | SENS SUPPLY | PRNDM indicator pin 1 (SENS SUPPLY) |
| 2 | T296 | BRN | SENS GND | PRNDM indicator pin 2 (SENS GND) |
| 3 | D405 | WHT | LIN BUS | PRNDM indicator pin 3 (LIN BUS) |

## Shift lever assembly — police

### C1 (12 terminals drawn)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | A915 | RED/YEL | FSD B (+) | SP8112 -> XY5020A pin 32 -> PDC C7 pin 11, fuse 94 (10 A), hot at all times; SP8112 also feeds the power distribution system |
| 2 | D441 | WHT/ORG | DATA BUS (+) ESHIFT | TCM pin 4 via XY7000A pin 6 and I9030A pin 17 |
| 4 | Z912 | BLK | GND | SP8041 -> ground G912A (BLK/BLU between SP8041 and G912A) |
| 6 | D440 | WHT/BRN | DATA BUS (-) ESHIFT | TCM pin 3 via XY7000A pin 12 and I9030A pin 16 |
| 7 | D430 | YEL | CAN C (-) | Computer data lines system |
| 8 | D429 | GRY | CAN C (+) | Computer data lines system |
| 11 | G11 | VIO/BLU | SHIFTER LEVER SENS SIG | XY550A pin 1, printed "(NOT USED)" |
| 12 | G12 | VIO/TAN | SHIFTER LEVER SENS RTN | XY550A pin 2, printed "(NOT USED)" |

The police shift lever is wired directly from XY7000A; the XY7402B in-line connector appears only in the except-police branch.

## Other modules on the same diagram

### PRNDM indicator

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | F857 | YEL | SENS SUPPLY | Shift lever assembly (except police) C2 pin 1 |
| 2 | T296 | BRN | SENS GND | Shift lever assembly (except police) C2 pin 2 |
| 3 | D405 | WHT | LIN BUS | Shift lever assembly (except police) C2 pin 3 |

The PRNDM indicator is drawn connected to the except-police shift lever only; no location is printed for it.

### Steering column control module (steering column)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-3 | D98 | YEL | CAN C (-) | Computer data lines system |
| C1-4 | D97 | DK BLU/WHT | CAN C (+) | Computer data lines system |
| C3-2 | T830 | ORG/BRN (or DK GRN) | PADDLE SHIFT SW SIG | Splice S002A (SRT) / S02A (except SRT), in steering wheel: left audio paddle switch pin 1 and right audio paddle switch pin 1 (PADDLE SHIFT SW SIG) |
| C3-5 | Z92 | BLK | GND | Splice S003A (heated steering wheel) / S01A (except heated steering wheel), in steering wheel: left audio paddle switch pin 2 and right audio paddle switch pin 2 (GND); a dashed BLK branch from the splice goes to the seats system |

Left audio paddle switch and right audio paddle switch: 1 PADDLE SHIFT SW SIG (ORG/BRN, or DK GRN), 2 GND (BLK). Both switches share the single PADDLE SHIFT SW SIG circuit T830 and the ground circuit Z92.

### Radio frequency hub module C1 (behind left quarter panel)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | T824 | YEL/DK BLU | TRS PARK SIGNAL | Body control module C4 pin 24 (TRS PARK SIGNAL) via XY6020A pin 26 |
| 11 | D40 | YEL | CAN C (-) | Computer data lines system |
| 12 | D39 | DK BLU | CAN C (+) | Computer data lines system |

### Body control module (right kick panel)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| C1-24 | F1 | PNK/WHT | IGN OFF/RUN/START CTRL OUT | TCM pin 9 via I9030A pin 15 |
| C4-24 | T824 | YEL/DK BLU | TRS PARK SIGNAL | Radio frequency hub module C1 pin 2 via XY6020A pin 26 |
| C5-25 | D45 | BRN | CAN C (+) | Computer data lines system |
| C5-26 | D46 | YEL | CAN C (-) | Computer data lines system |

## Power supply / grounds

Power distribution center assembly, right side of engine compartment (both feeds are hot at all times):

- **Fuse 60 (15 A)** -> PDC C3 pin 13 (YEL/RED, A190) -> I9030A pin 20 -> TCM pin 13 (FUSED B (+)).
- **Fuse 94 (10 A)** -> PDC C7 pin 11 (RED/YEL) -> XY5020A pin 32 -> except police: XY7402B pin 7 -> SA195 -> shift lever assembly C1 pin 1 (A915, FSD B (+)); police: SP8112 -> shift lever assembly C1 pin 1 (A915, FSD B (+)). SA195 and SP8112 each have a second RED/YEL branch to the power distribution system.
- The TCM ignition input (pin 9, F1 PNK/WHT) is an output of the body control module (C1 pin 24), not a fused PDC feed.

Grounds: G903A (right front of engine compartment) carries TCM pin 14 through SP112 (3.6L); G911A (under center console) carries the except-police shift lever C1 pin 10 through SZ911; G912A (under center console) carries the police shift lever C1 pin 4 through SP8041. The wire between each splice and its ground point is drawn dashed for G911A and G912A.

Component locations: transmission control module — in transmission valve body; power distribution center assembly — right side of engine compartment; radio frequency hub module — behind left quarter panel; body control module — right kick panel; steering column control module — steering column; paddle shift splices — in steering wheel; G903A — right front of engine compartment; G911A, G912A — under center console. Locations of the shift lever assembly, PRNDM indicator, paddle switches and the in-line connectors (I9030A, XY5020A, XY7000A, XY7402B, XY6020A, XY550A) are not printed.

## Notes

- The shift lever is wired to the TCM by a dedicated two-wire data bus (D440 / D441) in addition to its CAN C pins. The except-police lever labels these pins "DATA BUS (-)" / "DATA BUS (+)"; the TCM and the police lever label the same circuits "DATA BUS (-) ESHIFT" / "DATA BUS (+) ESHIFT".
- Pin assignments differ between the two shift levers: CAN C (+)/(-) is C1 pins 4/5 (except police) but C1 pins 8/7 (police); DATA BUS (-) is C1 pin 3 (except police) but C1 pin 6 (police); ground is C1 pin 10 (except police) but C1 pin 4 (police).
- The RED/YEL fuse 94 feed is drawn passing beside in-line connector XY7000A without a terminal there; only the two data bus wires have XY7000A terminals (pins 12 and 6).
- Body control module rows agree with [2025-Dodge-or-Ram-Truck-Durango-4WD-BCM.md](2025-Dodge-or-Ram-Truck-Durango-4WD-BCM.md) in pin, circuit and colour; that sheet prints the functions as "IGN OFF/RUN/START CTRL O/P" and "TRS PARK SIG".
