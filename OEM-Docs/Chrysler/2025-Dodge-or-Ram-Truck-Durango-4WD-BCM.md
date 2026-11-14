# 2025 Dodge Durango 4WD V6-3.6L — body control module pinout

Transcribed from [2025-Dodge-or-Ram-Truck-Durango-4WD-BCM.pdf](2025-Dodge-or-Ram-Truck-Durango-4WD-BCM.pdf) (ALLDATA "Body Computer - Body Control Module Circuit" wiring diagram, Electrical - Interactive Color (Non OE), diagram pages 1-2 = PDF pages 2-3, sheets 916243-916244; PDF page 1 is the title page only).

Body Control Module (BCM), located at the right kick panel, as fitted to the 2025 Dodge or Ram Truck Durango 4WD V6-3.6L. Seven connectors, C1-C7. The diagram is a module overview: apart from the battery feeds and grounds, every wire ends at an arrow naming the system diagram that continues it, so the far-end component and terminal are not shown here.

Connectors covered:

| Connector | Terminals drawn | Diagram page | Role |
|-----------|-----------------|--------------|------|
| C1 | 24 | 1 | Front lamp drivers, wiper/washer, hood ajar, run/start, starter and horn relay controls, ignition output |
| C2 | 4 | 1 | Ground and battery feed |
| C3 | 4 | 2 | Battery feeds and ground |
| C4 | 24 | 1 | Front lamp drivers, brake signal, brake fluid level, ambient temperature, sensor ground, TRS park signal |
| C5 | 48 | 1 | Rear lamp drivers and relay controls, accessory delay and run relay controls, fuel level, CAN C, LIN, rear wiper |
| C6 | 48 | 2 | Door lock and unlock, ajar switches, liftgate, CAN IHS, inverter, horn switch, rear lamp drivers and fault sense |
| C7 | 24 | 2 | Headlamp switch, CAN IHS, LIN, interior lamp drivers, hazard switch, indicators |

Chrysler circuit codes (L89, A904, D45, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). Unlisted pins are not connected in this diagram.

## C1 (24-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | L89 | WHT/YEL | LF FOG LAMP CTRL | Headlights system |
| 2 | L59 | WHT/DK BLU | RH DRL LAMP DRV | Headlights system |
| 3 | L43 | WHT/DK BLU | LH LOW BEAM DRV | Headlights system |
| 4 | L77 | WHT/BRN | LF PARK LAMP DRV | Exterior lights system |
| 6 | W7 | BRN/GRY | WIPER PARK SW SNS | Wiper/washer system |
| 8 | W1 | BRN/TAN | WASH FLUID LEVEL SW SNS | Wiper/washer system |
| 10 | L145 | WHT/ORG | LH SIDE MARKER CTRL | Exterior lights system |
| 11 | G70 | VIO/BLU | HOOD AJAR SW SNS | Door locks & anti-theft systems |
| 12 | W8 | BRN/BLU | WIPER ON/OFF RLY CTRL | Wiper/washer system |
| 13 | L60 | WHT/TAN | RF TURN LAMP DRIV | Exterior lights system |
| 14 | W20 | BRN/YEL | RR WASH PUMP MTR CTRL | Wiper/washer system |
| 15 | W10 | BRN | FRT WASH PUMP MTR CTRL | Wiper/washer system |
| 18 | K617 | BRN | RUN/START RLY CTRL | Power distribution system |
| 19 | K90 | BLU/TAN | STARTER RLY CTRL | Starting/charging system |
| 20 | W2 | BRN/GRN | WIPER LO/HI RLY CTRL | Wiper/washer system |
| 22 | L34 | WHT/GRY | RH HIGH BEAM DRV | Headlights system |
| 23 | X4 | DK GRN/WHT | HORN RLY CTRL | Horns system |
| 24 | F1 | PNK/WHT | IGN OFF/RUN/START CTRL O/P | Transmissions system |

## C2 (4-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | Z919 | BLK | GND | Ground G919A |
| 3 | A904 | VIO/RED | FSD B (+) | PDC C6 pin 21, fuse 14 (40 A), hot at all times |

## C3 (4-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | A905 | RED | FSD B (+) | PDC C5 pin 3, fuse 23 (30 A), hot at all times |
| 2 | Z919 | BLK | GND | Ground G919A |
| 3 | A906 | RED/GRY | FSD B (+) | PDC C7 pin 1, fuse 12 (40 A), hot at all times |
| 4 | A903 | RED | FSD B (+) | PDC C7 pin 22, fuse 10 (40 A), hot at all times |

