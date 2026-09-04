# 2017 Subaru WRX STI F4-2.5L DOHC Turbo (EJ257) — ECM pinout

Transcribed from [2017 Subaru WRX STI.pdf](2017%20Subaru%20WRX%20STI.pdf) (ALLDATA "Engine Controls" wiring diagram, pages 1–7, sheets 572709–572809).

Engine control module (ECM), located right side of engine compartment. The engine-side harness connectors B137 and B134 go through the engine/body harness connector B21/E2 (pin numbers of B21 are given in the "Connects to" column; the wire color usually changes at B21). B136 and B135 are the body-side connectors.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| B137 | 31 | Engine harness: crank/cam sensors, knock, MAP, ECT, purge valves, PS switch, tumble valve position, secondary air valve |
| B134 | 34 | Engine harness: injectors, ignition coils, oil flow control valves (AVCS), electronic throttle, tumble generator valves, wastegate, 5 V / sensor ground |
| B136 | 35 | Body harness: main relay power, ignition power, MAF, A/F and rear O2 sensors, CAN, cruise, keyless, fuel pump control unit |
| B135 | 35 | Body harness: accelerator pedal, relay controls (main, ETC, A/F, secondary air, cooling fan), leak check valve, starting, A/C, anti-theft |

Wire colors are abbreviated as in the source (BLK black, WHT white, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, VIO violet, GRY grey, ORG orange, PNK pink, BRN brown). Unlisted pins are not connected in this diagram. Function names are not printed on this diagram; the "Function (as printed)" column gives the wire color as printed at the ECM and the destination as printed at the other end.

## B137 — engine harness connector (31-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK/WHT | GND | B21-34, then BLK/YEL to ground GE-3 (top right side of engine) |
| 2 | WHT | KNOCK SENSOR (shielded) | B21-4, then WHT to knock sensor pin 1 (WHT) |
| 3 | BLK/YEL | GND | Ground GE-3 (top right side of engine) |
| 6 | RED/GRN | PURGE CONTROL SOLENOID VALVE 1 | B21-11, then WHT to purge control solenoid valve 1 pin 2 |
| 7 | YEL/BLK | MAIN RELAY POWER | YEL/BLK main-relay output bus (main relay pin 10, main fuse box B143-10/F37-20, MAF sensor pin 3) |
| 8 | SHIELD | KNOCK SENSOR SHIELD | Shield of the pin 2 wire |
| 9 | BLU/WHT | LEFT SECONDARY AIR COMBINATION VALVE | B21-1, then RED/YEL to left secondary air combination valve pin 2 |
| 10 | WHT/BLU | LEFT TUMBLE GENERATOR VALVE ACTUATOR | B21-27, then YEL/RED to left tumble generator valve actuator pin 1 |
| 11 | WHT/RED | RIGHT TUMBLE GENERATOR VALVE ACTUATOR | B21-16, then WHT/RED to right tumble generator valve actuator pin 1 |
| 12 | YEL/RED | LEAK DIAGNOSIS CONNECTOR 1 | B21-45, then BLU/RED to leak diagnosis connector 1 pin 2 (right rear of engine) |
| 15 | VIO | PURGE CONTROL SOLENOID VALVE 2 | B21-44, then GRN/WHT to purge control solenoid valve 2 pin 2 |
| 16 | GRN/WHT | LEFT INTAKE CAMSHAFT POSITION SENSOR | B21-13, then GRN/YEL to left intake camshaft position sensor pin 2 |
| 17 | WHT | CRANKSHAFT POSITION SENSOR (shielded) | B21-3, then BLU to crankshaft position sensor pin 1 |
| 20 | YEL/WHT | MANIFOLD ABSOLUTE PRESSURE SENSOR | B21-23, then ORG to manifold absolute pressure sensor pin 1 |
| 22 | BRN/WHT | ENGINE COOLANT TEMPERATURE SENSOR | B21-12, then GRY to engine coolant temperature sensor pin 2 |
| 23 | YEL/BLK | RIGHT EXHAUST CAMSHAFT POSITION SENSOR | B21-15, then GRN/BLK to right exhaust camshaft position sensor pin 2 |
| 24 | GRN/ORG | RIGHT INTAKE CAMSHAFT POSITION SENSOR | B21-2, then GRN/RED to right intake camshaft position sensor pin 2 |
| 25 | BLK | CRANKSHAFT POSITION SENSOR (shielded) | B21-14, then GRN to crankshaft position sensor pin 2 |
| 27 | LT GRN | LEAK CHECK VALVE VACUUM PUMP | Leak check valve assembly connector B97-19 (LT GRN), then GRY to vacuum pump pin 4 (page 7) |
| 28 | PNK/BLK | POWER STEERING OIL PRESSURE SWITCH | B21-18, then RED/YEL to power steering oil pressure switch pin 1 (on power steering pump) |
| 29 | BRN/YEL | LEFT EXHAUST CAMSHAFT POSITION SENSOR | B21-26, then GRN/WHT to left exhaust camshaft position sensor pin 2 |
| 30 | YEL/BLK | CAMSHAFT POSITION SENSOR SUPPLY | B21-5, then WHT/BLU to camshaft position sensors pin 3 (all four spliced together) |
| 31 | SHIELD | CRANKSHAFT POSITION SENSOR SHIELD | Shield of the pin 17/25 cable |

