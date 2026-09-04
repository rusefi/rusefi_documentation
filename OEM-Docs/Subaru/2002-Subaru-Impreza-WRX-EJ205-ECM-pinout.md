# 2002 Subaru Impreza WRX EJ205 (2.0L turbo) — ECM pinout

Transcribed from [2002-Wrx-ej205.pdf](2002-Wrx-ej205.pdf) (ProDemand "Engine Performance > 2.0L" wiring diagram, Fig 1-4 of 4, diagram ids 177410-177413; page 5 is blank). The printout header reads "2003 Subaru Impreza WRX, 2.0L Eng" — the 2002 and 2003 US WRX share this EJ205 harness.

The source is a wiring diagram, not an I/O signal table: the ECM pins are printed with pin number and wire color only, no function text. The "Connects to" column is what the wire is drawn going to (component name and pin as printed, including wire-color changes at inline connectors); the "Function" column is inferred from that and is not printed in the source.

Engine control module (ECM), located behind right side of dash.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| B134 | 22 | Body harness: ignition, main relay control, A/C, diagnostics, TCM, grounds |
| B135 | 28 | Engine sensors: crank/cam, knock, MAF, TPS, MAP, ECT, TGV angle, EGT, O2 rear, shields |
| B84 | 17 | TGV motors, MAF |
| B136 | 24 | Injectors 2-4, ignition coils, IAC, fuel pump controller, grounds |
| B137 | 31 | Injector 1, power supply, EVAP solenoids, front A/F sensor, purge, wastegate, fan/AC |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, ORG orange, PNK pink, LT light). Unlisted pins are not connected in this diagram. Colors after an inline connector break are given in parentheses where the diagram shows a change.

## B134 — body harness connector (22-pin)

| Pin | Wire | Connects to | Function |
|-----|------|-------------|----------|
| 1 | GRN/YEL | Vehicle speed sensor pin 1 GRN/YEL (M/T) or TCM B56 pin 17 GRN/YEL (A/T); combination meter I10 pin 2 GRN/YEL (speedometer CPU) | Vehicle speed signal |
| 2 | BLU/YEL | A/C system | A/C |
| 3 | BLU | Defogger system | Rear defogger |
| 5 | GRN/RED | Fuse 11 (15 A, fuse & relay box behind left side of dash, hot in ON & START); also feeds fuel pump relay pin 1 and ignition coils pin 3 (GRN/RED -> RED/YEL) | Ignition switch power |
| 6 | LT GRN/WHT | Main relay pin 2 (coil) | Main relay control |
| 7 | BLK/RED | Ground GE-1 (top left side of engine); joined to pin 15 | Ground |
| 8 | WHT/BLK (or GRN/BLK) | A/T: WHT/BLK from ignition switch START (also to starting/charging system). M/T: GRN/BLK from neutral position switch pin 1 (switch pin 3 BLK/RED to GE-1, left rear of engine) | Starter signal / neutral switch |
| 9 | GRN/RED | A/C system | A/C |
| 10 | RED/WHT | Line end connector pin 1 RED/WHT | Diagnostics |
| 13 | LT GRN/RED | Fuel pump controller pin 9 LT GRN/RED (right side of cargo area) | Fuel pump controller |
| 14 | ORG | Diagnosis connector pin 5 ORG (behind left side of dash); check connector pin 4 ORG (behind left side of dash); line end connector ORG | Diagnostics |
| 15 | BLK/RED | Ground GE-1 (top left side of engine); joined to pin 7 | Ground |
| 16 | YEL | Starting/charging system | Alternator |
| 17 | BLK/WHT | Exterior lights system | Lights |
| 18 | PNK/GRN | TCM B55 pin 14 PNK/GRN (behind left side of dash) | TCM |
| 19 | RED/YEL | TCM B55 pin 5 RED/YEL | TCM |
| 20 | YEL/GRN | Line end connector pin 6 YEL/GRN | Diagnostics |
| 21 | LT GRN/BLK | Data link connector pin 10 LT GRN/BLK (left of steering column); check connector pin 12 LT GRN/BLK | Diagnostics |
| 22 | BLK/WHT | Ground GE-1 (top left side of engine) | Ground |

## B135 — engine sensor connector (28-pin)

