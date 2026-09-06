# 2010 Nissan Armada SE 5.6L (VK56DE) — ECM pinout

Transcribed from [2010-armada-5.6.pdf](2010-armada-5.6.pdf) (Mitchell "Engine Performance" wiring diagram, four sheets, diagram IDs 308714-308717).

Engine Control Module (ECM), at the right side of the engine compartment. Single 121 pin connector, drawn as F54 (pins 1-81) and E16 (pins 82-121). Pins 1-60 are on sheet 1, pins 61-121 on sheet 4.

**This diagram is pin for pin identical to the 2011 Armada ALLDATA diagram** transcribed in [2011-Nissan-Armada-VK56DE-ECM-pinout.md](2011-Nissan-Armada-VK56DE-ECM-pinout.md): same pin functions, same wire colours, same components and relay/fuse numbers. The 2011 file carries the full routing detail (inline connector numbers, splices, ground points); this page is the compact table plus the points where the Mitchell sheet differs in what it draws. Bank naming is the same as on the 2011 sheet: injectors and coils 1, 3, 5, 7 are drawn "on left cylinder bank", so bank 1 = left bank on this V8 drawing.

Wire colours are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink; NCA = no colour available). Unlisted pins are not connected.

## Differences from the 2011 ALLDATA sheet

- Pin 16 (A/F+2) is printed **GRN/BLU (or GRN)** here; the 2011 sheet prints GRN. A/F sensor 1 bank 2 pin 1 carries the same "GRN/BLU (or GRN)" note.
- Mitchell does not draw the harness-to-harness connectors (F14/E5, F32/E2, F26/F101, E41/C1, M31/E152) or the "early production" E176/E175 connector in the MOTRLY and FPR wires. Only the fuel tank temperature wire shows its inline connector (YEL/RED to PPL/RED on pin 107).
- Component locations are worded differently: knock sensor bank 2 "at top of engine" and bank 1 "at top left side of engine" (2011: "top rear" and "top right side"); engine coolant temperature sensor "at left front of engine" (2011: "right side of engine"); APP sensor "at top of accelerator pedal assembly". Treat the locations as approximate.
- The EVAP canister vent control valve pin 2 is printed YEL/BLU (or WHT/BLU) on both sheets; the ECM side is BLU/YEL.

