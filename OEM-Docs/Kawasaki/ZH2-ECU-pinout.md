# Kawasaki Z H2 (ZR1000) — ECU pinout

Transcribed from two photographs of the Z H2 service manual, chapter 3 "Fuel System (DFI)", "Terminal Numbers of ECU Connectors": [ZH2 ECU Pinout 1.jpg](ZH2%20ECU%20Pinout%201.jpg) (manual page 3-16: connector drawing and terminals 1–56) and [ZH2 ECU Pinout 2.jpg](ZH2%20ECU%20Pinout%202.jpg) (manual page 3-17: terminals 57–136).

The ECU has two connectors, drawn side by side on page 3-16:

| Connector | Pins | Terminals | Role |
|-----------|------|-----------|------|
| 64-pin (right in the drawing) | 64 | 1–64 | Coils, primary injectors, ECU power/grounds, cruise-control switches, engine sensors, crank, CAN, KDS/immobilizer line |
| 72-pin (left in the drawing) | 72 | 65–136 | Purge valves, O2 heater, exhaust valve and ETV actuators, APS/TPS, knock, relays, wheel speed, immobilizer amplifier, secondary injectors |

Terminal layout as drawn on page 3-16 (rows top to bottom, numbers read left to right): 64-pin `10 … 1` / `23 … 11` / `37 … 24` / `50 … 38` / `64 … 51`; 72-pin `76 … 65` / `91 … 77` / `106 … 92` / `121 … 107` / `136 … 122`. (Individual numbers inside the drawing are not legible in the photo; the row layout is the same as the ZX-4R drawing and is consistent with the terminal count.)

Wire colors are abbreviated as in the source: BK black, BL blue, BR brown, G green, GY grey, LB light blue, LG light green, O orange, P pink, R red, V violet, W white, Y yellow (first color = base, second = stripe). The source pages only give terminal names, not destinations, so there is no "Connects to" column. Pins printed as "Unused" are omitted from the tables; a full list is at the end.

## 64-pin connector (terminals 1–64)

| Pin | Wire | Function (as printed) |
|-----|------|----------------------|
| 1 | BK/O | Stick Coil #3 |
| 2 | BK/R | Stick Coil #2 |
| 3 | BK/G | Stick Coil #4 |
| 4 | BL/G | Primary Fuel Injector #4 |
| 5 | BL/O | Primary Fuel Injector #3 |
| 6 | BL/R | Primary Fuel Injector #2 |
| 7 | BL/BK | Primary Fuel Injector #1 |
| 8 | W/BK | Power Supply to ECU (from Battery) |
| 9 | W/BK | Power Supply to ECU (from Battery) |
| 10 | BK/BL | Ground for Control System |
| 11 | BK | Stick Coil #1 |
| 12 | BK/Y | Engine Ground |
| 13 | BK/Y | Engine Ground |
| 16 | G | Ground for Sensors |
| 18 | BR/W | Ignition Switch |
| 21 | BL/Y | Power Supply to Sensor |
| 22 | BL | Power Supply to Sensors |
| 25 | G/BK | Side Stand Switch |
| 26 | V | Electronic Cruise Control Button |
| 27 | P/BK | Electronic Cruise Control SET/– Button |
| 28 | BR/BK | Electronic Cruise Control RES/+ Button |
| 30 | W | Electronic Cruise Control Cancel Switch (Clutch) |
| 31 | V/Y | Electronic Cruise Control Cancel Switch (Rear Brake) |
| 32 | BL/BK | Brake/Electronic Cruise Control Cancel Switch |
| 34 | GY | Exhaust Butterfly Valve Actuator Sensor (Equipped Models) |
| 40 | G/R | Gear Position Sensor |
| 43 | G/BK | Oxygen Sensor (–) |
| 45 | W/BK | Oxygen Sensor (+) |
| 47 | R/G | Starter Lockout Switch |
| 48 | LG/BK | External Communication Line (Immobilizer System (Equipped Models)/Kawasaki Diagnostic System) |
| 49 | G/W | Quick Shifter Sensor |
| 50 | Y/G | Vehicle-down Sensor |
| 53 | O | Water Temperature Sensor |
| 54 | R/W | Atmospheric Pressure Sensor |
| 55 | GY/R | Air Intake Chamber Pressure/Temperature Sensor (Temperature) |
| 56 | R/G | Air Intake Chamber Pressure/Temperature Sensor (Pressure) |
| 57 | R/BK | Intake Air Pressure Sensor #2 |
| 58 | R/BK | Intake Air Pressure Sensor #1 |
| 59 | Y/BK | Crankshaft Sensor (–) |
| 60 | Y | Crankshaft Sensor (+) |
| 62 | LG | External Communication Line (Immobilizer System (Equipped Models)/Kawasaki Diagnostic System) |
| 63 | LB | CAN Communication Line (Low) |
| 64 | GY/BL | CAN Communication Line (High) |

