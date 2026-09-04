# 2017 Subaru WRX STI EJ257 — starting circuit

Transcribed from [2017 Subaru WRX STI-starting-with-key.pdf](2017%20Subaru%20WRX%20STI-starting-with-key.pdf) (ALLDATA "Starting/Charging - Starting Circuit (w/o push button start)" wiring diagram, sheet 573311) and [2017 Subaru WRX STI-starting-with-push-button.pdf](2017%20Subaru%20WRX%20STI-starting-with-push-button.pdf) (ALLDATA "Starting/Charging - Starting Circuit (w/ push button start)", sheet 573312). Each PDF has one diagram page.

Both diagrams cover the 2.0L turbo (WRX, ECM connectors B134) and the 2.5L turbo (STI, ECM connectors B135/B136), M/T and CVT. The STI is 2.5L turbo with M/T, so the relevant ECM pins are on B135/B136 and the clutch start switch / neutral position switch 1 (2.5L turbo) apply; the CVT inhibitor switch does not. Engine control module — right side of engine compartment. Variant markers as printed: circled numbers, listed in each section.

## ECM pins used for starting (summary for the rusEFI adapter)

| ECM pin | Wire | Role | w/o push button | w/ push button |
|---------|------|------|-----------------|----------------|
| B135-26 | BLK/BLU (OR BLK/RED) | Starter relay 1 coil control (relay pin 5; ECM grounds the coil) | yes | yes |
| B136-16 | WHT/BLK (OR BLK/WHT) | Starter signal input, from the 10 A fuses in the fuse holder that are fed by starter relay 1 output / starter motor solenoid feed | yes | — |
| B136-27 | WHT/BLK (OR BLK/WHT) | Starter signal input, same source as above | — | yes |
| B135-34 | WHT/RED | Starter cut relay coil (relay pin 40; ECM grounds the coil) | — | yes |
| B136-4 | BLK/BLU | Neutral position switch 1 (2.5L turbo) pin 2, through J/C B122 and B128-5/T9 (BLU, LT GRN/YEL) | yes | yes |
| B136-35 | GRN/WHT | Neutral position switch 1 (2.5L turbo) pin 1, through B128-2/T9 (BLK) | yes | yes |
| B136-28 / B136-17 | BLU / RED | Computer data lines system (CAN) | yes | yes |

The clutch start switch (top of clutch pedal assembly, M/T) is not wired to the ECM: it sits in series with the starter relay 1 coil supply (LT GRN). No brake switch is shown in the starting circuit. For the 2.0L turbo the equivalents are B134-14 (starter relay 1 coil), B134-8 (starter signal), B134-13 (starter cut relay), B134-33 / B134-47 (neutral position switch 1, 2.0L turbo) and B134-9 / B134-10 (CAN).

## Starting circuit (w/o push button start)

Variant markers: (1) M/T, (2) CVT, (3) 2.0L turbo, (4) 2.5L turbo.

