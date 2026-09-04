# 2020 Chevrolet Camaro V6-3.6L (LGX) — ECM pinout

Transcribed from [2020 Chevrolet Camaro v6.pdf](2020%20Chevrolet%20Camaro%20v6.pdf) (ALLDATA "Engine Controls" wiring diagram, diagram pages 725269–725276; the diagram only says "V6-3.6L", the LGX RPO code is not printed).

Engine Control Module (ECM), located below the underhood fuse block. GM E82 ECM with three 73-pin connectors: X1 (page 725276), X2 (pages 725272/725273) and X3 (page 725269).

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| X1 | 73 | Vehicle harness: pedal, brake/clutch switches, GMLAN, relay control, fused supplies, battery, misc. sensors |
| X2 | 73 | Engine harness: O2 sensors, knock, MAP, MAF/IAT, oil pressure/level, throttle motor, fuel level, TOSS |
| X3 | 73 | Engine harness: injectors, coils, crank/cam sensors, cam phasers, lifter solenoids, HP fuel pump, throttle position, ECT |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey). The number in "(ckt NNNN)" is the GM circuit number printed next to the wire. Unlisted pins are not connected in this diagram. Inline connectors: X150/X152 (engine-to-body), X160/X161 (fuel injector / fuel rail sub-harnesses), X162 (oil pressure control solenoid), X164 (ECT sensor), X330 (stability switch), X350 (fuel tank harness).

