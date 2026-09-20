# 2006 BMW 750 (E65) — DME pinout

Transcribed from the six local engine-control wiring images: [sheet 1](2006_bmw_750_1.png), [sheet 2](2006_bmw_750_2.png), [sheet 3](2006_bmw_750_3.png), [sheet 4](2006_bmw_750_4.png), [sheet 5](2006_bmw_750_5.png), and [sheet 6](2006_bmw_750_6.png), diagram IDs **275012–275017**. A [combined image](2006_bmw_750_ecu.png) joins the same six sheets.

The filenames identify **2006 BMW 750**, and the directory identifies **E65**. Many component-location annotations explicitly begin **“2007:”**. These annotations are preserved below; the images do not include a vehicle heading or engine code that resolves this year discrepancy. The circuit shows eight injectors, eight ignition coils, four camshaft sensors, and a separate Valvetronic controller.

The **DME control module** is labelled “2007: right rear of engine compartment.” Its five connectors have **134 numbered positions** in total:

| Connector | Numbered positions | Sheet | Circuits |
|-----------|--------------------|-------|----------|
| X60001 | 9 | 1 | Power, grounds, integrated supply module interface |
| X60002 | 24 | 4 | Four oxygen sensors and terminal 87 supply |
| X60003 | 52 | 1–2 | Injectors, VANOS, throttle, engine sensors, DISA, Valvetronic interface |
| X60004 | 40 | 6 | Vehicle harness, pedal, brake, fan, leak diagnosis, communications |
| X60005 | 9 | 6 | Eight ignition-coil controls and ground |

Unlisted terminals are not connected **in these diagrams**; this does not establish whether they are physically unused. Numbers at the sheet edges are continuation references, not additional module connectors. The separate variable valve timing gear control module uses X60211 and X60212, documented after the DME tables.

Wire colours follow the source: BLK black, BLU blue, BRN brown, GRN green, GRY grey, ORG orange, RED red, VIO violet, WHT white, YEL yellow; NCA means no colour available. Slashes separate base and tracer colours. The **Function (as printed)** column preserves module-side signal labels, with spacing expanded for readability. Colours are those at the module unless stated otherwise. Component terminal numbers and wire-colour changes are taken from the drawing, not inferred from other BMW models.

## X60001 — 9 positions (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 3 | GRY | TXD SIGNAL | Integrated supply module (IVM) X60094 pin 5, internally bridged to pin 11 and then mechatronics X8532 pin 3 |
| 4 | BRN | GND | X7517, right rear of engine compartment |
| 6 | BRN | GND | X7517 |
| 7 | RED | TERMINAL 30 SUPPLY | IVM X60093 pin 17, on the unswitched supply side of DME relay 1 |
| 8 | ORG | TERMINAL 87 SUPPLY | IVM X60092 pin 7, from fuse F001 (30 A) after DME relay 1 |

## X60002 — 24 positions (sheet 4)

