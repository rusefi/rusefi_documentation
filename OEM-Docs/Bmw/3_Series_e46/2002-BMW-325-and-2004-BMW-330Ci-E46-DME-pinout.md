# 2002 BMW 325 / 2004 BMW 330Ci (E46) — DME pinout

Transcribed from the local engine-control wiring images listed below. Both filename-labelled vehicle sets reproduce diagrams **197977, 197978, and 197979**, with the same terminal assignments and circuit routing.

| Filename-labelled vehicle | Sheet 1 — 197977 | Sheet 2 — 197978 | Sheet 3 — 197979 |
|--------------------------|------------------|------------------|------------------|
| 2002 BMW 325 | [Sheet 1](2002_bmw_325_1.png) | [Sheet 2](2002_bmw_325_2.png) | [Sheet 3](2002_bmw_325_3.png) |
| 2004 BMW 330Ci | [Sheet 1](2004_330ci-ecu-1.png) | [Sheet 2](2004_330ci-ecu-2.png) | [Sheet 3](2004_330ci-ecu-3.png) |

The [combined 2002 325 image](2002_bmw_325_ecu.png) joins its three sheets. Vehicle names and years come from filenames, and E46 from the directory; the images have no vehicle/engine heading. No engine code or DME hardware designation is printed. This transcription documents the supplied drawings, rather than independently establishing their applicability to either vehicle.

The module is labelled **DIGITAL MOTOR ELECTRONICS (DME) CONTROL UNIT**, left rear of engine compartment. It has five connectors with **134 numbered positions**: X60001 (9), X60002 (24), X60003 (52), X60004 (40), and X60005 (9). Unlisted terminals are not connected **in these diagrams**; this does not establish whether they are physically unused. Numbers at sheet edges are continuation references, not connector cavities.

Wire abbreviations: BLK black, BLU blue, BRN brown, GRN green, GRY grey, RED red, VIO violet, WHT white, YEL yellow, ORG orange; NCA means no colour available. Slashes separate base and tracer colours. Function labels are transcribed with spacing expanded; component destinations come from tracing the wires. Oxygen-, camshaft-, crankshaft-, and knock-sensor leads marked NCA on the component side retain the harness colours in the tables.

## X60001 — 9 positions (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRN | ACTIVATE RELAY | Fuel injectors relay cavity 8, terminal 86 |
| 4 | BRN/ORG | GROUND | X6454, left rear of engine compartment |
| 5 | BRN | GROUND | X6454 |
| 6 | BRN | GROUND | X6454 |
| 7 | RED | VOLTAGE SUPPLY | B+ potential distributor X64101 pin 1, hot at all times |
| 8 | RED/WHT/YEL | VOLTAGE SUPPLY | E-box fuse F2, 30 A, X8680 pin 4, after DME relay |

## X60002 — 24 positions (sheet 1)

The four oxygen sensors are identified as **sensor 1 / sensor 2**, each **in front of / behind the catalytic converter**. “Front” and “rear” below abbreviate those positions; cylinder-bank assignments are not printed.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BRN | O2S HTG SIG | Front oxygen sensor 1 pin 2 |
| 3 | YEL/BRN (or BLK) | CAN BUS (−) | Transmission control module pin 37 |
| 4 | YEL/BLK (or YEL) | CAN BUS (+) | Transmission control module pin 36 |
| 6 | WHT/VIO | TXD2 | Transmission control module pin 32 |
| 7 | BRN | O2S HTG SIG | Rear oxygen sensor 2 pin 2 |
| 13 | BRN | O2S HTG SIG | Front oxygen sensor 2 pin 2 |
| 14 | YEL | SENSOR SIG | Front oxygen sensor 1 pin 4 |
| 15 | YEL | SENSOR SIG | Front oxygen sensor 2 pin 4 |
| 16 | YEL | SENSOR SIG | Rear oxygen sensor 2 pin 4 |
| 18 | YEL | SENSOR SIG | Rear oxygen sensor 1 pin 4 |
| 19 | BRN | O2S HTG SIG | Rear oxygen sensor 1 pin 2 |
| 20 | BLK | SIG GROUND | Front oxygen sensor 1 pin 3 |
| 21 | BLK | SIG GROUND | Front oxygen sensor 2 pin 3 |
| 22 | BLK | SIG GROUND | Rear oxygen sensor 2 pin 3 |
| 23 | BRN | ACTIVATE RELAY | DME relay cavity 4, terminal 85 |
| 24 | BLK | SIG GROUND | Rear oxygen sensor 1 pin 3 |

