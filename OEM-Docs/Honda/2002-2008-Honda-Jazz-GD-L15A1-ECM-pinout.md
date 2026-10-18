# 2002–2008 Honda Jazz GD L15A1 — ECU pinout (manual/CVT)

Transcribed from [2005-honda-fit.pdf](2005-honda-fit.pdf), **Honda Jazz GD 1.5L L15A1 2002–2008 — Engine Management Wiring Diagram**, drawing **EMM002321**, pages 1–7. The printed scope is Jazz GD 2002–2008, despite the “2005 Honda Fit” filename. This is not a universal pinout for all Fit/Jazz markets: the source explicitly separates manual and **CVT**, and differs from the [2008 US Fit diagram](2008-Honda-Fit-1.5L-ECM-pinout.md).

The source prints ECU terminal identifiers but no terminal-function abbreviations, so the Function column says so and the destination column transcribes the connected component. A31/B24/C22/D17/E31 is the connector family; this source wires A/B/C/E only. Unlisted pins are not connected in this drawing. Page references are retained per row.

This source uses **B = black, L = blue, BR = brown, G = green, GR = gray, LG = light green, O = orange, P = pink, R = red, W = white, Y = yellow**; slash denotes stripe. Do not read `B` as blue. C116 cavities printed `?` are unresolved in the source and are not replaced with guessed numbers.

### Connector A (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| A1 | B/W | (no terminal function label) | Primary O2 sensor heater pin 4 (p. 5) |
| A2 | Y/B | (no terminal function label) | PGM main relay 1 switched supply via C116 (p. 3) |
| A3 | Y/B | (no terminal function label) | PGM main relay 1 switched supply via C116 (p. 3) |
| A4 | B | (no terminal function label) | Ground (p. 6) |
| A5 | B | (no terminal function label) | Ground (p. 6) |
| A6 | W | (no terminal function label) | Primary O2 sensor signal pin 1 (p. 5) |
| A7 | L | (no terminal function label) | Crank position sensor pin 2 (p. 3) |
| A9 | R/B | (no terminal function label) | Knock sensor pin 1; shield tied to ground network (p. 5) |
| A10 | G/B | (no terminal function label) | TPS pin 1, EGR sensor pin 2, ECT pin 2, IAT pin 2 and primary O2 sensor pin 2 return (p. 5) |
| A11 | G/W | (no terminal function label) | MAP sensor pin 3 (p. 5) |
| A12 | B/L | (no terminal function label) | Idle air control valve pin 3 (p. 3) |
| A13 | W/B | (no terminal function label) | EGR valve position signal pin 1 (p. 5) |
| A15 | R/B | (no terminal function label) | TPS signal pin 2 (p. 5) |
| A18 | L/W | (no terminal function label) | ABS ECU pin 17, CVT only (p. 3); Vehicle speed sensor pin 3, manual only (p. 5) |
| A19 | R/G | (no terminal function label) | MAP sensor pin 2 (p. 5) |
| A20 | Y/L | (no terminal function label) | TPS pin 3 and EGR sensor pin 3; continuation supplies CVT drive-pulley speed sensor (p. 5) |
| A21 | Y/R | (no terminal function label) | MAP sensor pin 1; continuation supplies CVT driven-pulley/CVT speed sensors (p. 5) |
| A23 | BR/B | (no terminal function label) | Ground network shared with CVT speed sensor returns and shield connections (p. 6) |
| A24 | BR/B | (no terminal function label) | Ground network (p. 6) |
| A26 | G | (no terminal function label) | TDC sensor pin 1 (p. 3) |
| A27 | W/L | (no terminal function label) | Front ignition coil 4 pin 1 (p. 4) |
| A28 | W/B | (no terminal function label) | Front ignition coil 3 pin 1 (p. 4) |
| A29 | W/G | (no terminal function label) | Front ignition coil 2 pin 1 (p. 4) |
| A30 | W | (no terminal function label) | Front ignition coil 1 pin 1 (p. 4) |

### Connector B (24 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| B2 | Y | (no terminal function label) | Injector 4 pin 2 (p. 3) |
| B3 | L | (no terminal function label) | Injector 3 pin 2 (p. 3) |
| B4 | R | (no terminal function label) | Injector 2 pin 2 (p. 3) |
| B5 | BR | (no terminal function label) | Injector 1 pin 2 (p. 3) |
| B6 | G | (no terminal function label) | Radiator fan relay control branch (p. 1) |
| B7 | G/W | (no terminal function label) | CVT pulley pressure control valve pin 1 (p. 7) |
| B8 | R/W | (no terminal function label) | ECT sensor pin 1 (p. 5) |
| B11 | R/W | (no terminal function label) | CVT instrument cluster gear display pin 11 (BR/W at cluster) (p. 7) |
| B12 | LG | (no terminal function label) | CVT instrument cluster M indicator pin 5 (L/W at cluster) (p. 7) |
| B13 | W/R | (no terminal function label) | Alternator pin 4 (p. 5) |
| B14 | P | (no terminal function label) | EGR valve actuator pin 4 (p. 5) |
| B15 | G/Y | (no terminal function label) | VTEC solenoid valve pin 1 (p. 4) |
| B16 | Y | (no terminal function label) | CVT start clutch pressure valve pin 1 (p. 6) |
| B17 | R/Y | (no terminal function label) | IAT sensor pin 1 (p. 5) |
| B18 | W/G | (no terminal function label) | Alternator pin 2 (p. 5) |
| B19 | LG/R | (no terminal function label) | CVT steering-wheel selector downshift, pin 3 through intermediate pin 5 (p. 7) |
| B20 | Y | (no terminal function label) | CVT steering-wheel selector upshift, pin 4 through intermediate pin 4 (p. 7) |
| B21 | R/Y | (no terminal function label) | Charcoal canister valve pin 2 (p. 5) |
| B24 | L/W | (no terminal function label) | CVT drive pulley control valve pin 1 (p. 7) |

