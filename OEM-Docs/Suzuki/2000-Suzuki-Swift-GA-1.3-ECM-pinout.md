# 2000 Suzuki Swift GA 1.3L — ECM / PCM pinout

Transcribed from [2000 Suzuki Swift GA 1.3 ECU.pdf](2000%20Suzuki%20Swift%20GA%201.3%20ECU.pdf), ALLDATA **Engine Controls**, Electrical — Interactive Color (Non OE), for the 2000 Suzuki Swift GA L4-1298cc 1.3L SOHC MFI. The three wiring sheets are diagram IDs **107047, 107049, and 107050**, on PDF pages **2–4**; PDF page 1 is the introductory page.

The module is behind the glove box and is labelled **Powertrain Control Module (PCM) (A/T)** / **Engine Control Module (ECM) (M/T)**. The drawing shows connectors **C21 (26 terminals)**, **C22 (16 terminals)**, and **C23 (22 terminals)**, a total of 64 numbered positions. C21 and C22 appear on sheet 1; C23 appears on sheet 3. Unlisted terminals are not connected **in this diagram**, which does not establish whether they are physically unused.

Wire colours follow the source: BLK black, BLU blue, BRN brown, GRN green, GRY grey, LT BLU light blue, LT GRN light green, ORG orange, PNK pink, RED red, VIO violet, WHT white, YEL yellow; NCA means no colour available. A slash separates base and tracer colours. A/T means automatic transmission, M/T manual transmission. The source includes both transmission variants and some explicit 1999–2001 differences despite its 2000 vehicle heading.

The source prints component names, wire colours, and terminal numbers, but no module-terminal function labels. The **Function** column below describes the traced circuit; it does not invent factory signal names. Component pin numbers are as printed, with the 2000 ignition-coil numbering used in the main tables.

## C21 — 26 terminals (sheet 1)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | BLK/GRN | Ground / camshaft-sensor return | G134 (top of engine), shared with camshaft position sensor pin 3 |
| 2 | WHT/BLU | Main-relay supply | Main relay output pin 2; shared with C21-15 and the actuator supply circuit |
| 3 | PNK/BLU | EVAP canister air vent control | EVAP canister air vent pin 1 (RED/GRN at the component), under rear of vehicle near fuel tank |
| 4 | PNK | Heated oxygen sensor 2 heater control | Heated oxygen sensor 2 pin 3, on exhaust system |
| 5 | ORG/GRN | Shift solenoid A (A/T only) | Shift solenoid A, on rear of transaxle; NCA beyond the inline connection |
| 6 | ORG | Shift solenoid B (A/T only) | Shift solenoid B, on rear of transaxle; NCA beyond the inline connection |
| 7 | RED/GRN | EVAP purge valve control | EVAP purge valve pin 1, on rear of intake manifold |
| 10 | GRY/RED | Ignition coil 1 control | Ignition coil 1 pin 3 (2000), left side of engine |
| 11 | BRN/BLK | Fuel injector 3 control | Injector 3 pin 1 |
| 12 | BRN/WHT | Fuel injector 1 control | Injector 1 pin 1 |
| 13 | BLK/BLU | Ground | G134; shared with ignition-coil grounds and idle speed control actuator pin 3 |
| 14 | WHT | Battery supply | Junction fuse block fuse 23 (15 A, hot at all times), E62 pin 5 |
| 15 | WHT/BLU | Main-relay supply | Main relay output pin 2; joined to C21-2 |
| 16 | LT GRN/RED | Tank pressure control valve control | Changes to YEL at an inline connection; tank pressure control valve pin 1, under rear of vehicle near fuel tank |
| 17 | VIO/YEL | Malfunction indicator lamp | Instrument cluster G15 pin 13 |
| 18 | PNK/WHT | Fuel-pump relay control | Fuel pump relay coil pin 4, in fuse/relay box |
| 19 | BLU/BLK | Main-relay control | Main relay coil pin 4, in fuse/relay box |
| 20 | BLU | Cooling-fan circuit | Continuation labelled “COOLING FANS SYSTEM”; downstream circuit not included |
| 23 | GRY/BLU | Ignition coil 2 control | Ignition coil 2 pin 3 (2000), left side of engine |
| 24 | BRN/YEL | Fuel injector 4 control | Injector 4 pin 1 |
| 25 | BRN/RED | Fuel injector 2 control | Injector 2 pin 1 |
| 26 | BLK/RED | Ground / cable shields | G134; NCA branches to the crankshaft position sensor and both oxygen-sensor signal cable shields |

