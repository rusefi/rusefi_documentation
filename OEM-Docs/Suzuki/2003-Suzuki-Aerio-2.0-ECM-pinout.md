# 2003 Suzuki Aerio 2.0L — ECM pinout

Transcribed from [2003 Suzuki Aerio 2.0 ECU.pdf](2003%20Suzuki%20Aerio%202.0%20ECU.pdf), ALLDATA **Engine Controls**, Electrical — Interactive Color (Non OE), for the 2003 Suzuki Aerio L4-2.0L. The three wiring sheets are diagram IDs **177722, 177723, and 177724**, on PDF pages **2–4**; PDF page 1 is the introductory page.

The **Engine Control Module (ECM)** is behind the glove box. The drawing shows connectors **C46 (28 terminals)**, **C45 (26 terminals)**, and **G04 (35 terminals)**, a total of 89 numbered positions. C46 and C45 appear on sheet 1; G04 appears on sheet 3. Unlisted terminals are not connected **in this diagram**, which does not establish whether they are physically unused. The numbered lines at the sheet edges are continuation references, not additional ECM connectors.

Wire colours follow the source: BLK black, BLU blue, BRN brown, GRN green, GRY grey, LT GRN light green, ORG orange, PNK pink, PPL purple, RED red, WHT white, YEL yellow; NCA means no colour available. A slash separates base and tracer colours. The source also includes a separate **4A/T controller**, behind the left side of the dash, with connector G07.

The source prints component names, wire colours, and terminal numbers, but no module-terminal function labels. The **Function** column below describes the traced circuit; it does not invent factory signal names. Wire colours in the tables are those at the ECM; changes farther along a circuit are noted separately.

## C46 — 28 terminals (sheet 1)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | BLU/RED | Fuel injector 3 control | Injector 3, GRY/WHT at injector; component terminal numbers not printed |
| 2 | BLU/GRN | Fuel injector 4 control | Injector 4, GRY/YEL at injector; component terminal numbers not printed |
| 3 | GRY | EGR stepper motor control | EGR stepper motor pin 3, on rear of engine |
| 4 | WHT | Heated oxygen sensor 1 signal | Heated oxygen sensor 1 pin 2, left front corner of engine in exhaust system |
| 5 | BLK/YEL | Starting/charging circuit | Continuation labelled “STARTING/CHARGING SYSTEM”; individual function not printed |
| 6 | BLU/BLK | EVAP canister purge valve control | EVAP canister purge valve pin 1, at rear of engine near EGR stepper motor |
| 7 | BLK/WHT | Ignition-switched supply | Fuse 23 (15 A, hot in RUN or START); shared with ignition coils, oxygen-sensor heaters, and noise suppressor |
| 8 | BLU/WHT | Fuel injector 2 control | Injector 2, GRY/BLK at injector; component terminal numbers not printed |
| 9 | BLK | Ground | G4, on intake manifold; shared with C45-5 and ignition-coil grounds |
| 10 | YEL/RED | Camshaft position sensor circuit | Camshaft position sensor pin 4, upper rear of engine; individual signal designation not printed |
| 12 | LT GRN | Engine coolant temperature signal | Engine coolant temperature sensor pin 2, on upper rear of engine |
| 13 | GRY/WHT | EGR stepper motor control | EGR stepper motor pin 1 |
| 14 | BRN/WHT | EGR stepper motor control | EGR stepper motor pin 6 |
| 15 | GRY/YEL | EGR stepper motor control | EGR stepper motor pin 4 |
| 16 | LT GRN/BLK | Intake air temperature signal | Intake air temperature sensor pin 2, on air cleaner box |
| 17 | YEL | Power steering pressure switch | Power steering pump pressure switch, on power steering pump; switch closes to ground |
| 18 | GRY/RED | Sensor supply | MAP sensor pin 3, throttle position sensor pin 3, and fuel tank pressure sensor pin 3; voltage not printed |
| 19 | PNK/BLK | Heated oxygen sensor 1 heater control | Heated oxygen sensor 1 pin 3 |
| 20 | BLU/YEL | Fuel injector 1 control | Injector 1, GRY at injector; component terminal numbers not printed |
| 22 | BLU | Camshaft position sensor circuit | Camshaft position sensor pin 3; individual signal designation not printed |
| 24 | GRN | Airflow meter signal | Airflow meter pin 1, right front of engine |
| 25 | GRY/BLU | Throttle position signal | Throttle position sensor pin 2, on throttle body assembly |
| 27 | ORG | Sensor return | Shared engine sensor-return network; see sensor wiring below |
| 28 | GRN/RED | Idle air control valve control | Idle air control valve pin 1, on throttle body assembly |