## 72-pin connector (terminals 65–136)

| Pin | Wire | Function (as printed) |
|-----|------|----------------------|
| 65 | G/R | Purge Valve (Other than US and CA Models) |
| 67 | R/Y | Oxygen Sensor Heater |
| 68 | W/BL | Exhaust Butterfly Valve Actuator (–) (Equipped Models) |
| 69 | W/R | Exhaust Butterfly Valve Actuator (+) (Equipped Models) |
| 70 | W/R | ETV Actuator (+) |
| 71 | BK/R | ETV Actuator (–) |
| 72 | G/BL | Power Supply to ETV Actuator |
| 73 | BK/Y | Ground for ETV Actuator |
| 74 | R/BL | Power Supply to Accelerator Position Sensor 1 |
| 75 | W | Power Supply to Throttle Position Sensor |
| 76 | BL | Power Supply to Accelerator Position Sensor 2 |
| 77 | R/BL | Air Switching Valve |
| 79 | LG | Green Neutral Indicator Light (LED) |
| 82 | G | Knock Sensor (–) |
| 83 | BL | Knock Sensor (+) |
| 84 | P | Frame Ground |
| 86 | BR/Y | Fuel Pump Relay |
| 87 | W/R | Battery Monitor Voltage Line |
| 88 | BK/R | Engine Start/Stop Switch (Engine Start) |
| 89 | Y/BL | ETV Actuator Relay |
| 102 | W/Y | Rear Wheel Rotation Sensor Signal |
| 103 | GY/Y | Front Wheel Rotation Sensor Signal |
| 107 | R/BK | Purge Valve (for Supercharger) |
| 111 | P/BL | Radiator Fan Relay |
| 124 | Y | Immobilizer Amplifier (Equipped Models) |
| 125 | P/BK | Immobilizer Amplifier (Equipped Models) |
| 126 | G | Ground for Accelerator Position Sensor 2 |
| 127 | W/G | Ground for Accelerator Position Sensor 1 |
| 128 | Y | Accelerator Position Sensor 2 |
| 129 | Y/BK | Accelerator Position Sensor 1 |
| 130 | BK | Ground for Throttle Position Sensor |
| 131 | V/W | Throttle Position Sensor 2 |
| 132 | V | Throttle Position Sensor 1 |
| 133 | O/R | Secondary Fuel Injector #1 |
| 134 | O/G | Secondary Fuel Injector #2 |
| 135 | O/Y | Secondary Fuel Injector #4 |
| 136 | O/BK | Secondary Fuel Injector #3 |

Unused terminals (as printed): 14, 15, 17, 19, 20, 23, 24, 29, 33, 35–39, 41, 42, 44, 46, 51, 52, 61, 66, 78, 80, 81, 85, 90–101, 104, 105, 106, 108, 109, 110, 112–123.

## Notes

- Pins 57 and 58 (intake air pressure sensors #2 and #1) are both printed "R/BK". Transcribed as printed.
- The ZH2 photos are the source for the rusEFI `kawa-superseal` adapter's OEM-side pin definitions in the rusefi-hardware repo (`kawasaki/connectors/right.yaml` for terminals 1–64, `left.yaml` for 65–136); the function names there match this table.
- The ZX-4R uses the same ECU connector family and numbering; see [Ninja-ZX-4R-ECU-pinout.md](Ninja-ZX-4R-ECU-pinout.md) for the differences.