| Module / connector | Pin | Wire | Function (as printed) | Connects to |
|--------------------|-----|------|----------------------|-------------|
| Ignition switch | 4 | WHT | IGNITION SWITCH SUPPLY | Main fuse box M/B B144-2, SBF-6 fuse 40 A, from main SBF fuse 120 A |
| Ignition switch | 3 | BLK/WHT | START | Starter relay 1 pin 2 (relay holder B225, left end of dash) |
| Ignition switch | 7 | WHT/BLU | START | (1) M/T: clutch start switch pin 1; (2) CVT: WHT/BLU straight to the LT GRN (OR WHT/BLU) wire to starter relay 1 pin 3 |
| Clutch start switch (top of clutch pedal assembly) | 1 | WHT/BLU | | Ignition switch pin 7 |
| Clutch start switch | 2 | LT GRN | | Starter relay 1 pin 3 (LT GRN, OR WHT/BLU) |
| Starter relay 1 (relay holder B225, left end of dash) | 1 | WHT/BLK (OR WHT/RED) | RELAY CONTACT OUTPUT | (1) M/T: WHT/BLK to starter motor pin 1, spliced to fuse holder pin 7; (2) CVT: WHT/RED to inhibitor switch through B12-12/T3 (BLK/YEL pin 6), spliced to fuse holder pin 8 |
| Starter relay 1 | 2 | BLK/WHT | RELAY CONTACT INPUT | Ignition switch pin 3 (START) |
| Starter relay 1 | 3 | LT GRN (OR WHT/BLU) | RELAY COIL | Clutch start switch pin 2 (M/T) / ignition switch pin 7 (CVT) |
| Starter relay 1 | 5 | BLK/BLU (OR BLK/RED) | RELAY COIL | ECM B135-26 (4) 2.5L turbo / B134-14 (3) 2.0L turbo |
| Fuse holder (lower left side of dash) | 22 | RED/WHT (OR BLK/WHT) (OR WHT/BLK) | STARTER SIGNAL (fuse 10 A to pin 8) | (1) M/T: BLK/WHT (OR WHT/BLK) to ECM B136-16 / B134-8; (2) CVT: RED/WHT to ECM B134-33 |
| Fuse holder | 21 | BLK/WHT | STARTER SIGNAL (fuse 10 A to pin 7) | (2) CVT: BLK/WHT to ECM B136-16 / B134-8 |
| Fuse holder | 8 | WHT/BLK (OR WHT/RED) | | (2) CVT: WHT/RED, spliced to starter relay 1 pin 1 output |
| Fuse holder | 7 | WHT/BLK | | (1) M/T: WHT/BLK, spliced to starter relay 1 pin 1 output / starter motor pin 1 |
| Inhibitor switch (CVT, in transmission) | 6 | BLK/YEL | | T3/B12-12 WHT/RED from starter relay 1 pin 1 |
| Inhibitor switch | 9 | BLK/WHT | | T3/B12-11 WHT/BLK to starter motor pin 1 (CVT) |
| Starter motor | 1 | WHT/BLK | SOLENOID | (1) M/T: starter relay 1 pin 1; (2) CVT: inhibitor switch pin 9; main terminal BLK/RED from battery |
| Neutral position switch 1 (2.0L turbo, left side of transmission) | 2 | GRN/BLK | NCA | ECM B134-33 (GRN/BLK, OR RED/WHT) |
| Neutral position switch 1 (2.0L turbo) | 1 | BLK/RED | NCA | ECM B134-47, spliced to ground GE-1 (top center of engine, BLK/YEL) |
| Neutral position switch 1 (2.5L turbo, left side of transmission) | 2 | LT GRN/YEL | NCA | T9/B128-5, then BLU, J/C B122 (right rear of engine compt), then BLK/BLU to ECM B136-4 |
| Neutral position switch 1 (2.5L turbo) | 1 | BLK | NCA | T9/B128-2, then GRN/WHT to ECM B136-35 |
| ECM B135 | 26 | BLK/BLU (OR BLK/RED) | (4) 2.5L TURBO | Starter relay 1 pin 5 |
| ECM B134 | 14 | BLK/BLU (OR BLK/RED) | (3) 2.0L TURBO | Starter relay 1 pin 5 |
| ECM B136 | 16 | WHT/BLK (OR BLK/WHT) | | Fuse holder pin 22 (1) M/T or pin 21 (2) CVT |
| ECM B134 | 8 | WHT/BLK (OR BLK/WHT) | | Same as B136-16 (2.0L turbo) |
| ECM B136 / B134 | 28 / 9 | BLU | COMPUTER DATA LINES SYSTEM | Computer data lines system |
| ECM B136 / B134 | 17 / 10 | RED | COMPUTER DATA LINES SYSTEM | Computer data lines system |
| ECM B134 | 33 | GRN/BLK (OR RED/WHT) | | (1) M/T: neutral position switch 1 (2.0L turbo) pin 2; (2) CVT: RED/WHT from fuse holder pin 22 |
| ECM B134 | 47 | BLK/RED | | Neutral position switch 1 (2.0L turbo) pin 1 / ground GE-1 |
| ECM B136 | 4 | BLK/BLU | | J/C B122, BLU, B128-5/T9, neutral position switch 1 (2.5L turbo) pin 2 |
| ECM B136 | 35 | GRN/WHT | | B128-2/T9, BLK, neutral position switch 1 (2.5L turbo) pin 1 |

Fuses/relays: main SBF fuse 120 A and SBF-6 fuse 40 A in the main fuse box (M/B, left side of engine compt) feed the ignition switch pin 4 through B144-2 (WHT). The fuse holder (lower left side of dash) contains two 10 A fuses between pins 22–8 and 21–7. Starter relay 1 is in relay holder B225 (left end of dash): contact between pins 2 and 1 (ignition switch START to starter solenoid), coil between pins 3 and 5 (clutch start switch to ECM). Battery: BLK/RED to starter motor, WHT, BLK to ground.

## Starting circuit (w/ push button start)

Variant markers: (1) 2.0L turbo, (2) 2.5L turbo, (3) CVT, (4) M/T.

