# 2015 Audi A3 Quattro Sedan (8VS) L4-2.0L Turbo (CNTC) — ECM pinout

Transcribed from [2015-a3-quattro-2.0T.pdf](2015-a3-quattro-2.0T.pdf) (ALLDATA "Engine Controls" wiring diagram, pages 1–7, sheets 484854–484860).

Engine Control Module (ECM), located left side of engine compartment. Two connectors, T91 (91-pin) and T105 (105-pin), 196 pins total (Simos 18 family layout).

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| T91 | 91 | Vehicle harness: power, grounds, relay controls, accelerator pedal, O2 sensors, charge air pressure, brake/clutch/cruise, CAN, transmission signals |
| T105 | 105 | Engine harness: injectors, ignition coils, throttle, cam actuators, engine sensors and valves |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange). Unlisted pins are not connected in this diagram. The diagram prints only the wire color at each ECM pin (no function names), so the "Function" column is inferred from the component the wire goes to; "Connects to" gives the component and pin as printed. "T14", "T17C", "T10P" etc. are inline harness connectors the wire passes through.

## T91 — vehicle harness connector (91-pin)

| Pin | Wire | Function (inferred) | Connects to |
|-----|------|---------------------|-------------|
| 1 | BRN/BLK | Ground | G671 (on left front long member) |
| 2 | BRN/BLK | Ground | G671 (on left front long member) |
| 5 | RED/BLU | Battery power via main relay | Fuse 3 (15 A), electronics box (fuse panel B), terminal 3A |
| 6 | RED/BLU | Battery power via main relay | Fuse 3 (15 A), electronics box (fuse panel B), terminal 3A |
| 7 | WHT/GRN | Main relay control | Motronic engine control module power supply relay, coil terminal 85 (fuse panel B terminal 42) |
| 8 | GRY/BLK | Engine component relay control | Engine component power supply relay, coil terminal 85 (fuse panel B terminal 112) |
| 9 | BLK/BRN | Fuel pump control | Fuel pump control module pin 5 (via T13C/13, T3/3 — w/ auxiliary heater) |
| 10 | VIO | Exhaust door (exhaust valve) control | Exhaust door control unit pin 2 (via T13C/1, T3) |
| 11 | GRN/WHT | O2 sensor after cat heater | Oxygen sensor 1 after catalytic converter, heater pin 2 |
| 12 | VIO/GRY | (NOT USED) | T4G pin 3 (NOT USED) |
| 15 | GRY/WHT | Coolant recirculation pump | Coolant recirculation pump pin 3 (via T10P/10) |
| 16 | YEL/BLU | Accelerator pedal | Accelerator pedal position sensor 1 & 2, pin 1 |
| 17 | GRY/YEL | Transmission neutral position | Transmission neutral position sensor pin 1 |
| 19 | BRN | Transmission neutral position sensor ground | Transmission neutral position sensor pin 3 |
| 22 | GRN/GRY | Coolant shut-off valve | Coolant shut-off valve pin 2 (via T14/3) |
| 25 | VIO | O2 sensor after cat signal | Oxygen sensor 1 after catalytic converter pin 4 |
| 26 | BRN | O2 sensor after cat ground | Oxygen sensor 1 after catalytic converter pin 3 |
| 29 | BRN | Radiator outlet ECT ground | Engine coolant temperature sensor (on radiator outlet) pin 2 |
| 32 | VIO/BLK | Charge air pressure sensor | Charge air pressure sensor pin 3 (RED, via T10P/7, T8/7) |
| 33 | BLK/YEL | Accelerator pedal | Accelerator pedal position sensor 1 & 2, pin 2 |
| 34 | GRN/BRN | Accelerator pedal | Accelerator pedal position sensor 1 & 2, pin 3 |
| 35 | BRN | Sensor ground | Charge air pressure sensor pin 1 (via T10P/5, T8/5); transmission neutral position sensor pin 4 |
| 37 | BLK/RED | Brake pedal switch | Brake pedal position sensor switch/brake lamp switch pin 3; vehicle electrical system control module T73C pin 58 (via T17C/7) |
| 38 | BRN/GRY | Fuel tank leak detection | Fuel tank leak detection control module pin 2 (via T17/1) |
| 39 | BLU/GRN | Transmission coolant valve | Transmission coolant valve pin 2 (via T14/1) |
| 41 | BLU | O2 sensor before cat | Oxygen sensor 1 before catalytic converter (heated oxygen sensor) pin 5 |
| 43 | BRN/GRN | O2 sensor before cat | Oxygen sensor 1 before catalytic converter pin 1 |
| 44 | GRY/YEL | O2 sensor before cat | Oxygen sensor 1 before catalytic converter pin 2 |
| 49 | GRN | Radiator outlet ECT signal | Engine coolant temperature sensor (on radiator outlet) pin 1 |
| 50 | WHT/BLU | Data line | COMPUTER DATA LINES SYSTEM |
| 51 | GRY | Accelerator pedal | Accelerator pedal position sensor 1 & 2, pin 5 |
| 52 | BLU/GRN | Accelerator pedal | Accelerator pedal position sensor 1 & 2, pin 4 |
| 54 | YEL | Charge air pressure sensor | Charge air pressure sensor pin 2 (via T10P/6, T8/6) |
| 55 | VIO | Charge air pressure sensor | Charge air pressure sensor pin 4 (GRN, via T10P/8, T8/8) |
| 60 | GRY/GRN | Brake pedal switch | Brake pedal position sensor switch/brake lamp switch pin 1 |
| 64 | YEL/BRN | Transmission neutral position | Transmission neutral position sensor pin 2 |
| 67 | RED/VIO (OR RED/BLK) | Starting/charging | STARTING/CHARGING SYSTEM |
| 68 | RED/BLK | Cruise control | CRUISE CONTROL SYSTEM |
| 69 | GRY/YEL | Accelerator pedal | Accelerator pedal position sensor 1 & 2, pin 6 |
| 70 | VIO/RED | Cruise control | CRUISE CONTROL SYSTEM |
| 74 | BLK/YEL | O2 sensor before cat heater | Oxygen sensor 1 before catalytic converter, heater pin 3 |
| 78 | BLU/VIO | Fuel tank leak detection | Fuel tank leak detection control module pin 3 (via T17/2) |
| 79 | ORG/BLK | CAN | COMPUTER DATA LINES SYSTEM |
| 80 | ORG/BRN | CAN | COMPUTER DATA LINES SYSTEM |
| 86 | BLK/VIO | Terminal 30 (constant power) | Fuse 17 (7.5 A) terminal 17A / terminal 41, fuse panel B, hot at all times |
| 87 | BRN/GRN | Starting/charging | STARTING/CHARGING SYSTEM |
| 88 | BRN/RED | Starting/charging | STARTING/CHARGING SYSTEM |
| 91 | BLU/GRY | Exhaust door control unit 2 | Exhaust door control unit 2 pin 2 (GRY, via T17C/5) |