Camshaft position sensors (3-pin: 1 BLK, 2 signal, 3 WHT/BLU) and crankshaft position sensor (2-pin: 1 BLU, 2 GRN). Pin 1 (BLK) of all four camshaft sensors is spliced to the BLK/WHT bus that also feeds fuel injectors pin 1, purge control solenoid valve 1 pin 1 and wastegate control solenoid valve pin 1; that bus goes through E2/B21-48 to the YEL/BLK main relay output.

Component locations (pages 1–2): purge control solenoid valves 1 and 2 — right side of intake manifold; power steering oil pressure switch — on power steering pump; left intake cam sensor — top left front of left cylinder bank; left exhaust cam sensor — bottom right front of left cylinder bank; right intake cam sensor — top right front of right cylinder bank; right exhaust cam sensor — bottom left front of right cylinder bank; crankshaft position sensor — top front of engine; leak diagnosis connectors 1–4 — right rear of engine, 5–6 — left rear of engine.

## B134 — engine harness connector (34-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT/BLK | ELECTRONIC THROTTLE CONTROL | B21-39, then WHT to electronic throttle control pin 1 |
| 2 | GRN/YEL | ELECTRONIC THROTTLE CONTROL | B21-38, then BLK to electronic throttle control pin 2 |
| 3 | BLK/RED | GND | B21-35, then BLK/YEL to ground GE-3 (top right side of engine) |
| 4 | BLK/YEL | GND | B21, then BLK/YEL to ground GE-3 (top right side of engine) |
| 5 | BLU/WHT | LEFT EXHAUST OIL FLOW CONTROL SOLENOID VALVE | B21-42, then GRY to left exhaust oil flow control solenoid valve pin 1 |
| 6 | BLK/BLU | GND | B21-36, then BLK/YEL to ground GE-3 (top right side of engine) |
| 7 | RED/WHT | RIGHT EXHAUST OIL FLOW CONTROL SOLENOID VALVE | B21-7, then GRN/RED to right exhaust oil flow control solenoid valve pin 1 |
| 10 | PNK | FUEL INJECTOR 1 | B21-54, then GRN/WHT to fuel injector 1 pin 2 |
| 11 | PNK/BLU | FUEL INJECTOR 2 | B21-53, then BLU/WHT to fuel injector 2 pin 2 |
| 12 | PNK/BLK | FUEL INJECTOR 3 | B21-52, then WHT to fuel injector 3 pin 2 |
| 13 | PNK/GRN | FUEL INJECTOR 4 | B21-51, then BRN/RED to fuel injector 4 pin 2 |
| 14 | BLU/RED | LEFT EXHAUST OIL FLOW CONTROL SOLENOID VALVE | B21-43, then BLU/YEL to left exhaust oil flow control solenoid valve pin 2 |
| 15 | BLU/BLK | RIGHT EXHAUST OIL FLOW CONTROL SOLENOID VALVE | B21-17, then BRN/YEL to right exhaust oil flow control solenoid valve pin 2 |
| 16 | GRN | LEFT INTAKE OIL FLOW CONTROL SOLENOID VALVE | B21-33, then YEL/BLK to left intake oil flow control solenoid valve pin 2 |
| 17 | GRN/BLU | LEFT INTAKE OIL FLOW CONTROL SOLENOID VALVE | B21-32, then BLU/BLK to left intake oil flow control solenoid valve pin 1 |
| 18 | WHT | ELECTRONIC THROTTLE CONTROL (shielded) | B21-25, then WHT/RED to electronic throttle control pin 6 |
| 19 | BRN/WHT | SENSOR SUPPLY | B21-28, then RED bus to electronic throttle control pin 5, left/right tumble generator valve actuator pin 3, MAP sensor pin 3, left secondary air combination valve pin 1 |
| 21 | WHT/RED | IGNITION COIL 1 | B21-9, then GRN/YEL to ignition coil 1 pin 1 |
| 22 | YEL/GRN | IGNITION COIL 2 | B21-20, then BLU/YEL to ignition coil 2 pin 1 |
| 23 | RED/GRN | LEFT TUMBLE GENERATOR VALVE ACTUATOR | B21-29, then BLU to left tumble generator valve actuator pin 5 |
| 24 | RED/YEL | LEFT TUMBLE GENERATOR VALVE ACTUATOR | B21-30, then YEL/BLU to left tumble generator valve actuator pin 4 |
| 25 | RED/BLK | RIGHT TUMBLE GENERATOR VALVE ACTUATOR | B21-8, then WHT/BLU to right tumble generator valve actuator pin 5 |
| 26 | RED/BLU | RIGHT TUMBLE GENERATOR VALVE ACTUATOR | B21-19, then PNK/BLU to right tumble generator valve actuator pin 4 |
| 27 | GRN/RED | RIGHT INTAKE OIL FLOW CONTROL SOLENOID VALVE | B21-22, then WHT/BLK to right intake oil flow control solenoid valve pin 2 |
| 28 | BLU | ELECTRONIC THROTTLE CONTROL | B21-24, then WHT to electronic throttle control pin 4 |
| 29 | YEL/GRN | SENSOR GND | B21-6, then BLK/BLU bus to left/right tumble generator valve actuator pin 2, electronic throttle control pin 3, knock sensor pin 2, engine coolant temperature sensor pin 1, left secondary air combination valve pin 3, MAP sensor pin 2 |
| 31 | WHT/GRN | IGNITION COIL 3 | B21-31, then BRN/YEL to ignition coil 3 pin 1 |
| 32 | WHT/BLU | IGNITION COIL 4 | B21-10, then YEL to ignition coil 4 pin 1 |
| 33 | YEL/RED | WASTEGATE CONTROL SOLENOID VALVE | B21-50, then BLU/WHT to wastegate control solenoid valve pin 2 |
| 34 | GRN/WHT | RIGHT INTAKE OIL FLOW CONTROL SOLENOID VALVE | B21-21, then GRN/BLK to right intake oil flow control solenoid valve pin 1 |