## C22 — 16 terminals (sheet 1)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | LT GRN | Sensor supply | Throttle position sensor pin 2, MAP sensor pin 3, and tank pressure sensor pin 3; voltage not printed |
| 2 | ORG | Camshaft position sensor signal | Camshaft position sensor pin 2, on rear of engine |
| 3 | WHT/BLK | Crankshaft position sensor circuit | Crankshaft position sensor pin 1, on right front of engine; polarity not printed |
| 4 | VIO (or YEL/GRN) | Vehicle speed | A/T: VIO to transaxle vehicle speed sensor pin 1 (NCA at sensor). M/T: YEL/GRN to instrument-cluster vehicle speed sensor, G08 pin 10 |
| 5 | ORG/GRN | Manifold absolute pressure signal | MAP sensor pin 2, on intake manifold |
| 6 | LT GRN/WHT | Throttle position signal | Throttle position sensor pin 3, on throttle body assembly |
| 7 | PNK/BLK | Heated oxygen sensor 1 heater control | Heated oxygen sensor 1 pin 3, on exhaust manifold |
| 9 | LT GRN/BLK | Sensor return | Shared sensor-return network, including both oxygen sensors pin 1, throttle position sensor pin 1, MAP sensor pin 1, tank pressure sensor pin 2, ECT sensor pin 3, IAT sensor pin 1, and C23-22 |
| 10 | GRY/WHT | Engine coolant temperature signal | ECT sensor pin 1, on rear of engine |
| 11 | WHT/RED | Crankshaft position sensor circuit | Crankshaft position sensor pin 2; polarity not printed |
| 12 | GRY/YEL | Vehicle speed sensor circuit (A/T only) | Transaxle vehicle speed sensor pin 2 (NCA at sensor) |
| 13 | RED | Heated oxygen sensor 1 signal | Heated oxygen sensor 1 pin 2 |
| 14 | GRY | Intake air temperature signal | IAT sensor pin 2, on air cleaner assembly |
| 15 | BLU/WHT | Power steering pressure switch | Power steering pressure switch pin 1, lower right of engine compartment; switch closes to ground |
| 16 | BLK/YEL | Start signal | Starting/charging circuit after clutch pedal position switch pin 2 (M/T) or transaxle range switch pin 5 (A/T) |