The diagram explicitly marks pins 8–12 “NOT USED.” All four oxygen sensors receive RED/WHT heater power at pin 1 from E-box F4 (30 A); their heater-control returns are the BRN wires above.

## X60003 — 52 positions (sheets 1 and 3)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | YEL | AIR MASS MET | Hot film mass air flow sensor pin 2 |
| 2 | YEL | CAMSHFT SIG | Camshaft position sensor 2 (outlet) pin 2 |
| 5 | YEL | CAMSHFT SIG | Camshaft position sensor 1 (inlet) pin 2 |
| 7 | BRN/WHT | VOLTAGE SUPPLY | Electric throttle actuator pin 2; voltage not printed |
| 8 | YEL | CRNKSFT SIG | Crankshaft position sensor pin 2 |
| 10 | BRN/BLU | TP SIG | Electric throttle actuator pin 4 |
| 15 | BRN | GROUND | Camshaft position sensor 2 (outlet) pin 3 |
| 17 | BLK | GROUND | Hot film mass air flow sensor pin 1 |
| 18 | BRN | GROUND | Camshaft position sensor 1 (inlet) pin 3 |
| 19 | BRN/VIO | TP SIG | Electric throttle actuator pin 1 |
| 20 | BRN/GRY | GROUND | Electric throttle actuator pin 6 |
| 21 | BRN | GROUND | Crankshaft position sensor pin 1 |
| 22 | GRY | TEMP SIG | Intake air temperature sensor pin 1 |
| 23 | GRY/BRN | GROUND | Intake air temperature sensor pin 2 |
| 24 | BRN/RED | TEMP SIG | Engine coolant temperature sensor pin 1 |
| 25 | GRY/BRN | GROUND | Engine coolant temperature sensor pin 2 |
| 27 | RED/BLU | TEMP SIG | Oil temperature sensor pin 1 |
| 28 | GRY/BRN | GROUND | Oil temperature sensor pin 2 |
| 29 | YEL | CYL 1–3 KS | Knock sensor pin 1, element labelled CYL 1–3 |
| 30 | BLK | CYL 1–3 KS | Knock sensor pin 2, element labelled CYL 1–3 |
| 31 | GRN | CYL 4–6 KS | Knock sensor pin 3, element labelled CYL 4–6 |
| 32 | BRN | CYL 4–6 KS | Knock sensor pin 4, element labelled CYL 4–6 |
| 33 | BRN/WHT | ACTIVATE VALVE | Fuel injection valve cylinder 1 pin 2 |
| 34 | BRN/RED | ACTIVATE VALVE | Fuel injection valve cylinder 2 pin 2 |
| 35 | BRN/YEL | ACTIVATE VALVE | Fuel injection valve cylinder 3 pin 2 |
| 36 | BRN/BLU | ACTIVATE VALVE | Fuel injection valve cylinder 4 pin 2 |
| 37 | BRN/GRN | ACTIVATE VALVE | Fuel injection valve cylinder 5 pin 2 |
| 38 | BRN/VIO | ACTIVATE VALVE | Fuel injection valve cylinder 6 pin 2 |
| 40 | GRN/BLU | ACTIVATE VALVE | VANOS inlet valve pin 2 |
| 41 | GRN/VIO | ACTIVATE VALVE | VANOS outlet valve pin 2 |
| 42 | BRN | ACTIVATE VALVE | Evaporative emission valve pin 2 |
| 43 | GRY/WHT | ACTIVATE MOTOR | Electric throttle actuator pin 3 |
| 44 | BRN/BLK | ACTIVATE MOTOR | Electric throttle actuator pin 5 |
| 45 | GRY/BRN | COOLING SIG | Characteristic map cooling thermostat pin 2 |
| 46 | WHT/GRN | CLOSE SIG | Idle speed control valve pin 1 |
| 47 | WHT/YEL | OPEN SIG | Idle speed control valve pin 3 |
| 48 | NCA | GROUND | Knock-sensor cable shield |
| 49 | BRN/BLU | ACTIVATE VALVE | Individual control intake system valve pin 1 |
| 51 | BLK/RED | TANK LEAKAGE | Fuel tank leakage diagnostic module pin 2, heater circuit |
| 52 | BRN/WHT | ACTIVATE VALVE | Secondary air pump valve pin 1 |