A SHIELD wire (no pin number printed, drawn between pins 17 and 18) is the shield of the pin 18 cable; it goes through B21 and the body harness to J/C B122 (right rear of engine compartment).

Fuel injectors (2-pin): pin 1 BLK/WHT (supply bus), pin 2 to ECM. Ignition coils (3-pin): pin 1 to ECM, pin 2 ground GE-3 (coil 4 BLK/WHT, coil 3 BLK, coil 2 BLU/WHT, coil 1 BLK), pin 3 RED spliced together to the ignition-switched supply (same net as B136 pin 30, fuse 12). Electronic throttle control (6-pin): 1 WHT motor, 2 BLK motor, 3 BLK/BLU sensor ground, 4 WHT, 5 RED sensor supply, 6 WHT/RED. Tumble generator valve actuators (5-pin): 1 motor, 2 BLK/BLU ground, 3 RED supply, 4 and 5 position sensor.

Component locations (pages 1–3): fuel injectors 1 and 3 — top front / top rear of right cylinder bank, 2 and 4 — top front / top rear of left cylinder bank; ignition coil 1 — front of right cylinder bank, 2 — front of left cylinder bank, 3 — rear of right cylinder bank, 4 — rear of left cylinder bank; wastegate control solenoid valve — right rear of engine; left exhaust / left intake oil flow control solenoid valves — bottom front / upper front of left cylinder bank; right exhaust / right intake — bottom front / upper front of right cylinder bank; left / right tumble generator valve actuators — rear of left / right cylinder bank; electronic throttle control — at throttle body; knock sensor — under intake manifold, between cylinder banks; engine coolant temperature sensor — top front of engine; left secondary air combination valve — top of left cylinder bank; manifold absolute pressure sensor — top center of intake manifold. Shields of the ETC and knock sensor cables are grounded through a YEL/GRN wire to GE-3.