## C45 — 26 terminals (sheet 1)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 4 | PNK | Ignition coil 3 control | Ignition coil 3 pin 2, on top of cylinder head |
| 5 | BLK | Ground | G4, on intake manifold; shared with C46-9 and ignition-coil grounds |
| 6 | PNK/BLU | Heated oxygen sensor 2 heater control | Heated oxygen sensor 2 pin 3, downstream of catalytic converter |
| 7 | LT GRN/RED | Manifold absolute pressure signal | MAP sensor pin 1, on intake manifold |
| 9 | BLK/RED | Crankshaft position sensor supply | Crankshaft position sensor pin 3; voltage not printed |
| 11 | WHT | Heated oxygen sensor 2 signal | Heated oxygen sensor 2 pin 2, downstream of catalytic converter |
| 13 | RED | Knock sensor signal | Knock sensor, right side of engine; component terminal number not printed |
| 15 | BLU/RED | Ignition coil 4 control | Ignition coil 4 pin 2, on top of cylinder head |
| 16 | GRN/YEL | Ignition coil 1 control | Ignition coil 1 pin 2, on top of cylinder head |
| 19 | BRN | Crankshaft position sensor signal | Crankshaft position sensor pin 2, right side of engine |
| 21 | BRN/YEL | A/C and transmission circuits | Continuation labelled “A/C, TRANSMISSIONS SYSTEMS”; individual function not printed |
| 25 | GRN/WHT | Ignition coil 2 control | Ignition coil 2 pin 2, on top of cylinder head |
| 26 | BLK/ORG | Ground / cable shields | G3, on intake manifold; shared with camshaft position sensor pin 1 and cable-shield network |

## G04 — 35 terminals (sheet 3)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | PPL/WHT | Transmission / cruise-control circuit | 4A/T controller G07 pin 6 and continuation to cruise control system; individual function not printed |
| 2 | LT GRN/BLK | Transmission / instrument-cluster circuit | 4A/T controller G07 pin 15 and continuation to instrument cluster system; individual function not printed |
| 3 | BRN | Cooling-fan circuit | Continuation labelled “COOLING FANS SYSTEM” |
| 4 | PPL/YEL | Check engine lamp | Instrument cluster connector G21; terminal number not printed |
| 5 | BLU/BLK | Air-conditioning circuit | Continuation labelled “A/C SYSTEM”; individual function not printed |
| 6 | WHT/BLK | Thermistor (OUT) circuit | Thermistor (OUT) pin 1, behind right side of dash |
| 7 | BLU/WHT | EVAP canister vent valve control | EVAP canister vent valve pin 1, on fuel tank |
| 8 | BLK/RED | Main-relay supply | Main relay output pin 3; shared with G04-23 and powered components |
| 10 | BRN/WHT | Main-relay control | Main relay coil pin 1, on relay box |
| 11 | GRY/BLK | Transmission-controller circuit | 4A/T controller G07 pin 7; individual function not printed |
| 12 | BRN/YEL | Fuel-pump relay control | Changes to GRY/BLU at an inline connection; fuel pump relay coil pin 1, on relay box |
| 13 | WHT/RED | Battery supply | Fuse 15 (15 A, hot at all times); shared with data link connector pin 16 |
| 14 | GRY/RED | Transmission-controller circuit | 4A/T controller G07 pin 28; individual function not printed |
| 15 | YEL/BLK | Defogger circuit | Continuation labelled “DEFOGGER SYSTEM”; individual function not printed |
| 17 | LT GRN/RED | Transmission-controller circuit | 4A/T controller G07 pin 18; individual function not printed |
| 18 | ORG | Sensor / thermistor return | Fuel tank pressure sensor pin 2, both dash thermistors pin 2, and an A/C system continuation |
| 19 | YEL | Fuel-level circuit | Changes to YEL/RED at an inline connection; fuel pump & gauge pin 1, in fuel tank; branch to instrument cluster system |
| 20 | YEL/WHT | Thermistor (IN) circuit | Thermistor (IN) pin 1, behind right side of dash; branch to A/C system |
| 21 | YEL/GRN | Instrument-cluster circuit | Continuation labelled “INSTRUMENT CLUSTER SYSTEM”; individual function not printed |
| 22 | LT GRN | Fuel tank pressure sensor circuit | Fuel tank pressure sensor pin 4, in fuel tank; individual terminal function not printed |
| 23 | BLK/RED | Main-relay supply | Shared BLK/RED network with G04-8 |
| 25 | BLU | Data link | Data link connector pin 7, right of steering column; protocol not printed |
| 27 | PPL | Vehicle speed | Vehicle speed sensor pin 1, on transaxle; branch to instrument cluster system |
| 28 | GRN/BLK | Air-conditioning circuit | Continuation labelled “A/C SYSTEM”; individual function not printed |
| 29 | BLU/ORG | Air-conditioning circuit | Continuation labelled “A/C SYSTEM”; individual function not printed |
| 31 | GRN/YEL | Transmission-controller circuit | 4A/T controller G07 pin 27; individual function not printed |
| 32 | BLU/YEL | Air-conditioning circuit | Continuation labelled “A/C SYSTEM”; individual function not printed |
| 33 | RED/YEL | Fuel tank pressure signal | Fuel tank pressure sensor pin 1 |
| 34 | GRN/RED | Cooling-fan circuit | Continuation labelled “COOLING FANS SYSTEM” |
| 35 | RED/WHT | Transmission circuit | Continuation labelled “TRANSMISSIONS SYSTEM”; individual function not printed |