“Sensor 2” means the component explicitly labelled **OXYGEN SENSOR 2**. The source locates the pre-catalyst sensor on the right rear of the engine and pre-catalyst sensor 2 on the left rear, both with “2007:” qualifiers. Sensor-side leads are NCA; the colours below are harness-side colours.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT/BLU | HEATING SIG | Oxygen sensor before catalytic converter, pin 3 |
| 2 | WHT/RED | HEATING SIG | Oxygen sensor 2 before catalytic converter, pin 3 |
| 6 | WHT/GRY | HEATING SIG | Oxygen sensor behind catalytic converter, pin 2 |
| 7 | BLK/BLU | OXYGEN SENS SIG | Oxygen sensor before catalytic converter, pin 2 |
| 8 | YEL | OXYGEN SENS SIG | Oxygen sensor 2 behind catalytic converter, pin 3 |
| 9 | BLK/WHT | OXYGEN SENS SIG | Oxygen sensor 2 before catalytic converter, pin 2 |
| 10 | YEL | OXYGEN SENS SIG | Oxygen sensor behind catalytic converter, pin 3 |
| 12 | WHT/GRY | HEATING SIG | Oxygen sensor 2 behind catalytic converter, pin 2 |
| 13 | WHT | OXYGEN SENS SIG | Oxygen sensor before catalytic converter, pin 5 |
| 14 | BLK/GRN | OXYGEN SENS SIG | Oxygen sensor 2 behind catalytic converter, pin 4 |
| 15 | WHT | OXYGEN SENS SIG | Oxygen sensor 2 before catalytic converter, pin 5 |
| 16 | BLK/RED | OXYGEN SENS SIG | Oxygen sensor behind catalytic converter, pin 4 |
| 19 | YEL/WHT | OXYGEN SENS SIG | Oxygen sensor before catalytic converter, pin 1 |
| 20 | YEL | OXYGEN SENS SIG | Oxygen sensor before catalytic converter, pin 6 |
| 21 | YEL | OXYGEN SENS SIG | Oxygen sensor 2 before catalytic converter, pin 1 |
| 22 | YEL | OXYGEN SENS SIG | Oxygen sensor 2 before catalytic converter, pin 6 |
| 23 | WHT | TERMINAL 87 SUPPLY | IVM X60094 pin 22, DME relay 1/2 coil circuit on sheet 1; see source limitations |

The pre-catalyst sensors receive ORG power at pin 4; the post-catalyst sensors receive ORG power at pin 1. These are separate outputs from IVM fuse F008 (30 A), after DME relay 3; see the supply table below.