## B136 — body harness connector (35-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | YEL/BLK | MAIN RELAY POWER | YEL/BLK main-relay output bus (main relay pin 10, main fuse box B143-10/F37-20, MAF sensor pin 3) |
| 2 | WHT | COMPUTER DATA LINES SYSTEM | Computer data lines system |
| 3 | BRN/WHT | CRUISE CONTROL SYSTEM | Cruise control system |
| 4 | BLK/BLU | J/C B122 | J/C B122 (right rear of engine compt), joined there with the accelerator pedal sensor cable shield, the B134 pin 18 cable shield and the BLK/YEL wire from the delivery mode fuse; in the starting circuit this is also the neutral position switch input (see starting circuit file) |
| 5 | WHT/RED | FRONT OXYGEN (A/F) SENSOR | Spliced to pin 6 |
| 6 | WHT/RED | FRONT OXYGEN (A/F) SENSOR | Front oxygen (A/F) sensor pin 2 (WHT/RED) |
| 7 | YEL/BLK | AIR CONDITIONING SYSTEM | Air conditioning system |
| 9 | RED/BLK | J/C B1 (SHIELD GND) | J/C B1 (right center of dash), joined with the shields of the A/F sensor pin 4 wire and the rear oxygen sensor pin 3 wire |
| 10 | SHIELD | MAF SENSOR SHIELD | Shield of the pin 22 wire |
| 11 | BLK/GRN | MASS AIR FLOW & INTAKE AIR TEMPERATURE SENSOR | Mass air flow & intake air temperature sensor pin 4 (BLK/GRN) |
| 12 | GRY/WHT | CRUISE CONTROL SYSTEM | Cruise control system |
| 13 | WHT | CRUISE CONTROL SYSTEM | Cruise control system |
| 15 | YEL | CRUISE CONTROL SYSTEM | Cruise control system |
| 16 | WHT/GRN (OR BLK/WHT) | KEYLESS ACCESS / STARTING | W/ push button start: WHT/GRN through B575-21/B576, then PNK to keyless access control module B572-7 (left end of dash); w/o push button start: BLK/WHT to starting/charging system (starter signal, see starting circuit file) |
| 17 | RED | COMPUTER DATA LINES SYSTEM | Computer data lines system (CAN) |
| 18 | BLK | FRONT OXYGEN (A/F) SENSOR | Front oxygen (A/F) sensor pin 3 (BLK) |
| 19 | WHT | FRONT OXYGEN (A/F) SENSOR (shielded) | Front oxygen (A/F) sensor pin 4 (WHT) |
| 20 | WHT | REAR OXYGEN SENSOR (shielded) | Rear oxygen sensor pin 3 (WHT) through B19-3 |
| 22 | WHT | MASS AIR FLOW SENSOR (shielded) | Mass air flow & intake air temperature sensor pin 5 (WHT) |
| 27 | BLK/WHT | STARTING/CHARGING SYSTEM | Starting/charging system (starter signal w/ push button start, see starting circuit file) |
| 28 | BLU | COMPUTER DATA LINES SYSTEM | Computer data lines system (CAN) |
| 30 | GRN/RED | IGNITION POWER | Fuse 12 (15 A, fuse & relay box F/B, left end of dash, hot in ON or START) through B52-24; same net feeds ignition coils pin 3 (through E2/B21-49) and fuel pump relay pin 3 |
| 31 | YEL/BLU | MASS AIR FLOW & INTAKE AIR TEMPERATURE SENSOR | Mass air flow & intake air temperature sensor pin 1 (YEL/BLU) |
| 33 | GRN | FUEL PUMP CONTROL UNIT | Fuel pump control unit pin 8 (GRN) through B97-6 |
| 34 | PNK | DELIVERY MODE FUSE | Delivery mode fuse (relay holder F27, left side of engine compt) pin 8, through through-joint connector B360/F109; the other side of the fuse (pin 9 BLK/YEL) goes to J/C B122 and thus to B136 pin 4 |
| 35 | GRN/WHT | STARTING/CHARGING SYSTEM | Starting/charging system (neutral position switch 1, see starting circuit file) |

Mass air flow & intake air temperature sensor (5-pin, on air intake duct): 1 YEL/BLU, 2 YEL/RED (to J/C B83, see B135 pin 30), 3 YEL/BLK (main relay power), 4 BLK/GRN, 5 WHT. Rear oxygen sensor (rear of front catalytic converter, through connector B19/T5): 1 WHT/BLK, 2 YEL/RED heater (BLK/RED from A/F, oxygen sensor relay pin 22), 3 WHT, 4 BLU (YEL/RED to J/C B83). Front oxygen (A/F) sensor (front of front catalytic converter): 1 BLK/RED heater (A/F, oxygen sensor relay pin 22), 2 WHT/RED, 3 BLK, 4 WHT.