## X1 — vehicle harness connector (73-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 5 | BLK/VIO | LOW REF (2) (ckt 1272) | Accelerator pedal position sensor pin 3 (via X150 pin 38) |
| 6 | YEL/WHT | POSITION SIG (1) (ckt 1161) | Accelerator pedal position sensor pin 5 (via X150 pin 36) |
| 7 | BLK/BLU | LOW REF (1) (ckt 1271) | Accelerator pedal position sensor pin 4 (via X150 pin 35) |
| 8 | WHT | SERIAL DATA (-) (3) (ckt 7494) | Computer data lines system |
| 9 | BLK/YEL | LOW REF (ckt 5382) | Brake pedal position sensor pin 6 (via X152 pin 6) |
| 10 | YEL | SENS SIG (ckt 6111) | Clutch pedal position sensor pin B (M/T, via X152 pin 17) |
| 11 | BLK/GRY | LOW REF (ckt 6110) | Clutch pedal position sensor pin C (M/T, via X152 pin 16) |
| 12 | WHT | SERIAL DATA (-) (1) (ckt 2501) | Computer data lines system |
| 13 | WHT/BLU | BRAKE SIG (ckt 6311) | Cruise control system |
| 14 | WHT/GRY | CLUTCH RLY CTRL (ckt 459) | Air conditioning system (A/C compressor clutch relay) |
| 15 | YEL | COIL CTRL (ckt 5991) | Engine controls ignition relay pin 85 (underhood fuse block, connector X3 pin 10) |
| 16 | BRN/WHT | CHECK ENG IND CTRL (ckt 419) | Instrument cluster X275 pin 47 (malfunction indicator), via X150 pin 8 |
| 17 | WHT/BLK | SPD SIG (ckt 2366) | Cooling fans system |
| 21 | BRN/RED | 5 VOLT REF (2) (ckt 1274) | Accelerator pedal position sensor pin 1 (via X150 pin 40) |
| 22 | GRN/WHT | POSITION SIG (2) (ckt 1162) | Accelerator pedal position sensor pin 2 (via X150 pin 39) |
| 23 | WHT/RED | 5 VOLT REF (1) (ckt 1164) | Accelerator pedal position sensor pin 6 (via X150 pin 37) |
| 24 | BLU/BLK | SERIAL DATA (+) (3) (ckt 7493) | Computer data lines system |
| 25 | WHT/RED | 5 VOLT REF (ckt 5381) | Brake pedal position sensor pin 5 (via X152 pin 4) |
| 26 | WHT/GRN | SENS SIG (ckt 5380) | Brake pedal position sensor pin 4 (via X152 pin 5) |
| 27 | GRY/RED | 5 VOLT REF (ckt 6109) | Clutch pedal position sensor pin A (M/T, via X152 pin 15) |
| 28 | BLU | SERIAL DATA (+) (1) (ckt 2500) | Computer data lines system |
| 29 | WHT/GRY | PARK/NEUTRAL SIG (1) (ckt 1786) | Transmissions system |
| 30 | GRN/WHT | SENS SIG (ckt 492) | Multi-function intake air sensor pin 6 |
| 38 | BLU/WHT | SENS SIG (ckt 890) | Fuel tank pressure sensor pin 1 (via X150 pin 12) |
| 39 | BRN/GRY | HUMIDITY SENS SIG (ckt 4008) | Multi-function intake air sensor pin 8 |
| 44 | BLK/WHT | SIG GND (ckt 2151) | Splice J116 (engine harness near breakout to TCM): A/C refrigerant pressure sensor pin 1, ambient air temperature sensor pin 2, manual transmission fluid temperature sensor pin A, fuel pressure sensor pin 2 (via X152 pin 14, X350 pin D), fuel tank pressure sensor pin 2 and fuel level sensors pin 3 (via X150 pin 15, splices J325/J326) |
| 46 | GRY | 5 VOLT REF (ckt 4109) | Vehicle stability control switch pin 3 (via X150 pin 9, X330 pin 5) |
| 47 | BRN/RED | 5 VOLT REF (ckt 2700) | A/C refrigerant pressure sensor pin 2 |
| 49 | VIO/BLU | RLY FUSED SPLY (3) (ckt 5292) | COIL EVEN fuse F64UA 15A output, via splice J124 (shared with ignition coils 2, 4, 6 pin 4) |
| 50 | VIO/BLU | RLY FUSED SPLY (2) (ckt 5291) | COIL ODD fuse F62UA 15A output, via splice J121 (shared with ignition coils 1, 3, 5 pin 4) |
| 51 | VIO/YEL | ACC WAKEUP SERIAL DATA (ckt 5985) | Computer data lines system |
| 52 | RED/BRN | BATT POSITIVE VOLT (ckt 440) | ECM BATT fuse F34RA 10A, rear body fuse block (via X2 pin 7 and X152 pin 12), hot at all times |
| 54 | WHT | SOL CTRL (ckt 1310) | Evaporative emission vent solenoid valve pin 1 (via X150 pin 11) |
| 64 | BLU/GRY | SENS SIG (ckt 636) | Ambient air temperature sensor pin 1 |
| 66 | WHT/VIO | SW SIG (ckt 4108) | Vehicle stability control switch pin 6 (via X150 pin 10, X330 pin 4) |
| 67 | GRN | SENS SIG (ckt 380) | A/C refrigerant pressure sensor pin 3 |
| 69 | GRN/GRY | PRIMARY RLY CTRL (ckt 465) | Fuel pump driver control module pin 2 RLY CTRL (w/o performance exhaust) or chassis control module pin 20 RLY CTRL (w/ performance exhaust), via X150 pin 17 |
| 70 | VIO/GRY | STARTER ENABLE RLY CTRL (ckt 6386) | Starting/charging system |
| 71 | VIO/GRN | IGNITION 1 VOLT (ckt 439) | Power distribution system |
| 72 | VIO/BLU | RLY FUSED SPLY (1) (ckt 5290) | ECM 2 fuse F67UA 10A, underhood fuse block |
| 73 | VIO/BLU | RLY FUSED SPLY (1) (ckt 5290) | ECM 1 fuse F66UA 25A, underhood fuse block |

Component locations (page 725276): accelerator pedal position sensor — part of pedal assembly; multi-function intake air sensor (MAF/IAT/humidity) — mounted to air cleaner assembly; ambient air temperature sensor — behind right center of front fascia; A/C refrigerant pressure sensor — below left front frame rail; clutch pedal position sensor — on arm of clutch pedal (M/T); manual transmission fluid temperature sensor — mounted to transmission assembly (M/T); brake pedal position sensor — top of brake pedal (page 725271); fuel tank pressure sensor — at right rear wheelwell; evaporative emission vent solenoid valve — in right rear wheelwell; vehicle stability control switch — grounded at G302 (left kick panel).