## X60003 — 52 positions (sheets 1–2)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 2 | YEL | INTAKE PIPE PRESS SIG | Intake pipe pressure sensor pin 1 |
| 3 | YEL/RED | INTAKE AIR TMP | Hot-film air mass meter pin 3 |
| 4 | BLU | REF VOLT SIG | Intake pipe pressure sensor pin 3; voltage not printed |
| 5 | YEL | FILM AIR MASS METER | Hot-film air mass meter pin 5 |
| 6 | WHT/BRN | FUEL INJ 4 | Fuel injector 4 pin 2; changes to BLU at an inline connection |
| 7 | WHT/BRN | FUEL INJ 5 | Fuel injector 5 pin 2; changes to GRY at an inline connection |
| 8 | WHT/VIO | FUEL INJ 6 | Fuel injector 6 pin 2; changes to BRN at an inline connection |
| 9 | WHT/RED | VANOS VALVE SIG | Intake VANOS solenoid valve 2 pin 2 |
| 10 | WHT | VANOS VALVE SIG | Intake VANOS solenoid valve pin 2 |
| 11 | WHT/GRN | FUEL INJ 7 | Fuel injector 7 pin 2; changes to GRN at an inline connection |
| 12 | WHT | THERMO HEATING SIG | Characteristic map thermostat pin 1 |
| 13 | WHT | FUEL INJ 1 | Fuel injector 1 pin 2; changes to GRY at an inline connection |
| 14 | BRN | GROUND | Hot-film air mass meter pin 2, engine coolant temperature sensor pin 2, and intake pipe pressure sensor pin 2 |
| 16 | YEL/BLU | CAMSHAFT SENS SIG | Exhaust camshaft sensor pin 1, right rear side of engine (2007 location) |
| 17 | YEL/WHT | CAMSHAFT SENS SIG | Exhaust camshaft sensor 2 pin 1, top left rear side of engine (2007 location) |
| 18 | YEL | VVT CTRL MODULE SIG | Variable valve timing gear control module X60212 pin 13 |
| 19 | VIO | ALTERNATOR SIG | Oil quality sensor pin 1 and starting/charging system continuation |
| 20 | WHT/BLU | VANOS VALVE SIG | Exhaust VANOS solenoid valve pin 2 |
| 21 | WHT/BLU | TANK VENT VLV SIG | Fuel tank vent valve pin 2 |
| 23 | WHT/GRY | VANOS VALVE SIG | Exhaust VANOS solenoid valve 2 pin 2 |
| 24 | WHT/GRN | FUEL INJ 2 | Fuel injector 2 pin 2; changes to BRN at an inline connection |
| 25 | WHT | FUEL INJ 8 | Fuel injector 8 pin 2; changes to BLU at an inline connection |
| 26 | WHT/VIO | FUEL INJ 3 | Fuel injector 3 pin 2; changes to GRN at an inline connection |
| 27 | YEL/WHT | CRANKSHAFT SENS SIG | Crankshaft sensor pin 2 (NCA on sensor side) |
| 28 | WHT/GRN | COOLANT TEMP SIG | Engine coolant temperature sensor pin 1 |
| 29 | YEL | CAMSHAFT SENS SIG | Intake camshaft sensor pin 1, right rear side of engine (2007 location) |
| 30 | YEL/RED | CAMSHAFT SENS SIG | Intake camshaft sensor 2 pin 1, top left rear side of engine (2007 location) |
| 31 | YEL/BLU | THROTTLE VLV POS SIG | Electric throttle valve pin 1 |
| 32 | YEL | THROTTLE VLV POS SIG | Electric throttle valve pin 4 |
| 33 | YEL | KNOCK SENS SIG | Knock sensor pin 2 |
| 34 | YEL | KNOCK SENS SIG | Knock sensor pin 4 |
| 35 | YEL | KNOCK SENS 2 SIG | Knock sensor 2 pin 2 |
| 36 | YEL | KNOCK SENS 2 SIG | Knock sensor 2 pin 4 |
| 37 | BLK/WHT | DIGITAL GROUND | Crankshaft sensor pin 3 (NCA on sensor side) and all four camshaft sensors pin 2 |
| 38 | YEL (or YEL/BLK) | CAN BUS SIG | Variable valve timing gear control module X60212 pin 7; H/L designation not printed |
| 40 | WHT/YEL | DISA CONTROLLER SIG | DISA controller 1 pin 2 and DISA controller 2 pin 1 |
| 41 | WHT/BLK | DISA CONTROLLER SIG | DISA controller 1 pin 1 and DISA controller 2 pin 2 |
| 42 | WHT/BLK | ELEC THROTTLE VLV | Electric throttle valve pin 3 |
| 43 | WHT/GRN | ELEC THROTTLE VLV SIG | Electric throttle valve pin 5 |
| 44 | BLU | REF VOLT SIG | Hot-film air mass meter pin 4; voltage not printed |
| 46 | BLK/GRN | KNOCK SENS SIG | Knock sensor pin 1 |
| 47 | BLK/YEL | KNOCK SENS SIG | Knock sensor pin 3 |
| 48 | BLK/WHT | KNOCK SENS 2 SIG | Knock sensor 2 pin 1 |
| 49 | BLK | KNOCK SENS 2 SIG | Knock sensor 2 pin 3 |
| 50 | BLU | ELEC THROTTLE VLV | Electric throttle valve pin 2 |
| 51 | WHT (or YEL/BRN) | CAN BUS SIG | Variable valve timing gear control module X60212 pin 19; H/L designation not printed |
| 52 | BLK/YEL | ELEC THROTTLE VLV GND | Electric throttle valve pin 6 |

Both knock-sensor components contain two sensing elements. Their two-wire pairs are pins 1–2 and 3–4; polarity is not labelled. The DISA controllers are connected in parallel but use opposite component terminal numbers for the two common wires, as drawn.