## F54 — pins 1-60 (sheet 1)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | BLK | GND | Ground E9 (right front of engine compartment) |
| 2 | LT GRN/BLK | A/F H1 | A/F sensor 1 bank 1 pin 3 (heater) |
| 3 | BLU | VMOT | Throttle control motor relay output (IPDM E/R E119 pin 6) |
| 4 | BLU/WHT | MTR 2 | Electric throttle control actuator pin 5 (motor) |
| 5 | BLU/BLK | MTR 1 | Electric throttle control actuator pin 6 (motor) |
| 6 | GRY | O2HRL | Heated oxygen sensor 2 bank 1 pin 2 (heater) |
| 10 | WHT | C-VTC (L) | Intake valve timing control solenoid valve bank 1 pin 1 |
| 11 | LT GRN | C-VTC (R) | Intake valve timing control solenoid valve bank 2 pin 1 |
| 12 | RED | PS PRES | Power steering pressure sensor pin 2 (signal) |
| 13 | ORG | POS | Crankshaft position sensor pin 2 (signal), left rear of engine |
| 14 | YEL | PHASE | Camshaft position sensor pin 2 (signal), left rear of engine (the only cam sensor) |
| 15 | WHT | KNK1 | Knock sensor bank 1 pin 1 (top left side of engine) |
| 16 | GRN/BLU (or GRN) | A/F+2 | A/F sensor 1 bank 2 pin 1 |
| 21 | ORG/BLU | INJ 5 | Fuel injector 5 pin 2 (left bank) |
| 22 | BRN | INJ 3 | Fuel injector 3 pin 2 (left bank) |
| 23 | GRY/WHT | INJ 1 | Fuel injector 1 pin 2 (left bank) |
| 24 | GRY/GRN | AF H2 | A/F sensor 1 bank 2 pin 3 (heater); spliced with pin 43 |
| 25 | ORG/GRN | OSHRR | Heated oxygen sensor 2 bank 2 pin 2 (heater) |
| 32 | BLU | FTPRS | EVAP control system pressure sensor pin 2 (signal) |
| 34 | RED/BLK | TA | MAF sensor pin 5 (intake air temperature) |
| 35 | ORG | A/F+1 | A/F sensor 1 bank 1 pin 1 |
| 36 | WHT | KNK2 | Knock sensor bank 2 pin 1 (top of engine) |
| 40 | YEL/GRN | INJ 6 | Fuel injector 6 pin 2 (right bank) |
| 41 | PNK | INJ 4 | Fuel injector 4 pin 2 (right bank) |
| 42 | BLU | INJ 2 | Fuel injector 2 pin 2 (right bank) |
| 43 | GRY/GRN | AF-H2 | Spliced with pin 24 |
| 44 | ORG | INJ 7 | Fuel injector 7 pin 2 (left bank) |
| 45 | BLU/YEL | EVAP | EVAP canister purge volume control solenoid valve pin 2 (left rear of engine) |
| 46 | BLU/RED | IGN 7 | Ignition coil 7 pin 1 (left bank) |
| 47 | GRN | AVCC2 | Electric throttle control actuator pin 2 (TP sensor supply) |
| 48 | LT BLU | AVCC | EVAP control system pressure sensor pin 3 (supply) |
| 49 | RED/YEL | AVCC | Refrigerant pressure sensor pin 1 and battery current sensor pin 1 (supply) |
| 50 | BLK | TPS 1 | Electric throttle control actuator pin 1 (TP sensor 1) |
| 51 | WHT | QA+ | MAF sensor pin 4 |
| 53 | BLU | VTC PUS (R) | Intake valve timing control position sensor bank 2 pin 2 |
| 55 | RED | O2SRL | Heated oxygen sensor 2 bank 1 pin 1 (signal) |
| 56 | WHT | A/F 1 | A/F sensor 1 bank 1 pin 2 |
| 60 | GRY/RED | IGN 5 | Ignition coil 5 pin 1 (left bank) |

