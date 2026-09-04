# 2023 Kawasaki Ninja ZX-4R (ZX400P/R/S) — ECU pinout

Transcribed from [Ninja ZX-4R Service Manual.pdf](Ninja%20ZX-4R%20Service%20Manual.pdf), chapter 17 "Self-Diagnosis System": "Terminal Numbers of Connector — ECU Connector" (manual pages 17-14 and 17-15, PDF pages 546–547), "Self-Diagnosis System Wiring Diagram — DFI System" and its part-names list (manual pages 17-10 and 17-11, PDF pages 542–543), and "ABS Hydraulic Unit Connector" (manual page 17-16, PDF page 548).

The ECU has two connectors, drawn side by side on page 17-14 (view onto the ECU-side terminal faces):

| Connector | Pins | Terminals | Role |
|-----------|------|-----------|------|
| 64-pin (right in the drawing) | 64 | 1–64 | Coils, injectors, ECU power/grounds, switches, engine sensors, crank, CAN, KDS/immobilizer line |
| 72-pin (left in the drawing) | 72 | 65–136 | Purge, O2 heater, ETV motor + relay, APS/TPS, fan/fuel-pump relays, wheel speed, meter, immobilizer amplifier |

Terminal layout as drawn on page 17-14 (rows top to bottom, numbers read left to right):

- 64-pin: `10 … 1` / `23 … 11` / `37 … 24` / `50 … 38` / `64 … 51`
- 72-pin: `76 … 65` / `91 … 77` / `106 … 92` / `121 … 107` / `136 … 122`

Wire colors are abbreviated as in the source: BK black, BL blue, BR brown, G green, GY grey, LB light blue, LG light green, O orange, P pink, R red, V violet, W white, Y yellow (first color = base, second = stripe). Pins printed as "Unused" are omitted from the tables below; a full list of unused terminals is at the end.

"Connects to" is taken from the part-names list of the DFI self-diagnosis wiring diagram (page 17-11); the diagram's wire labels are too small to read in this scan, so only destinations that the terminal name itself identifies are given.

## 64-pin connector (terminals 1–64)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BK/O | Stick Coil #3 | Stick coil cyl 3 |
| 2 | BK/R | Stick Coil #2 | Stick coil cyl 2 |
| 3 | BK/G | Stick Coil #4 | Stick coil cyl 4 |
| 4 | BL/W | Fuel Injector #4 | Fuel injector cyl 4 |
| 5 | BL/W | Fuel Injector #3 | Fuel injector cyl 3 |
| 6 | BL/R | Fuel Injector #2 | Fuel injector cyl 2 |
| 7 | BL/BK | Fuel Injector #1 | Fuel injector cyl 1 |
| 8 | W/R | Power Supply to ECU (from Battery) | ECU main relay (relay box) / ECU fuse 15 A |
| 9 | W/R | Power Supply to ECU (from Battery) | ECU main relay (relay box) / ECU fuse 15 A |
| 10 | BK/Y | Ground for Control System | |
| 11 | BK | Stick Coil #1 | Stick coil cyl 1 |
| 12 | BK/Y | Engine Ground | Engine ground |
| 13 | BK/Y | Engine Ground | Engine ground |
| 16 | G | Ground for Sensors | |
| 18 | BR/W | Ignition Switch | Ignition switch (via ignition fuse 15 A) |
| 20 | G/O | Yellow KTRC Indicator Light | Meter unit |
| 21 | BL/Y | Power Supply to Gear Position Sensor | Gear position sensor |
| 22 | BL | Power Supply to Sensors | |
| 23 | G/W | SELECT Button | |
| 25 | G/W | Side Stand Switch | Side stand switch |
| 29 | R | Engine Start/Stop Switch (Engine Stop) | Engine start/stop switch |
| 35 | P/BL | Upper Button | |
| 36 | R/G | Lower Button | |
| 40 | G/R | Gear Position Sensor | Gear position sensor |
| 43 | G/BL | Front Oxygen Sensor (–) | Front oxygen sensor |
| 45 | BL/Y | Fornt [sic] Oxygen Sensor (+) | Front oxygen sensor |
| 47 | R/G | Starter Lockout Switch | Starter lockout switch |
| 48 | LG/BK | External Communication Line (Immobilizer System (Equipped Models)/Kawasaki Diagnostic System) | Immobilizer / KDS connector |
| 49 | G/Y | Quick Shifter Sensor (Equipped Models) | Quick shifter sensor |
| 50 | Y/G | Vehicle-down Sensor | Vehicle-down sensor |
| 53 | W/G | Water Temperature Sensor | Water temperature sensor |
| 55 | R/BK | Intake Air Temperature Sensor | Intake air temperature sensor |
| 57 | G/W | Intake Air Pressure Sensor #2 | Intake air pressure sensor #2 |
| 58 | Y/BL | Intake Air Pressure Sensor #1 | Intake air pressure sensor #1 |
| 59 | Y/BK | Crankshaft Sensor (–) | Crankshaft sensor |
| 60 | Y | Crankshaft Sensor (+) | Crankshaft sensor |
| 62 | LG | External Communication Line (Immobilizer System (Equipped Models)/Kawasaki Diagnostic System) | Immobilizer / KDS connector |
| 63 | LB | CAN Communication Line (Low) | CAN bus (ABS hydraulic unit, meter unit) |
| 64 | GY/BL | CAN Communication Line (High) | CAN bus (ABS hydraulic unit, meter unit) |