## X2 — engine harness connector (73-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRY/WHT | LOW CTRL SENS (2) (ckt 3122) | Heated oxygen sensor bank 1 sensor 2 pin 1 |
| 2 | WHT/BRN | LOW CTRL SENS (2) (ckt 3223) | Heated oxygen sensor bank 2 sensor 2 pin 1 |
| 9 | BRN/GRN | OIL LEVEL SW SIG (ckt 1174) | Engine oil level switch pin 1 |
| 11 | WHT | HI BEAM CTRL (ckt 311) | Engine oil pressure sensor pin 1 |
| 12 | BLK/WHT | SIG GND (ckt 2051) | Engine coolant temperature sensor pin 2 (via X164 pin 2) |
| 17 | GRY/WHT | LOW CTRL SENS (1) (ckt 3113) | Heated oxygen sensor bank 1 sensor 1 pin 1 |
| 18 | GRN/YEL | LOW CTRL SENS (1) (ckt 3212) | Heated oxygen sensor bank 2 sensor 1 pin 1 |
| 21 | BLU/WHT | SENS SIG (ckt 1937) | Secondary fuel level sensor pin 4 (fuel level sensor assembly, via X150 pin 16, X350 pin G) |
| 22 | BLU/VIO | SENS SIG (ckt 1589) | Primary fuel level sensor pin 4 (fuel pump & level sensor assembly, via X150 pin 14, X350 pin K) |
| 23 | GRN/WHT | REV SW SIG (ckt 5007) | Exterior lights system |
| 27 | WHT/RED | 5 VOLT REF (ckt 2705) | Engine oil pressure sensor pin 3 |
| 28 | VIO/BLU | FSD SPLY (5) (ckt 5294) | Splice J129 (engine harness near breakout to X175): MAF/O2 SNSR fuse F61UA 10A, heated oxygen sensors bank 1/2 sensor 2 pin 2, multi-function intake air sensor pin 5 |
| 35 | WHT/BLK | LOW SIG SENS (1) (ckt 3111) | Heated oxygen sensor bank 1 sensor 1 pin 3 |
| 36 | YEL/WHT | LOW SIG SENS (1) (ckt 3211) | Heated oxygen sensor bank 2 sensor 1 pin 3 |
| 37 | WHT/YEL | LOW SIG SENS (2) (ckt 3121) | Heated oxygen sensor bank 1 sensor 2 pin 3 |
| 38 | YEL/BLU | LOW SIG SENS (2) (ckt 3221) | Heated oxygen sensor bank 2 sensor 2 pin 3 |
| 39 | BLK/YEL | LOW REF (1) (ckt 1716) | Knock sensor 1 pin 2 |
| 40 | BLK/GRY | LOW REF (2) (ckt 2303) | Knock sensor 2 pin 2 |
| 42 | YEL/WHT | SENS SIG (ckt 3200) | Multi-function intake air sensor pin 4 |
| 43 | WHT/RED | 5 VOLT REF (ckt 3201) | Multi-function intake air sensor pin 2 |
| 45 | GRY/BLK | 5 VOLT REF (ckt 3096) | Transmission output shaft speed sensor pin A (M/T) |
| 46 | YEL/RED | 5 VOLT REF (ckt 2709) | Fuel tank pressure sensor pin 3 (via X150 pin 13) |
| 47 | GRY/RED | 5 VOLT REF (ckt 2704) | Manifold absolute pressure sensor pin 1 |
| 48 | BLK/GRN | SENS LOW REF (ckt 469) | Manifold absolute pressure sensor pin 2 |
| 49 | BRN/WHT | SENS SIG (ckt 585) | Manual transmission fluid temperature sensor pin B (M/T) |
| 51 | BLK/WHT | SIG GND (ckt 2251) | Engine oil pressure sensor pin 2 |
| 52 | BRN/WHT | CTRL CLOSE (ckt 582) | Throttle body pin 2 (throttle motor) |
| 55 | VIO/GRY | HI SIG SENS (1) (ckt 3110) | Heated oxygen sensor bank 1 sensor 1 pin 4 |
| 56 | VIO/WHT | HI SIG SENS (1) (ckt 3210) | Heated oxygen sensor bank 2 sensor 1 pin 4 |
| 57 | VIO/BLU | HI SIG SENS (2) (ckt 3120) | Heated oxygen sensor bank 1 sensor 2 pin 4 |
| 58 | VIO/GRN | HI SIG SENS (2) (ckt 3220) | Heated oxygen sensor bank 2 sensor 2 pin 4 |
| 59 | VIO/GRY | KNOCK SENS SIG (1) (ckt 496) | Knock sensor 1 pin 1 |
| 60 | WHT/GRY | KNOCK SENS SIG (2) (ckt 1876) | Knock sensor 2 pin 1 |
| 63 | BLK/VIO | LOW REF (ckt 2760) | Multi-function intake air sensor pin 3 |
| 65 | GRN | OUTPUT SPD SIG (ckt 3098) | Transmission output shaft speed sensor pin B (M/T) |
| 66 | WHT/BLK | OUTPUT SPD SENS (ckt 3097) | Transmission output shaft speed sensor pin C (M/T) |
| 67 | GRN/WHT | SENS SIG (ckt 432) | Manifold absolute pressure sensor pin 3 |
| 70 | WHT/BLU | SENS SIG (ckt 6289) | Multi-function intake air sensor pin 1 |
| 72 | YEL | CTRL OPEN (ckt 581) | Throttle body pin 1 (throttle motor) |
| 73 | BLK/WHT | SIG GND (ckt 451) | Ground G130 |

