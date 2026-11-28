# 2021 Harley-Davidson Touring — fairing wiring

Transcribed from [2021-touring-3.png](2021-touring-3.png). The wall-chart header reads “Main Harness FLH (3 of 3): 2021 Touring (with Fairing).” Drawing 1462833 shows fairing wiring and calls the two main-harness continuations “Main Harness FLT (1 of 3).” The [service manual's FLH sheet 3](Harley-Touring-2021-ecu-3.pdf) shows a different drawing. This image supplies no ECM connection.

Wire colors are the harness-side codes printed in the drawing. BK = black, BE = blue, BN = brown, GN = green, GY = gray, LBE = light blue, LGN = light green, O = orange, PK = pink, R = red, TN = tan, V = violet, W = white, Y = yellow. A slash separates the base color and tracer. Bracketed numbers are OEM connector IDs. A dash indicates that the connector terminal has a wire code without a printed function label.

## Fairing interconnect [1B]

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| 2 | W/R | — | P&A CAN [243] 3 |
| 3 | W/BK | — | P&A CAN [243] 4 |
| 4 | R/O | — | Voltmeter [111] D and fuel gauge [117] D (Battery Fuse) |
| 5 | BK/GN | — | Voltmeter [111] B and fuel gauge [117] B (Ground) |
| 7 | W/V | — | Voltmeter [111] A and fuel gauge [117] A (HD-LAN Output) |
| 8 | BE/W | — | Front Lighting and Hand Controls [38B] C |
| 9 | BE/Y | — | Front Lighting and Hand Controls [38B] B |
| 10 | BE | — | Right and left lamp connectors [31RA]/[31LA] 1 |
| 11 | BE/O | — | Right lamp connector [31RA] 2 |
| 12 | BE/PK | — | Left lamp connector [31LA] 2 |
| 13 | BE/BK | — | Right and left lamp connectors [31RA]/[31LA] 4 |
| 16 | R/Y | — | Front Lighting and Hand Controls [38B] D |

## Fairing interconnect [2B]

| Pin | Wire | Function (as printed) | Connects to |
| --- | --- | --- | --- |
| 2 | V/BE | — | Front power outlet [132] 1 and P&A accessory power [299A] 1 |
| 3 | BK | — | Front power outlet [132] 2, P&A accessory power [299A] 2 and lighting ground splices |
| 4 | W/R | — | P&A CAN [243] 1 |
| 5 | W/BK | — | P&A CAN [243] 2 |
| 9 | PK | — | Right front speaker [34-1]/[34-2] 1 |
| 10 | PK/BK | — | Right front speaker [34-1]/[34-2] 2 |
| 11 | PK/O | — | Left front speaker [35-1]/[35-2] 1 |
| 12 | PK/GY | — | Left front speaker [35-1]/[35-2] 2 |

At the lighting interconnects the drawing shows BK ground at [31RA]/[31LA] 3, [335RA] 2, [335LA] 1, and [38B] A. The front power outlet also has intermediate connector [132-2]. The voltmeter and fuel gauge leads pass through [111-2] and [117-2] respectively.
