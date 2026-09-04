# 2017 Porsche Macan (95B) L4-2.0L Turbo — DME pinout

Transcribed from [2017 Porsche Macan 20t ECU Diagram.pdf](2017%20Porsche%20Macan%2020t%20ECU%20Diagram.pdf) (ALLDATA "Engine Controls" wiring diagram, pages 1-7, diagram IDs 580768-580778).

DME control unit (VAG Simos 18), located left rear of engine compartment. ALLDATA draws the control unit as two connector groups, "A" (pins 1-105, engine harness, pages 1 and 3) and "B" (pins 1-91, vehicle harness, pages 5 and 7); the designators below are as printed.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| A | 105 (72 wired) | Engine harness: injectors, ignition, AVS valve-lift solenoids, cam/crank/knock sensors, throttle, MAP, rail pressure, oil pressure, coolant rotary valve, high-pressure pump, bypass compressor |
| B | 91 (49 wired) | Vehicle harness: power (Term 30/15/87/31), main and engine relay control, accelerator pedal, O2 sensors, boost pressure sensor, engine bearings, CAN, starter, exhaust flaps, fuel pump control unit, tank leakage diagnostics |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange). Unlisted pins are not connected in this diagram. Pins B63-66 and B82-85 are marked "NOT USED"; B13-15 and B19-22 likewise.

## A — engine harness connector, pins 1-50 (page 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | RED/VIO | HIGH PRESS FUEL INJ CYL 2 LS | Fuel injector 2 pin 2 (via X036 pin 4) |
| 2 | RED/BLU | HIGH PRESS FUEL INJ CYL 3 LS | Fuel injector 3 pin 2 (via X036 pin 6) |
| 3 | GRY/YEL | TANK VENT VALVE | Tank vent valve pin 2 |
| 4 | BLU | AVS UNIT, CYL 3 LARGE LIFT, EXHAUST | Exhaust large lift AVS unit cylinder 3 pin 1 |
| 6 | YEL/BLK | AVS UNIT, CYL 1 LARGE LIFT, EXHAUST | Exhaust large lift AVS unit cylinder 1 pin 1 |
| 7 | BRN/YEL | PISTON SPRAY NOZZLE VALVE | Piston spray nozzle valve pin 1 |
| 11 | BRN/GRN | RAIL PRESS SENS GND | Rail pressure sensor pin 1 (GND) (via X037 pin 10) |
| 17 | GRN/BLU | OIL PRESS REGULATING VALVE | Oil pressure regulating valve pin 1 |
| 20 | BRN/GRN | BYPASS COMPRESSOR MOTOR - | Bypass compressor pin 3 (GND) |
| 22 | BRN/GRY | HIGH PRESS FUEL INJ CYL 3 LS | Fuel injector 3 pin 1 (via X036 pin 5) |
| 23 | BRN/VIO | HIGH PRESS FUEL INJ CYL 2 LS | Fuel injector 2 pin 1 (via X036 pin 3) |
| 26 | GRN/YEL | ROTARY VANE SUPPLY | Coolant regulator rotary valve pin 3 (SENSOR +) |
| 27 | BRN/GRN | POSITION SENSOR GND | LBK sensor flap valve 1 pin 3 (GND) (via X037 pin 13) |
| 28 | BLK/GRY | EXHAUST CAMSHAFT SENSOR | Exhaust camshaft sensor pin 2 (SIG) |
| 29 | BRN/GRN | EXH CAMSHAFT SENSOR GND | Exhaust camshaft sensor pin 3 (GND) |
| 30 | BLU/GRY | INTAKE CAMSHAFT SENSOR | Intake camshaft sensor pin 2 (SIG) (via X037 pin 8) |
| 33 | BRN/GRN | INTAKE PIPE PRES SENS GND | Intake manifold pressure sensor pin 1 (GND) |
| 34 | BLU/WHT | THROTTLE VALVE ACTUAL 1 | Throttle valve adjustment unit pin 4 (ACTUAL VALVE 1) |
| 35 | GRY/YEL | RPM SENSOR SUPPLY | Crankshaft speed sender pin 1 (SUPPLY) |
| 36 | VIO | LBK SENSOR FLAP VALVE 1 | LBK sensor flap valve 1 pin 2 (SIG) (via X037 pin 4) |
| 38 | GRN/YEL | EXH CAMSH SENS SUPPLY | Exhaust camshaft sensor pin 1 (+5V) |
| 40 | BLK/BLU | CYLINDER HEAD TEMP SENS | Coolant temperature sensor pin 2 |
| 41 | WHT/GRN | BYPASS COMPRESSOR SIG | Bypass compressor pin 5 (SIG) |
| 42 | GRN/YEL | INTAKE PIPE PRES SENS +5V | Intake manifold pressure sensor pin 3 (+5V) |
| 43 | RED/YEL | HIGH PRESS FUEL INJ CYL 4 LS | Fuel injector 4 pin 2 (via X036 pin 8) |
| 44 | BLK | INTAKE CAMSH SENS GND | Intake camshaft sensor pin 3 (GND) (via X037 pin 12) |
| 47 | BRN/BLK | TEMPERATURE SENS GND | Coolant temperature sensor pin 1 |
| 48 | GRN/YEL | POSITION SENSOR SUPPLY | LBK sensor flap valve 1 pin 1 (VCC) (via X037 pin 5) |
| 49 | BLK/GRY | HIGH PRESSURE SENSOR RAIL | Rail pressure sensor pin 2 (SIG) (via X037 pin 7) |