The separate intake-air and oil-temperature sensors are shown at the top centre and front of the engine respectively; the engine coolant sensor is at the rear under the intake. The radiator outlet sensor below is a different component. The two knock-sensor elements share a four-terminal connector and shield; no signal polarity is printed.

## X60004 — 40 positions (sheet 3)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 3 | BRN/BLU | ACTIVATE RELAY | Secondary air pump relay cavity 4, coil control |
| 4 | BLK/GRN | FAN | Cooling fans system continuation |
| 7 | BRN/GRN | GROUND | Pedal position sensor pin 1 |
| 8 | WHT | PED POS 1 SIG | Pedal position sensor pin 4 |
| 9 | YEL | VOLTAGE SUPPLY | Pedal position sensor pin 5 |
| 10 | BLK/VIO | ACTIVATE RELAY | Fuel pump relay cavity 4, terminal 85 |
| 12 | BRN | GROUND | Pedal position sensor pin 2 |
| 13 | WHT/GRN | PED POS 2 SIG | Pedal position sensor pin 6 |
| 14 | YEL/GRN | VOLTAGE SUPPLY | Pedal position sensor pin 3 |
| 17 | BLK | RPM SIG | OBD socket X19527 pin 9, left footwell |
| 18 | GRY/VIO | EXH FLAP | Exhaust flap valve pin 1, left rear of luggage compartment |
| 20 | BRN/BLU (or BLK/GRN) | TANK LEAKAGE | Fuel tank leakage diagnostic module pin 1, motor circuit |
| 22 | WHT/GRN | RR SPEED SIG | ABS system continuation |
| 23 | BLU/BRN | CLUTCH SIG | Clutch switch pin 2, if equipped |
| 24 | BLU/RED | BRAKE SIG | Brakelight switch pin 4; also exterior lights continuation |
| 26 | GRN/BLK (or GRN/VIO) | TERMINAL 15 | F29 (5 A), X10016 pin 58; GRN/BLK or GRN/VIO at fuse |
| 28 | BRN/GRY | BRAKE SIG | Brakelight switch pin 3 |
| 29 | BLK/BLU | ACTIVATE RELAY | Air conditioning relay continuation |
| 30 | BLK/GRN (or BRN/BLU) | TANK LEAKAGE | Fuel tank leakage diagnostic module pin 3, valve circuit |
| 32 | WHT/VIO | TXD DIAG SIG | OBD socket X19527 pin 7 |
| 33 | BLK/VIO | DRV AWY PROT | Anti-theft system continuation |
| 36 | YEL/RED | CAN BUS (+) | Computer datalines system continuation |
| 37 | YEL/BRN | CAN BUS (−) | Computer datalines system continuation |
| 38 | BLK/GRN | COOL OUT TEMP | Coolant outlet temperature sensor pin 1 |
| 39 | BLK/GRY | COOL OUT TEMP | Coolant outlet temperature sensor pin 2 |

The source explicitly marks pins 1–2 and 5–6 “NOT USED.” Pedal reference voltages are not printed. The two pedal tracks are separate: pins 1/4/5 ground/signal/supply and pins 2/6/3 ground/signal/supply.

## X60005 — 9 positions (sheet 3)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK/WHT | IGN COIL 1 SIG | Ignition coil 1 pin 1 |
| 2 | BLK/RED | IGN COIL 2 SIG | Ignition coil 2 pin 1 |
| 3 | BLK/YEL | IGN COIL 3 SIG | Ignition coil 3 pin 1 |
| 5 | BRN | GROUND | X6454, left rear of engine compartment |
| 6 | BLK/GRN | IGN COIL 5 SIG | Ignition coil 5 pin 1 |
| 7 | BLK/VIO | IGN COIL 6 SIG | Ignition coil 6 pin 1 |
| 9 | BLK/BLU | IGN COIL 4 SIG | Ignition coil 4 pin 1 |

