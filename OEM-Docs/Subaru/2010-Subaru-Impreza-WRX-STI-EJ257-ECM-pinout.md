# 2010 Subaru Impreza WRX STI F4-2.5L DOHC Turbo (EJ257) — ECM pinout

Transcribed from [2010 Subaru Impreza WRX STI.pdf](2010%20Subaru%20Impreza%20WRX%20STI.pdf) (ALLDATA "Engine Controls" wiring diagram, sheets 327011–327015 = PDF pages 2–6; page 1 is a title page).

Engine control module (ECM), located right side of dash. The diagram is a combined WRX / WRX STI sheet: where a component or wire color differs between the two, the sheet marks it "(WRX)" / "(WRX STI)" or "(OR color)"; those alternatives are kept below.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| B136 | 35 | Vehicle harness: relays, O2 heaters, purge/drain valves, MIL, body systems (A/C, cooling fans, anti-theft, CAN) |
| B135 | 35 | Vehicle harness: accelerator pedal, MAF/IAT, fuel tank pressure, O2 sensor signals, fuel pump module, cruise |
| B137 | 31 | Engine harness: grounds, throttle motor, injectors, ignition coils, tumble generator valves, AVCS solenoids |
| B134 | 34 | Engine harness: crank/cam/knock/MAP/ECT sensors, TPS, TGV position, sensor supply/ground |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink; "NCA" = no color assigned, used for shield drains). The Subaru diagram prints no function names at the ECM pins, so the "Function" column is inferred from the component each wire reaches. Where an inline connector "((" changes the wire color between the ECM and the component, the ECM-side color is in the Wire column and the engine-harness color is given in "Connects to". Unlisted pins are not connected in this diagram.

## B136 — vehicle harness connector (35-pin)

| Pin | Wire | Function (inferred) | Connects to |
|-----|------|---------------------|-------------|
| 1 | BLU/RED | ETC relay power | Electronic throttle control relay pin 30 (contact output), right fuse & relay box |
| 2 | WHT/RED | Front A/F sensor heater | Spliced with pin 3; front oxygen (A/F) sensor pin 2 WHT/RED (or WHT) |
| 3 | WHT/RED | Front A/F sensor heater | Spliced with pin 2; front oxygen (A/F) sensor pin 2 WHT/RED (or WHT) |
| 4 | RED/WHT | Rear O2 sensor heater | Becomes WHT/BLK; rear oxygen sensor pin 1 WHT/BLK (rear of transmission) |
| 6 | BLK/BLU | Ground | J/C B122 (right side of dash), ground junction |
| 7 | VIO | Purge valve 2 | Purge control solenoid valve 2 pin 2 (YEL/BLU or GRN/WHT), on intake manifold |
| 8 | RED/GRN | Secondary air pump relay | Main fuse box (M/B) pin 4 RED/GRN; secondary air pump relay coil pin 13 RED/GRN enters the M/B at pin 8 (F37) |
| 9 | BLU/ORG | A/C | Air conditioning system |
| 11 | LT GRN/BLK | MIL | Combination meter pin 38 LT GRN/BLK (malfunction indicator light) |
| 12 | GRN | Fuel pump control | Fuel pump control module pin 8 GRN |
| 15 | BLK/BLU | Ground | GE engine ground (turbo: top left of engine; HO turbo: top right side of engine) |
| 16 | VIO/RED | Diagnostic line | Multi J/C B442 pin 2, bridged to B440 pin 2, to data link connector pin 7 VIO/RED (left side of dash) |
| 17 | LT GRN/BLK | Drain valve | Drain valve pin 2 LT GRN/BLK (under left rear of vehicle) |
| 18 | RED/BLU | Cooling fans | Cooling fans system |
| 20 | BLK/BLU | Starting/charging | Starting/charging system |
| 21 | RED/BLU | ETC relay control | Electronic throttle control relay pin 32 (coil) |
| 22 | GRY/RED | Meter signal | Combination meter pin 32 GRY/RED |
| 23 | LT GRN | Main relay control | Main relay pin 24 LT GRN and A/F & oxygen sensor relay pin 12 LT GRN (coils), right fuse & relay box |
| 24 | PNK | A/C | Air conditioning system |
| 25 | GRN/YEL (or RED/YEL) | Starting/charging | Starting/charging system |
| 26 | WHT/BLU | Immobilizer | Anti-theft system |
| 27 | RED | Data line | Computer data lines system |
| 28 | RED | Pressure control valve | Pressure control solenoid valve pin 2 RED (under center of vehicle) |
| 29 | BLK/RED | Cooling fans | Cooling fans system |
| 31 | GRN/BLK (or WHT/RED) | Starting/charging | Starting/charging system |
| 32 | BLU/WHT (or WHT/BLK) | Starting/charging | Starting/charging system |
| 33 | YEL/BLK | A/C | Air conditioning system |
| 34 | BLK/RED | Immobilizer | Anti-theft system |
| 35 | BLU | Data line | Computer data lines system |