Component locations (pages 2, 3, 7): charge air pressure sensor — in charge air pipe; engine coolant temperature sensor — on radiator outlet (on lower radiator hose); accelerator pedal position sensor 1 & 2 — top of accelerator pedal assembly; oxygen sensor 1 after catalytic converter — part of oxygen sensor after three way catalytic converter; brake pedal position sensor switch/brake lamp switch — on brake vacuum booster assembly; vehicle electrical system control module — left end of dash; fuel tank leak detection control module — behind EVAP canister; exhaust door control units — on exhaust valve; fuel pump control module — part of fuel delivery unit.

## T105 — engine harness connector (105-pin)

| Pin | Wire | Function (inferred) | Connects to |
|-----|------|---------------------|-------------|
| 1 | RED/VIO | Injector 2 | Fuel injector cylinder 2 pin 2 |
| 2 | RED/BLU | Injector 3 | Fuel injector cylinder 3 pin 2 |
| 3 | BLU/GRY | EVAP purge valve | EVAP canister purge regulator valve 1 pin 1 |
| 4 | WHT/GRN | Cam adjustment actuator 5 | Cam adjustment actuator 5 pin 1 |
| 6 | WHT/YEL | Cam adjustment actuator 1 | Cam adjustment actuator 1 pin 1 |
| 7 | VIO/WHT | Piston cooling nozzle valve | Piston cooling nozzle control valve pin 1 |
| 8 | BRN/BLU | DSG mechatronic | DSG transmission mechatronic pin 7 (GRN, via T14/33) |
| 9 | YEL/GRN | Secondary air injection sensor | Secondary air injection sensor 1 pin 2 |
| 17 | YEL/GRY | Oil pressure regulation valve | Oil pressure regulation valve pin 1 |
| 21 | RED/BLK | Secondary air injection valve | Secondary air injection solenoid valve pin 5 |
| 22 | BRN/GRY | Injector 3 | Fuel injector cylinder 3 pin 1 |
| 23 | BRN/VIO | Injector 2 | Fuel injector cylinder 2 pin 1 |
| 30 | BLU | Camshaft position signal | Camshaft position sensor pin 2 (via T14F/8) |
| 33 | BRN | Sensor ground | Engine speed sensor pin 3; charge air pressure actuator position sensor pin 3; spliced (dashed) to fuel pressure sensor pin 1 (BRN/BLU, via T14F/10), intake air temperature sensor pin 1, engine temperature control actuator pin 1, secondary air injection sensor 1 pin 3 |
| 34 | GRY/RED | Throttle | Throttle valve control module pin 4 (sensor 2) |
| 35 | GRN/RED | 5 V sensor supply | Charge air pressure actuator position sensor pin 1; engine speed sensor pin 1 (YEL/BRN); spliced (dashed) to fuel pressure sensor pin 3 (GRN/VIO, via T14F/1), intake air temperature sensor pin 3, camshaft position sensor pin 1 (BRN, via T14F/9), engine temperature control actuator pin 3, secondary air injection sensor 1 pin 1 |
| 36 | VIO | Intake manifold runner position | Intake manifold runner position sensor pin 2 (via T14F/4) |
| 40 | RED/GRN | ECT signal | Engine coolant temperature sensor (rear of cylinder head) pin 2 |
| 41 | BLU/VIO | Charge air pressure actuator position | Charge air pressure actuator position sensor pin 5 |
| 43 | GRY/GRN | Injector 4 | Fuel injector cylinder 4 pin 2 |
| 47 | BRN/GRN | Sensor ground | Intake manifold runner position sensor pin 3 (via T14F/13); low fuel pressure sensor pin 2; spliced (dashed) to camshaft position sensor pin 3 (BLK, via T14F/12); engine coolant temperature sensor (rear of cylinder head) pin 1 |
| 48 | GRN/YEL | 5 V sensor supply | Intake manifold runner position sensor pin 1 (via T14F/5); low fuel pressure sensor pin 1 |
| 49 | BLK/WHT | Fuel pressure signal | Fuel pressure sensor pin 2 (via T14F/7) |
| 50 | GRN/BLK | Low fuel pressure signal | Low fuel pressure sensor pin 3 |
| 51 | WHT | Intake air temperature | Intake air temperature sensor pin 2 |
| 52 | GRN/BLU | Intake air temperature | Intake air temperature sensor pin 4 |
| 53 | VIO/RED | Intake manifold runner valve | Intake manifold runner control valve pin 2 |
| 54 | GRN/WHT | Throttle | Throttle valve control module pin 2 (sensor 1) |
| 55 | BLU/GRN | Throttle | Throttle valve control module pin 1 (sensor 1) |
| 56 | VIO/BRN | Throttle | Throttle valve control module pin 6 (sensor 1) |
| 57 | BLU | Ignition coil 3 | Ignition coil 3 pin 2 |
| 58 | WHT/BLU | Cam adjustment actuator 4 | Cam adjustment actuator 4 pin 1 |
| 59 | WHT/VIO | Cam adjustment actuator 3 | Cam adjustment actuator 3 pin 1 |
| 60 | VIO/RED | Secondary air pump relay control | Secondary air injection pump relay coil, terminal 2 (fuse panel B terminal 52, via T14/12) |
| 62 | VIO/YEL | Ignition coil 4 | Ignition coil 4 pin 2 |
| 64 | BRN/YEL | Injector 1 | Fuel injector cylinder 1 pin 1 |
| 65 | BRN/GRN | Injector 4 | Fuel injector cylinder 4 pin 1 |
| 66 | BLK/VIO | Turbo recirculation valve | Turbocharger recirculation valve pin 2 |
| 70 | YEL/GRY | Engine speed signal | Engine speed sensor pin 2 |
| 72 | BLK/GRN | Reduced oil pressure switch | Reduced oil pressure switch pin 1 |
| 73 | WHT/GRY | Level 3 oil pressure switch | Level 3 oil pressure switch pin 1 (via T14F/14) |
| 74 | BLK | Oil pressure switch | Oil pressure switch pin 1 |
| 76 | VIO/GRN | Ignition coil 1 | Ignition coil 1 pin 2 |
| 79 | VIO/BLU | Ignition coil 2 | Ignition coil 2 pin 2 |
| 80 | YEL/VIO | Engine temperature control actuator | Engine temperature control actuator pin 2 |
| 83 | GRY/YEL | Oil level thermal sensor | Oil level thermal sensor pin 3 (via T6A/6, T14/14) |
| 84 | BLU/RED | After-run coolant pump | After-run coolant pump pin 3 |
| 85 | RED/YEL | Injector 1 | Fuel injector cylinder 1 pin 2 |
| 86 | BRN/WHT | Engine temperature control actuator | Engine temperature control actuator pin 4 |
| 87 | BLU/WHT | Engine temperature control actuator | Engine temperature control actuator pin 5 |
| 88 | BRN/VIO | Charge air pressure actuator position | Charge air pressure actuator position sensor pin 2 |
| 89 | RED/VIO | Charge air pressure actuator position | Charge air pressure actuator position sensor pin 6 |
| 90 | BRN/RED | Throttle drive | Throttle valve control module pin 3 (throttle drive) |
| 91 | BLK/YEL | Throttle drive | Throttle valve control module pin 5 (throttle drive) |
| 92 | BLK/RED | Fuel metering valve | Fuel metering valve pin 2 |
| 93 | YEL/BLK | Fuel metering valve | Fuel metering valve pin 1 |
| 94 | WHT/GRY | Cam adjustment actuator 6 | Cam adjustment actuator 6 pin 1 |
| 95 | WHT/BLK | Cam adjustment actuator 8 | Cam adjustment actuator 8 pin 1 |
| 96 | WHT/BRN | Cam adjustment actuator 7 | Cam adjustment actuator 7 pin 1 |
| 97 | GRY/RED | Knock sensor | Knock sensor 1 pin 2 |
| 98 | GRY/WHT | Knock sensor | Knock sensor 1 pin 1 |
| 101 | WHT/RED | Cam adjustment actuator 2 | Cam adjustment actuator 2 pin 1 |
| 104 | RED/YEL | Exhaust cam adjustment valve | Exhaust camshaft adjustment valve 1 pin 2 |
| 105 | RED/GRY | Intake cam adjustment valve | Camshaft adjustment valve 1 pin 2 |

