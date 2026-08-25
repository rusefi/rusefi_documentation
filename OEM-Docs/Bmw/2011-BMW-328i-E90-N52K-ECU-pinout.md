# 2011 BMW 328i Sedan (E90) L6-3.0L (N52K) — DME pinout

Transcribed from [2011 BMW 328i n52.pdf](2011%20BMW%20328i%20n52.pdf) (ALLDATA "Engine Controls" wiring diagram, pages 361163–361166).

DME control module, located right rear of engine compartment.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| X60001 | 26 | Vehicle harness: CAN, accelerator pedal, brake/clutch switches, fan, secondary air |
| X60002 | 26 | Vehicle harness: oxygen sensors, leak diagnostics (DMTL), wake-up |
| X60005 | 44 | Engine harness: throttle, knock, crank, MAF/MAP, DISA, relay controls |
| X60004 | 6 | Terminal 87 + Valvetronic (variable valve timing gear) motor |
| X60003 | 6 | Terminal 30/87 supplies + grounds |
| X60006 | 12 | Ignition coil triggers |
| X60007 | 26 | Fuel injectors + engine sensors (cam, VANOS, eccentric shaft, coolant temp) |

Wire colors abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange; NCA = no color available). ORG is the switched Terminal 87 supply rail feeding most engine actuators/sensor heaters. Unlisted pins are not connected in this diagram.

The diagram carries equipment variants: with hot-film air mass meter vs. with neutral sensor; with vs. without separate intake air temperature sensor; with vs. without (additional) mass air flow sensor; with vs. without brake vacuum sensor.

## X60001 — vehicle harness connector (26-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | RED | CAN L | Computer data lines system (PT-CAN) |
| 2 | BLK/GRN | START SIG | Anti-theft system |
| 3 | GRY | BSD SIG | Starting/charging system (alternator BSD) |
| 4 | BLU/RED | BRK LGHT SIG | Brake light switch (via X1108, under left side of dash) |
| 5 | GRY/VIO | EXH FLAP SIG | Exhaust flap (left side of rear compartment) |
| 6 | BLK/YEL | SPLY (-) | Radiator outlet temperature sensor |
| 7 | WHT/YEL | ACC PDL SIG | Accelerator pedal module (sensor 1) |
| 8 | BLK/BLU | ELEC FAN SIG | Cooling fans system |
| 9 | BRN/WHT | ACTIVATION | Cooling fans system |
| 10 | BRN/YEL | ACC PDL GRD | Accelerator pedal module (sensor 1) |
| 11 | YEL | ACC PDL (+) | Accelerator pedal module (sensor 1) |
| 13 | BRN/BLU | AIR PMP | Secondary air pump relay (in junction box) |
| 14 | BLU/RED | CAN H | Computer data lines system (PT-CAN) |
| 15 | BLK/VIO | VEH IMMOB SIG | Anti-theft system |
| 16 | BRN/GRY | BRK LGHT SIG | Brake light switch |
| 17 | WHT/GRN | RR SPD SIG | Anti-lock brakes system |
| 18 | BLU/BRN | CLUTCH SW | Clutch switch module (M/T, under left side of dash) |
| 19 | BLK/GRY | OUTLET TEMP | Radiator outlet temperature sensor |
| 20 | WHT | ACC PDL SIG | Accelerator pedal module (sensor 2) |
| 21 | BLK | TD SIG | Computer data lines system |
| 22 | GRN/WHT | SPLY TERM 15 | Anti-theft system |
| 23 | BRN | ACC PDL GRD | Accelerator pedal module (sensor 2) |
| 24 | YEL/GRN | ACC PDL (+) | Accelerator pedal module (sensor 2) |
| 26 | BRN/ORG | E BOX SIG | E-box fan (bottom of E-box) |

## X60002 — vehicle harness connector (26-pin)