## C4 (24-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | L58 | WHT/YEL | LH DRL LAMP DRV | Headlights system |
| 2 | L44 | WHT/TAN | RH LO BEAM DRV | Headlights system |
| 3 | L78 | WHT/ORG | RF PARK LAMP DRV | Exterior lights system |
| 5 | L144 | TAN/ORG | RH SIDE MARKER CTRL | Exterior lights system |
| 13 | L90 | WHT/ORG | RF FOG LAMP CTRL | Headlights system |
| 14 | L61 | WHT/GRN | LF TURN LAMP DRV | Exterior lights system |
| 15 | L33 | WHT/GRN | LH HI BEAM DRV | Headlights system |
| 18 | B15 | DK GRN/WHT | BRK SIG 1 | Anti-lock brakes system |
| 19 | Z420 | BLK/ORG | GND | Anti-lock brakes system |
| 21 | B20 | DK GRN/ORG | BRAKE FLUID LVL SIG | Anti-lock brakes system |
| 22 | G31 | VIO/GRN | AAT SIG | Air conditioning system |
| 23 | G931 | VIO/BRN | SENS GND | Air conditioning, door locks, wiper/washer & anti-theft systems |
| 24 | T824 | YEL/DK BLU | TRS PARK SIG | Anti-theft & transmissions systems |

## C5 (48-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | L16 | WHT/VIO | RH BACKUP LAMP DRV | Exterior lights system |
| 2 | L54 | WHT/GRN | RH STOP LAMP DRV | Exterior lights system |
| 3 | L63 | WHT/DK GRN | LH BACKUP LAMP DRV | Exterior lights system |
| 4 | L72 | WHT/ORG | LICENSE PLATE LAMP DRV | Exterior lights system |
| 5 | G76 | VIO/YEL | RR DR AJAR SW SNS | Door locks, anti-theft & interior lights systems |
| 6 | P305 | GRN/BLU | ACC DELAY RLY CTRL | Power distribution system |
| 9 | P307 | GRN/GRY | ACC DELAY RLY CTRL | Power distribution system |
| 10 | P675 | TAN/BLK | HDRST REL 3RD ROW RLY SIG | Seats system |
| 11 | B25 | DK GRN/WHT | PARK BRK SW SNS | Anti-lock brakes & instrument cluster systems |
| 15 | N5 | DK BLU/GRY | FUEL LVL SIG 2 | Engine controls system |
| 16 | G109 | BLK | FUEL LVL SNS RTN | Engine controls system |
| 17 | N4 | DK BLU/WHT | FUEL LVL SNS SIG | Engine controls system |
| 18 | L3 | WHT/DK BLU | RR PARK LAMP DRV | Exterior lights system |
| 22 | L656 | WHT/DK GRN | RR TURN SIG CTRL | Exterior lights system |
| 23 | L658 | WHT/BRN | BACKUP LAMP RLY CTRL | Exterior lights system |
| 24 | L657 | WHT/GRN | TAIL LAMP RLY CTRL | Exterior lights system |
| 25 | D45 | BRN | CAN C (+) | Computer data lines system |
| 26 | D46 | YEL | CAN C (-) | Computer data lines system |
| 27 | F20 | PNK/WHT | IGN RUN/START CTRL O/P | Anti-theft system |
| 28 | G755 | VIO/TAN | DRV DR SECONDARY AJAR SW SNS | Door locks & anti-theft systems |
| 36 | K619 | BRN/ORG | RUN RLY CTRL | Power distribution system |
| 45 | D403 | ORG/DK BLU | LIN BUS CBC 3 | Computer data lines system |
| 47 | W17 | BRN | RR WIPER PARK SW SNS | Wiper/washer system |
| 48 | W12 | BRN/ORG | RR WIPER RLY CTRL | Wiper/washer system |

Pins 6 and 9 are both printed "ACC DELAY RLY CTRL"; they are separate circuits (P305 GRN/BLU and P307 GRN/GRY).

## C6 (48-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | P910 | TAN/GRN | FRONT DRV DR UNLK | Door locks & anti-theft systems |
| 2 | P777 | GRN/DK GRN | DR LOCK CTRL | Door locks & anti-theft systems |
| 3 | P292 | VIO/GRN | PASS DRS UNLK RLY CTRL | Door locks & anti-theft systems |
| 4 | P31 | TAN/YEL | DECKLID/LIFTGATE REL DRV | Trunk, tailgate, fuel doors system |
| 8 | P223 | GRN/WHT | DECKLID/LIFTGATE RELEASE SW SNS | Trunk, tailgate, fuel doors system |
| 9 | G75 | VIO | DRV DOOR AJAR SW SNS | Door locks, anti-theft & interior lights systems |
| 10 | P371 | TAN/BRN | DR LOCK SW RTN DRV | Door locks & anti-theft systems |
| 11 | D146 | WHT | CAN IHS (-) | Computer data lines system |
| 12 | D145 | WHT/GRN | CAN IHS (+) | Computer data lines system |
| 21 | P806 | GRN/WHT | INVERTER STATUS IND DRV | Power distribution system |
| 23 | G74 | VIO/WHT | PASS DR AJAR SW SNS | Door locks, anti-theft & interior lights systems |
| 24 | P372 | TAN/ORG | PASS DR LK SW RTN | Door locks, anti-theft & interior lights systems |
| 26 | G78 | VIO/ORG | DECKLID/LIFTGATE AJAR SW SNS | Interior lights & trunk, tailgate, fuel doors systems |
| 27 | L563 | WHT/GRY | LR FAULT SNS | Exterior lights system |
| 29 | X3 | DK GRN/VIO | HORN SW SNS | Horns system |
| 31 | L562 | WHT/TAN | RR FAULT SNS | Exterior lights system |
| 32 | L71 | WHT/GRY | LR PARK LAMP DRV | Exterior lights system |
| 35 | P807 | GRN/BLU | INVERTER SW SIG | Power distribution system |
| 36 | L655 | WHT/ORG | LR TURN SIG CTRL | Exterior lights system |
| 39 | L51 | WHT/DK GRN | BRAKE LAMP SW OUTPUT | Exterior lights system |
| 40 | L52 | WHT | LH STOP LAMP DRV | Exterior lights system |
| 41 | L15 | WHT/TAN | LH BACKUP LAMP DRV | Exterior lights system |
| 42 | L62 | WHT/YEL | RH BACKUP LAMP DRV | Exterior lights system |