Component locations (pages 4–7): fuel injectors — below intake manifold, in cylinders 1–4; throttle valve control module — on throttle body; turbocharger recirculation valve — on turbocharger; intake manifold runner control valve — rear of intake manifold; oil pressure regulation valve — bottom left front of engine block; piston cooling nozzle control valve — left front of engine block; fuel metering valve — on high pressure fuel pump; secondary air injection solenoid valve — rear of exhaust manifold; engine speed sensor — left side of transmission bell housing; fuel pressure sensor — middle of fuel rail; intake air temperature sensor — top middle of intake manifold; low fuel pressure sensor — middle of fuel rail; intake manifold runner position sensor — front of intake manifold; camshaft position sensor — left rear side of cylinder head; secondary air injection sensor 1 — rear of exhaust manifold; engine temperature control actuator — under coolant pump; coolant shut-off valve — center rear of engine; transmission coolant valve — top of transmission; oil pressure switch — on oil filter bracket; level 3 oil pressure switch — left rear side of engine block; reduced oil pressure switch — on oil filter bracket; knock sensor 1 — center left side of engine block; exhaust camshaft adjustment valve 1 — right front of cylinder head; camshaft adjustment valve 1 — left front of cylinder head; after-run coolant pump — right rear side of engine; engine coolant temperature sensor — rear of cylinder head; cam adjustment actuators 1–8 — top right side of cylinder head; oil level thermal sensor — bottom of oil pan; EVAP canister purge regulator valve 1 — top front of engine; ignition coils 1–4 w/ power output stage — top of cylinder head above cylinders 1–4.

