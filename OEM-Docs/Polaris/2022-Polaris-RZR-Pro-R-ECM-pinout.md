# 2022 Polaris RZR Pro R — ECM pinout

Transcribed from [2022 Pro R Harness-Engine.pdf](2022%20Pro%20R%20Harness-Engine.pdf) (Polaris "HARNESS-ENGINE" drawing, harness 2416428, dated 04/25/21; sheet 1 is the schematic, sheet 2 is the "Schematic Cable/Wire Termination Table" with 99 circuits).

The engine harness connects the ECM to the engine-mounted sensors/actuators and to the chassis harness through a single 52-pin Yazaki connector. The ECM has two 56-cavity Bosch connectors; the drawing calls them "ECM CODE 4" (module A) and "ECM CODE 13" (module B). Wire IDs are of the form `ECM-A10` = module A, cavity 10.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| ECM CODE 4 (module A, Bosch 1-928-405-216) | 56 | Knock, cam phaser, coolant temp return, injectors 2/4, start relay, brake light, fuel pump return |
| ECM CODE 13 (module B, Bosch 1-928-405-217) | 56 | Throttle body, TMAP, CPS, O2, coils, injectors 1/3, purge, VSS, CAN, pedal, relays, power, ground |
| CHASSIS HARNESS (Yazaki 7288-8199-30) | 52 | Engine harness to chassis harness: pedal, CAN, relays, fuses, grounds |

Wire colors are abbreviated as in the source legend (BG beige/tan, BK black, BU light blue, DB dark blue, BN brown, GY gray, GN light green, DG dark green, OG orange, PK pink, RD red, VT violet/purple, WH white, YE yellow, CL clear; two colors = main/trace, e.g. RD/YE = red with yellow trace). The number after the color is the wire cross-section in mm2; "TP" = twisted pair; TXL/TFE is the insulation type. Unlisted cavities are empty in this harness.

## ECM CODE 4 — module A (56-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| A2 | GY/RD 0.5 | 5V SENSOR SUPPLY, TMAP | TMAP intake pin 3 |
| A9 | RD 0.5 | KNOCK SENSOR FEED | Knock sensor pin 1 |
| A10 | BK 0.5 | KNOCK SENSOR RETURN | Knock sensor pin 2 |
| A11 | OG 0.5 | BRAKE LIGHT SIG | Chassis harness pin 24 |
| A15 | DG 0.5 | KEYSWITCH START REQUEST | Chassis harness pin 23 |
| A16 | GY 0.5 | TBD | Chassis harness pin 30 |
| A18 | YE/BK 0.5 | CAM PHASER OUTPUT | Cam phaser pin 2 |
| A32 | BN 0.5 | SENSOR GND,DRIVE MODE | Chassis harness pin 14 |
| A41 | DG/RD 0.5 | START RELAY COIL HI | Chassis harness pin 19 |
| A43 | OG/BK 0.5 | COOLANT TEMP RETURN | Coolant temp pin 1 |
| A44 | VT/WH 0.5 | TRANS GEAR POS RTN | Trans gear position pin A |
| A50 | RD/BK 0.8 | FUEL INJ 4 CTRL | Injector 4 pin 1 |
| A51 | BU 0.8 | FUEL INJ 2 CTRL | Injector 2 pin 1 |
| A52 | BN 0.5 | FUEL PUMP RETURN | Chassis harness pin 26 |
| A54 | BN 0.8 | GROUND, ECM | Splice, ECM ground |