## B135 — vehicle harness connector (35-pin)

| Pin | Wire | Function (inferred) | Connects to |
|-----|------|---------------------|-------------|
| 1 | RED/BLK | O2 sensor shield ground | J/C B138 (right side of dash); shields (NCA) of front A/F and rear O2 sensor cables |
| 2 | YEL/BLK | Main relay power | YEL/BLK bus from main relay pin 22 / ETC relay pin 31 (also feeds MAF pin 3) |
| 4 | WHT | Rear O2 sensor signal | Spliced with pin 5; rear oxygen sensor pin 3 WHT |
| 5 | WHT | Rear O2 sensor signal | Spliced with pin 4; rear oxygen sensor pin 3 WHT |
| 8 | BLK | Front A/F sensor | Front oxygen (A/F) sensor pin 3 BLK (or BLU), front of front catalytic converter |
| 9 | WHT | Front A/F sensor | Front oxygen (A/F) sensor pin 4 WHT (or GRN) (WRX: pin 1) |
| 12 | WHT | Cruise | Cruise control system |
| 14 | RED | Secondary air valve relay | Main fuse box (M/B) pin 12 RED (secondary air combination valve relay circuit) |
| 15 | RED/BLK | Secondary air valve relay | Main fuse box (M/B) pin 2 RED/BLK (secondary air combination valve relay circuit) |
| 17 | WHT/BLK | Fuel temperature sensor | Fuel pump assembly pin 2 WHT/BLK (fuel temp sensor, top of fuel tank) |
| 18 | YEL/BLU | MAF/IAT | Mass air flow & intake air temperature sensor pin 1 YEL/BLU (right side of engine compt) |
| 19 | GRN/RED | Ignition switch power | GRN/RED from fuse 12 (15 A, F/B, hot in ON or START) via B52 pin 24; same wire feeds ignition coils pin 3 and fuel pump relay pin 15 |
| 20 | YEL | Cruise | Cruise control system |
| 21 | GRN/BLK | Accelerator pedal | Accelerator pedal position sensor pin 4 GRN/BLK (left side of dash) |
| 22 | WHT/BLU | Sensor supply | Accelerator pedal position sensor pin 1 WHT/BLU; fuel tank pressure sensor pin 3 WHT/BLU (spliced) |
| 23 | WHT | Accelerator pedal | Accelerator pedal position sensor pin 6 WHT |
| 24 | YEL/BLU | Cruise | Cruise control system |
| 26 | BLU/RED | MAF signal (shielded) | Mass air flow & IAT sensor pin 5 BLU/RED |
| 27 | PNK | Test mode | Delivery (test mode) connector B75 pin 1 (BLU), right side of dash |
| 28 | LT GRN | Cruise | Cruise control system |
| 29 | BLU | Accelerator pedal | Accelerator pedal position sensor pin 5 BLU |
| 30 | YEL/GRN | Sensor ground | J/C B83 (right side of dash) sensor-ground junction: fuel tank pressure sensor pin 2, MAF pin 2, rear O2 sensor pin 4, fuel temp sensor (fuel pump pin 3), accelerator pedal pin 2 |
| 31 | ORG | Accelerator pedal | Accelerator pedal position sensor pin 3 ORG |
| 32 | BRN | Fuel tank pressure sensor | Fuel tank pressure sensor pin 1 BRN (top of fuel tank) |
| 33 | LT GRN/RED | Fuel pump control | Fuel pump control module pin 9 LT GRN/RED |
| 34 | BLK/GRN | MAF/IAT | Mass air flow & IAT sensor pin 4 BLK/GRN |
| 35 | NCA | Shield | Shield drain of the pin 26 (MAF signal) cable |

