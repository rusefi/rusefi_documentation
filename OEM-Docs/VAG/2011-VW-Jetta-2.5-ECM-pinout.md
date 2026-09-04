# 2011 Volkswagen Jetta Sedan (162) L5-2.5L (CBTA) — ECM pinout

Transcribed from [2011-jetta-2.5.pdf](2011-jetta-2.5.pdf) (ALLDATA "Engine Controls" wiring diagram, Electrical - Interactive Color (Non OE), diagram pages 1-5 = PDF pages 2-6, sheets 363008-363012).

Engine Control Module (ECM), Motronic, located center rear of engine compartment. One 154-pin Bosch connector split into two groups, printed as T94 (vehicle harness side) and T60 (engine harness side).

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| T94 | 94 | Vehicle harness: power/grounds, main relay, fuel pump and AIR relays, CAN, accelerator pedal, O2 sensors, brake/clutch switches, LDP, radiator ECT |
| T60 | 60 | Engine harness: injectors, ignition coils, knock sensors, cam/crank sensors, throttle body, MAP, cylinder-head ECT, EVAP, cam adjuster |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange). Unlisted pins are not connected in this diagram. The diagram does not print a function label at the ECM pins (only wire colors), so the Function column below is derived from where the wire goes; "(OR ...)" alternate colors are as printed. Many pins run through several sheets via numbered off-page links; each was followed to its end point.

## T94 — vehicle harness connector (94-pin)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | BRN | GND | Ground G655 (below left headlight assembly) |
| 2 | BRN | GND | Ground G655 |
| 3 | RED/GRN | Power (main relay) | Fuse 2 (15A), fuse panel B terminal 2A; fed from Motronic ECM power supply relay term 87 |
| 5 | RED/GRN | Power (main relay) | Spliced with pin 3 - fuse 2 (15A), terminal 2A |
| 7 | BRN/BLU | O2 sensor after cat, signal ground | Oxygen sensor after three-way catalytic converter pin 2 |
| 8 | VIO/BLU | Oil pressure regulation valve | T14 pin 4 -> oil pressure regulation valve pin 1 |
| 9 | BLU/RED | LDP pump | Leak detection pump (LDP) pin 3 (in right rear wheelwell, near fuel filler door) |
| 11 | GRY/BLU | Accelerator pedal sensor 2 signal | Accelerator pedal position sensor pin 5 |
| 12 | BRN | Radiator outlet ECT ground | Engine coolant temperature sensor (radiator outlet) pin 2 |
| 17 | GRY/RED | Accelerator pedal sensor 2 supply | Accelerator pedal position sensor pin 3 |
| 18 | YEL | Radiator outlet ECT signal | Engine coolant temperature sensor (radiator outlet) pin 1 |
| 19 | BLK/RED | Brake lamp switch signal | Brake pedal switch & brake lamp switch pin 3; also ABS control module (T47/38 w/ ESP, T26/16 w/o ESP) and vehicle electrical system control module T73A/43 |
| 24 | WHT/GRN | Brake pedal switch | Brake pedal switch & brake lamp switch pin 1 |
| 25 | BRN/VIO | LDP solenoid | Leak detection pump (LDP) pin 2 |
| 26 | YEL/VIO | Cooling fan control | Cooling fans system |
| 28 | VIO | LDP switch | Leak detection pump (LDP) pin 1 |
| 51 | BRN/GRN | O2 sensor bank 1 (pre-cat) signal | Oxygen sensor bank 1 center three-way catalytic converter pin 2 |
| 56 | BLK | Heated O2 sensor (manifold) | Heated oxygen sensor (at exhaust manifold junction, if equipped) pin 5 |
| 57 | GRY/RED | Heated O2 sensor (manifold) | Heated oxygen sensor (at exhaust manifold junction) pin 6 |
| 61 | BRN/BLU | Accelerator pedal sensor 1 ground | Accelerator pedal position sensor pin 6 |
| 62 | BLU | O2 sensor bank 1 (pre-cat) signal | Oxygen sensor bank 1 center three-way catalytic converter pin 4 |
| 63 | WHT/RED | Clutch switch | Clutch position sensor (M/T) pin 2 |
| 65 | BLK/WHT | Cruise control | Cruise control system |
| 67 | ORG/BRN | CAN bus | Computer data lines system |
| 68 | ORG/BLK | CAN bus | Computer data lines system |
| 69 | BLK/GRY | Main relay control | Motronic ECM power supply relay term 85 (fuse panel B terminal 64 (or 62)) |
| 71 | BRN | O2 sensor bank 1 (pre-cat) ground | Oxygen sensor bank 1 center three-way catalytic converter pin 3 |
| 72 | BRN | O2 sensor after cat ground | Oxygen sensor after three-way catalytic converter pin 3 |
| 73 | WHT | Heated O2 sensor (manifold) | Heated oxygen sensor (at exhaust manifold junction) pin 3 |
| 78 | GRN | Heated O2 sensor (manifold) | Heated oxygen sensor (at exhaust manifold junction) pin 1 |
| 79 | GRY/WHT | Heated O2 sensor (manifold) | Heated oxygen sensor (at exhaust manifold junction) pin 2 |
| 81 | GRY/BLK | Accelerator pedal sensor 1 supply | Accelerator pedal position sensor pin 1 |
| 82 | YEL/GRN | Accelerator pedal sensor 1 signal | Accelerator pedal position sensor pin 2 |
| 83 | WHT/BLU | Accelerator pedal sensor 2 ground | Accelerator pedal position sensor pin 4 |
| 84 | RED | O2 sensor after cat signal | Oxygen sensor after three-way catalytic converter pin 4 |
| 87 | BLK/YEL | Terminal 15 (ignition) | Fuse 16 (10A), fuse panel C (left side of dash), terminal 16B; hot w/ power supply relay 2 (terminal 15) energized |
| 88 | BLU/BLK | Alternator | Starting/charging system |
| 92 | RED/BLK | Terminal 30 (constant power) | Fuse 14 (5A), fuse panel B terminal 14A, hot at all times; same net as fuse panel terminal 63 (or 61) feeding main relay term 86 |
| 93 | BLK/BRN | Fuel pump relay control | Fuel pump relay pin 2 (on relay panel) |
| 94 | BRN/VIO | Secondary air pump relay control | Fuse panel B terminal 81 -> secondary air injection (AIR) pump relay term 86 |

