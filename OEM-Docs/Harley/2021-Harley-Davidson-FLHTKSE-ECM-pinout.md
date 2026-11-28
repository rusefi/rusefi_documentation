# 2021 Harley-Davidson FLHTKSE — ECM pinout

Transcribed from [2021-ecu-pinout.png](2021-ecu-pinout.png), “Main Harness (2 of 4): 2021 FLHTKSE,” from the 2021 Harley-Davidson Service Manual Supplement, FLHTKSE Model (94000839).

This excerpt covers the FLHTKSE ECM connector and the adjacent post-cat HO2S, left cooling fan and ECT connectors. The supplied crop ends at ECT and above the ECM wiring. It gives no engine displacement. Module-side functions are transcribed even where the far end of the wire is beyond the image.

Wire colors are the harness-side codes printed in the drawing. BK = black, BE = blue, BN = brown, GN = green, GY = gray, LBE = light blue, LGN = light green, O = orange, PK = pink, R = red, TN = tan, V = violet, W = white, Y = yellow. A slash separates the base color and tracer. Bracketed numbers are OEM connector IDs. Unlisted ECM cavities have no connection shown in the cited diagram.

## ECM [78A]/[78B] (80-cavity connector)

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| 1 | GY/BK | Right Cooling Fan Control | Endpoint outside the crop |
| 2 | BK/GN | Ground | Endpoint outside the crop |
| 3 | BK/GN | Ground | Endpoint outside the crop |
| 4 | GN/BK | Left Cooling Fan Control | Left cooling fan [215] B via [232L] 1 |
| 5 | R/GN | System Power | R/GN splice with branches continuing beyond the crop |
| 6 | GN/Y | Front Fuel Injector | Endpoint outside the crop |
| 7 | GY/Y | Rear Fuel Injector | Endpoint outside the crop |
| 8 | LGN/R | Rear ACR Enable | Endpoint outside the crop |
| 11 | BK | CKP Sensor Low | Endpoint outside the crop |
| 14 | BK/O | Pre-Cat HO2S Front Heater Ground | Endpoint outside the crop |
| 16 | LGN/BK | Purge Solenoid | Endpoint outside the crop |
| 20 | GY/O | Throttle Control Low | Endpoint outside the crop |
| 21 | GN/O | Throttle Control High | Endpoint outside the crop |
| 23 | BK/PK | Pre-Cat HO2S Rear Heater Ground | Endpoint outside the crop |
| 24 | GN/BE | Front Ignition Coil | Endpoint outside the crop |
| 25 | LGN/R | Front ACR Enable | Endpoint outside the crop |
| 26 | GN/BN | Post-Cat HO2S | Post-cat HO2S [341] 3, if equipped |
| 27 | GY/V | TPS 2 | Endpoint outside the crop |
| 29 | BK/W | 5V Sensor Ground 1 | BK/W splice continues beyond the crop |
| 30 | R | CKP Sensor High | Endpoint outside the crop |
| 32 | W/O | Oil Pressure Switch | Endpoint outside the crop |
| 34 | LGN/GY | JSS | Endpoint outside the crop |
| 36 | BN/W | Front Knock Sensor High | Endpoint outside the crop |
| 37 | LGN/W | Front Knock Sensor Low | Endpoint outside the crop |
| 38 | W/BK | CAN Low | W/BK CAN splice continues beyond the crop |
| 39 | W/R | CAN High | W/R CAN splice continues beyond the crop |
| 41 | GN/W | TGS 1 | Endpoint outside the crop |
| 42 | GY/W | TGS 2 | Endpoint outside the crop |
| 43 | GY/BE | Rear Ignition Coil | Endpoint outside the crop |
| 44 | V/BK | Chassis Cooling Fan Control | Endpoint outside the crop |
| 45 | BN/V | Rear Knock Sensor High | Endpoint outside the crop |
| 46 | LGN/V | Rear Knock Sensor Low | Endpoint outside the crop |
| 47 | GN/BN | Pre-Cat HO2S Front | Endpoint outside the crop |
| 48 | GY/BN | Pre-Cat HO2S Rear | Endpoint outside the crop |
| 49 | GY/GN | Coolant Temperature | ECT A via [232L] 3 |
| 52 | GN/V | TPS 1 | Endpoint outside the crop |
| 53 | GY | TMAP Sensor | Endpoint outside the crop |
| 55 | GN | Engine Temperature Sensor | Endpoint outside the crop |
| 63 | BN/BK | Cooling Pump Control | Endpoint outside the crop |
| 65 | BK/W | HO2S Ground | Endpoint outside the crop |
| 66 | R/GY | 5V Sensor Power 2 | Endpoint outside the crop |
| 67 | R/O | 5A Battery Fuse | R/O battery-fuse lead continues beyond the crop |
| 70 | R/W | 5V Sensor Power 1 | Endpoint outside the crop |
| 71 | W/V | Air Temperature | Endpoint outside the crop |
| 72 | GN/GY | IAT | Endpoint outside the crop |
| 74 | BK/GY | 5V Sensor Ground 2 | Endpoint outside the crop |
| 79 | BN/Y | Chassis Cooling Fan Switch | Endpoint outside the crop |
| 80 | BK/PK | Post-Cat HO2S Heater Ground | Post-cat HO2S [341] 2, if equipped |

The right cooling fan control is GY/BK at cavity 1. The post-cat heater terminal [341] 2 is BK/PK on the main harness at ECM 80 and changes to W on the sensor side. The post-cat sensor signal is GN/BN at ECM 26 and changes to BK on the sensor side. The sensor-side power and ground at [341] 1 and 4 are V and GY respectively.