## 72-pin connector (terminals 65–136)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 65 | R/Y | Purge Valve | Purge valve |
| 67 | P | Front Oxygen Sensor Heater | Front oxygen sensor (heater) |
| 70 | R | ETV Actuator (+) | ETV actuator (throttle motor) |
| 71 | G | ETV Actuator (–) | ETV actuator (throttle motor) |
| 72 | G | Power Supply to ETV Actuator | ETV actuator relay (via ETV actuator relay fuse 10 A) |
| 73 | BK/Y | Ground for ETV Actuator | |
| 74 | R | Power Supply to Accelerator Position Sensor 1 | Accelerator position sensor |
| 75 | W | Power Supply to Throttle Position Sensor | Throttle position sensor |
| 76 | BL | Power Supply to Accelerator Position Sensor 2 | Accelerator position sensor |
| 77 | R/BL | Air Switching Valve | Air switching valve |
| 79 | LG | Green Neutral Indicator Light | Meter unit |
| 84 | P | Frame Ground | Frame ground |
| 86 | BR/Y | Fuel Pump Relay | Fuel pump relay (relay box) |
| 87 | W/R | Battery Monitor Voltage Line | |
| 88 | G/W | Engine Start/Stop Switch (Engine Start) | Engine start/stop switch |
| 89 | Y/BL | ETV Actuator Relay | ETV actuator relay (coil) |
| 90 | LB/W | Meter Unit (Tachometer) | Meter unit |
| 91 | P | Rear Wheel Rotation Sensor Output | |
| 102 | G | Rear Wheel Rotation Sensor | Rear wheel rotation sensor (via ABS hydraulic unit pin 3) |
| 103 | G/Y | Front Wheel Rotation Sensor | Front wheel rotation sensor (via ABS hydraulic unit pin 12) |
| 111 | Y/BL | Radiator Fan Relay | Radiator fan relay (relay box) |
| 118 | BL/BK | Meter Communication Line | Meter unit |
| 124 | V | Immobilizer Amplifier (Equipped Models) | Immobilizer amplifier |
| 125 | P/BK | Immobilizer Amplifier (Equipped Models) | Immobilizer amplifier |
| 126 | G | Ground for Accelerator Position Sensor 2 | Accelerator position sensor |
| 127 | W | Ground for Accelerator Position Sensor 1 | Accelerator position sensor |
| 128 | Y | Accelerator Position Sensor 2 | Accelerator position sensor |
| 129 | BR | Accelerator Position Sensor 1 | Accelerator position sensor |
| 130 | BK | Ground for Throttle Position Sensor | Throttle position sensor |
| 131 | V | Throttle Position Sensor 2 | Throttle position sensor |
| 132 | V | Throttle Position Sensor 1 | Throttle position sensor |