### Connector C (22 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| C1 | P/B | (no terminal function label) | CVT pulley pressure control valve pin 2 (p. 7) |
| C3 | B | (no terminal function label) | CVT steering-wheel selector switch pin 2 ground (p. 7) |
| C5 | B | (no terminal function label) | CVT selector switch pin 10 ground (p. 7) |
| C6 | G/B | (no terminal function label) | CVT inhibitor solenoid pin 2 (p. 6) |
| C7 | R/L | (no terminal function label) | CVT drive pulley speed sensor pin 2 (p. 6) |
| C8 | P/L | (no terminal function label) | CVT start clutch pressure valve pin 2 (p. 6) |
| C9 | P | (no terminal function label) | CVT selector switch pin 8 (p. 7) |
| C10 | W | (no terminal function label) | CVT selector switch pin 7 and cluster R indicator pin 13 (p. 7) |
| C11 | L/W | (no terminal function label) | CVT selector switch pin 3 (p. 7) |
| C12 | LG | (no terminal function label) | CVT selector switch pin 4 and starter-cut relay branch; cluster P lamp wiring on this source's shared circuit (p. 7) |
| C13 | Y | (no terminal function label) | CVT steering-wheel selector 7-speed mode, pin 5 through intermediate pin 3 (p. 7) |
| C15 | W | (no terminal function label) | CVT driven pulley speed sensor pin 2 (p. 6) |
| C16 | G/Y | (no terminal function label) | CVT drive pulley control valve pin 2 (p. 7) |
| C20 | R/B | (no terminal function label) | CVT selector switch pin 2 (cluster N branch is labelled B/R) (p. 7) |
| C22 | W/R | (no terminal function label) | CVT speed sensor pin 2 (p. 6) |

### Connector E (31 positions)

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| E1 | G/Y | (no terminal function label) | PGM main relay 2 coil C212/4 (p. 2) |
| E3 | BR/Y | (no terminal function label) | Immobilizer/keyless unit pin 1 and IMOES circuit pin 2 (p. 4); Diagnostic link pin 5 (p. 6) |
| E4 | P | (no terminal function label) | Evaporator temperature sensor pin 2 (p. 6) |
| E5 | G/W | (no terminal function label) | Instrument cluster C206/13 (p. 2) |
| E7 | R/Y | (no terminal function label) | PGM main relay 1 coil C211/4 (p. 2) |
| E8 | L/W | (no terminal function label) | CVT instrument cluster pin 8 (p. 7) |
| E9 | B/Y | (no terminal function label) | Ignition feed, under-dash fuse 11 (15 A), shared with relay 2 coil supply C212/1 (p. 2) |
| E11 | P | (no terminal function label) | CVT instrument cluster S indicator pin 9 (p. 7) |
| E12 | L | (no terminal function label) | Evaporator temperature sensor pin 1 and climate-control unit (p. 6) |
| E13 | L/R | (no terminal function label) | CVT shift-lock solenoid (p. 7) |
| E15 | G/R | (no terminal function label) | Electrical load detector C304/3 via C253/7 (p. 1) |
| E18 | R | (no terminal function label) | A/C clutch relay control (p. 1) |
| E20 | G/B | (no terminal function label) | CVT instrument cluster pin 3 (p. 7) |
| E21 | R/W | (no terminal function label) | CVT instrument cluster pin 4 (p. 7) |
| E22 | W/B | (no terminal function label) | Brake pedal switch pin 1 via under-dash C253/4 (p. 1) |
| E23 | R/W | (no terminal function label) | Diagnostic link pin 7 (p. 6) |
| E24 | G | (no terminal function label) | Instrument cluster C206/11 (p. 2) |
| E25 | L/Y | (no terminal function label) | Speedometer, CVT only (p. 6) |
| E27 | R/B | (no terminal function label) | Immobilizer/keyless unit pin 2 and IMOES circuit pin 1 (p. 4) |
| E28 | L/W | (no terminal function label) | A/C pressure switch (p. 6) |
| E29 | BR | (no terminal function label) | Diagnostic-link service-check branch via C253/3 (p. 1) |
| E31 | G/O | (no terminal function label) | Instrument cluster MIL branch, G/O wire via under-dash fuse box (p. 1) |

## Source qualifications and power routing

A18 is the manual VSS signal on page 5 but connects to ABS ECU pin 17 on the CVT page 3. C20's ECU wire is printed R/B while its instrument-cluster neutral branch is B/R; both are preserved. Page 7 draws selector contacts and cluster indicators on overlapping branches, so follow the original paths rather than treating the colour difference as permission to join different wires.

PGM main relay 1 supplies A2/A3 and injector power through C116; E7 controls its coil. Relay 2 feeds the fuel pump and is controlled by E1. Coil supplies are shown through under-dash fuse 7 (15 A), with E9/relay-coil ignition supply through fuse 11 (15 A). The page-4 feed is B/W at continuation H and B/Y through the coil C116 splice; retain that printed change. A4/A5 are black grounds; A23/A24 brown/black grounds are distinct from analog returns A10/A11.

Unlike the later RSX layout, this source has ignition outputs A27–A30, TPS A15, MAP A19, VTEC B15, EGR position A13 and EGR drive B14. CVT outputs on B7/B16/B24 and C1/C8/C16 are not the same functions as the conventional A/T RSX/TSX circuits. [Honda 125-pin variations](../../Honda-125-variations.md).