## Power supply / relays

- **Main fuse 10 (15 A, hot at all times):** BLK/YEL feeds main relay pins 2 (coil supply) and 4 (contact supply). G04-10 BRN/WHT controls coil pin 1. Main relay output pin 3 BLK/RED supplies the main-relay network.
- **Main-relay network:** G04-8 and G04-23; fuel pump relay pins 2 and 3; camshaft position sensor pin 2; airflow meter pin 3; EGR stepper motor pins 2 and 5; idle air control valve pin 2; EVAP canister purge valve pin 2; EVAP canister vent valve pin 2; vehicle speed sensor pin 3; and all four injectors. Injector supply changes from BLK/RED to BLU/BLK at an inline connection. The same supply branches to exterior lights and cruise control system continuations.
- **Fuse 23 (15 A, hot in RUN or START):** BLK/WHT supplies C46-7, both heated oxygen sensors pin 4, all four ignition coils pin 3, and noise suppressor BLK/WHT lead.
- **Fuel pump relay:** coil pin 2 and contact pin 3 receive BLK/RED from the main relay. Coil pin 1 GRY/BLU connects to G04-12 BRN/YEL. Contact output pin 4 PNK feeds fuel pump & gauge pin 3; pump return is pin 4 BLK to G20, near right side of fuel tank.
- **Fuse 15 (15 A, hot at all times):** WHT/RED feeds G04-13 and data link connector pin 16.
- **Fuse 27 (10 A, hot in RUN):** BLK/RED feeds instrument cluster G20 pin 11 for the check engine lamp. The other side of the lamp connects through G21, PPL/YEL, to G04-4; no G21 terminal number is printed.

## Grounds and sensor wiring