## B137 — engine harness connector (31-pin)

| Pin | Wire | Function (inferred) | Connects to |
|-----|------|---------------------|-------------|
| 1 | BLK/WHT | Ground | GE engine ground (harness BLK or BLK/YEL) |
| 2 | BLK/RED | Ground | GE engine ground (harness BLK or BLK/YEL) |
| 3 | RED | Ground | GE engine ground (harness BLK); printed "(WRX) RED" |
| 4 | WHT/BLK | Throttle motor | Electronic throttle control pin 1 (BLK or WHT), at throttle body |
| 5 | GRN/YEL | Throttle motor | Electronic throttle control pin 2 (WHT or BLK) |
| 6 | BLK/BLU | Ignition coil common | BLK/BLU bus to ignition coils 1-4 pin 2 (BLU/WHT) and leak diagnosis connector pin 1 BLU/WHT |
| 7 | BLK/YEL | Ground | GE engine ground (harness BLK/RED or BLK/YEL) |
| 8 | PNK | Injector 1 | Fuel injector 1 pin 1 (WHT or GRN/WHT), right front of engine |
| 9 | PNK/BLU | Injector 2 | Fuel injector 2 pin 1 (BLK/YEL or BLU/WHT), left front of engine |
| 10 | PNK/BLK | Injector 3 | Fuel injector 3 pin 1 (BLK/RED or WHT), right rear of engine |
| 11 | PNK/GRN | Injector 4 | Fuel injector 4 pin 1 (BLK/BLU or BRN/RED), left rear of engine |
| 12 | RED/GRN | Left TGV motor | Left tumble generator valve assembly pin 5 (PNK/BLU or BLU), left rear of engine |
| 13 | RED/YEL | Left TGV motor | Left tumble generator valve assembly pin 4 YEL/BLU |
| 14 | GRN | Left intake AVCS | Left intake oil flow control solenoid valve pin 2 YEL/BLK (left front of engine) |
| 15 | GRN/BLU | Left intake AVCS | Left intake oil flow control solenoid valve pin 1 BLU/BLK |
| 16 | GRN/RED | Right intake AVCS | Right intake oil flow control solenoid valve pin 2 WHT/BLK (right front of engine) |
| 17 | GRN/WHT | Right intake AVCS | Right intake oil flow control solenoid valve pin 1 GRN/BLK |
| 18 | WHT/RED | Ignition coil 1 | Ignition coil 1 pin 1 (BLU/YEL or GRN/YEL), right front of engine |
| 19 | YEL/GRN | Ignition coil 2 | Ignition coil 2 pin 1 (GRN/YEL or BLU/YEL), left front of engine |
| 20 | WHT/GRN | Ignition coil 3 | Ignition coil 3 pin 1 BRN/YEL, right rear of engine |
| 21 | WHT/BLU | Ignition coil 4 | Ignition coil 4 pin 1 YEL, left rear of engine |
| 22 | RED/BLK | Right TGV motor | Right tumble generator valve assembly pin 5 WHT/BLU, right rear of engine |
| 23 | RED/BLU | Right TGV motor | Right tumble generator valve assembly pin 4 (RED/BLU or PNK/BLU) |
| 24 | BLU/BLK | Right exhaust AVCS (WRX STI) | Right exhaust oil flow control solenoid valve pin 2 BRN/YEL (right front of engine) |
| 25 | RED/WHT | Right exhaust AVCS (WRX STI) | Right exhaust oil flow control solenoid valve pin 1 GRY |
| 26 | BLK/BLU | Ignition coil common | Same BLK/BLU bus as pin 6 (coils pin 2, leak diagnosis connector pin 1) |
| 27 | YEL/RED | Wastegate solenoid | Wastegate control solenoid pin 2 (BLU/WHT, via YEL/RED), right rear of engine |
| 29 | RED/GRN | Purge valve 1 | Purge control solenoid valve 1 pin 2 (YEL/GRN or WHT), on intake manifold |
| 30 | BLU/RED | Left exhaust AVCS (WRX STI) | Left exhaust oil flow control solenoid valve pin 2 BRN/YEL (left front of engine) |
| 31 | BLU/WHT | Left exhaust AVCS (WRX STI) | Left exhaust oil flow control solenoid valve pin 1 GRY |