## C23 — 22 terminals (sheet 3)

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 2 | RED/YEL | Idle speed control | Idle speed control actuator pin 1, on throttle body |
| 3 | GRN | Transaxle range “2” (A/T only) | Transaxle range switch pin 3 |
| 4 | ORG/YEL | Transaxle range “N” (A/T only) | Transaxle range switch pin 10 |
| 5 | ORG/BLK | Transaxle range “P” (A/T only) | Transaxle range switch pin 9; branch to shift interlock system |
| 6 | BRN | Instrument-cluster circuit | Continuation labelled “INSTRUMENT CLUSTER SYSTEM”; individual function not printed |
| 7 | VIO/GRN | Diagnosis monitor circuit | Diagnosis monitor connector pin 5 (except 2001 model) |
| 8 | BLU/YEL | Diagnosis monitor circuit | Diagnosis monitor connector pin 2 (except 2001 model) |
| 9 | BLK/BLU | Instrument-cluster circuit | Continuation labelled “INSTRUMENT CLUSTER SYSTEM”; individual function not printed |
| 10 | YEL | Heated oxygen sensor 2 signal | Heated oxygen sensor 2 pin 2 |
| 11 | YEL/RED | Fuel-level circuit | Fuel pump & level gauge pin 1; shared with continuation to fuel level meter |
| 12 | VIO/WHT | Data link | Data link connector pin 10, below dash left of steering column; protocol not printed |
| 13 | VIO/RED | Upshift indicator / diagnosis monitor circuit | Instrument-cluster upshift indicator (M/T only), pin 11, LT BLU at cluster; branch to diagnosis monitor connector pin 6 (except 2001 model) |
| 14 | GRN/BLU | Transaxle range “L” (A/T only) | Transaxle range switch pin 4 |
| 15 | GRN/RED | Transaxle range “D” (A/T only) | Transaxle range switch pin 2 |
| 16 | RED | Transaxle range “R” (A/T only) | Transaxle range switch pin 1; branch to exterior lights system |
| 17 | GRY | Air-conditioning circuit | Continuation labelled “AIR CONDITIONING SYSTEM”; signal direction not printed |
| 18 | BRN/YEL | Diode circuit | Diode assembly pin 6, behind centre of dash; other branches to A/C, defogger, and interior lights systems |
| 19 | BLU/RED | Air-conditioning circuit | Continuation labelled “AIR CONDITIONING SYSTEM”; signal direction not printed |
| 20 | BLK/WHT | Ignition-switched supply | Fuse 21 (15 A, hot in START or ON), junction fuse block E62 pin 9; shared with fuel-pump relay coil, ignition coils, camshaft sensor, and oxygen-sensor heaters |
| 21 | LT GRN/YEL | Tank pressure signal | Tank pressure sensor pin 1, under rear of vehicle near fuel tank |
| 22 | LT GRN/BLK | Sensor return | Shared sensor-return network with C22-9 |

## Power supply / relays

- **Main fuse 5 (15 A, hot at all times):** E23 pin 2 WHT/RED feeds main relay pins 1 (contact supply) and 3 (coil supply). C21-19 controls coil pin 4. Relay output pin 2 WHT/BLU supplies C21-2 and C21-15, fuel pump relay contact pin 1, all four injectors pin 2, EVAP purge valve pin 2, tank pressure control valve pin 2, EVAP canister air vent pin 2, and idle speed control actuator pin 2.
- **Fuse 21 (15 A, hot in START or ON):** junction fuse block E62 pin 9 BLK/WHT supplies C23-20, fuel pump relay coil pin 3, camshaft position sensor pin 1, both ignition coils' power terminals, and both heated oxygen sensors pin 4. A separate output shown at E62 pin 3 BLK/WHT supplies the instrument cluster: G08 pin 3 with tachometer, or G15 pin 15 without tachometer.
- **Fuse 23 (15 A, hot at all times):** junction fuse block E62 pin 5 WHT feeds C21-14 directly.
- **Fuel pump relay:** coil pin 3 receives the fuse 21 supply; coil pin 4 PNK/WHT goes to C21-18. Contact pin 1 receives WHT/BLU from the main relay; output pin 2 PNK feeds fuel pump & level gauge pin 3 in the fuel tank.
- **Fuse 16 (15 A, hot in ON or START):** junction/fuse block E62 pin 7 YEL supplies transaxle range switch pin 8 (A/T only), feeding its range-position contacts.
- **Start circuit:** ignition switch START output RED/YEL passes through E66 pin 1 and junction/fuse block E62 pin 15, continuing BLK/RED to clutch pedal position switch pin 1 (M/T) or transaxle range switch pin 6 (A/T). The switched BLK/YEL output, clutch switch pin 2 or range switch pin 5, branches to C22-16 and the starting/charging system. The A/T start contacts close in P or N.

## Grounds and sensor wiring