## X60004 — 40 positions (sheet 6)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 2 | GRY | LEAK DIAGNOSIS HEATING | Tank leakage diagnostic module pin 2 |
| 4 | BLK/GRN/YEL | ELECTRIC FAN SIG | Electric fan pin 4, centre of front bumper (2007 location) |
| 5 | BRN/BLK | GROUND | X10012, right footwell |
| 6 | BLK/YEL | TERMINAL 50 SIG | Car access control module pin 51 |
| 7 | BRN/GRN | APP SENS GND | Accelerator pedal module pin 1 |
| 8 | WHT/GRN | APP SENS SIG | Accelerator pedal module pin 4 |
| 9 | YEL/GRN | APP SENS SPLY | Accelerator pedal module pin 5 |
| 12 | BRN/BLU | APP SENS GND | Accelerator pedal module pin 2 |
| 13 | WHT/BLU | APP SENS SIG | Accelerator pedal module pin 6 |
| 14 | YEL/BLU | APP SENS SPLY | Accelerator pedal module pin 3 |
| 17 | NCA | SPEED SIG | Changes to BLK; OBD II socket pin 9, left side of dash |
| 18 | BRN/GRY | EXHAUST FLAP SIG | Exhaust flap pin 1, left side of rear compartment (2007 location) |
| 19 | YEL | E BOX FAN SIG | E-box fan pin 1, right rear of engine compartment (2007 location) |
| 20 | BLK/GRN | LEAK DIAGNOSIS PUMP | Tank leakage diagnostic module pin 1 |
| 22 | YEL/GRN | RR WHEEL SPEED SIG | Anti-lock brakes system continuation |
| 24 | BLU/RED | BRAKE LIGHT SIG | Brake light switch pin 4, left side of dash |
| 25 | VIO | OIL PRESS SW SIG | IVM X6011 pin 4; oil pressure switch pin 1 YEL reaches IVM X60093 pin 9 separately |
| 26 | RED/GRN (or YEL/GRN) | TERMINAL 15 SIG | Computer data lines system continuation |
| 28 | BRN/GRY | BRAKE LIGHT TEST SIG | Brake light switch pin 3 |
| 30 | BRN/BLU | LEAK DIAGNOSIS VALVE | Tank leakage diagnostic module pin 3 |
| 33 | BLK/VIO | VEH IMMOBILIZER SIG | Car access control module pin 27 |
| 36 | BLU/RED | CAN BUS SIG | Computer data lines system continuation; H/L designation not printed |
| 37 | RED | CAN BUS SIG | Computer data lines system continuation; H/L designation not printed |
| 38 | BLU/GRN | COOLANT TEMP SIG | Outlet temperature sensor at radiator pin 1 |
| 39 | BRN/YEL | COOLANT TEMP SIG | Outlet temperature sensor at radiator pin 2 |
| 40 | BLK/GRN | START RELAY SIG | Starting/charging system continuation |

The radiator outlet sensor at X60004-38/-39 is separate from the engine coolant temperature sensor at X60003-28/-14. The source labels the OBD II pin 9 circuit **SPEED SIG**; it does not identify a diagnostic protocol for that wire.

## X60005 — 9 positions (sheet 6)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT | IGN COIL 3 SIG | Ignition coil 3 pin 1 |
| 2 | WHT | IGN COIL 4 SIG | Ignition coil 4 pin 1 |
| 3 | WHT | IGN COIL 1 SIG | Ignition coil 1 pin 1 |
| 4 | WHT | IGN COIL 7 SIG | Ignition coil 7 pin 1 |
| 5 | BRN | GND | X6454 |
| 6 | WHT | IGN COIL 8 SIG | Ignition coil 8 pin 1 |
| 7 | WHT | IGN COIL 2 SIG | Ignition coil 2 pin 1 |
| 8 | WHT | IGN COIL 6 SIG | Ignition coil 6 pin 1 |
| 9 | WHT | IGN COIL 5 SIG | Ignition coil 5 pin 1 |

Each coil has pin 3 GRN supply, pin 1 WHT control, and pin 2 BRN ground. The fourth depicted connection is the NCA spark-plug lead, not a numbered harness terminal. Source locations place coils 1–4 on the right side and 5–8 on the left side of the engine (all marked “2007”).

## Separate Valvetronic / variable valve timing gear control module (sheet 5)

The module is labelled **VARIABLE VALVE TIMING GEAR CONTROL MODULE**, “2007: right rear of engine compartment.” It drives two Valvetronic actuator motors and reads two eccentric shaft sensors. Its pins must not be confused with the DME pins above.