Heated oxygen sensors are 4-wire: pin 2 VIO/BLU heater supply (sensor 1 pair fed from J126/NON WALK O2 fuse F63UA 15A via HO2S bank 1 sensor 1 and bank 2 sensor 1; sensor 2 pair from J129), pin 1 low control, pin 4 high signal, pin 3 low signal. Sensor 1 sits on the exhaust pipe before the catalytic converter, sensor 2 after it.

Component locations (pages 725272/725273): engine coolant temperature sensor — on coolant outlet; knock sensor 1 — front top of engine block, knock sensor 2 — rear top of engine block (page 725270); manifold absolute pressure sensor — top of intake manifold; throttle body — front of intake manifold; transmission output shaft speed sensor — inside transmission assembly (M/T); engine oil level switch — front of oil pan; engine oil pressure sensor — mounted to oil cooler adapter (page 725274); fuel pump & level sensor assembly — top of fuel tank; fuel level sensor assembly — on fuel tank.

## X3 — engine harness connector (73-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRN | SOL CTRL (2) (ckt 5492) | Bank 2 valve lifter oil solenoid valve pin 2 |
| 2 | BLU | SOL CTRL (1) (ckt 5491) | Bank 1 valve lifter oil solenoid valve pin 2 |
| 3 | GRN/BRN | EXHAUST SENS CTRL (2) (ckt 5298) | Exhaust bank 2 camshaft position sensor pin 1 |
| 4 | YEL | INTAKE SENS (2) (ckt 5276) | Intake bank 2 camshaft position sensor pin 3 |
| 5 | WHT/BLU | INTAKE SENS CTRL (2) (ckt 5302) | Intake bank 2 camshaft position sensor pin 1 |
| 6 | VIO/BLU | CRANKSHAFT 60X SENS (ckt 6270) | Crankshaft position sensor pin 1 |
| 7 | GRN | CRANKSHAFT 60X SENS (ckt 6271) | Crankshaft position sensor pin 3 |
| 8 | BRN/RED | 5 VOLT REF (ckt 2701) | Throttle body pin 5 (throttle position sensor) |
| 12 | BRN/BLU | IGNITION CTRL (6) (ckt 2126) | Ignition coil 6 pin 3 |
| 13 | BLU/GRY | IGNITION CTRL (5) (ckt 2125) | Ignition coil 5 pin 3 |
| 14 | YEL/BLU | IGNITION CTRL (4) (ckt 2124) | Ignition coil 4 pin 3 |
| 15 | BLK/GRY | LOW REF BANK 2 (ckt 2130) | Splice J114 (engine harness near breakout to ignition coil 6): ignition coils 2, 4, 6 pin 2 |
| 16 | YEL | HI PRESSURE FUEL PUMP (ckt 7301) | High pressure fuel pump pin 2 |
| 17 | YEL/GRN | PARK PHASER LOCK CTRL (ckt 4231) | Intake bank 2 camshaft position actuator park lock solenoid valve pin 2 |
| 18 | GRY/GRN | SKIP/SHIFT SOL CTRL (ckt 587) | Intake bank 1 camshaft position actuator park lock solenoid valve pin 2 |
| 19 | BLK/BRN | LOW REF (2) (ckt 5299) | Exhaust bank 2 camshaft position sensor pin 2 |
| 20 | VIO/BLU | EXHAUST SENS (2) (ckt 5274) | Exhaust bank 2 camshaft position sensor pin 3 |
| 21 | BLK/VIO | LOW REF (2) (ckt 5303) | Intake bank 2 camshaft position sensor pin 2 |
| 22 | BLK/VIO | LOW REF (ckt 6272) | Crankshaft position sensor pin 2 |
| 23 | BLU/WHT | SENS SIG (ckt 3630) | Throttle body pin 3 (throttle position sensor) |
| 24 | BLK/BRN | LOW REF (ckt 2752) | Throttle body pin 4 (throttle position sensor) |
| 25 | WHT | ENGINE SPD SIG (ckt 121) | Instrument cluster X275 pin 82 (engine speed signal), via X150 pin 4 |
| 26 | BRN | CHARGE IND CTRL (ckt 25) | Starting/charging system |
| 28 | GRN/BLU | IGNITION CTRL (3) (ckt 2123) | Ignition coil 3 pin 3 |
| 29 | BLU/WHT | IGNITION CTRL (2) (ckt 2122) | Ignition coil 2 pin 3 |
| 30 | BLU/VIO | IGNITION CTRL (1) (ckt 2121) | Ignition coil 1 pin 3 |
| 31 | BLK/BLU | IGNITION CTRL LOW REF (ckt 2129) | Splice J113 (engine harness above right valve cover): ignition coils 1, 3, 5 pin 2 |
| 32 | VIO/BLK | HI FUEL PUMP CTRL (ckt 7300) | High pressure fuel pump pin 1 |
| 33 | GRN/BLU | PURGE SOL CTRL (ckt 428) | Evaporative emission purge solenoid valve pin 2 |
| 34 | BLU | OIL PUMP COMMAND SIG (ckt 179) | Engine oil pressure control solenoid valve pin 2 (via X162 pin 2) |
| 35 | GRY/YEL | SENS CTRL (ckt 5297) | Exhaust bank 1 camshaft position sensor pin 1 |
| 36 | VIO/BLK | CAMSHAFT EXHAUST SENS (ckt 5273) | Exhaust bank 1 camshaft position sensor pin 3 |
| 37 | BLK/GRY | LOW REF (1) (ckt 5296) | Exhaust bank 1 camshaft position sensor pin 2 |
| 38 | BLU | SENS SIG (ckt 410) | Engine coolant temperature sensor pin 1 (via X164 pin 1) |
| 39 | BRN/RED | 5 VOLT REF (ckt 7445) | Fuel pressure sensor (at fuel tank) pin 1, via X152 pin 10 and X350 pin J (w/o performance exhaust; with performance exhaust the sensor is fed from chassis control module pin 22) |
| 40 | BRN/RED | 5 VOLT REF (ckt 2917) | Fuel rail pressure sensor pin 3 (via X161 pin 11) |
| 41 | BLK/GRN | LOW REF (ckt 2919) | Fuel rail pressure sensor pin 1 (via X161 pin 5) |
| 43 | BLK/BLU | LOW REF (ckt 6755) | Intake bank 2 camshaft position actuator solenoid valve pin 2 |
| 44 | GRN | INTAKE SOL (2) (ckt 5272) | Intake bank 2 camshaft position actuator solenoid valve pin 1 |
| 45 | VIO/BRN | INTAKE SOL (1) (ckt 5284) | Intake bank 1 camshaft position actuator solenoid valve pin 1 |
| 46 | BLK/BRN | LOW REF (ckt 6753) | Intake bank 1 camshaft position actuator solenoid valve pin 2 |
| 47 | WHT/GRN | DIRECT FUEL CYLINDER 5 (ckt 4805) | Fuel injector 5 pin 1 (via X160 pin 5) |
| 48 | BLU | DIRECT FUEL CYLINDER 2 (ckt 4802) | Fuel injector 2 pin 1 (via X161 pin 2) |
| 49 | BRN | DIRECT FUEL CYLINDER 1 (ckt 4801) | Fuel injector 1 pin 1 (via X160 pin 1) |
| 50 | GRY/BLU | DIRECT FUEL CYLINDER 4 (ckt 4804) | Fuel injector 4 pin 1 (via X161 pin 3) |
| 51 | VIO/GRN | DIRECT FUEL CYLINDER 6 (ckt 4806) | Fuel injector 6 pin 1 (via X161 pin 4) |
| 52 | GRN | DIRECT FUEL CYLINDER 3 (ckt 4803) | Fuel injector 3 pin 1 (via X160 pin 3) |
| 55 | GRY/BLU | SENS CTRL (1) (ckt 5300) | Intake bank 1 camshaft position sensor pin 1 |
| 56 | YEL/VIO | INTAKE SENS (1) (ckt 5275) | Intake bank 1 camshaft position sensor pin 3 |
| 57 | BLK/GRN | LOW REF (1) (ckt 5301) | Intake bank 1 camshaft position sensor pin 2 |
| 59 | BLU/WHT | SENS SIG (ckt 7446) | Fuel pressure sensor (at fuel tank) pin 3, via X152 pin 18 and X350 pin H (w/o performance exhaust; with performance exhaust the sensor goes to chassis control module pin 10) |
| 60 | BLU/WHT | SENS SIG (ckt 2918) | Fuel rail pressure sensor pin 2 (via X161 pin 12) |
| 61 | GRY | DUTY CYCLE SIG (ckt 23) | Starting/charging system |
| 63 | BLK/GRY | LOW REF (ckt 6756) | Exhaust bank 2 camshaft position actuator solenoid valve pin 2 |
| 64 | GRN/BRN | EXHAUST SOL (2) (ckt 5283) | Exhaust bank 2 camshaft position actuator solenoid valve pin 1 |
| 65 | GRY/BLU | EXHAUST SOL (1) (ckt 5282) | Exhaust bank 1 camshaft position actuator solenoid valve pin 1 |
| 66 | BLK/VIO | LOW REF (ckt 6754) | Exhaust bank 1 camshaft position actuator solenoid valve pin 2 |
| 67 | GRN/WHT | DIRECT FUEL CYLINDER 5 (ckt 4905) | Fuel injector 5 pin 2 (via X160 pin 6) |
| 68 | BLU/GRY | DIRECT FUEL CYLINDER 2 (ckt 4902) | Fuel injector 2 pin 2 (via X161 pin 8) |
| 69 | BRN/WHT | DIRECT FUEL CYLINDER 1 (ckt 4901) | Fuel injector 1 pin 2 (via X160 pin 2) |
| 70 | BLU/WHT | DIRECT FUEL CYLINDER 4 (ckt 4904) | Fuel injector 4 pin 2 (via X161 pin 9) |
| 71 | VIO/GRY | DIRECT FUEL CYLINDER 6 (ckt 4906) | Fuel injector 6 pin 2 (via X161 pin 10) |
| 72 | GRN/GRY | DIRECT FUEL CYLINDER 3 (ckt 4903) | Fuel injector 3 pin 2 (via X160 pin 4) |
| 73 | BLK/WHT | SIG GND (ckt 451) | Ground G130 |