- **G4 (on intake manifold):** C46-9 BLK, C45-5 BLK, all four ignition coils pin 1 BLK, and noise suppressor BLK lead.
- **G3 (on intake manifold):** C45-26 BLK/ORG, camshaft position sensor pin 1 BLK/ORG, vehicle speed sensor pin 2 BLK/ORG, fuel pump & gauge pin 2 BLK/ORG, and data link connector pin 5 BLK/ORG. The shield network includes the crankshaft sensor cable, knock sensor cable, and both oxygen-sensor signal cables; shield portions are labelled NCA. Crankshaft position sensor pin 1 NCA also joins this network.
- **G13 (left kick panel):** data link connector pin 4 BLK. **G20 (near right side of fuel tank):** fuel pump & gauge pin 4 BLK. These ground designations are distinct from similarly named instrument-cluster connectors.
- **Sensor supply:** C46-18 GRY/RED joins MAP sensor pin 3, throttle position sensor pin 3, and fuel tank pressure sensor pin 3. The source does not specify the voltage.
- **Sensor returns:** C46-27 ORG joins MAP sensor pin 2, throttle position sensor pin 1, airflow meter pin 2, ECT sensor pin 1, IAT sensor pin 1, and both oxygen sensors pin 1. A separate ORG network from G04-18 joins fuel tank pressure sensor pin 2, both dash thermistors pin 2, and an A/C system continuation. The source does not draw a junction between these two return networks or a direct chassis-ground connection for either.
- **Crankshaft position sensor:** pin 1 NCA to the grounded shield network, pin 2 BRN to C45-19, pin 3 BLK/RED to C45-9. **Camshaft position sensor:** pin 1 BLK/ORG to G3, pin 2 BLK/RED main-relay supply, pin 3 BLU to C46-22, pin 4 YEL/RED to C46-10. The source does not name the two camshaft-sensor signal circuits individually.
- **Heated oxygen sensor 1:** pin 1 ORG sensor return; pin 2 WHT to C46-4; pin 3 PNK/BLK to C46-19; pin 4 BLK/WHT from fuse 23. **Sensor 2:** pin 1 ORG sensor return; pin 2 WHT to C45-11; pin 3 PNK/BLU to C45-6; pin 4 BLK/WHT from fuse 23.
- **Fuel tank pressure sensor:** pin 1 RED/YEL to G04-33, pin 2 ORG return to G04-18, pin 3 GRY/RED sensor supply, pin 4 LT GRN to G04-22. The fourth terminal's function is not labelled.

## Ignition, injection, and auxiliary circuits

- **Ignition coils:** all four are on top of the cylinder head. Pin 1 BLK is ground, pin 3 BLK/WHT is fuse 23 power, and pin 2 is the control: coil 1 GRN/YEL from C45-16; coil 2 GRN/WHT from C45-25; coil 3 PNK from C45-4; coil 4 BLU/RED from C45-15. Outputs to the spark plugs are marked NCA.
- **EGR stepper motor:** pins 2 and 5 BLK/RED share main-relay power. Its four winding-control connections are pin 1 GRY/WHT to C46-13, pin 3 GRY to C46-3, pin 4 GRY/YEL to C46-15, and pin 6 BRN/WHT to C46-14.
- **Idle air control valve:** pin 1 GRN/RED to C46-28; pin 2 BLK/RED main-relay supply. **EVAP purge valve:** pin 1 BLU/BLK to C46-6; pin 2 BLK/RED main-relay supply. **EVAP vent valve:** pin 1 BLU/WHT to G04-7; pin 2 BLK/RED main-relay supply.
- **Fuel pump & gauge:** pin 1 YEL/RED is the level-gauge circuit to G04-19 (YEL at ECM) and the instrument cluster; pin 2 BLK/ORG is gauge ground to G3; pin 3 PNK is pump power from the fuel pump relay; pin 4 BLK is pump ground to G20.
- **Data link connector:** pin 16 WHT/RED from fuse 15, pin 7 BLU to G04-25, pin 4 BLK to G13, and pin 5 BLK/ORG to G3. No communication protocol is printed.
- **4A/T controller:** G07 pins 6, 15, 7, 28, 18, and 27 connect to ECM G04 pins 1, 2, 11, 14, 17, and 31 respectively. The source does not label the individual transmission-controller signals.
- **Dash thermistors:** both are behind the right side of the dash. Thermistor (IN) pin 1 YEL/WHT joins G04-20 and the A/C system; thermistor (OUT) pin 1 WHT/BLK goes to G04-6. Both pin 2 ORG connections join G04-18 and fuel tank pressure sensor pin 2.

## Source limitations

This is a non-OE system wiring diagram, not a connector-face drawing. It does not establish cavity orientation, factory signal mnemonics, sensor-supply voltage, or data-link protocol. The A/C, cooling-fan, instrument-cluster, transmission, cruise-control, exterior-light, defogger, and starting/charging continuation arrows require their separate system diagrams for further detail.