| Pin | Wire | Connects to | Function |
|-----|------|-------------|----------|
| 1 | RED | Camshaft position sensor pin 1 (ORG), left front of engine | Cam sensor |
| 2 | WHT | Crankshaft position sensor pin 1 (ORG/BLU), lower front of engine | Crank sensor |
| 4 | WHT | Knock sensor pin 2 (RED/BLU), left side of engine | Knock sensor |
| 6 | BLU/BLK | Fuel pump assembly pin 6 BLU/BLK (fuel temperature sensor, on top of fuel tank) | Fuel temperature |
| 7 | LT GRN | Throttle position sensor pin 3 (YEL/GRN), on throttle body; TCM B54 pin 3 LT GRN | TPS signal |
| 8 | YEL/BLK | (VIO/WHT) Pressure sensor pin 1 (ORG), at top rear of engine | Manifold pressure signal |
| 9 | LT BLU | Throttle position sensor pin 1 (RED); via splice: right/left TGV angle sensor pin 1 RED, pressure sensor pin 3 RED; fuel tank pressure sensor pin 3 (RED); TCM B54 pin 2 LT BLU | 5 V sensor supply |
| 10 | BLK | Camshaft position sensor pin 2 (WHT) | Cam sensor |
| 11 | GRN | Crankshaft position sensor pin 2 (WHT/BLU) | Crank sensor |
| 13 | BRN/YEL | Left TGV angle sensor pin 3 (YEL/RED), top left front of engine | Left TGV angle |
| 15 | GRN/ORG | Fuel tank pressure sensor pin 1 (GRN/YEL), top center of fuel tank | Fuel tank pressure |
| 16 | WHT/BLK | Exhaust gas temperature sensor pin 1 WHT/BLK, in right exhaust system | EGT signal |
| 17 | WHT | Rear oxygen sensor pin 3 WHT, rear of catalytic converter (shielded, see pin 26) | Rear O2 signal |
| 18 | BLK/YEL | Engine coolant temperature sensor pin 2 (GRN), top left front of engine | ECT signal |
| 19 | RED/GRN | Shielded & sensor ground joint connector pin 8 RED/GRN (right side of dash) | Sensor ground |
| 20 | BRN/RED | TCM B55 pin 21 BRN/RED | TCM |
| 21 | SHIELDED | Shield of cam/crank sensor wires (pins 1, 2, 10, 11) | Shield |
| 22 | SHIELDED | Shield of knock sensor wire (pin 4) | Shield |
| 23 | BRN/RED | Right TGV angle sensor pin 3 (WHT/RED), top right of engine | Right TGV angle |
| 24 | ORG/BLK | (RED/YEL) Power steering oil pressure switch, right front of engine | PS pressure switch |
| 25 | BRN/WHT | Fuel sub level sensor pin 1 BRN/WHT, top of fuel tank | Fuel level |
| 26 | SHIELDED | Shield of rear oxygen sensor signal wire (pin 17) | Shield |
| 27 | BRN | Mass airflow sensor pin 4 BRN, right side of engine compartment in air intake duct | MAF signal |
| 28 | GRN/WHT | TCM B54 pin 1 GRN/WHT | TCM |

Note: the diagram labels the sensor fed by pins 1/10 "camshaft position sensor (left front of engine)" and the one fed by pins 2/11 "crankshaft position sensor (lower front of engine)"; transcribed as printed.

Component locations (page 1): shielded & sensor ground joint connector — right side of dash; sensor-side shield drain — WHT wire to ground GE-2 (top right side of engine). Sensor ground splice (page 2): joint connector pin 1 BLU -> (RED/GRN, BLK/GRN) -> right TGV angle sensor pin 2, left TGV angle sensor pin 2, ECT sensor pin 1, TPS pin 2, pressure sensor pin 2 (all BLK/GRN). Other joint connector pins: 2 BLU/RED -> rear oxygen sensor pin 4 BLU/RED; 3 GRN/RED -> MAF pin 5 GRN/RED; 4 GRN/YEL -> fuel tank pressure sensor pin 2 (RED/GRN); 5 LT GRN -> exhaust gas temperature sensor pin 2 LT GRN; 6 BLU/WHT -> fuel pump assembly pin 5 (RED/WHT, fuel temperature sensor).

## B84 — TGV / MAF connector (17-pin)

| Pin | Wire | Connects to | Function |
|-----|------|-------------|----------|
| 1 | BLK/RED | Ground GE-1 (left rear of engine) | Ground |
| 4 | BLU/GRN | Right TGV pin 1 (WHT/BLU), right front of engine | Right TGV motor |
| 5 | YEL/GRN | Right TGV pin 2 (GRN/BLU) | Right TGV motor |
| 7 | BLK/GRN | Mass airflow sensor pin 2 BLK/GRN | MAF ground |
| 8 | SHIELDED | Shield of MAF signal wire (pin 13) | Shield |
| 10 | BLU/YEL | Left TGV pin 1 (BLU), top left rear of engine | Left TGV motor |
| 11 | BLU | Left TGV pin 2 (YEL/BLU) | Left TGV motor |
| 13 | PNK/BLU | Mass airflow sensor pin 3 PNK/BLU (shielded) | MAF signal |