## ECM CODE 13 — module B (56-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| B1 | WH 0.5 | O2 SENSOR HEATER CONTROL | O2 sensor pin D |
| B3 | BN/WH 0.5 | AWD COIL LO | Chassis harness pin 48 |
| B4 | DG/WH 0.5 | TBD | Chassis harness pin 31 |
| B5 | DB/OG 0.5 | VSS SIGNAL | Speed sensor pin C |
| B6 | OG/BK 0.5 | SEATBELT SIGNAL | Chassis harness pin 12 |
| B7 | DG/YE 0.5 | LIGHTS RELAY COIL LO | Chassis harness pin 18 |
| B9 | OG/WH 0.5 | KEY ON POSITION | Chassis harness pin 22 |
| B10 | GY/RD 0.5 | 5V SENSOR SUPPLY, TPS | Throttle body pin 2 |
| B12 | BN/PK 0.5 | THROTTLE BODY M1 POS | Throttle body pin 6 |
| B13 | RD 0.5 | CPS SIGNAL (+) | CPS pin 1 |
| B14 | BK 0.5 | CPS SIGNAL (-) | CPS pin 2 |
| B15 | OG/DG 0.5 | TMAP TEMP SIGNAL | TMAP intake pin 2 |
| B16 | OG/YE 0.5 | TMAP PRESSURE SIGNAL | TMAP intake pin 4 |
| B17 | GY 0.5 | AWD SWITCH REQUEST | Chassis harness pin 10 |
| B19 | BG/BK 0.5 | ENGINE FAN PWM CONTROL | Chassis harness pin 11 |
| B20 | DG/OG 0.5 | FUEL RELAY COIL LO | Chassis harness pin 16 |
| B21 | DG/BN 0.5 | START RELAY COIL LO | Chassis harness pin 20 |
| B22 | OG/BN 0.5 | PEDAL POSITION 1 REF | Chassis harness pin 3 |
| B23 | OG/RD 0.5 | PEDAL POSITION 2 REF | Chassis harness pin 4 |
| B24 | YE/PK 0.5 | THROTTLE BODY M2 NEG | Throttle body pin 5 |
| B25 | VT/WH 0.5 | GROUND, O2 SENSOR | O2 sensor pin A |
| B26 | BN/WH 0.5 | THROTTLE BODY RTN | Throttle body pin 4 |
| B27 | VT/BK 0.5 | PEDAL POSITION 2 RETURN | Chassis harness pin 8 |
| B28 | RD/DB 0.5 | O2 SENSOR LSF1 | O2 sensor pin B |
| B29 | YE 0.5TP | CAN HIGH | Chassis harness pin 1 |
| B30 | DG 0.5TP | CAN LOW | Chassis harness pin 2 |
| B31 | OG/YE 0.5 | BRAKE SIGNAL-ACTIVE LO | Chassis harness pin 15 |
| B32 | DB/BK 0.5 | PEDAL POSITION 2 SIGNAL | Chassis harness pin 6 |
| B33 | OG/DB 0.5 | COOLANT TEMP SIGNAL | Coolant temp pin 2 |
| B34 | DG/BK 0.5 | EFI RELAY COIL LO | Chassis harness pin 17 |
| B35 | DB/WH 0.5 | PEDAL POSITION 1 SIGNAL | Chassis harness pin 5 |
| B36 | VT/WH 0.5 | FUEL SENSOR FEEDBACK | Chassis harness pin 9 |
| B37 | OG/BK 0.5 | TMAP SENSOR RETURN | TMAP intake pin 1 |
| B38 | VT 0.5 | PEDAL POSITION 1 RETURN | Chassis harness pin 7 |
| B40 | DB/VT 0.5 | PURGE VALVE FEED | Purge pin 2 |
| B41 | DG 0.5 | FUEL INJ 3 CTRL | Injector 3 pin 1 |
| B42 | WH 0.5 | FUEL INJ 1 CTRL | Injector 1 pin 1 |
| B45 | VT/RD 0.5 | THROTTLE POSITION 2 | Throttle body pin 1 |
| B46 | DG/WH 0.5 | TRANS GEAR POS IND | Trans gear position pin B |
| B47 | GY/RD 0.5 | DRIVE MODE SELECT | Chassis harness pin 13 |
| B48 | DG/RD 0.5 | THROTTLE POSITION 1 | Throttle body pin 3 |
| B49 | OG 1.0 | FUSED, EFI RELAY | Splice, EFI relay rear (from chassis harness pin 41) |
| B50 | OG 1.0 | FUSED, EFI RELAY | Splice, EFI relay rear (from chassis harness pin 41) |
| B51 | BN 1.0 | GROUND, ECM | Splice, ECM ground (from chassis harness pin 51) |
| B52 | BN 1.0 | GROUND, ECM | Splice, ECM ground (from chassis harness pin 51) |
| B53 | WH/GY 0.8 | COIL 1 TRIGGER | Coil 1 pin 3 |
| B54 | WH/VT 0.8 | COIL 3 TRIGGER | Coil 3 pin 3 |
| B55 | BK 0.8 | COIL 4 TRIGGER | Coil 4 pin 3 |
| B56 | WH 0.8 | COIL 2 TRIGGER | Coil 2 pin 3 |

Notes on the ECM side:

- The ECM has no direct battery feed in this harness: B49/B50 are the switched supply from the EFI relay (chassis harness pin 41, RE01-7 OG 2.0 into the "EFI relay rear" splice), and the ECM itself pulls the EFI relay coil low on B34.
- The ECM also drives the fuel relay (B20), start relay (A41 high side / B21 low side), lights relay (B7), AWD coil (B3) and engine fan PWM (B19) through the chassis harness.
- The O2 sensor ground (B25), signal (B28) and heater control (B1) are all on module B; the heater supply comes from the chassis relay splice, not the ECM.
- Injector low sides are split across modules: 1 and 3 on B42/B41, 2 and 4 on A51/A50. Injector high sides are fed from the EFI relay splice (RE017-1..4).
- Coil triggers are all on module B (B53..B56, 0.8 mm2). Coil grounds go to the "coil GND" splice (chassis harness pin 52), and each coil trigger has a shield (SH1..SH4) flush-cut at the coil and grounded at the ECM-ground splice via GR4.
- A16 and B4 are wired to the chassis harness (pins 30 and 31) but their function is printed as "TBD".

## CHASSIS HARNESS — Yazaki 7288-8199-30 (52-pin)

Engine-harness side of the engine/chassis interconnect; "Connects to" is the engine-harness circuit.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | YE 0.5TP | CAN HIGH | ECM B29 |
| 2 | DG 0.5TP | CAN LOW | ECM B30 |
| 3 | OG/BN 0.5 | PEDAL POSITION 1 REF | ECM B22 |
| 4 | OG/RD 0.5 | PEDAL POSITION 2 REF | ECM B23 |
| 5 | DB/WH 0.5 | PEDAL POSITION 1 SIGNAL | ECM B35 |
| 6 | DB/BK 0.5 | PEDAL POSITION 2 SIGNAL | ECM B32 |
| 7 | VT 0.5 | PEDAL POSITION 1 RETURN | ECM B38 |
| 8 | VT/BK 0.5 | PEDAL POSITION 2 RETURN | ECM B27 |
| 9 | VT/WH 0.5 | FUEL SENSOR FEEDBACK | ECM B36 |
| 10 | GY 0.5 | AWD SWITCH REQUEST | ECM B17 |
| 11 | BG/BK 0.5 | ENGINE FAN PWM CONTROL | ECM B19 |
| 12 | OG/BK 0.5 | SEATBELT SIGNAL | ECM B6 |
| 13 | GY/RD 0.5 | DRIVE MODE SELECT | ECM B47 |
| 14 | BN 0.5 | SENSOR GND,DRIVE MODE | ECM A32 |
| 15 | OG/YE 0.5 | BRAKE SIGNAL-ACTIVE LO | ECM B31 |
| 16 | DG/OG 0.5 | FUEL RELAY COIL LO | ECM B20 |
| 17 | DG/BK 0.5 | EFI RELAY COIL LO | ECM B34 |
| 18 | DG/YE 0.5 | LIGHTS RELAY COIL LO | ECM B7 |
| 19 | DG/RD 0.5 | START RELAY COIL HI | ECM A41 |
| 20 | DG/BN 0.5 | START RELAY COIL LO | ECM B21 |
| 22 | OG/WH 0.5 | KEY ON POSITION | ECM B9 |
| 23 | DG 0.5 | KEYSWITCH START REQUEST | ECM A15 |
| 24 | OG 0.5 | BRAKE LIGHT SIG | ECM A11 |
| 26 | BN 0.5 | FUEL PUMP RETURN | ECM A52 |
| 30 | GY 0.5 | TBD | ECM A16 |
| 31 | DG/WH 0.5 | TBD | ECM B4 |
| 40 | BN 1.0 | GROUND | Splice, sensor ground (GR1: cam phaser pin 3, speed sensor pin B) |
| 41 | OG 2.0 | FUSED, EFI RELAY | Splice, EFI relay rear (RE01-7: ECM B49/B50, injectors 1-4 pin 2, cam phaser pin 1, purge pin 1) |
| 42 | OG/WH 1.0 | FUSED, CHASSIS RELAY | Splice, chassis relay rear (RE04-1: speed sensor pin A, O2 sensor pin C, alternator pin A) |
| 43 | OG/RD 0.8 | COIL 1&4 FUSE | Splice, coil 1&4 (FU011: coil 1 pin 1, coil 4 pin 1) |
| 44 | OG/DB 0.8 | COIL 2&3 FUSE | Splice, coil 2&3 (FU012: coil 2 pin 1, coil 3 pin 1) |
| 45 | DG/WH 1.0 | START RELAY-SOURCE | Splice, start solenoid (RE012 DG/WH 2.0 to start solenoid pin 1) |
| 48 | BN/WH 0.5 | AWD COIL LO | ECM B3 |
| 51 | BN 2.0 | GROUND,ECM | Splice, ECM ground (GR3: ECM A54/B51/B52, shield splice, CPS shield) |
| 52 | BN 2.0 | GROUND | Splice, coil GND (GR2: coils 1-4 pin 2) |