Component notes (pages 1-2): fuel injectors 2/3/4 are in the right bank cylinders; the intake camshaft sensor +5V (GRN/RED, X037 pin 9) and rail pressure sensor +5V (GRN/RED, X037 pin 1) run to A69 and A68 respectively (page 3). The other side of every solenoid (tank vent valve pin 1, AVS units pin 2, piston spray nozzle valve pin 2, oil pressure regulating valve pin 2) is YEL/RED Term 87 supply.

## A — engine harness connector, pins 51-105 (page 3)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 51 | RED/YEL | INTAKE PIPE TEMP SENS | Intake manifold pressure sensor pin 2 (NTC) |
| 52 | YEL | INTAKE MAN PRESS SENSOR | Intake manifold pressure sensor pin 4 (SIG) |
| 53 | GRN | CVTS FLAP VALVE | Charger adjuster CVTS flap valve pin 2 |
| 54 | WHT/BLK | THROTTLE VALVE +5V | Throttle valve adjustment unit pin 2 (SIG +) |
| 55 | WHT | THROTTLE VALVE ACTUAL 2 | Throttle valve adjustment unit pin 1 (ACTUAL VALVE 2) |
| 56 | VIO | THROTTLE VALVE GND | Throttle valve adjustment unit pin 6 (SIG -) |
| 57 | GRY/WHT | IGNITION SIGNAL 3 | Bar ignition module cylinder 3 pin 2 (ACTUATION) |
| 58 | GRN | CYL 2 LARGE LIFT EXHAUST | Exhaust large lift AVS unit cylinder 2 pin 1 |
| 59 | GRN/BLU | CYL 2 SMALL LIFT EXHAUST | Exhaust small lift AVS unit cylinder 2 pin 1 |
| 61 | GRN/YEL | BYPASS COMPRESSOR MOTOR + | Bypass compressor pin 1 (+5V) |
| 62 | WHT/GRY | IGNITION SIGNAL 4 | Bar ignition module cylinder 4 pin 2 (ACTUATION) |
| 64 | BRN/YEL | HIGH PRESS FUEL INJ CYL 1 HS | Fuel injector 1 pin 1 (via X036 pin 1) |
| 65 | BRN/GRN | HIGH PRESS FUEL INJ CYL 4 HS | Fuel injector 4 pin 1 (via X036 pin 7) |
| 66 | YEL/BLK | DIVERTER VALVE | Diverter valve pin 2 (NEGATIVE) |
| 68 | GRN/RED | RAIL PRESSURE SENS +5V | Rail pressure sensor pin 3 (+5V) (via X037 pin 1) |
| 69 | GRN/RED | INT CAMSH SENS SUPPLY | Intake camshaft sensor pin 1 (+5V) (via X037 pin 9) |
| 70 | BRN | SPEED CRANKSHAFT | Crankshaft speed sender pin 2 (SIG) |
| 72 | VIO/RED | OIL PRESS SW LOW PRESSURE | Oil pressure switch pin 1 (SIG) |
| 73 | WHT/GRY | OIL PRESS SW LOW PRESSURE 2 | Oil pressure switch 3 pin 1 (SIG) (via X037 pin 14) |
| 74 | GRN/WHT | OIL PRESS SW HIGH PRESS | Oil pressure switch 2 pin 1 (SIG) |
| 76 | WHT/BLK | IGNITION SIGNAL 1 | Bar ignition module cylinder 1 pin 2 (ACTUATION) |
| 77 | BRN/GRN | RPM SENSOR GND | Crankshaft speed sender pin 3 (GND) |
| 78 | BRN/GRN | ROTARY VANE GND | Coolant regulator rotary valve pin 1 (SENSOR -) |
| 79 | GRN/GRY | IGNITION SIGNAL 2 | Bar ignition module cylinder 2 pin 2 (ACTUATION) |
| 80 | BRN | ROTARY VALVE SIGNAL | Coolant regulator rotary valve pin 2 (SIG) |
| 83 | RED/WHT | OIL LEVEL SENSOR | Oil level sensor pin 3 (PWM) |
| 85 | RED/YEL | HIGH PRESS FUEL INJ CYL 1 LS | Fuel injector 1 pin 2 (via X036 pin 2) |
| 86 | GRN | ROTARY VALVE ACTUATOR - | Coolant regulator rotary valve pin 4 (ACTUATOR -) |
| 87 | BRN/BLU | ROTARY VALVE ACTUATOR + | Coolant regulator rotary valve pin 5 (ACTUATOR +) |
| 88 | WHT/BLK | BYPASS COMPRESSOR MOTOR - | Bypass compressor pin 2 (MOTOR -) |
| 89 | GRN/GRY | BYPASS COMPRESSOR MOTOR + | Bypass compressor pin 6 (MOTOR +) |
| 90 | BRN/BLK | THROTTLE VALVE MOTOR - | Throttle valve adjustment unit pin 3 (MOTOR -) |
| 91 | GRN/VIO | THROTTLE VALVE MOTOR + | Throttle valve adjustment unit pin 5 (MOTOR +) |
| 92 | RED/VIO | HIGH PRESS PUMP - | High pressure pump pin 2 |
| 93 | BRN/YEL | HIGH PRESS PUMP + | High pressure pump pin 1 |
| 94 | BLU/RED | CYL 3 SMALL LIFT EXHAUST | Exhaust small lift AVS unit cylinder 3 pin 1 |
| 95 | GRY/WHT | CYL 4 LARGE LIFT EXHAUST | Exhaust large lift AVS unit cylinder 4 pin 1 |
| 96 | WHT/GRN | CYL 4 SMALL LIFT EXHAUST | Exhaust small lift AVS unit cylinder 4 pin 1 |
| 97 | BRN/BLK | KNOCK SENSOR GND | Knock sensor 1 pin 2 (SIGNAL -) |
| 98 | BLK/BLU | KNOCK SENSOR 1 SIGNAL | Knock sensor 1 pin 1 (SIGNAL +) |
| 101 | GRY/BLK | CYL 1 SMALL LIFT EXHAUST | Exhaust small lift AVS unit cylinder 1 pin 1 |
| 104 | RED/BLU | OUTLET CAMSHAFT CONTROLLER | Outlet camshaft controller pin 2 (NEGATIVE) |
| 105 | RED | INTAKE CAMSHAFT CONTROLLER | Intake camshaft controller pin 2 (NEGATIVE) |