## B135 — body harness connector (35-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 4 | BRN/WHT | LEAK CHECK VALVE SWITCHING VALVE | Leak check valve assembly connector B97-18/R1 (BRN/WHT), then switching valve pin 1 |
| 6 | WHT | REAR OXYGEN SENSOR | Rear oxygen sensor pin 1 (WHT/BLK) through B19-1 |
| 7 | BLU/RED | ELECTRONIC THROTTLE CONTROL RELAY | Electronic throttle control relay pin 14 (relay holder 225, left end of dash) |
| 8 | RED/BLK | SECONDARY AIR COMBINATION VALVE RELAY 1 | Secondary air combination valve relay 1 pin 2 (relay holder F9), through main fuse box B143-2/F37-5 |
| 9 | RED/YEL | CRUISE CONTROL SYSTEM | Cruise control system |
| 10 | LT GRN/RED | FUEL PUMP CONTROL UNIT | Fuel pump control unit pin 9 (LT GRN/RED) through B97-7 |
| 11 | RED/GRN | COOLING FANS SYSTEM | Cooling fans system |
| 12 | BLK/RED | COOLING FANS SYSTEM | Cooling fans system |
| 13 | LT GRN | MAIN RELAY / A/F RELAY CONTROL | Main relay pin 13 (relay holder B220) and A/F, oxygen sensor relay pin 18 (relay holder 225) |
| 14 | VIO/RED | COMPUTER DATA LINES SYSTEM | Computer data lines system |
| 15 | RED/WHT | DOOR LOCKS & ANTI-THEFT SYSTEMS | Door locks & anti-theft systems |
| 17 | RED/BLU | ELECTRONIC THROTTLE CONTROL RELAY | Electronic throttle control relay pin 17 (relay holder 225) |
| 20 | RED | SECONDARY AIR COMBINATION VALVE RELAY 2 | Secondary air combination valve relay 2 pin 9 (relay holder F9), through main fuse box B143-12/F37-18 |
| 21 | GRN/BLK | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal position sensor pin 4 (GRN/BLK) |
| 22 | BLU/YEL | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal position sensor pin 1 (BLU/YEL); spliced to leak check valve assembly B97-20 (BLU/YEL), then WHT/BLU to pressure sensor pin 6 |
| 23 | WHT | ACCELERATOR PEDAL POSITION SENSOR (shielded) | Accelerator pedal position sensor pin 6 (WHT); shield to J/C B122 |
| 25 | WHT/BLU (OR RED/WHT) | ANTI-THEFT SYSTEMS | W/o push button start: WHT/BLU to anti-theft systems; w/ push button start: RED/WHT to door locks & anti-theft systems |
| 26 | BLK/RED | STARTING/CHARGING SYSTEM | Starting/charging system (starter relay 1 coil, see starting circuit file) |
| 27 | RED/GRN | SECONDARY AIR PUMP RELAY | Secondary air pump relay pin 13 (relay holder F9), through main fuse box B143-4/F37-8 |
| 29 | BLU | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal position sensor pin 5 (BLU) |
| 30 | YEL/WHT | J/C B83 | J/C B83 (right side of dash), joined there with MAF sensor pin 2 (YEL/RED), rear oxygen sensor pin 4 (YEL/RED), accelerator pedal position sensor pin 2 (GRN) and leak check valve pressure sensor pin 8 (GRN/ORG through B97-15, then YEL/GRN) |
| 31 | ORG | ACCELERATOR PEDAL POSITION SENSOR | Accelerator pedal position sensor pin 3 (ORG) |
| 32 | YEL/BLK | DOOR LOCKS & ANTI-THEFT SYSTEMS | Door locks & anti-theft systems |
| 34 | WHT/RED | STARTING/CHARGING SYSTEM | Starting/charging system (starter cut relay, w/ push button start, see starting circuit file) |
| 35 | BLU/ORG | AIR CONDITIONING SYSTEM | Air conditioning system |

Accelerator pedal position sensor (6-pin, top of accelerator pedal assembly): 1 BLU/YEL, 2 GRN, 3 ORG, 4 GRN/BLK, 5 BLU, 6 WHT. Leak check valve assembly (connector B97/R1): 17 YEL/BLK main relay power (to vacuum pump pin 3 and switching valve pin 5, YEL/BLU), 19 LT GRN (B137 pin 27), 16 BLU/ORG (pressure sensor pin 7), 15 GRN/ORG (pressure sensor pin 8), 20 BLU/YEL (pressure sensor pin 6), 18 BRN/WHT (switching valve pin 1).