## Other harness connectors

Engine-side component connectors, as drawn on sheet 1 and listed in the termination table.

| Connector | Pins | Pin | Wire | Function (as printed) | Connects to |
|-----------|------|-----|------|----------------------|-------------|
| THROTTLE BODY | 6 | 1 | VT/RD 0.5 | THROTTLE POSITION 2 | ECM B45 |
| | | 2 | GY/RD 0.5 | 5V SENSOR SUPPLY, TPS | ECM B10 |
| | | 3 | DG/RD 0.5 | THROTTLE POSITION 1 | ECM B48 |
| | | 4 | BN/WH 0.5 | THROTTLE BODY RTN | ECM B26 |
| | | 5 | YE/PK 0.5 | THROTTLE BODY M2 NEG | ECM B24 |
| | | 6 | BN/PK 0.5 | THROTTLE BODY M1 POS | ECM B12 |
| TMAP INTAKE | 4 | 1 | OG/BK 0.5 | TMAP SENSOR RETURN | ECM B37 |
| | | 2 | OG/DG 0.5 | TMAP TEMP SIGNAL | ECM B15 |
| | | 3 | GY/RD 0.5 | 5V SENSOR SUPPLY, TMAP | ECM A2 |
| | | 4 | OG/YE 0.5 | TMAP PRESSURE SIGNAL | ECM B16 |
| KNOCK SENSOR | 2 | 1 | RD 0.5 | KNOCK SENSOR FEED | ECM A9 |
| | | 2 | BK 0.5 | KNOCK SENSOR RETURN | ECM A10 |
| COOLANT TEMP | 2 | 1 | OG/BK 0.5 | COOLANT TEMP RETURN | ECM A43 |
| | | 2 | OG/DB 0.5 | COOLANT TEMP SIGNAL | ECM B33 |
| O2 SENSOR | 4 | A | VT/WH 0.5 | GROUND, O2 SENSOR | ECM B25 |
| | | B | RD/DB 0.5 | O2 SENSOR LSF1 | ECM B28 |
| | | C | OG/WH 0.5 | FUSED, CHASSIS RELAY | Splice, chassis relay rear (RE041-3) |
| | | D | WH 0.5 | O2 SENSOR HEATER CONTROL | ECM B1 |
| CPS (crank position) | 3 | 1 | RD 0.5 | CPS SIGNAL (+) | ECM B13 |
| | | 2 | BK 0.5 | CPS SIGNAL (-) | ECM B14 |
| | | 3 | WH 0.5 | CPS | Splice, CPS (CPS-1; shield drain to ECM-ground splice) |
| TRANS GEAR POSITION | 2 | A | VT/WH 0.5 | TRANS GEAR POS RTN | ECM A44 |
| | | B | DG/WH 0.5 | TRANS GEAR POS IND | ECM B46 |
| SPEED SENSOR (Hall, on transmission) | 3 | A | OG/WH 0.5 | FUSED,CHASSIS RELAY,VSS (power in) | Splice, chassis relay rear (RE041-1) |
| | | B | BN 0.5 | GROUND, VSS (common) | Splice, sensor ground (GR1-2) |
| | | C | DB/OG 0.5 | VSS SIGNAL (V out) | ECM B5 |
| CAM PHASER | 3 | 1 | OG 0.5 | FUSED, EFI RELAY | Splice, EFI relay rear (RE017-7) |
| | | 2 | YE/BK 0.5 | CAM PHASER OUTPUT | ECM A18 |
| | | 3 | BN 0.5 | GROUND, CAM PHASE | Splice, sensor ground (GR1-1) |
| PURGE | 2 | 1 | OG 0.5 | FUSED, EFI RELAY | Splice, EFI relay rear (RE017-8) |
| | | 2 | DB/VT 0.5 | PURGE VALVE FEED | ECM B40 |
| START SOLENOID | 1 | 1 | DG/WH 2.0 | START RELAY - SOURCE | Splice, start solenoid (RE012, from chassis harness pin 45) |
| ALTERNATOR | 2 | A | OG/WH 0.5 | FUSED, CHASSIS RELAY | Splice, chassis relay rear (RE041-4) |
| INJECTOR 1 | 2 | 1 | WH 0.5 | FUEL INJ 1 CTRL | ECM B42 |
| | | 2 | OG 0.5 | FUSED, EFI RELAY | Splice, EFI relay rear (RE017-1) |
| INJECTOR 2 | 2 | 1 | BU 0.8 | FUEL INJ 2 CTRL | ECM A51 |
| | | 2 | OG 0.5 | FUSED, EFI RELAY | Splice, EFI relay rear (RE017-2) |
| INJECTOR 3 | 2 | 1 | DG 0.5 | FUEL INJ 3 CTRL | ECM B41 |
| | | 2 | OG 0.5 | FUSED, EFI RELAY | Splice, EFI relay rear (RE017-3) |
| INJECTOR 4 | 2 | 1 | RD/BK 0.8 | FUEL INJ 4 CTRL | ECM A50 |
| | | 2 | OG 0.5 | FUSED, EFI RELAY | Splice, EFI relay rear (RE017-4) |
| COIL 1 | 3 | 1 | OG/RD 0.8 | COIL 1&4 FUSE | Splice, coil 1&4 (FU011-1) |
| | | 2 | BN 0.8 | GROUND, COIL 1 | Splice, coil GND (GR2-1) |
| | | 3 | WH/GY 0.8 | COIL 1 TRIGGER | ECM B53 (shield SH1) |
| COIL 2 | 3 | 1 | OG/DB 0.8 | COIL 2&3 FUSE | Splice, coil 2&3 (FU012-1) |
| | | 2 | BN 0.8 | GROUND, COIL 2 | Splice, coil GND (GR2-2) |
| | | 3 | WH 0.8 | COIL 2 TRIGGER | ECM B56 (shield SH2) |
| COIL 3 | 3 | 1 | OG/DB 0.8 | COIL 2&3 FUSE | Splice, coil 2&3 (FU012-2) |
| | | 2 | BN 0.8 | GROUND, COIL 3 | Splice, coil GND (GR2-3) |
| | | 3 | WH/VT 0.8 | COIL 3 TRIGGER | ECM B54 (shield SH3) |
| COIL 4 | 3 | 1 | OG/RD 0.8 | COIL 1&4 FUSE | Splice, coil 1&4 (FU011-2) |
| | | 2 | BN 0.8 | GROUND, COIL 4 | Splice, coil GND (GR2-4) |
| | | 3 | BK 0.8 | COIL 4 TRIGGER | ECM B55 (shield SH4) |