## F54 — pins 61-81 and E16 — pins 82-121 (sheet 4)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 61 | ORG/WHT | IGN 3 | Ignition coil 3 pin 1 (left bank) |
| 62 | YEL/RED | IGN 1 | Ignition coil 1 pin 1 (left bank) |
| 63 | GRN | INJ 8 | Fuel injector 8 pin 2 (right bank) |
| 65 | GRN/RED | IGN 8 | Ignition coil 8 pin 1 (right bank) |
| 66 | RED | GND A2 | Electric throttle control actuator pin 4 (TP sensor ground) |
| 67 | BLK | GND A | Sensor ground splice: MAF pins 3 and 6, EVAP pressure sensor pin 1, coolant temperature sensor pin 2, power steering pressure sensor pin 3, refrigerant pressure sensor pin 3, battery current sensor pin 2 |
| 68 | WHT/BLU | AVCC | Power steering pressure sensor pin 1 (supply) |
| 69 | WHT | TPS2 | Electric throttle control actuator pin 3 (TP sensor 2) |
| 70 | BLK/WHT | PD PRES | Refrigerant pressure sensor pin 2 (signal) |
| 71 | RED | CURSEN | Battery current sensor pin 3 (signal) |
| 72 | YEL | VTC PUS (L) | Intake valve timing control position sensor bank 1 pin 2 |
| 73 | YEL/BLK | TW | Engine coolant temperature sensor pin 1 |
| 74 | BLU | O2SRR | Heated oxygen sensor 2 bank 2 pin 1 (signal) |
| 75 | BLU | A/F 2 | A/F sensor 1 bank 2 pin 2 |
| 78 | BLK/WHT | GND 02 | Heated oxygen sensor 2 bank 1 and bank 2 pin 4 |
| 79 | PPL/WHT | IGN 6 | Ignition coil 6 pin 1 (right bank) |
| 80 | WHT/RED | IGN 4 | Ignition coil 4 pin 1 (right bank) |
| 81 | WHT/GRN | IGN 2 | Ignition coil 2 pin 1 (right bank) |
| 82 | BLK/RED | GND A | APP sensor pin 1 (sensor 1 ground) |
| 83 | GRN/WHT | GND A2 | APP sensor pin 3 (sensor 2 ground) |
| 85 | GRN/WHT | KLINE | Data link connector pin 7 |
| 86 | PNK | CAN L | Computer data lines circuit |
| 90 | BLU | AVCC | APP sensor pin 7 (sensor 1 supply) |
| 91 | WHT/RED | AVCC2 | APP sensor pin 6 (sensor 2 supply) |
| 94 | BLU | CAN H | Computer data lines circuit |
| 98 | GRN/RED | APS2 | APP sensor pin 5 (sensor 2) |
| 99 | GRN/YEL | ASCDSW | Cruise control system |
| 101 | RED/WHT | BRAKE | Stop lamp switch pin 2 (RED/GRN at the switch); switch pin 1 RED/YEL from fuse 20 |
| 102 | GRY/RED | NEUT | Combination meter (unified meter control unit) pin 40 |
| 104 | ORG | MOTRLY | Throttle control motor relay coil (IPDM E/R E122 pin 47) |
| 106 | BRN/WHT | APS1 | APP sensor pin 2 (sensor 1) |
| 107 | PPL/RED | TF | Fuel tank temperature sensor (fuel level sensor unit and fuel pump pin 4, YEL/RED after the inline connector) |
| 108 | BRN/WHT | BNCSW | Cruise control system |
| 109 | BLU/WHT | IGN SW | Fuse 59 (10 A, hot in ON or START, fuse and relay box) |
| 111 | WHT/BLK | SSOFF | ECM relay coil (IPDM E/R E119 pin 7) |
| 113 | GRY | FPR | Fuel pump relay coil (IPDM E/R E122 pin 46) |
| 115 | BLK | GND | Ground E9 |
| 116 | BLK/WHT | GND | Ground E9 |
| 117 | BLU/YEL | CDCV | EVAP canister vent control valve pin 2 |
| 119 | BRN | VB | ECM relay output (IPDM E/R E119 pin 3 BRN); joined with 120 |
| 120 | BRN | VB | ECM relay output |
| 121 | WHT | BATT | Fuse 53 (20 A, hot at all times, IPDM E/R E121 pin 30) |

## Power supply, relays and grounds

Identical to the 2011 sheet: throttle control motor relay on fuse 52 (20 A), ECM relay and BATT on fuse 53 (20 A) with outputs E119 pin 3 (BRN, to VB pins 119/120, both VTC position sensors pin 3, crank and cam sensor pin 3, purge solenoid pin 1, MAF pin 2) and E119 pin 4 (WHT/BLU, to all eight coils pin 3, both VTC solenoids pin 2, EVAP vent valve pin 1, condenser 1); fuel pump relay on fuse 48 (15 A) with output E119 pin 13 (BLK/YEL) to the fuel pump and condenser 2; fuse 55 (15 A) to injectors pin 1; fuse 54 (15 A) to the A/F and rear O2 sensor heaters. Grounds: E9 for ECM pins 1/115/116, crank and cam sensor pin 1, knock sensor shields, VTC position sensors pin 1 and the throttle and APP shields; F16 (left front of engine) for the coils pin 2 and condenser 1; E15 (right side of engine compartment) for the fuel pump pin 3 and condenser 2; M61 (behind centre of dash) for the combination meter.