- **G134 (top of engine):** C21-1 BLK/GRN and camshaft position sensor pin 3; C21-26 BLK/RED and the NCA cable-shield network; C21-13 BLK/BLU, both ignition-coil ground terminals, and idle speed control actuator pin 3. These are shown as separate branches to the same named ground.
- **Sensor return:** C22-9 and C23-22 LT GRN/BLK join the shared return for throttle position sensor pin 1, MAP sensor pin 1, tank pressure sensor pin 2, ECT sensor pin 3, IAT sensor pin 1, and both oxygen sensors pin 1. The diagram does not print a sensor-supply voltage or a direct chassis-ground connection for this network.
- **G404 (left rear side of trunk):** fuel pump & level gauge pin 4 BLK (pump return) and pin 2 BLK (level-gauge return). The level-gauge signal at pin 1 YEL/RED branches to C23-11 and the fuel level meter.
- **Cable shields:** C21-26's NCA branch surrounds the crankshaft position sensor pair and the two oxygen-sensor signal pairs. Oxygen-sensor leads are labelled NCA on the sensor side of their connectors; the pin tables use the harness-side colours.
- **Crankshaft position sensor:** pin 1 WHT/BLK to C22-3 and pin 2 WHT/RED to C22-11. **Camshaft position sensor:** pin 1 BLK/WHT from fuse 21, pin 2 ORG to C22-2, pin 3 BLK/GRN to G134/C21-1.
- **Heated oxygen sensor 1:** pin 1 LT GRN/BLK sensor return, pin 2 RED signal to C22-13, pin 3 PNK/BLK heater control from C22-7, pin 4 BLK/WHT fuse 21 supply. **Sensor 2:** pin 1 LT GRN/BLK sensor return, pin 2 YEL signal to C23-10, pin 3 PNK heater control from C21-4, pin 4 BLK/WHT fuse 21 supply.

## Transmission, instrument, and model-year notes

- **Ignition coils:** coil 1 uses GRY/RED from C21-10; coil 2 uses GRY/BLU from C21-23. Both use BLK/WHT power and BLK/BLU ground. The source explicitly gives different component terminal numbers by year:

  | Model year | Control pin | Power pin | Ground pin | Coil location |
  |------------|-------------|-----------|------------|---------------|
  | 1999 | 2 | 1 | 3 | Rear of engine |
  | 2000 | 3 | 1 | 2 | Left side of engine |
  | 2001 | 1 | 3 | 2 | Left side of engine |

- **A/T:** the PCM also operates shift solenoids A and B, reads the transaxle-mounted two-wire vehicle speed sensor, and receives the six range-switch position circuits. The range switch is on the right side of the transaxle. The solenoids are drawn with local ground symbols; no numbered ground terminal is printed.
- **M/T:** C22-4 instead receives YEL/GRN from the vehicle speed sensor inside the instrument cluster (G08 pin 10). The upshift indicator is M/T only; its cluster pin 11 LT BLU wire changes to VIO/RED before C23-13.
- **Instrument cluster:** the malfunction indicator lamp is connected to G15 pin 13 VIO/YEL (C21-17). Its ignition supply is drawn through the with-tachometer / without-tachometer alternatives described above. C23-6 BRN and C23-9 BLK/BLU terminate at separate instrument-cluster-system arrows; this sheet does not identify their individual functions.
- **Diagnosis monitor connector:** below dash, right of steering column; pin 6 VIO/RED to C23-13, pin 2 BLU/YEL to C23-8, pin 5 VIO/GRN to C23-7. Marked “EXCEPT 2001 MODEL.” This is separate from the data link connector below dash, left of steering column, whose pin 10 VIO/WHT goes to C23-12.
- **Diode assembly:** behind centre of dash; pin 6 BRN/YEL to C23-18, pin 5 RED/BLK to air conditioning system, pin 4 RED/WHT to defogger system, and pin 3 RED/YEL to interior lights system.

## Source limitations

This is a non-OE system wiring diagram, not a connector-face drawing. It does not establish cavity orientation, factory signal mnemonics, sensor-supply voltage, crankshaft-sensor polarity, or a data-link protocol. The A/C, cooling-fan, instrument-cluster, shift-interlock, exterior-light, and starting/charging continuation arrows require their separate system diagrams for further detail. The PDF introduction also refers to a universal ground-location diagram, which is not included; the ground locations above are the labels printed on these sheets.