| Module / connector | Pin | Wire | Function (as printed) | Connects to |
|--------------------|-----|------|----------------------|-------------|
| Main fuse box M/B (left side of engine compt) | B144-2 | WHT | SBF-6 FUSE 40A | Starter relay pin 29 (WHT); main SBF fuse 120 A, WHT |
| Fuse & relay box F/B (left end of dash) | B52-11 | GRN/BLK | FUSE 26 7.5A, HOT W/ IG RELAY 1 ENERGIZED | Starter relay pin 30 (GRN/BLK, through splice) |
| Fuse & relay box F/B | B152-1 | WHT/BLU | FUSE 21 10A, HOT W/ IG RELAY 1 ENERGIZED | Clutch start switch pin 1 |
| Fuse & relay box F/B | B159-2 | WHT | | Spliced to the WHT from B144-2 |
| Starter relay (relay holder B225, left end of dash) | 28 | BLK | RELAY CONTACT OUTPUT | Starter cut relay pins 42 and 44 |
| Starter relay | 29 | WHT | RELAY CONTACT INPUT | B144-2 (SBF-6 fuse 40 A) |
| Starter relay | 30 | GRN/BLK | RELAY COIL | B52-11 (fuse 26, 7.5 A) |
| Starter relay | 31 | BLK | RELAY COIL | Ground GB-5 (left end of dash) |
| Starter cut relay (relay holder B225) | 41 | BLK/WHT | RELAY CONTACT OUTPUT | Starter relay 1 pin 2; (3) CVT also starter relay 1 pin 3 |
| Starter cut relay | 44 | BLK | RELAY CONTACT INPUT | Starter relay pin 28 |
| Starter cut relay | 42 | BLK | RELAY COIL | Starter relay pin 28 |
| Starter cut relay | 40 | WHT/RED | RELAY COIL | ECM B135-34 (2) 2.5L turbo / B134-13 (1) 2.0L turbo |
| Starter relay 1 (relay holder B225) | 1 | WHT/BLK (OR WHT/RED) | RELAY CONTACT OUTPUT | (4) M/T: WHT/BLK to starter motor pin 1, spliced to fuse holder pin 8; (3) CVT: WHT/RED to inhibitor switch through B12-12/T3 (BLK/YEL pin 6), spliced to fuse holder pin 8 |
| Starter relay 1 | 2 | BLK/WHT | RELAY CONTACT INPUT | Starter cut relay pin 41 |
| Starter relay 1 | 3 | BLK/WHT (OR LT GRN) | RELAY COIL | (3) CVT: BLK/WHT from starter cut relay pin 41; (4) M/T: LT GRN from clutch start switch pin 2 / keyless access control module B572-10 |
| Starter relay 1 | 5 | BLK/BLU (OR BLK/RED) | RELAY COIL | ECM B135-26 (2) 2.5L turbo / B134-14 (1) 2.0L turbo |
| Push button ignition switch | 4 | BLK | GND | Ground GB-7 (under front of center console) |
| Push button ignition switch | 5 | BLK | GND | Ground GB-7 |
| Push button ignition switch | 7 | BLK/WHT | | B553-20/I231, then BLK/WHT, B575-16, then ORG to keyless access control module B574-28 |
| Push button ignition switch | 2 | BLK/ORG | | B553-19/I231, then BLK/ORG, B576-17, then BLK to keyless access control module B574-30 |
| Keyless access control module (if equipped, left end of dash) | B574-28 | ORG | | Push button ignition switch pin 7 |
| Keyless access control module | B574-30 | BLK | | Push button ignition switch pin 2 |
| Keyless access control module | B574-14 | WHT | COMPUTER DATA LINES SYSTEM | Computer data lines system |
| Keyless access control module | B574-15 | RED | COMPUTER DATA LINES SYSTEM | Computer data lines system |
| Keyless access control module | B572-10 | GRY | | B576/B575-1, then LT GRN to clutch start switch pin 2 and (M/T) starter relay 1 pin 3 |
| Clutch start switch (M/T, top of clutch pedal assembly) | 1 | WHT/BLU | | B152-1 (fuse 21, 10 A) |
| Clutch start switch | 2 | LT GRN | | Keyless access control module B572-10 (GRY) and starter relay 1 pin 3 (M/T) |
| Inhibitor switch (CVT, in transmission) | 6 | BLK/YEL | | T3/B12-12 WHT/RED from starter relay 1 pin 1 |
| Inhibitor switch | 9 | BLK/WHT | | T3/B12-11 WHT/BLK to starter motor pin 1 (CVT), spliced to fuse holder pin 7 |
| Fuse holder (lower left side of dash) | 21 | BLK/WHT | STARTER SIGNAL (fuse 10 A to pin 7) | (3) CVT: BLK/WHT to ECM B136-27 / B134-8 |
| Fuse holder | 22 | RED/WHT (OR BLK/WHT) (OR WHT/BLK) | STARTER SIGNAL (fuse 10 A to pin 8) | (3) CVT: RED/WHT to ECM B134-33; (4) M/T: BLK/WHT (OR WHT/BLK) to ECM B136-27 / B134-8 |
| Fuse holder | 8 | WHT/BLK (OR WHT/RED) | | (4) M/T: WHT/BLK spliced to starter relay 1 pin 1 / starter motor; (3) CVT: WHT/RED spliced to starter relay 1 pin 1 / inhibitor switch feed |
| Fuse holder | 7 | WHT/BLK | | Spliced to the inhibitor switch pin 9 / starter motor WHT/BLK (CVT) |
| Starter motor | 1 | WHT/BLK | SOLENOID | (4) M/T: starter relay 1 pin 1; (3) CVT: inhibitor switch pin 9; main terminal BLK/RED from battery |
| Neutral position switch 1 (2.0L turbo, left side of transmission) | 2 | GRN/BLK | NCA | ECM B134-33 (RED/WHT, OR GRN/BLK) |
| Neutral position switch 1 (2.0L turbo) | 1 | BLK/RED | NCA | ECM B134-47, spliced to ground GE-1 (top center of engine, BLK/YEL) |
| Neutral position switch 1 (2.5L turbo, left side of transmission) | 2 | LT GRN/YEL | NCA | T9/B128-5, then BLU, J/C B122 (right rear of engine compt), then BLK/BLU to ECM B136-4 |
| Neutral position switch 1 (2.5L turbo) | 1 | BLK | NCA | T9/B128-2, then GRN/WHT to ECM B136-35 |
| ECM B136 | 27 | WHT/BLK (OR BLK/WHT) | (2) 2.5L TURBO | Fuse holder pin 22 (M/T) / pin 21 (CVT) |
| ECM B134 | 8 | WHT/BLK (OR BLK/WHT) | (1) 2.0L TURBO | Same as B136-27 |
| ECM B134 | 33 | RED/WHT (OR GRN/BLK) | | (3) CVT: RED/WHT from fuse holder pin 22; (4) M/T: GRN/BLK from neutral position switch 1 (2.0L turbo) pin 2 |
| ECM B134 | 47 | BLK/RED | | Neutral position switch 1 (2.0L turbo) pin 1 / ground GE-1 |
| ECM B135 / B134 | 34 / 13 | WHT/RED | | Starter cut relay pin 40 |
| ECM B135 / B134 | 26 / 14 | BLK/BLU (OR BLK/RED) | | Starter relay 1 pin 5 |
| ECM B136 / B134 | 28 / 9 | BLU | COMPUTER DATA LINES SYSTEM | Computer data lines system |
| ECM B136 / B134 | 17 / 10 | RED | COMPUTER DATA LINES SYSTEM | Computer data lines system |
| ECM B136 | 4 | BLK/BLU | | J/C B122, BLU, B128-5/T9, neutral position switch 1 (2.5L turbo) pin 2 |
| ECM B136 | 35 | GRN/WHT | | B128-2/T9, BLK, neutral position switch 1 (2.5L turbo) pin 1 |

Fuses/relays: relay holder B225 (left end of dash) holds the starter relay (contact 29 to 28, coil 30 to 31), the starter cut relay (contact 44 to 41, coil 42 to 40) and starter relay 1 (contact 2 to 1, coil 3 to 5). Sequence: SBF-6 (40 A) feeds the starter relay contact; fuse 26 (7.5 A, hot with IG relay 1 energized) energizes the starter relay coil; its output feeds the starter cut relay whose coil is grounded by ECM B135-34 and whose contact feeds starter relay 1; starter relay 1 coil is fed by LT GRN from the keyless access control module through the clutch start switch (M/T) and grounded by ECM B135-26; its contact drives the starter motor solenoid. The starter signal back to the ECM (B136-27) is taken from that solenoid feed through the 10 A fuses in the fuse holder (lower left side of dash). Battery: BLK/RED to starter motor, WHT, BLK to ground; ground GE-1 (top center of engine) via BLK/YEL.