MAF pin 1 YEL/BLU is main relay switched power (main relay pin 3).

## B136 — injector / coil connector (24-pin)

| Pin | Wire | Connects to | Function |
|-----|------|-------------|----------|
| 4 | PNK/GRN | Fuel injector 4 pin 1 (YEL/WHT) | Injector 4 |
| 5 | PNK/BLK | Fuel injector 3 pin 1 (WHT) | Injector 3 |
| 6 | PNK/BLU | Fuel injector 2 pin 1 (BLU/WHT) | Injector 2 |
| 8 | BLK/YEL | (BLK/BLU) Ground GE-1 (top left side of engine) | Ground |
| 9 | GRN | Combination meter I10 pin 5 GRN (tach); TCM B54 pin 17 GRN | Tach signal |
| 10 | RED | Idle air control solenoid valve pin 1 (WHT), top rear of engine | IAC control |
| 13 | RED/WHT | Rear oxygen sensor pin 1 RED/WHT | Rear O2 heater control |
| 14 | YEL/RED | TCM B55 pin 10 YEL/RED | TCM |
| 15 | VIO/WHT | Fuel pump controller pin 8 VIO/WHT | Fuel pump control |
| 17 | BLK/WHT | Ground GE-1 (top left side of engine) | Ground |
| 18 | BLK | (BLK/YEL) Ground GE-1 (top left side of engine) | Ground |
| 21 | YEL/GRN | Ignition coil 4 pin 1 (YEL) | Ignition 4 |
| 22 | YEL/RED | Ignition coil 3 pin 1 (WHT/YEL) | Ignition 3 |
| 23 | YEL/BLK | Ignition coil 2 pin 1 (BLU/YEL) | Ignition 2 |
| 24 | YEL | Ignition coil 1 pin 1 (GRN/YEL) | Ignition 1 |

Injectors: pin 2 RED of all four injectors is spliced to the RED supply (main relay YEL/BLU via inline connector), which also feeds purge control solenoid valve pin 1 RED and idle air control solenoid valve pin 2 RED. Ignition coils: pin 3 RED/YEL from GRN/RED (fuse 11) via splice; pin 2 BLK/YEL to ground GE-1 (top left side of engine). IAC valve pin 3 BLK/WHT to GE-1.

## B137 — power / EVAP / A-F sensor connector (31-pin)

| Pin | Wire | Connects to | Function |
|-----|------|-------------|----------|
| 1 | PNK | Fuel injector 1 pin 1 (GRN/WHT) | Injector 1 |
| 2 | YEL/BLU | Main relay pin 3 YEL/BLU (joined with pin 3) | Switched power |
| 3 | YEL/BLU | Main relay pin 3 YEL/BLU (joined with pin 2) | Switched power |
| 4 | WHT | Front oxygen (A/F) sensor pin 1 WHT, front of catalytic converter (joined with pin 5) | A/F sensor |
| 5 | WHT | Front oxygen (A/F) sensor pin 1 WHT (joined with pin 4) | A/F sensor |
| 8 | BLK/BLU | (BLK/RED) Ground GE-1 (top left side of engine); joined with pin 9 | Ground |
| 9 | BLK/BLU | (BLK/RED) Ground GE-1 (top left side of engine); joined with pin 8 | Ground |
| 10 | BLK/RED | Fuse 5 (30 A, main fuse box on left side of engine compartment, hot in ON & START), via main relay pin 6 BLK/RED node; also data link connector pin 1 BLK/RED | Power supply |
| 11 | BRN/YEL | Drain valve pin 2 BRN/YEL, under right rear of vehicle | EVAP drain valve |
| 15 | RED/WHT | Combination meter I11 pin 6 RED/WHT (malfunction indicator light) | MIL |
| 16 | WHT/BLU | (BLU, LT GRN/YEL) Purge control solenoid valve pin 2, on intake manifold | Purge solenoid |
| 17 | RED/BLU | Cooling fan system | Cooling fan |
| 18 | SHIELDED | Shield of front oxygen (A/F) sensor wires (pins 19, 29) | Shield |
| 19 | WHT | Front oxygen (A/F) sensor pin 4 WHT | A/F sensor |
| 22 | LT GRN/BLK | Pressure control solenoid valve pin 2 LT GRN/BLK, under rear center of vehicle | EVAP pressure control solenoid |
| 23 | RED/BLU | Internal pressure solenoid valve pin 2 RED/BLU | EVAP internal pressure solenoid |
| 24 | BLK/WHT | Wastegate solenoid pin 1 BLK/WHT, right side of engine compartment | Wastegate control |
| 27 | BRN | A/C system | A/C |
| 28 | GRN/RED | Cooling fan system | Cooling fan |
| 29 | BLK | Front oxygen (A/F) sensor pin 3 BLK (shielded) | A/F sensor |