### X60211 — 10 positions

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | RED | TERMINAL 87 SPLY | IVM X60095 pin 1, fuse F011 (40 A) after valve timing gear relay 1 |
| 2 | BRN | GROUND | X7517 |
| 3 | WHT/BLU | TERMINAL 87 SPLY | IVM X60093 pin 4, valve timing gear relay 1 coil circuit; see source limitations |
| 4 | BRN | GROUND | X7517 |
| 5 | RED | TERMINAL 87 SPLY | IVM X60095 pin 2, fuse F010 (40 A) after valve timing gear relay 2 |
| 6 | RED | TIMING GEAR SIG | Valvetronic actuator motor pin 2, right centre side of engine (2007 location) |
| 7 | BRN | TIMING GEAR SIG | Valvetronic actuator motor pin 1 |
| 8 | WHT/RED | TERMINAL 87 SPLY | IVM X60093 pin 5, valve timing gear relay 2 coil circuit; see source limitations |
| 9 | BRN | TIMING GEAR SIG | Valvetronic actuator motor 2 pin 1, left centre side of engine (2007 location) |
| 10 | RED | TIMING GEAR SIG | Valvetronic actuator motor 2 pin 2 |

### X60212 — numbered through pin 23

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | ORG | TERMINAL 87 SPLY | IVM X60093 pin 8, fuse F001 (30 A) after DME relay 1 |
| 2 | YEL | TIMING GEAR SIG | Eccentric shaft sensor pin 6, right rear side of engine (2007 location) |
| 3 | BLU | TIMING GEAR SIG | Eccentric shaft sensor pin 1 |
| 4 | NCA | — | Eccentric shaft sensor pin 3; no function label printed |
| 5 | GRN | TIMING GEAR SIG | Eccentric shaft sensor pin 8 |
| 7 | YEL (or YEL/BLK) | CAN BUS SIG | DME X60003 pin 38 |
| 9 | YEL | TIMING GEAR SPLY | Eccentric shaft sensor 2 pin 6, top left rear side of engine (2007 location) |
| 10 | BLU | TIMING GEAR SIG | Eccentric shaft sensor 2 pin 7 |
| 11 | NCA | — | Eccentric shaft sensor 2 pin 9; no function label printed |
| 12 | GRN | TIMING GEAR SIG | Eccentric shaft sensor 2 pin 8 |
| 13 | YEL | VVT CTRL MODULE | DME X60003 pin 18 |
| 15 | NCA | SHIELDING | Eccentric shaft sensor pin 4 and shield network |
| 16 | BLK | TIMING GEAR GND | Eccentric shaft sensor pin 5 |
| 17 | BRN | TIMING GEAR SIG | Eccentric shaft sensor pin 7 |
| 18 | WHT | TIMING GEAR SIG | Eccentric shaft sensor pin 9 |
| 19 | WHT (or YEL/BRN) | CAN BUS SIG | DME X60003 pin 51 |
| 20 | NCA | SHIELDING | Eccentric shaft sensor 2 pin 4 and shield network |
| 21 | BLK | TIMING GEAR GND | Eccentric shaft sensor 2 pin 5 |
| 22 | BRN | TIMING GEAR SIG | Eccentric shaft sensor 2 pin 1 |
| 23 | WHT | TIMING GEAR SIG | Eccentric shaft sensor 2 pin 3 |

The two eccentric shaft sensor symbols use different terminal numbers for WHT, BRN, BLU, and the unlabelled NCA circuit. The table preserves each sensor's printed numbering.

## Power supply / integrated supply module

The **integrated supply module (IVM)** is shown on sheets 1, 3, and 5, with a “2007: right rear of engine compartment” location. The relay input rails are marked **HOT AT ALL TIMES**. The drawing does not show an upstream battery fuse for those rails.