## Fuel pump control (page 5)

The fuel pump is driven by the fuel pump control unit (right side of luggage compartment), not by the ECM directly.

Fuel pump relay (relay holder B220, right center of dash):

| Pin | Wire | Connects to |
|-----|------|-------------|
| 1 | RED/BLK | Fuel pump control unit pin 10 through B97-5/R1 |
| 2 | WHT/GRN | Fuse 11 (15 A, main fuse box M/B, hot at all times) through B186-3 |
| 3 | GRN/RED | Ignition power (fuse 12, same net as B136 pin 30) |
| 5 | BLK | Ground GB-6 (right end of dash) |

Fuel pump control unit: 5 BLK ground GB-12 (under right side of rear shelf), 6 GRN/RED and 7 GRN/YEL to fuel pump motor (pins 6 and 5 of the fuel pump assembly), 8 GRN to ECM B136-33, 9 LT GRN/RED to ECM B135-10, 10 RED/BLK from fuel pump relay pin 1. Fuel level sensor (pins 1 BLU, 4 BLK/RED) goes to the instrument cluster.

## Power supply / relays (pages 4–6)

Relay holder B220 (right center of dash) — **main relay**: pin 10 YEL/BLK output (to ECM B136-1 and B137-7, main fuse box F37-20/B143-10, MAF pin 3, ETC relay pin 16, leak check valve, and through E2/B21-48 the BLK/WHT engine bus for injectors, cam sensors, purge valve 1 and wastegate valve), pins 11 and 12 WHT (spliced; from fuse holder, lower left side of dash, 15 A fuse pin 16, fed by SBF 7 30 A through B145-5 WHT/RED), pin 13 LT GRN coil control from ECM B135-13.

Relay holder 225 (left end of dash):

- **A/F, oxygen sensor relay** — pin 18 LT GRN (ECM B135-13), pin 20 WHT (spliced with main relay pins 11/12), pin 21 RED (fuse holder 15 A pin 19, fed by SBF 5 30 A through B145-1 WHT/YEL), pin 22 BLK/RED to front A/F sensor heater pin 1 and rear oxygen sensor heater pin 2.
- **Electronic throttle control relay** — pin 14 BLU/RED to ECM B135-7, pin 15 BLU (fuse holder 15 A pin 18, fed by SBF 7 through B145-6 WHT/BLU), pin 16 YEL/BLK (main relay output), pin 17 RED/BLU from ECM B135-17.

Relay holder F9 (left side of engine compt): **secondary air pump relay** — 12 YEL/BLK, 13 RED/GRN (ECM B135-27), 14 WHT/BLK (fuse 60 A, hot at all times), 11 WHT to secondary air pump pin 2 (left front of engine compt; pin 1 BLK to ground GP); **secondary air combination valve relay 2** — 10 YEL/BLU, 9 RED (ECM B135-20), 7 WHT/BLK (fuse 10 A, hot at all times), 8 BLU to left secondary air combination valve pin 6 (BRN, through B21-46); **secondary air combination valve relay 1** — 1 YEL/BLU, 2 RED/BLK (ECM B135-8), 4 WHT/BLK (fuse 10 A), 3 RED to right secondary air combination valve pin 2 (BRN/RED, through B21-47; pin 1 WHT to ground GE-3). The YEL/BLU relay-coil supplies come from the main relay through main fuse box F37-13/B143-20.

Relay holder F27 (left side of engine compt): **delivery mode fuse** (N/A) — pin 9 BLK/YEL, pin 8 PNK (ECM B136-34).

Main fuse box (M/B, left side of engine compt) connectors F37/B143 are pass-through pairs: F37-17 RED / B143-13, F37-16 BLU / B143-14, F37-20 YEL/BLK / B143-10, F37-13 YEL/BLU / B143-20 YEL/BLK, F37-5 RED/BLK / B143-2, F37-18 RED / B143-12, F37-8 RED/GRN / B143-4. Fuse 2 (7.5 A, F/B, hot in ON or START) feeds the combination meter pin 20 through I5-7 BRN/WHT; combination meter ground GB-7 (under front of center console); oil pressure switch (near oil filter bracket) goes to the combination meter pin 3 through B21-37/B553/I231 GRN/ORG. ECM grounds GE-3 (top right side of engine). Combination meter CAN pins 33 RED / 32 BLU.