Oxygen sensor heaters: front A/F sensor pin 2 YEL/RED and rear oxygen sensor pin 2 YEL/RED are both fed from main relay pin 4 YEL/RED. Wastegate solenoid pin 2 YEL/BLU, purge control / drain / pressure control / internal pressure solenoid valves pin 1 (YEL/GRN) are fed from main relay pin 3 YEL/BLU.

## Power supply / relays

Main relay (behind right side of dash):

| Pin | Wire | Connects to |
|-----|------|-------------|
| 1 | BLK | Ground GB-4 (right side of dash) |
| 2 | LT GRN/WHT | ECM B134 pin 6 (coil control) |
| 3 | YEL/BLU | Switched output: MAF pin 1, ECM B137 pins 2/3, injector and IAC supply (RED via inline connector), purge/drain/pressure control/internal pressure solenoid valves, wastegate solenoid |
| 4 | YEL/RED | Switched output: front and rear oxygen sensor heaters |
| 5 | BLU/RED | Fuse 5 (30 A, main fuse box); also fuel pump relay pin 2 |
| 6 | BLK/RED | Fuse 5 (30 A, main fuse box); also ECM B137 pin 10, data link connector pin 1 |

Other supplies:

- **Fuse 11** (15 A, fuse & relay box behind left side of dash, B152 pin 5, hot in ON & START) GRN/RED — ECM B134 pin 5, fuel pump relay pin 1 (coil), ignition coils pin 3.
- **Fuse 18** (15 A, fuse & relay box, B52 pin 5, hot in ON & START) GRN/BLK — check connector pin 7, vehicle speed sensor pin 3 (M/T).
- **Fuse 13** (10 A, fuse & relay box, B158 pin 6) RED/WHT — combination meter I10 pin 7.
- **Fuel pump relay** (behind right side of dash): pin 1 GRN/RED (fuse 11), pin 2 BLU/RED (fuse 5), pin 3 BLK ground GB-4, pin 4 BLK/YEL to fuel pump controller pin 10. Fuel pump controller (right side of cargo area): pin 5 BLK ground GB-7 (behind center of dash), pin 6 BLK/WHT to fuel pump pin 4 BLK, pin 7 BLK/ORG to fuel pump pin 1 BLK/YEL, pin 8 VIO/WHT from ECM B136 pin 15, pin 9 LT GRN/RED from ECM B134 pin 13.
- Ignition switch START (pin 3 WHT/BLK) — starting/charging system and ECM B134 pin 8 (A/T).

Grounds: GE-1 top left side of engine (ECM B134 pins 7/15/22, B136 pins 8/17/18, B137 pins 8/9, coils, IAC, vehicle speed sensor, combination meter via BLK/BLU); GE-1 left rear of engine (B84 pin 1, neutral position switch); GE-2 top right side of engine (sensor shield drain); GB-4 right side of dash (main relay, fuel pump relay); GB-7 behind center of dash (fuel pump controller).

Combination meter (page 3): I10 pin 2 GRN/YEL speedometer input (vehicle speed line, ECM B134 pin 1), I10 pin 5 GRN tach input (ECM B136 pin 9), I11 pin 6 RED/WHT MIL (ECM B137 pin 15), I12 pin 9 WHT/GRN temp gauge from ECT sensor pin 3 WHT/GRN, I11 pin 2 GRN/WHT oil pressure warning light from oil pressure switch (front of engine).

TCM (behind left side of dash) connections to the ECM: B54 pin 1 GRN/WHT (B135-28), B54 pin 2 LT BLU (5 V line), B54 pin 3 LT GRN (TPS signal line), B54 pin 17 GRN (tach line), B55 pin 5 RED/YEL (B134-19), B55 pin 10 YEL/RED (B136-14), B55 pin 14 PNK/GRN (B134-18), B55 pin 21 BRN/RED (B135-20), B56 pin 17 GRN/YEL (vehicle speed line, A/T).