| Relay / fuse | Rating | Output routing shown |
|--------------|--------|----------------------|
| DME relay 1 / F001 | 30 A | ORG: IVM X60092 pin 7 to DME X60001-8; X60093 pin 8 to Valvetronic X60212-1; X60093 pin 3 to injectors 5–8 |
| DME relay 1 / F002 | 20 A | ORG, IVM X60093 pin 12: all four VANOS solenoid valves pin 1 and fuel tank vent valve pin 1 |
| DME relay 2 / F006 | 20 A | ORG, IVM X60093 pin 14: hot-film air mass meter pin 1, map thermostat pin 2, crankshaft sensor pin 1, and all four camshaft sensors pin 3 |
| DME relay 2 / F005 | 30 A | ORG, IVM X60093 pin 13: injectors 1–4 |
| DME relay 3 / F008 | 30 A | ORG: IVM X60093 pin 19 to oil quality sensor pin 3; X60094 pin 15 to post-catalyst oxygen sensor 2 pin 1; pin 19 to pre-catalyst oxygen sensor pin 4; pin 20 to pre-catalyst oxygen sensor 2 pin 4; pin 21 to post-catalyst oxygen sensor pin 1 |
| DME relay 3 / F009 | 10 A | RED/WHT, IVM X6011 pin 13: exhaust flap pin 2, E-box fan pin 2, tank leakage diagnostic module pin 4 |
| Ignition coil unloader relay / F003 | 20 A | GRN, IVM X60091 pin 2: ignition coils 5–8 pin 3 |
| Ignition coil unloader relay / F004 | 20 A | GRN, IVM X60091 pin 1: ignition coils 1–4 pin 3 |
| Valve timing gear relay 1 / F011 | 40 A | RED, IVM X60095 pin 1: Valvetronic controller X60211-1 |
| Valve timing gear relay 2 / F010 | 40 A | RED, IVM X60095 pin 2: Valvetronic controller X60211-5 |

Additional supply and IVM interfaces:

- **F34 (5 A), front fuse holder, right side of dash:** hot at all times; X10461 pin 1 RED/GRY to IVM X6011 pin 2.
- **F73 (15 A), rear fuse holder, right rear luggage compartment:** hot at all times; X10002 pin 2 RED/VIO to right B-pillar satellite X10510 pin 1.
- **F103 (30 A), jump start terminal point:** hot at all times; X18003 pin 3 RED to electric fan pin 2. Fan pin 1 BRN goes to X0167; pin 4 is the DME control signal.
- **Car access control module:** pin 34 GRN/RED to IVM X6011 pin 6; pin 62 GRN/YEL to right B-pillar satellite X10510 pin 8; pin 51 BLK/YEL to DME X60004-6; pin 27 BLK/VIO to DME X60004-33.
- **Oil pressure switch:** pin 1 YEL to IVM X60093 pin 9; the switch closes to its ground symbol. The DME receives a separately drawn VIO connection from IVM X6011 pin 4 at X60004-25.
- **Oil quality sensor:** pin 3 ORG from F008, pin 2 BRN to X7517, pin 1 VIO shared with DME X60003-19 and the starting/charging system. The source does not print a bus protocol for this circuit.
- **DME relay 3:** its coil is fed by the continuation from DME relay 2 on sheet 1. The ignition coil unloader relay coil has a BRN ground at IVM X13701 pin 1 to X10682, right rear of engine compartment.

## Injector and sensor wiring

All eight injector power terminals are **pin 1 RED**, changing to **ORG** at inline connectors. Their controls are **pin 2**, with the ECM-side / injector-side colour changes recorded in X60003's table. The source places injectors 1–4 on the right side and 5–8 on the left side of the engine, using “2007:” location annotations.