Each coil has pin 1 control, pin 2 BRN ground to X6456 (right side of engine), and pin 3 GRN supply from E-box F1. The source locates the coils at the top right side of the engine.

## Power, relays, and grounds

The E-box is at the left rear of the engine compartment. Its **DME relay** receives permanent RED power at cavity 6 / terminal 30 from B+ distributor X64102 pin 2. Cavity 4 / terminal 85 is the BRN control from X60002-23. Two terminal-87 outputs feed the fuse block: cavity 2 to X8680 pin 5 (F2/F3/F4), and cavity 5 to X8680 pin 1 (F1).

| Fuse | Rating | Feed / output routing shown |
|------|--------|-----------------------------|
| E-box F1 | 30 A | After DME relay; X8680 pin 2 GRN to ignition coils 1–6 pin 3 |
| E-box F2 | 30 A | After DME relay; X8680 pin 4 RED/WHT/YEL to DME X60001-8, individual control intake system valve pin 2, evaporative emission valve pin 1, idle speed control valve pin 2, and secondary air pump valve pin 2 |
| E-box F3 | 20 A | After DME relay; X8680 pin 6 RED/WHT to mass-air-flow sensor pin 3, both camshaft sensors pin 1, crankshaft sensor pin 3, thermostat pin 1, exhaust flap pin 2, leakage module pin 4, and secondary air pump relay cavity 8 |
| E-box F4 | 30 A | After DME relay; X8680 pin 8 RED/WHT to all four oxygen sensors pin 1 |
| E-box F5 | 30 A | Hot at all times; X8680 pin 10 RED to fuel injectors relay cavity 6 / terminal 30 |
| Glove-box F54 | 15 A | Hot at all times; X10015 pin 17 RED/VIO to fuel pump relay cavity 6 / terminal 30 |
| Glove-box F9 | 5 A | Hot in accessory, run, or start; X10016 pin 18 VIO/YEL to brakelight switch pin 1 and optional clutch switch pin 3 |
| Glove-box F29 | 5 A | Hot in run or start; X10016 pin 58 to DME X60004-26 |
| Glove-box F36 | 50 A | Hot at all times; X10016 pin 70 RED to secondary air pump relay cavity 2 |

- **Fuel injectors relay:** cavity 8 / terminal 86 GRN to DME X60001-1, cavity 4 / terminal 85 BRN to X6454, and cavity 2 / terminal 87 RED/YEL to all six injector pin 1 terminals. Injector pin 2 controls are in X60003's table.
- **Fuel pump relay, behind glove box:** cavity 8 / terminal 86 RED/WHT branches from the DME relay's output to F1, before F1. Cavity 4 / terminal 85 BLK/VIO goes to X60004-10. Cavity 2 / terminal 87 WHT/BLU goes to fuel pump pin 2; pump pin 1 BRN goes to X494, behind the right rear seat.
- **Secondary air pump relay:** cavity 8 RED/WHT receives F3 power; cavity 4 BRN/BLU goes to X60004-3. Cavity 6 BLK/RED/YEL feeds air pump pin 2. Relay cavity 5 and pump pin 1 are BRN grounds at X166 (sedan) or X14250 (coupe/convertible), right front of engine compartment.
- **VANOS power:** inlet and outlet valve pin 1 RED/WHT share the line from the DME relay to X8680 pin 1, before F1. Their separate pin 2 controls are X60003-40/-41.
- **Clutch switch ground:** pin 1 BRN to X217, under left side of dash. Brakelight switch pins 3 and 4 are separately wired to the DME; the drawing does not show a switch pin 2 connection.

## Source limits

These are circuit diagrams, not connector-face views. They do not establish cavity orientation, ECU software/hardware identity, reference voltages, or fitment beyond the filenames. The shared diagram IDs explain why the two local vehicle sets are transcribed together; they do not establish general interchangeability between 325 and 330Ci wiring.

The [local M3 diagrams](2002-and-2004-BMW-M3-E46-DME-pinout.md) use different injector, sensor, and ignition pin assignments despite reusing connector names. Continuations to cooling fans, ABS, anti-theft, air conditioning, exterior lights, and computer datalines require the corresponding separate system drawings.