Unused terminals (as printed): 14, 15, 17, 19, 24, 26, 27, 28, 30–34, 37, 38, 39, 41, 42, 44, 46, 51, 52, 54, 56, 61, 66, 68, 69, 78, 80–83, 85, 92–101, 104–110, 112–117, 119–123, 133–136.

## ABS hydraulic unit connector (18-pin, page 17-16)

Not part of the ECU, but the wheel-speed signals reach the ECU through it. Terminal layout as drawn: two columns, 9 (top) … 1 (bottom) on the left and 18 (top) … 10 (bottom) on the right.

| Pin | Wire | Function (as printed) |
|-----|------|----------------------|
| 1 | BK/Y | Ground |
| 3 | G | Rear Wheel Rotation Sensor Signal Output |
| 4 | BL/R | Front and Rear Brake Light Switch Signal |
| 5 | P | ABS Kawasaki Diagnostic System Terminal |
| 6 | BK/O | Power Supply to Rear Wheel Rotation Sensor |
| 7 | BR/W | Power Supply |
| 8 | BK/W | Power Supply to Front Wheel Rotation Sensor |
| 9 | R/W | Power Supply to ABS Motor Relay |
| 10 | BK/Y | Ground |
| 12 | GY/Y | Front Wheel Sensor Signal Output |
| 13 | BL/Y | Yellow ABS Indicator Light |
| 14 | GY | ABS Self-Diagnosis Terminal |
| 15 | W/G | Rear Wheel Rotation Sensor Signal Input |
| 17 | W/BK | Front Wheel Rotation Sensor Signal Input |
| 18 | R/BK | Power Supply to ABS Solenoid Valve Relay |

Pins 2, 11, 16 are printed "Unused".

## Power supply / relays (DFI wiring diagram, pages 17-10 / 17-11)

Part names from the DFI self-diagnosis wiring diagram: relay box (1) containing fuel pump relay (2), ECU main relay (3), radiator fan relay (4); main fuse 30 A (8); ETV actuator relay (10); fuse box (1) (39) with ignition fuse 15 A (41), fan fuse 15 A (42), ECU fuse 15 A (43); fuse box (2) (40) with ETV actuator relay fuse 10 A (44). Engine ground (6), frame grounds (11), battery (7), immobilizer/KDS connector (9), meter unit (14), immobilizer antenna (15) and amplifier (16), ignition switch (17).

## Notes

- Pins 4 and 5 (injectors #4 and #3) are both printed "BL/W" on page 17-14; the corresponding terminals on the Z H2 ECU are BL/G and BL/O, so one of the ZX-4R entries may be a misprint. Transcribed as printed.
- Pins 131 and 132 (TPS 2 and TPS 1) are both printed "V". Transcribed as printed.
- Pin 45 is printed "Fornt Oxygen Sensor (+)" (typo for "Front") in the manual.
- The ZX-4R terminal numbering, connector shapes and the assignments of terminals 1–13, 16, 18, 21, 22, 25, 40, 47, 48, 50, 59–64, 70–77, 79, 84, 86–89, 102, 103, 111, 124–132 match the Z H2 ECU (see [ZH2-ECU-pinout.md](ZH2-ECU-pinout.md)); the ZX-4R does not use the secondary injectors (133–136), knock sensor (82/83), cruise-control inputs, or exhaust-valve actuator, and adds the KTRC/SELECT/upper/lower buttons (20, 23, 35, 36), tachometer (90), rear-wheel-speed output (91) and meter line (118).
- rusEFI `kawa-superseal` adapter: OEM-side pin definitions are in the rusefi-hardware repo, `kawasaki/connectors/right.yaml` (terminals 1–64) and `left.yaml` (65–136).