Component notes (pages 3-4): bar ignition modules cylinders 1-3 are on the right cylinder bank (above cylinders 1, 2 and 3), cylinder 4 on the left bank; each module has pin 4 TERM 87 (RED/GRY, common bus to fuse 14), pin 3 TERM 31 (BRN, to ground GP-15 left rear of engine compartment), pin 2 ACTUATION and pin 1 ENGINE GND (BRN/GRN, to the ignition coil ground block pins 1-4). Throttle valve adjustment unit is on the throttle body assembly; fuel injector 1 is in the right bank cylinder; oil level sensor is in the oil pan (pin 1 TERM 87 BLK/BLU from fuse 9, pin 2 TERM 31 BRN to GP-15); radiator shutter 1 (behind left side of front grille) pin 4 RED/GRN is supplied via X010 pin 6 / X374 pin 1. The positive side of the diverter valve, charger adjuster CVTS flap valve, high pressure pump-side solenoids and both camshaft controllers (pin 1) is YEL/RED Term 87.

## B — vehicle harness connector, pins 1-50 (page 7)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BRN | TERM 31 | Ground GP-15 (left rear of engine compartment) |
| 2 | BRN | TERM 31 | Ground GP-15 |
| 3 | RED/YEL | TERM 87 | Plenum panel E-box fuse 6 (15 A) |
| 4 | BRN | TERM 31 | Ground GP-15 |
| 5 | RED/YEL | TERM 87 | Plenum panel E-box fuse 6 (15 A) |
| 6 | RED/YEL | TERM 87 | Plenum panel E-box fuse 6 (15 A) |
| 7 | GRN | MAIN RELAY | DME relay 1 pin 2 (coil), plenum panel E-box |
| 8 | YEL/BLK | ENGINE RELAY | Engine relay pin 2 (coil), plenum panel E-box |
| 9 | YEL/BLU | FUEL PUMP CTRL UNIT | Fuel pump system control unit pin 6 (PWM) (via X371 pin 3) |
| 11 | WHT/YEL | O2 SENS CAT HEAT | Oxygen sensor downstream of catalytic bank 1 pin 2 (HEATER -) |
| 12 | RED/WHT | RADIATOR FAN 1 PWM | Radiator fan pin 3 (PWM) (via X373 pin 3) |
| 16 | GRN | ACCELERATOR +5V POT 2 | Accelerator pedal pin 1 (+5V POTENTIOMETER 2) (via X372 pin 1, X481 pin 1) |
| 18 | RED/YEL | BOOST PRESSURE SENS + | Boost pressure sensor pin 3 (5 V) |
| 23 | RED/BLU | ENGINE BEARING 1 | Left engine bearing 1 pin 1 |
| 25 | GRN | DOWNSTR OF CAT SIG B1 | Oxygen sensor downstream of catalytic bank 1 pin 4 (SENS VOLT +) |
| 26 | GRY/BLK | DOWNSTR OF CAT GND B1 | Oxygen sensor downstream of catalytic bank 1 pin 3 (SENS VOLT -) |
| 29 | BLK | TEMP SENS GND | Coolant return temperature sensor pin 1 |
| 33 | BRN | ACCELERATOR +5V POT 1 | Accelerator pedal pin 2 (+5V POTENTIOMETER 1) (via X372 pin 2, X481 pin 2) |
| 34 | YEL/BLU | ACCELERATOR GND 1 | Accelerator pedal pin 3 (GND POTENTIOMETER 1) (via X372 pin 3, X481 pin 3) |
| 35 | GRN/BLU | BOOST PRESSURE SENS - | Boost pressure sensor pin 1 (TERM 31) |
| 37 | BLK/RED | STOP LIGHT SWITCH | Stop light switch pin 3 (OUTPUT) (via X372 pin 8, X481 pin 11) |
| 38 | BRN/VIO | GND TANK LEAKAGE DIAGNOSTICS | Tank leakage diagnostics pin 3 (TERM 31) (via X371 pin 13) |
| 40 | RED/VIO | ENGINE BEARING 2 | Right engine bearing 2 pin 1 |
| 41 | YEL/BLU | UPSTR CAT SIG B1 | Oxygen sensor upstream of catalytic bank 1 pin 5 (LAMBDA CTRL) |
| 43 | YEL/VIO | UPSTR CAT PUMP CURR B1 | Oxygen sensor upstream of catalytic bank 1 pin 1 (PUMP CURRENT) |
| 44 | BRN/RED | UPSTR CAT GND B1 | Oxygen sensor upstream of catalytic bank 1 pin 2 (SENS VOLT -) |
| 49 | VIO/YEL | COOLANT RETURN TEMP SENS | Coolant return temperature sensor pin 2 |
| 50 | BLK | TERM 15 | Driver side fuse box (row A, left kick panel) fuse 8 (5 A), hot with KL 15 relay energized (via X371 pin 8) |