- **Camshaft sensors:** all use pin 3 ORG power and pin 2 BLK/WHT digital ground. Pin 1 signals are intake YEL to X60003-29, exhaust YEL/BLU to X60003-16, intake 2 YEL/RED to X60003-30, and exhaust 2 YEL/WHT to X60003-17.
- **Crankshaft sensor:** pin 1 ORG power, pin 2 YEL/WHT signal to X60003-27, pin 3 BLK/WHT to X60003-37. All three leads are labelled NCA on the sensor side of its inline connection.
- **Hot-film air mass meter:** pin 1 ORG power; pin 2 BRN to X60003-14; pin 3 YEL/RED intake-temperature signal to X60003-3; pin 4 BLU reference circuit to X60003-44; pin 5 YEL air-mass signal to X60003-5.
- **Intake pipe pressure sensor:** pin 1 YEL signal to X60003-2, pin 2 BRN return to X60003-14, pin 3 BLU reference circuit to X60003-4.
- **Engine coolant temperature sensor:** pin 1 WHT/GRN to X60003-28, pin 2 BRN to X60003-14. **Radiator outlet temperature sensor:** pin 1 BLU/GRN to X60004-38, pin 2 BRN/YEL to X60004-39.
- **Throttle:** motor terminals pin 3 WHT/BLK and pin 5 WHT/GRN go to X60003-42/-43. The position-sensor circuits are pin 1 YEL/BLU to X60003-31, pin 4 YEL to X60003-32, pin 2 BLU to X60003-50, and pin 6 BLK/YEL to X60003-52. Voltage and motor polarity are not printed.
- **Accelerator pedal:** one sensor uses pins 1 BRN/GRN ground, 4 WHT/GRN signal, and 5 YEL/GRN supply; the other uses pins 2 BRN/BLU ground, 6 WHT/BLU signal, and 3 YEL/BLU supply. Supply voltages are not printed.

## Grounds, fuel pump, and vehicle interfaces

| Ground | Connections shown |
|--------|-------------------|
| X7517, right rear of engine compartment | DME X60001-4/-6; Valvetronic X60211-2/-4; oil quality sensor pin 2 |
| X6454 | DME X60005-5; location not printed on this sheet |
| X64662 | Ignition coils 3 and 4 pin 2 |
| X64661 | Ignition coils 1 and 2 pin 2 |
| X64664 | Ignition coils 7 and 8 pin 2 |
| X64663 | Ignition coils 5 and 6 pin 2 |
| X10012, right footwell | DME X60004-5 |
| X10682, right rear of engine compartment | Ignition coil unloader relay, IVM X13701 pin 1 |
| X492, under right front seat | Right B-pillar satellite X10510 pin 4 |
| X1108, left front door sill | Brake light switch pin 2 BRN/BLK |
| X0167 | Electric fan pin 1 BRN; ground location not printed |

**Fuel pump:** sheet 3 shows the electric fuel pump below the right rear seat, connected to the **right B-pillar satellite**, not directly to the DME. Pump pin 1 BRN/YEL goes to satellite X10510 pin 3; pump pin 4 BLK/VIO goes to satellite X10510 pin 2. The right tank half fuel-level sensor uses pump-assembly pin 6 BLK/VIO and pin 3 BRN/BLK/WHT, both continuing to the instrument cluster system. Satellite X10510 pin 1 is F73 power and pin 4 is X492 ground. The remaining satellite connections continue to starting/charging and sound systems; their module functions are not labelled here.

**Tank leakage diagnostic module:** top of right rear wheel (2007 location); pin 4 RED/WHT from F009, pin 3 BRN/BLU to X60004-30, pin 2 GRY to X60004-2, pin 1 BLK/GRN to X60004-20.

**Brake light switch:** pin 1 GRN/BLK to headlights system; pin 2 BRN/BLK to X1108; pin 3 BRN/GRY to X60004-28; pin 4 BLU/RED to X60004-24. The brake-light signal and test signal remain separate circuits.

## Source limitations and printed inconsistencies

- These are system wiring diagrams, not connector-face drawings. They do not establish cavity orientation, DME hardware/software identity, factory engine code, sensor-reference voltages, or CAN H/L polarity. The “2007:” locations conflict with the 2006 filenames; no cross-year compatibility is established here.
- **X60002-23** is printed **TERMINAL 87 SUPPLY**, but its WHT line traces to IVM X60094-22 and the DME relay 1/2 coil circuit. The transcription retains the printed label and traced routing; the label alone does not establish a load-power input.
- **Valvetronic X60211-3/-8** are printed **TERMINAL 87 SPLY**, although the traced WHT/BLU and WHT/RED circuits reach the respective relay coils. Their printed names should not be used alone to classify them as load-power inputs.
- Starting/charging, computer data lines, ABS, instrument cluster, headlights, and sound-system continuation arrows require their separate diagrams for further detail. Unresolved labels have not been filled from another model's pinout.