Other actuator/coil pins: ignition coil pin 4 (RED) is fed from the engine component power supply relay (terminal 115 RED), pin 3 (BRN) goes to G671, pin 1 (BLK) to G18. Cam adjustment actuator pin 2 (BLK) is a common supply from the RED/GRN feed via T14/4. The second pins of the coolant valves, oil pressure regulation valve, turbocharger recirculation valve, intake manifold runner control valve and piston cooling nozzle valve share a YEL/BLK supply from fuse 4 (via T14/8).

## Power supply / relays (page 1, 3)

Electronics box (fuse panel B), left side of engine compartment:

- **Motronic engine control module power supply relay** — terminal 30 hot at all times; coil terminal 86 hot at all times, terminal 85 → fuse panel B terminal 42 → T91/7. Contact 87 feeds fuses 3 (15 A, → T91/5,6), 9 (10 A), 5 (10 A), 10 (15 A), 8 (10 A, O2 sensor heaters), 6 (5 A), 4 (10 A, YEL/BLK valve supply) and 7 (7.5 A).
- **Fuse 17** (7.5 A) hot at all times → 17A/41 BLK/VIO → T91/86.
- **Engine component power supply relay** (page 3) — terminals 111/113 from fuse 16 (20 A, hot at all times); coil terminal 85 → terminal 112 GRY/BLK → T91/8; contact 87 → terminal 115 RED → T14/5 (ignition coil supply etc.).
- **Secondary air injection pump relay** (page 2) — coil terminal 1 hot at all times, terminal 2 → 52 → T14/12 VIO/RED → T105/60; contact feeds the secondary air injection pump motor through fuse 11 (40 A).

Fuse panel C (lower left side of dash): fuse 20 (7.5 A, hot at all times) and fuse 34 (7.5 A, hot w/ terminal 15 power supply relay energized) feed the structure-borne sound control module, not the ECM.

Grounds: T91/1,2 → G671 (on left front long member); G50/G51 (luggage compartment) for the exhaust door control units; G18 for ignition coil pin 1.