Direct injectors are driven differentially (pin 1 "high" 48xx circuit and pin 2 "low" 49xx circuit, both on the ECM). Cylinders 1, 3, 5 are bank 1 (X160 sub-harness), cylinders 2, 4, 6 bank 2 (X161 sub-harness, which also carries the fuel rail pressure sensor). Ignition coils are 4-pin: 1 BLK ground (G110 for coils 1, 3, 5; G120 for coils 2, 4, 6), 2 low reference, 3 control, 4 VIO/BLU supply (J121 from COIL ODD fuse for 1, 3, 5; J124 from COIL EVEN fuse for 2, 4, 6). The park lock solenoid valves and valve lifter oil solenoid valves get VIO/BLU supply on pin 1 from splice J126 (NON WALK O2 fuse F63UA 15A), which also feeds the sensor 1 oxygen sensor heaters and the purge solenoid valve pin 1.

Component locations (pages 725269/725270): fuel rail pressure sensor — mounted to bank 2 fuel rail on inboard side of bank 2 cylinder head; high pressure fuel pump — rear of engine; camshaft position sensors — rear of bank 1 / bank 2 cylinder head; crankshaft position sensor — on right side of engine block; camshaft position actuator solenoid valves — middle of bank 1 / bank 2 cylinder head; park lock solenoid valves and valve lifter oil solenoid valves — middle of bank 1 / bank 2 camshaft cover; fuel injectors — inboard side of bank 2 cylinder head above cylinders 2, 4, 6 and bank 1 above 1, 3, 5; ignition coils — on valve covers above their cylinder; evaporative emission purge solenoid valve and engine oil pressure control solenoid valve (lower left of engine block) — page 725274.