## T60 — engine harness connector (60-pin)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | VIO/WHT | Camshaft adjustment valve | Camshaft adjustment valve 1 (rear of cylinder head) pin 1 |
| 2 | VIO/YEL | Injector cyl 1 | Cylinder 1 fuel injector pin 2 |
| 3 | VIO/RED | Injector cyl 2 | Cylinder 2 fuel injector pin 2 |
| 4 | VIO/GRY | Injector cyl 4 | Cylinder 4 fuel injector pin 2 |
| 5 | VIO/BRN | Injector cyl 5 | Cylinder 5 fuel injector pin 2 |
| 6 | GRN/VIO | Camshaft position sensor signal | Camshaft position sensor (left side of engine) pin 2 |
| 8 | VIO | Knock sensor 1 | Knock sensor 1 pin 1 |
| 9 | RED | Knock sensor 1 | Knock sensor 1 pin 2 |
| 10 | WHT/BRN | Knock sensor 2 | Knock sensor 2 pin 1 |
| 11 | BRN/RED | Knock sensor 2 | Knock sensor 2 pin 2 |
| 12 | VIO/BLK | Throttle position sensor | Throttle valve control module pin 2 |
| 13 | BLK | Sensor ground / shields | MAP sensor pin 1; secondary air injection sensor 1 pin 1; knock sensor 1 and 2 shields (pin 3, NCA) - early production |
| 14 | YEL | ECT signal | Engine coolant temperature (ECT) sensor (left rear of cylinder head) pin 2 |
| 23 | BLK | Knock sensor 2 shield | Knock sensor 2 pin 3 (NCA) - late production |
| 24 | BLK | Knock sensor 1 shield | Knock sensor 1 pin 3 (NCA) - late production |
| 31 | VIO/BLU | Injector cyl 3 | Cylinder 3 fuel injector pin 2 |
| 32 | VIO/BLK | EVAP purge valve | Evaporative emission (EVAP) canister purge regulator valve 1 (top front of intake manifold) pin 2 |
| 33 | BLU | Ignition coil 3 | Ignition coil 3 w/ power output stage pin 3 |
| 34 | GRY | Ignition coil 5 | Ignition coil 5 w/ power output stage pin 3 |
| 35 | RED | Ignition coil 2 | Ignition coil 2 w/ power output stage pin 3 |
| 41 | WHT/BLU | Throttle position sensor | Throttle valve control module pin 4 |
| 42 | GRY (OR GRN) | MAP sensor signal | Manifold absolute pressure sensor (rear of intake manifold, if equipped) pin 2 |
| 43 | VIO | Throttle position sensor | Throttle valve control module pin 6 |
| 44 | YEL/GRY | 5V sensor supply | MAP sensor pin 3; secondary air injection sensor 1 pin 3; camshaft position sensor pin 1 |
| 46 | GRN | Throttle motor | Throttle valve control module pin 3 |
| 47 | BRN/VIO | Throttle motor | Throttle valve control module pin 5 |
| 48 | BRN/BLK | Secondary air solenoid valve | Secondary air injection solenoid valve (left of exhaust manifold) pin 2 |
| 49 | GRN | Ignition coil 4 | Ignition coil 4 w/ power output stage pin 3 |
| 50 | YEL | Ignition coil 1 | Ignition coil 1 w/ power output stage pin 3 |
| 51 | YEL/BLU | Engine speed sensor | Engine speed sensor (left rear of engine) pin 2 |
| 52 | BRN/GRN | Cam / crank sensor ground | Camshaft position sensor pin 3; engine speed sensor pin 3 |
| 54 | BRN/YEL | Throttle position sensor | Throttle valve control module pin 1 |
| 55 | VIO/WHT | Secondary air injection sensor | Secondary air injection sensor 1 (if equipped) pin 4 |
| 56 | BRN/WHT (OR BLU) | MAP sensor | Manifold absolute pressure sensor pin 4 |
| 57 | BLU | ECT ground | Engine coolant temperature (ECT) sensor (left rear of cylinder head) pin 1 |
| 59 | YEL/BLK | Engine speed sensor | Engine speed sensor (left rear of engine) pin 1 |