Four oxygen sensors: two before catalytic converter (6-wire, on exhaust pipe) and two behind catalytic converter (right rear of engine). All O2 heater supplies are ORG (Terminal 87).

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK/GRN (or YEL/GRN) | WAKE-UP SIG | Computer data lines system |
| 2 | BRN | SENS SIG | |
| 5 | WHT | SENSOR SIG | Pre-cat O2 sensor 1 pin 1 |
| 6 | YEL/WHT | SENSOR SIG | Pre-cat O2 sensor |
| 7 | YEL/WHT | SENSOR SIG | Pre-cat O2 sensor |
| 8 | YEL | SENSOR SIG | Pre-cat O2 sensor pin 6 |
| 9 | YEL | SENSOR SIG | Pre-cat O2 sensor pin 6 |
| 10 | BLK/BLU | SENSOR GRD | Pre-cat O2 sensor 1 pin 2 |
| 11 | BLK/WHT | SENSOR GRD | Pre-cat O2 sensor 2 |
| 12 | WHT/BLU | SENSOR SIG | Pre-cat O2 sensor pin 3 |
| 13 | WHT/BLU | SENSOR SIG | Pre-cat O2 sensor pin 3 |
| 14 | WHT/GRY | — | |
| 15 | YEL/RED (or WHT/BRN) | LEAK DIAG SIG | Brake vacuum sensor (when fitted) |
| 16 | WHT/VIO | LEAK DIAG SIG | Fuel tank leakage diagnostic module, via X60551 pin 11 → X6041 pin 8 (BRN/BLU) |
| 17 | WHT/BLK | LEAK DIAG SIG | Fuel tank leakage diagnostic module, via X60551 pin 10 → X6041 pin 7 (BLK/RED) |
| 18 | WHT | SENSOR SIG | |
| 19 | YEL | SENSOR SIG | Post-cat O2 sensor pin 4 |
| 20 | YEL | SENSOR SIG | Post-cat O2 sensor pin 4 |
| 21 | BLK/BLU | — | Anti-theft system |
| 23 | BLK/RED | SENSOR GRD | Post-cat O2 sensor 1 pin 3 |
| 24 | BLK/GRN | SENSOR GRD | Post-cat O2 sensor 2 pin 3 / fuel tank leakage diagnostic module |
| 25 | WHT/GRY | SENSOR SIG | Post-cat O2 sensor pin 2 |
| 26 | WHT/GRY | SENSOR SIG | Post-cat O2 sensor pin 2 |

## X60005 — engine harness connector (44-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 4 | YEL/WHT (or YEL) | METER SIG | Hot-film air mass meter pin 1 (w/ AMM) or neutral sensor pin 3 via X60531 (w/ neutral sensor) |
| 5 | BRN | — | Neutral sensor (via X60531) |
| 6 | WHT/BLU | — | Neutral sensor (via X60531) |
| 12 | WHT | ENG HEAT RLY | Engine breather heating relay (control) |
| 13 | WHT/BLU | DME RLY | DME relay (control), junction box under right side of dash |
| 14 | BLU | THROTTLE (+) | Electric throttle valve actuator pin 2 |
| 15 | WHT/GRN | THROTTLE SIG | Electric throttle valve actuator pin 3 |
| 16 | WHT/YEL | THROTTLE SIG | Electric throttle valve actuator pin 5 |
| 18 | WHT/RED | DISA SIG 2 | DISA controller 2 pin 1 (top left of engine) |
| 19 | BLK/VIO | SENSOR SIG | Double knock sensor, cyl 1–3 |
| 20 | BLK/YEL | SENSOR SIG | Double knock sensor, cyl 4–6 |
| 23 | WHT/BLU | FUEL TANK SIG | Fuel tank vent valve pin 2 |
| 25 | BLU | — | Mass air flow sensor pin 2 (left side of engine, when fitted) |
| 26 | YEL | — | Mass air flow sensor pin 1 (when fitted) |
| 27 | BLK/WHT | SENSOR GRD | Intake air temperature sensor pin 4 (separate sensor, or in air mass meter) |
| 28 | YEL/RED | SENSOR SIG | Intake air temperature sensor pin 5 (separate sensor, or in air mass meter) |
| 29 | YEL | SENSOR SIG | Crankshaft sensor pin 3 |
| 30 | BLK/BLU | SENSOR GRD | Crankshaft sensor pin 2 |
| 31 | BLU/YEL | SENSOR (+) | Intake pipe pressure sensor pin 3 (top left side of engine) |
| 32 | BLK/YEL | SENSOR GRD | Intake pipe pressure sensor pin 2 |
| 33 | YEL/WHT | SENSOR SIG | Intake pipe pressure sensor pin 1 |
| 35 | VIO | BSD SIG | Oil condition sensor pin 1 (BSD bus, rear of engine near transmission) |
| 36 | YEL | THROTTLE SIG | Electric throttle valve actuator pin 4 |
| 37 | YEL/BLU | THROTTLE SIG | Electric throttle valve actuator pin 1 |
| 38 | BLK/VIO | THROTTLE GRD | Electric throttle valve actuator pin 6 |
| 40 | WHT | DISA SIG 1 | DISA controller 1 pin 1 (top left of engine) |
| 41 | YEL | SENSOR SIG | Double knock sensor |
| 42 | YEL | SENSOR SIG | Double knock sensor |