## B — vehicle harness connector, pins 51-91 (page 5)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 51 | BRN | ACCELERATOR GND POT 2 | Accelerator pedal pin 5 (GND POTENTIOMETER 2) (via X372 pin 5, X481 pin 5) |
| 52 | YEL/GRY | ACCELERATOR ACTUAL VALVE 1 | Accelerator pedal pin 4 (ACTUAL VALVE 1) (via X372 pin 4, X481 pin 4) |
| 53 | VIO/RED | CHARGE AIR PRESS TEMP SENS | Boost pressure sensor pin 2 (NTC) |
| 54 | GRN/WHT | CHARGE AIR PRESS SIG | Boost pressure sensor pin 4 (PRESSURE SIG) |
| 59 | VIO/BLU | LEFT EXHAUST-GAS FLAP | Left exhaust gas flap pin 2 (PWM) and central exhaust flap pin 2 (PWM) (via X371 pin 6) |
| 62 | BLU/BLK | P/N SWITCH | Transmission control unit pin 3 (STARTER INTERLOCK) |
| 67 | RED/BLK | TERM 50 FEEDBACK | Starting/charging system |
| 68 | BLK | TERM 50 | Driver side fuse box fuse 8 (5 A), hot with KL 15 relay energized (same BLK as B50) |
| 69 | BLK | ACCELERATOR ACTUAL VALVE 2 | Accelerator pedal pin 6 (ACTUAL VALVE 2) (via X372 pin 6, X481 pin 6) |
| 70 | BLU/GRN | CRUISE CONT MAIN SWITCH | Cruise control system |
| 75 | BRN/VIO | UPSTR OF CAT HEATING B1 | Oxygen sensor upstream of catalytic bank 1 pin 3 (HEATER -) |
| 76 | BLU/RED | RADIATOR SHUTTER | Air conditioning system |
| 77 | GRN/YEL | ENGINE SPEED | Transmission control unit pin 6 (ENGINE SPD) |
| 78 | YEL/VIO | TANK LEAK DIAG SIGNAL | Tank leakage diagnostics pin 2 (DATA) (via X371 pin 2); WHT/BLU branch to PTC relay 1 pin 6 (85) (via X482 pin 5) |
| 79 | ORG/BLK | CAN DRIVE HIGH | Computer data lines system |
| 80 | ORG/BRN | CAN DRIVE LOW | Computer data lines system |
| 81 | RED/YEL | RADIATOR FAN 2 PWM | Radiator fan pin 3 (PWM) (via X373 pin 5) |
| 86 | RED/YEL | TERM 30 | Plenum panel E-box fuse 3 (5 A) |
| 87 | RED/GRY | STARTER RELAY 1 | Starting/charging system |
| 88 | BLU/YEL | STARTER RELAY 2 | Starting/charging system |
| 91 | VIO/GRN | RIGHT EXHAUST-GAS FLAP | Right exhaust gas flap pin 2 (PWM) (via X371 pin 14) |