Alternator pin B is drawn but has no circuit in the table; the only alternator wire in this harness is a 0.5 mm2 feed from the chassis relay (the charge lead is not part of the engine harness).

## Power supply / relays / grounds

All relays and fuses live in the chassis harness; the engine harness only receives their outputs through the 52-pin connector:

- **EFI relay** (pin 41, OG 2.0) — ECM B49/B50, injector high sides, cam phaser, purge valve. Coil pulled low by ECM B34.
- **Chassis relay** (pin 42, OG/WH 1.0) — speed sensor, O2 heater supply, alternator.
- **Coil 1&4 fuse** (pin 43) and **coil 2&3 fuse** (pin 44) — ignition coil supply, OG/RD and OG/DB 0.8.
- **Start relay source** (pin 45, DG/WH 1.0 to a 2.0 wire) — start solenoid. Start relay coil driven by ECM A41 (high) and B21 (low).
- **Fuel relay** and **lights relay** coils are driven low by ECM B20 and B7; their contacts are not in this harness.
- **Grounds**: pin 51 (BN 2.0) ECM ground splice (A54, B51, B52, shield drains); pin 52 (BN 2.0) coil ground splice; pin 40 (BN 1.0) sensor ground splice (cam phaser, speed sensor). Sensor returns for TMAP, throttle body, coolant temp, knock, O2 and CPS go straight to ECM pins, not to a harness ground.