The crankshaft sensor (pins: 1 ORG, 2 BLK/BLU, 3 YEL), DISA controllers (1 sig, 2 BRN ground, 3 ORG supply), oil condition sensor (1 VIO, 2 BRN, 3 ORG), fuel tank vent valve (1 ORG, 2 WHT/BLU) and hot-film air mass meter (1 YEL, 3 ORG, 4 BLK/WHT, 5 YEL/RED) all take their supply from the ORG Terminal 87 rail.

## X60004 — Valvetronic connector (6-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | ORG | TERM 87 | |
| 2 | ORG | TERM 87 | |
| 3 | BRN | VAR GEAR SIG | Variable valve timing gear actuator (right side of engine), via VVT relay |
| 4 | RED | VAR GEAR SIG | Variable valve timing gear actuator |
| 5 | BRN | VAR GEAR SIG | Variable valve timing gear actuator |
| 6 | RED | VAR GEAR SIG | Variable valve timing gear actuator |

## X60003 — power connector (6-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | RED | TERM 30 | Battery supply (RED/BLK via X6011 pin 10) |
| 2 | ORG | TERM 87 | |
| 3 | BRN | GROUND | Ground X6454 (right rear of engine compartment) |
| 4 | BRN | GROUND | Ground X6454 |
| 5 | BRN | GROUND | Ground X6454 |
| 6 | BRN | GROUND | Ground X6454 |

## X60006 — ignition connector (12-pin)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | WHT | IGN 1 SIG | Ignition coil cyl 1 (top of engine) |
| 2 | WHT/BLU | IGN 2 SIG | Ignition coil cyl 2 |
| 3 | WHT/GRY | IGN 3 SIG | Ignition coil cyl 3 |
| 4 | WHT | IGN 4 SIG | Ignition coil cyl 4 |
| 5 | WHT/BLU | IGN 5 SIG | Ignition coil cyl 5 |
| 6 | WHT/GRY | IGN 6 SIG | Ignition coil cyl 6 |

Pins 7–12 not connected. Coil supplies are ORG (Terminal 87, with suppression capacitor on the rail); coil grounds go to X6177 and X6178 (right side of engine).