Injectors pin 2 (RED or BLK/WHT), purge control solenoid valves pin 1, wastegate control solenoid pin 1, and camshaft position sensors pin 1 share one RED (or BLK/WHT) supply bus fed from the main relay YEL/BLK output through an inline connector. Ignition coils pin 3 (BRN/WHT or RED) are fed by the GRN/RED fuse 12 wire.

## B134 — engine harness connector (34-pin)

| Pin | Wire | Function (inferred) | Connects to |
|-----|------|---------------------|-------------|
| 5 | BLK/BLU | Ground | GE engine ground |
| 6 | YEL/WHT | MAP signal | Manifold absolute pressure sensor pin 1 ORG (top rear of engine) |
| 7 | YEL/BLK | Main relay power | YEL/BLK bus from main relay pin 22 (via main fuse box pins 9/10 and 20) |
| 11 | GRN/ORG | Camshaft position | Harness GRN/ORG: except WRX STI, right camshaft position sensor pin 2 (GRN/WHT); WRX STI, right intake camshaft position sensor pin 2 (GRN/RED), right rear of engine |
| 12 | YEL/BLK | Right exhaust cam position (WRX STI) | Right exhaust cam position sensor pin 2 GRN/BLK (right front of engine) |
| 13 | WHT | Crank sensor | Crankshaft position sensor pin 1 (WHT or BLU), lower front of engine |
| 14 | BLK | Crank sensor | Crankshaft position sensor pin 2 (WHT/RED or GRN) |
| 15 | WHT | Knock signal (shielded) | Knock sensor pin 1 (BLU or WHT), rear of engine |
| 16 | WHT/BLU | Left TGV position | Left tumble generator valve assembly pin 1 YEL/RED |
| 18 | WHT | Throttle position (shielded) | Electronic throttle control pin 6 (GRN or WHT/RED); cable shield drains to J/C B122 (right side of dash) |
| 19 | BRN/WHT | Sensor supply | BLK/BLU (or RED) bus: MAP sensor pin 3, throttle control pin 5, left/right TGV pin 3, secondary air combination valve pin 1 |
| 21 | GRN/WHT | Camshaft position | Harness GRN/WHT: except WRX STI, left camshaft position sensor pin 2 (GRN/RED); WRX STI, left intake camshaft position sensor pin 2 (GRN/YEL), left rear of engine |
| 22 | YEL/BLK | Cam sensor common | Camshaft position sensors pin 3 (except WRX STI: YEL on both sensors; WRX STI: WHT/BLU on all four sensors) |
| 24 | NCA | Shield | Crankshaft position sensor cable shield |
| 25 | NCA | Shield | Knock sensor cable shield |
| 26 | WHT/RED | Right TGV position | Right tumble generator valve assembly pin 1 WHT/RED |
| 27 | BLU/WHT | Secondary air combination valve | Secondary air combination valve pin 2 (WHT or RED/YEL) (WRX: right, right rear of engine; WRX STI: left, left rear of engine) |
| 28 | BLU | Throttle position | Electronic throttle control pin 4 BLU |
| 29 | YEL/GRN | Sensor ground | BLK/YEL (or BLK/BLU) bus: throttle control pin 3, left/right TGV pin 2, secondary air combination valve pin 3, engine coolant temperature sensor pin 1, knock sensor pin 2, MAP sensor pin 2 |
| 30 | YEL/RED | Leak diagnosis | Leak diagnosis connector pin 2 (BLU or BLU/RED), right rear of engine |
| 31 | BRN/YEL | Left exhaust cam position (WRX STI) | Left exhaust cam position sensor pin 2 GRN/WHT (left front of engine) |
| 33 | PNK/BLK | Power steering switch | Power steering oil pressure switch (WHT/GRN or RED/YEL), right front of engine; switch grounds to engine |
| 34 | BRN/WHT | Coolant temperature | Engine coolant temperature sensor pin 2 GRY (top left front of engine) |

Component locations (pages 5, 6): ignition coils 1/2/3/4 at right front / left front / right rear / left rear of engine; injectors 1/2/3/4 at right front / left front / right rear / left rear; crankshaft position sensor at lower front of engine; knock sensor at rear of engine; MAP sensor at top rear of engine; ECT sensor at top left front of engine; intake OFC (AVCS) solenoids at right/left front of engine, exhaust OFC solenoids (WRX STI only) at right/left front; tumble generator valve assemblies at left/right rear of engine; electronic throttle control at throttle body; purge control solenoid valves 1 and 2 on intake manifold; wastegate control solenoid at right rear of engine; leak diagnosis connector at right rear of engine.