Component notes (pages 4-7): accelerator pedal is on top of the accelerator pedal assembly (connector X481); oxygen sensors are in the right exhaust, upstream and downstream of the catalytic converter (heater + GRN/YEL on both sensors from fuse 12, 15 A); stop light switch is on top of the brake pedal assembly (pin 1 GROUND BRN to GP-23 left front of center console, pin 4 TERM 87 RED/GRN via X482 pin 7 / X371 pin 7 from fuse 7); tank leakage diagnostics is on the EVAP canister (pin 1 TERM 30 RED/GRY from driver side fuse box row C fuse 5, 5 A, hot at all times); exhaust gas flaps are at the outlets of the left and right exhaust manifolds (TERM 87 RED/GRN via X371 pin 17 from fuse 7, TERM 31 BRN to GP-41 left rear of cargo area); fuel pump system control unit and tank system (level senders via X051) are grounded at GP-34 (right "C" pillar). The interior sound actuator / pulse sensor (page 2) is on its own KL 15 supply (driver side fuse box row A fuse 3, 10 A) and CAN, not wired to the DME.

## Power supply / relays (pages 5-7)

Central fusing (right center rear of cargo area): fuse 3 (110 A), hot at all times, feeds the E-box transfer pin 2 (RED/WHT), which supplies DME relay 1 pin 3 (RED), the power distribution system and plenum panel E-box pin 3 (RED/WHT, unfused).