## X60007 — injector/sensor connector (26-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT | INJ 1 SIG | Fuel injector 1 (top of engine) |
| 2 | WHT/GRN | INJ 2 SIG | Fuel injector 2 |
| 3 | WHT/YEL | INJ 3 SIG | Fuel injector 3 |
| 4 | YEL/RED | SENSOR SIG | Engine coolant temperature sensor pin 1 (rear of engine) |
| 5 | WHT/BLU | VANOS (-) | Intake VANOS solenoid valve pin 2 (front of engine) |
| 6 | BLU | SENSOR SIG | Eccentric shaft sensor (top of engine) |
| 7 | YEL | SENSOR SIG | Eccentric shaft sensor |
| 8 | BRN | SENSOR SIG | Eccentric shaft sensor |
| 9 | WHT | SENSOR SIG | Eccentric shaft sensor |
| 10 | (NCA) | SHIELD | Eccentric shaft sensor |
| 11 | YEL | SENSOR SIG | Intake camshaft sensor (front of engine) |
| 12 | YEL/BLU | SENSOR SIG | Exhaust camshaft sensor (front of engine) |
| 13 | YEL/WHT | OIL SW SIG | Oil pressure switch (left side of engine compartment) |
| 14 | WHT/BRN | INJ 4 SIG | Fuel injector 4 |
| 15 | WHT/VIO | INJ 5 SIG | Fuel injector 5 |
| 16 | WHT/BLK | INJ 6 SIG | Fuel injector 6 |
| 17 | BLK/VIO | SENSOR GRD | Engine coolant temperature sensor pin 2 |
| 18 | WHT/RED | VANOS (-) | Exhaust VANOS solenoid valve pin 2 |
| 19 | WHT | THERMO SIG | Characteristic map thermostat pin 2 (rear of engine) |
| 20 | BLK | SENSOR GRD | Eccentric shaft sensor |
| 21 | NCA (or GRY) | SENSOR (+) | Eccentric shaft sensor |
| 22 | GRN | SENSOR SIG | Eccentric shaft sensor |
| 23 | WHT | VVT RLY | VVT relay (control), right rear of engine compartment |
| 24 | BLK/BLU | SENSOR GRD | Intake camshaft sensor |
| 25 | BLK/WHT | SENSOR GRD | Exhaust camshaft sensor |
| 26 | VIO | BSD SIG | Cooling fans system / electric coolant pump (BSD bus, rear of engine) |

Injector supplies are ORG (Terminal 87). Cam sensors and VANOS solenoids also feed from the ORG rail; the map thermostat and electric coolant pump likewise.

## Electronically controlled fuel pump (EKP) — right rear side interior panel

The fuel pump is controlled by its own module over PT-CAN, not directly by the DME.

Connector X13663:

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | RED/BLK | Power | Fuse 70 (20 A), hot at all times |
| 2 | BRN | Ground | X494 (right rear side of interior panel) |
| 8 | BLU/WHT | CAN (joined with pin 15) | |
| 9 | BLU/RED | PT-CAN H | Computer data lines system |
| 13 | GRN/RED | Wake-up | Computer data lines system |
| 15 | BLU/WHT | CAN (joined with pin 8) | |
| 16 | RED | PT-CAN L | Computer data lines system |

Connector X3507: pin 2 BRN and pin 4 RED/WHT drive the electric fuel pump (under right rear seat; pump pin 2 RED/WHT, pin 1 BRN).

## Power supply / relays

- **Terminal 30G relay** and **electronics junction box** — junction box under right side of dash (page 2); fuses 70 (20 A) and 89 (40 A), hot at all times, feed the fuel pump circuit
- **DME relay** — junction box under right side of dash (page 3), fed via fuse 101 (250 A) in the rear fuse holder (right side of rear compartment); distributes through fuses 17 (10 A), 38 (30 A), 11 (20 A), 16 (10 A), 37 (30 A), 39 (30 A), 4 (10 A) — the ORG Terminal 87 rail
- **Engine breather heating relay** — right rear of engine compartment (page 4); fuse 10 (5 A) and fuse 7 (40 A) in the engine electronics fuse carrier (right plenum chamber E-box); feeds engine breather heaters 2, 3, 4
- **VVT relay** — right rear of engine compartment (page 5), controlled by X60007-23, powers the variable valve timing gear actuator
- **Secondary air pump relay** — in junction box (page 2), controlled by X60001-13, powers the secondary air pump (right front of engine)
- Main DME grounds at X6454 (right rear of engine compartment)