Component locations (page 5): fuel injectors - top of engine; ignition coils w/ power output stage - top of engine (page 3); knock sensors 1 and 2 - lower right side of engine, below exhaust manifold; camshaft position sensor - left side of engine; engine speed sensor - left rear of engine; ECT sensor - left rear of cylinder head; throttle valve control module - on throttle body; MAP sensor - rear of intake manifold; camshaft adjustment valve 1 - rear of cylinder head; EVAP purge valve 1 - top front of intake manifold; secondary air injection solenoid valve - left of exhaust manifold; secondary air injection pump motor - lower left side of engine; oxygen sensor after cat and bank 1 center cat sensors (page 2).

## T14 — engine harness inline connector (pins used)

| Pin | Wire | Connects to |
|-----|------|-------------|
| 1 | BLK | Oil pressure switch (on oil pump housing) pin 2 -> instrument cluster pin 27 |
| 2 | YEL/RED | Fuel pump relay output splice -> EVAP purge valve 1 pin 1, camshaft adjustment valve 1 pin 2, oil pressure regulation valve pin 2 |
| 4 | VIO/BLU | T94 pin 8 -> oil pressure regulation valve pin 1 |
| 5 | RED/GRN | Fuse 7 (20A), fuse panel B terminal 7A -> ignition coils 1-5 pin 1 (supply) |
| 7 | RED/BLK | Fuel pump relay output splice -> fuel injectors cyl 1-5 pin 1 (RED/WHT or RED/BLK) |
| 14 | BLU/RED | Fuel pump relay output splice -> secondary air injection solenoid valve pin 1 (BLK/YEL) |

Ignition coil grounds: pin 2 BRN of all five coils -> G12 (left rear of engine compartment); pin 4 BRN/GRN of all five coils -> G15 (top of cylinder head).

## Power supply / relays (page 1, 2, 3)

Fuse panel B (left front of engine compartment):

- **Motronic engine control module power supply relay** - term 30 and 86 hot at all times (86 via fuse 14 5A / terminal 63 (or 61)), term 85 -> T94/69 (terminal 64 (or 62)), term 87 feeds fuses 2 (15A, -> T94/3 and 5), 5 (10A, -> O2 sensor heaters: sensor after cat pin 1 and bank 1 center sensor pin 1, RED/BLU), 4 (15A, -> heated O2 sensor at manifold junction pin 4 BLU/RED), 7 (20A, -> ignition coil supply via T14/5) and 10 (5A, -> clutch position sensor pin 5)
- Fuse 25 (20A, hot at all times) -> power supply relay (terminal 15) pin 3 in the 54-fuse E-box near battery
- Fuse 14 (5A, hot at all times) -> T94/92, main relay term 86
- **Secondary air injection (AIR) pump relay** - term 30 hot at all times, term 85 (terminal 82, BLU/RED) fed from the fuel pump relay output splice, term 86 (terminal 81) -> T94/94, term 87 -> fuse 21 (40A) -> AIR pump motor pin 2 (RED/BLK); motor pin 1 BRN -> G12

Relay panel:

- **Fuel pump relay** - pin 3 RED/YEL from fuse 47 (15A, hot at all times), pin 1 BLK/GRY from fuse 16 (10A, fuse panel C, terminal 15), pin 2 BLK/BRN -> T94/93, pin 5 BLU/RED output -> transfer fuel pump/fuel level sensor pin 1 and a splice feeding the injectors (T14/7), EVAP/cam adjuster/oil pressure valves (T14/2), AIR solenoid (T14/14), LDP pin 4 (BLU/RED) and the AIR pump relay coil
- **Power supply relay (terminal 50)** - starter; pin 1 RED/BLK from vehicle electrical system control module pin 50, pin 2 BRN -> G605, pin 3 BLK from power supply relay (terminal 15) pin 5, pin 5 RED -> starter terminal 50 (not ECM controlled in this diagram)

Fuse panel C (left side of dash): fuse 14 (10A) -> brake pedal switch pin 4 (BLK/VIO) and instrument cluster pin 31; fuse 16 (10A) -> T94/87 and fuel pump relay coil. Fuse 35 (1A, hot at all times) -> instrument cluster pin 32.

Other grounds: brake pedal switch pin 2 and clutch position sensor pin 1 -> G605 (on steering column); transfer fuel pump pin 5 -> G682; oil pressure switch pin 1 -> G12. The oil pressure switch, coolant level sensor and fuel level sender go to the instrument cluster, not to the ECM.