Plenum panel E-box (left side of plenum):

- **DME relay 1** — pin 1 coil supply RED/YEL from fuse 3 (5 A), pin 2 coil control GRN to B7 MAIN RELAY, pin 3 RED from the 110 A transfer, pin 5 output RED/GRN feeding the E-box RED/GRN bus (E-box pins 6, 7, 9, 10, 11, 12, 17) and the engine relay pin 3
- **Engine relay** — pin 1 RED/YEL from fuse 6 (15 A), pin 2 coil control YEL/BLK to B8 ENGINE RELAY, pin 3 RED/GRN from the DME relay bus, pin 5 GRN from E-box pin 14
- **Fuse 3 (5 A)** RED/YEL — DME relay 1 coil and B86 TERM 30
- **Fuse 6 (15 A)** RED/YEL — B3, B5, B6 TERM 87 and the engine relay
- **Fuse 7 (10 A)** RED/GRN — exhaust gas flaps TERM 87, radiator shutter 1, stop light switch TERM 87, radiator fan TERM 87 (via X373 pin 2)
- **Fuse 9 (5 A)** BLK/BLU — oil level sensor TERM 87
- **Fuse 10 (15 A)** and **fuse 11 (15 A)** YEL/RED — solenoid Term 87 supply bus (injector-side solenoids, AVS units, tank vent valve, piston spray nozzle valve, oil pressure regulating valve, diverter valve, charger adjuster, camshaft controllers, engine bearings)
- **Fuse 12 (15 A)** GRN/YEL — oxygen sensor heaters
- **Fuse 14 (20 A)** RED/GRY — bar ignition modules TERM 87
- **Fuse 17 (25 A)** RED/GRY — fuel pump system control unit pin 5 TERM 87 (via X371 pin 16)

Driver side fuse box (left kick panel): fuse 8 (5 A, row A, hot with KL 15 relay) BLK feeds B50 TERM 15 and B68 TERM 50; fuse 5 (5 A, row C, hot at all times) RED/GRY feeds the tank leakage diagnostics TERM 30; fuse 3 (10 A, row A) feeds the interior sound actuator. PTC relays 1 and 2 are in the driver side dashboard holder. DME grounds B1, B2, B4 at GP-15 (left rear of engine compartment), shared with the ignition modules TERM 31 and the oil level sensor.