## Fuel pump control module (page 3)

Located sedan: right rear of trunk; wagon: right rear quarter panel. The ECM does not drive the fuel pump directly.

| Pin | Wire | Connects to |
|-----|------|-------------|
| 5 | BLK | Ground GB-7 (near right "C" pillar) |
| 6 | GRN/RED | Fuel pump motor pin 6 GRN/RED |
| 7 | GRN/YEL | Fuel pump motor pin 5 GRN/YEL |
| 8 | GRN | ECM B136 pin 12 |
| 9 | LT GRN/RED | ECM B135 pin 33 |
| 10 | RED/BLK | Fuel pump relay pin 14 RED/BLK |

## Power supply / relays (pages 2–4)

Main fuse box (M/B), left rear of engine compartment, all hot at all times:

- **Fuse 13 (7.5 A)** — B186 pin 5 WHT: data link connector pin 16 (WHT)
- **Fuse SBF-7 (30 A)** — B186 pin 6 WHT/BLU: electronic throttle control relay pin 29; B145 pin 5 WHT/RED: right F/B fuse (pin 3 in / pin 4 WHT/BLU out) feeding main relay pins 23/21 and A/F & oxygen sensor relay pin 11
- **Fuse SBF-5 (30 A)** — B145 pin 1 WHT/YEL: right F/B fuse (pin 1 in / pin 2 WHT/RED out) feeding A/F & oxygen sensor relay pin 9
- **Fuse 11 (15 A)** — B186 pin 3 WHT/GRN: fuel pump relay pin 13

Fuse & relay box (F/B), right side of dash: fuse 12 (15 A, hot in ON or START) — B52 pin 24 GRN/RED to ECM B135 pin 19, ignition coils pin 3 and fuel pump relay pin 15; fuse 5 (15 A, hot in ON or START) — I5 pin 20 BRN/WHT to combination meter pin 2; fuse 7 (15 A, hot at all times) — R168 pin 11 WHT/BLU to combination meter pin 1. Two 15 A fuses in the same box are the ones fed by SBF-7 / SBF-5 above.

Relays (right fuse & relay box):

- **Electronic throttle control relay** — 29 WHT/BLU (SBF-7) -> 30 BLU/RED (ECM B136-1); coil 31 YEL/BLK (main relay output), 32 RED/BLU (ECM B136-21)
- **Main relay** — 21/23 WHT/BLU (F/B fuse) -> 22 YEL/BLK (switched supply to ECM B135-2, B134-7, ETC relay 31, MAF pin 3, drain valve pin 1, pressure control solenoid pin 1, secondary air relays and, via an inline connector, the RED engine supply bus); coil 23 WHT/BLU, 24 LT GRN (ECM B136-23)
- **A/F & oxygen sensor relay** — 9 WHT/RED (F/B fuse) -> 10 WHT/BLK (front A/F sensor pin 1 and rear O2 sensor pin 2 heater supply); coil 11 WHT/BLU, 12 LT GRN (ECM B136-23)
- **Fuel pump relay** — 13 WHT/GRN (fuse 11) -> 14 RED/BLK (fuel pump control module pin 10); coil 15 GRN/RED (fuse 12), 16 BLK to ground GB-3 (right end of dash)

Secondary air system (page 4): secondary air combination valve relays 1 and 2 and the secondary air pump relay (with 10 A and 60 A fuses in the relay holder, left rear of engine compartment) are wired through the main fuse box (M/B) connectors B143/B144/F37; ECM B135-14, B135-15 and B136-8 reach them through M/B pins 12, 2 and 4 respectively. Secondary air pump (left front of engine compartment) pin 2 WHT from pump relay pin 11, pin 1 BLK to ground GP.

Grounds: GE — engine (turbo: top left of engine; HO turbo: top right side of engine); GB-3 — right end of dash; GB-7 — near right "C" pillar; GB-11 — HO turbo: under center console (combination meter via J/C I97); GP — secondary air pump; J/C B122 (right side of dash) — ground junction for ECM B136-6, data link connector pins 4/5, delivery (test mode) connector B76 and the throttle position cable shield.