## Grounds

- **G130** (right side of engine, bolted to cylinder head above exhaust manifold) — ECM X2-73 and X3-73 (SIG GND, ckt 451), multi-function intake air sensor pin 7, engine oil level switch pin 2.
- **G110** (right side of engine, bolted to cylinder head) — ignition coils 1, 3, 5 pin 1.
- **G120** (left side of engine, bolted to cylinder head) — ignition coils 2, 4, 6 pin 1.
- **G303** (under floor lining, near left taillight) — fuel pump driver control module / chassis control module ground.
- ECM X1-44 is a sensor ground (SIG GND 2151) distributed through splice J116, not a chassis ground.

## Power supply / relays (pages 725272, 725274, 725275)

Underhood fuse block, right front of engine compartment:

- **Engine controls ignition relay** — coil pin 85 driven by ECM X1-15 (YEL 5991); contact pin 87 feeds COIL EVEN fuse F64UA 15A, COIL ODD fuse F62UA 15A, ECM 1 fuse F66UA 25A, ECM 2 fuse F67UA 10A, NON WALK O2 fuse F63UA 15A and MAF/O2 SNSR fuse F61UA 10A (all VIO/BLU outputs). The A/C compressor clutch relay sits in the same block.
- **FSCM IGN fuse F50UA 10A** (hot with ignition main relay energized) — ignition feed (VIO/BLK) to the fuel pump driver control module pin 6 / chassis control module pin 21.
- Underhood auxiliary fuse box is fed (RED) from **fuse F1RD 350A** in the battery fuse block (right side of luggage compartment, hot at all times).

Rear body fuse block, below center of luggage compartment (hot at all times): **ECM BATT fuse F34RA 10A** → ECM X1-52 (RED/BRN 440); **FUEL PUMP FSCM fuse F35RA 20A** → fuel pump driver control module / chassis control module pin 1 (RED/VIO 2640); **CNSTR VENT fuse F30RA 10A** → evaporative emission vent solenoid valve pin 2 (RED/GRN).

The in-tank fuel pump is not driven by the ECM. Without the performance exhaust option it is run by the fuel pump driver control module (above left rear frame): pin 8 GRY 120 FUEL PUMP CTRL, pin 16 BLK/GRN 1580 LOW REF, pin 15 BLU 7443 SHIELD, with ECM X1-69 as RLY CTRL and GMLAN pins 4/5 (BLU/BLK 7493, WHT 7494). With the performance exhaust option the same job is done by the chassis control module (above left rear wheelwell, pins 13 GRY 120, 38 BLK/GRN 1580, 24 BLU 7443, 20 GRN/GRY 465 RLY CTRL), which then also carries the fuel pressure sensor (pins 10, 22, 23). The pump wiring passes through X350 pins E/M/F to the fuel pump & level sensor assembly pins 1 (GRY) and 2 (BLK/GRN).