## C7 (24-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | L116 | WHT/GRN | HEADLAMP/FOG LAMP SW SIG | Headlights system |
| 4 | D145 | WHT/GRN | CAN IHS (+) | Computer data lines system |
| 5 | D146 | WHT | CAN IHS (-) | Computer data lines system |
| 6 | D402 | ORG/VIO | LIN BUS CBC 2 | Computer data lines system |
| 7 | D401 | ORG | LIN BUS 1 | Computer data lines system |
| 13 | M27 | YEL/BLU | READING LAMPS DRV | Interior lights system |
| 14 | M11 | YEL/VIO | COURTESY LAMPS DRV | Interior lights system |
| 15 | G38 | GRY | UGDO ENABLE CTRL CIRCUIT | Instrument cluster system |
| 17 | L900 | WHT/YEL | HDLP SW MUX RTN | Headlights system |
| 18 | G77 | VIO/GRY | LR DR AJAR SW SNS | Door locks, anti-theft & interior lights systems |
| 19 | E2 | ORG/BRN | PANEL LAMPS DRV | Interior lights system |
| 20 | L307 | WHT/BRN | HDLP SW MUX | Headlights system |
| 21 | L91 | DK BLU | HZRD SW SNS | Exterior lights system |
| 22 | G84 | GRY | VTA WARNING IND | Instrument cluster system |
| 24 | M5 | WHT/GRN | FOOTWELL LAMP FD | Interior lights system |

## Power supply / grounds

Power distribution center assembly, right side of engine compartment (all four feeds are hot at all times):

- **Fuse 14 (40 A)** -> PDC C6 pin 21 (VIO/RED, A904) -> BCM C2 pin 3 (FSD B (+)).
- **Fuse 23 (30 A)** -> PDC C5 pin 3 (RED, A905) -> BCM C3 pin 1 (FSD B (+)).
- **Fuse 12 (40 A)** -> PDC C7 pin 1 (RED/GRY, A906) -> BCM C3 pin 3 (FSD B (+)).
- **Fuse 10 (40 A)** -> PDC C7 pin 22 (RED, A903) -> BCM C3 pin 4 (FSD B (+)).

Grounds: G919A (right "C" pillar) carries BCM C2 pin 1 and C3 pin 2 (Z919, BLK). BCM C4 pin 19 (Z420, BLK/ORG) is printed GND and runs to the anti-lock brakes system (the brake fluid level sensor GND pin in [2025-Dodge-or-Ram-Truck-Durango-4WD-ABS.md](2025-Dodge-or-Ram-Truck-Durango-4WD-ABS.md)).

Component locations: body control module — right kick panel; power distribution center assembly — right side of engine compartment; G919A — right "C" pillar.

## Notes

- CAN IHS appears on two connectors with the same circuits: C6 pins 11/12 and C7 pins 5/4 (D146 WHT = CAN IHS (-), D145 WHT/GRN = CAN IHS (+)). CAN C is on C5 pins 25 (+) and 26 (-).
- Backup lamp drivers are printed on two connectors with different circuits: C5 pin 1 RH BACKUP LAMP DRV (L16) and pin 3 LH BACKUP LAMP DRV (L63); C6 pin 41 LH BACKUP LAMP DRV (L15) and pin 42 RH BACKUP LAMP DRV (L62). The diagram does not say how the two pairs differ. Stop lamp drivers are split the same way: C5 pin 2 RH STOP LAMP DRV (L54) and C6 pin 40 LH STOP LAMP DRV (L52).
- C1 pin 13 is printed "RF TURN LAMP DRIV" (the other drivers are printed "DRV").
- Function labels differ slightly from the other 2025 Durango diagrams for the same pins: [2025-Dodge-or-Ram-Truck-Durango-4WD-TCU-and-shifter.md](2025-Dodge-or-Ram-Truck-Durango-4WD-TCU-and-shifter.md) prints C1 pin 24 as "IGN OFF/RUN/START CTRL OUT" and C4 pin 24 as "TRS PARK SIGNAL"; pins, circuits and colours agree.
