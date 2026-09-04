# 2017 Cadillac ATS Coupe RWD V6-3.6L (LGX) — ECM pinout

Transcribed from [2017 Cadillac ATS Coupe RWD v6.pdf](2017%20Cadillac%20ATS%20Coupe%20RWD%20v6.pdf) (ALLDATA "Engine Controls" wiring diagram, diagram pages 1-8 = PDF pages 2-9, sheet IDs 562430-562437). The PDF only says "V6-3.6L"; the RPO code is not printed (LGX is the 3.6L V6 of the 2017 ATS).

Engine Control Module (ECM), GM E82, located right front of engine compartment. Three Molex 73-pin connectors X1, X2, X3.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| X3 | 73 (64 wired) | Engine harness: coils, injectors, cam/crank sensors, cam phasers, oil/lifter solenoids, HPFP, throttle 5V/low ref, alternator, fuel pressure/temp sensor |
| X2 | 73 (37 wired) | Engine harness: O2 sensors, knock, MAP, ECT, throttle motor, oil pressure/level, fuel level, GMLAN bus 21/23 |
| X1 | 73 (41 wired) | Vehicle harness: power, relay control, pedal, brake pedal, MAF/IAT/humidity, ambient temp, A/C pressure, EVAP vent, serial data 1, starter, CCM (fuel pump) |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey). GM circuit numbers are given after the function text. Unlisted pins are not connected in this diagram. Off-page continuation numbers of the ALLDATA sheets have been resolved to the actual end component; intermediate inline connectors (X150, X160, X161, X107, X106, X350, X275, X125/X151) and splices (Jxxx) are noted where present.

## X3 — engine harness connector (73-pin), diagram page 1

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRN | SOL CTRL 2 (5492) | Bank 2 valve lifter oil solenoid valve pin 2 (on bank 2 valve cover) |
| 2 | BLU | SOL CTRL 1 (5491) | Bank 1 valve lifter oil solenoid valve pin 2 (on bank 1 valve cover) |
| 3 | GRN/BRN | EXHAUST SENS CTRL 2 (5298) | Bank 2 exhaust camshaft position sensor pin 1 (on left cylinder head) |
| 4 | YEL | INTAKE SENS 2 (5276) | Bank 2 intake camshaft position sensor pin 3 (on left cylinder head) |
| 5 | WHT/BLU | INTAKE SENS CTRL 2 (5302) | Bank 2 intake camshaft position sensor pin 1 |
| 6 | VIO/BLU | CRANKSHAFT 60X SENS (6270) | Crankshaft position sensor pin 1 (lower left rear of engine) |
| 7 | GRN | CRANKSHAFT 60X SENS (6271) | Crankshaft position sensor pin 3 |
| 8 | BRN/RED | 5 VOLT REF (2701) | Throttle body pin 5 (TP sensor 5V) |
| 9 | VIO/BLU | REP SIG (6091) | X150 pin 2 -> audio amplifier X3 pin 2 (right rear of luggage compt) |
| 11 | WHT/GRY | ACC CTRL (4578) | Transmissions system |
| 12 | BRN/BLU | IGNITION CTRL 6 (2126) | Ignition coil 6 pin 3 |
| 13 | BLU/GRY | IGNITION CTRL 5 (2125) | Ignition coil 5 pin 3 |
| 14 | YEL/BLU | IGNITION CTRL 4 (2124) | Ignition coil 4 pin 3 |
| 15 | BLK/GRY | LOW REF BANK 2 (2130) | J135 -> ignition coils 2, 4, 6 pin 2 |
| 16 | YEL | HI PRESSURE FUEL PUMP (7301) | High pressure fuel pump pin 2 (rear of left cylinder head) |
| 17 | YEL/GRN | PARK PHASER LOCK CTRL (4321) | Bank 2 intake camshaft actuator park lock solenoid valve pin 2 (front of bank 2 head) |
| 18 | GRY/GRN | SKIP/SHIFT SOL CTRL (587) | Bank 1 intake camshaft actuator park lock solenoid valve pin 2 (front of bank 1 head) |
| 19 | BLK/BRN | LOW REF 2 (5299) | Bank 2 exhaust camshaft position sensor pin 2 |
| 20 | VIO/BLU | EXHAUST SENS 2 (5274) | Bank 2 exhaust camshaft position sensor pin 3 |
| 21 | BLK/VIO | LOW REF 2 (5303) | Bank 2 intake camshaft position sensor pin 2 |
| 22 | BLK/VIO | LOW REF (6272) | Crankshaft position sensor pin 2 |
| 23 | BLU/WHT | SENS SIG (3630) | Throttle body pin 3 (TP sensor signal) |
| 24 | BLK/BRN | LOW REF (2752) | Throttle body pin 4 (TP sensor low ref) |
| 25 | WHT | ENGINE SPD SIG (121) | X150 pin 10 -> X275 pin 82 -> instrument cluster pin 22 ENG SPD SIG |
| 26 | BRN | CHARGE IND CTRL (25) | Starting/charging system |
| 28 | GRN/BLU | IGNITION CTRL 3 (2123) | Ignition coil 3 pin 3 |
| 29 | BLU/WHT | IGNITION CTRL 2 (2122) | Ignition coil 2 pin 3 |
| 30 | BLU/VIO | IGNITION CTRL 1 (2121) | Ignition coil 1 pin 3 |
| 31 | BLK/BLU | IGNITION CTRL LOW REF (2129) | J133 -> ignition coils 1, 3, 5 pin 2 |
| 32 | VIO/BLK | HI FUEL PUMP CTRL (7300) | High pressure fuel pump pin 1 |
| 33 | GRN/BLU | PURGE SOL CTRL (428) | Evaporative emission purge solenoid valve pin 2 (rear of engine on right cylinder head) |
| 34 | BLU | OIL PUMP COMMAND SIG (179) | X106 pin 2 -> engine oil pressure control solenoid valve pin 2 (left rear of engine) |
| 35 | GRY/YEL | SENS CTRL (5297) | Bank 1 exhaust camshaft position sensor pin 1 (on right cylinder head) |
| 36 | VIO/BLK | CAMSHAFT EXHAUST SENS (5273) | Bank 1 exhaust camshaft position sensor pin 3 |
| 37 | BLK/GRY | LOW REF 1 (5296) | Bank 1 exhaust camshaft position sensor pin 2 |
| 38 | BLU | SENS SIG (410) | X107 pin 1 -> engine coolant temperature sensor pin 2 (top front of block, near thermostat housing) |
| 40 | BRN/RED | 5 VOLT REF (2917) | X161 pin 11 -> fuel pressure/temperature sensor pin A |
| 41 | BLK/GRN | LOW REF (2919) | X161 pin 5 -> fuel pressure/temperature sensor pin C |
| 43 | BLK/BLU | LOW REF (6755) | Bank 2 intake camshaft position actuator solenoid valve pin 2 (upper center of left head) |
| 44 | GRN | INTAKE SOL 2 (5272) | Bank 2 intake camshaft position actuator solenoid valve pin 1 |
| 45 | VIO/BRN | INTAKE SOL 1 (5284) | Bank 1 intake camshaft position actuator solenoid valve pin 1 (upper center of right head) |
| 46 | BLK/BRN | LOW REF (6753) | Bank 1 intake camshaft position actuator solenoid valve pin 2 |
| 47 | WHT/GRN | DIRECT FUEL CYLINDER 5 (4805) | X160 pin 5 -> fuel injector 5 pin 1 |
| 48 | BLU | DIRECT FUEL CYLINDER 2 (4802) | X161 pin 2 -> fuel injector 2 pin 1 |
| 49 | BRN | DIRECT FUEL CYLINDER 1 (4801) | X160 pin 1 -> fuel injector 1 pin 1 |
| 50 | GRY/BLU | DIRECT FUEL CYLINDER 4 (4804) | X161 pin 3 -> fuel injector 4 pin 1 |
| 51 | VIO/GRN | DIRECT FUEL CYLINDER 6 (4806) | X161 pin 4 -> fuel injector 6 pin 1 |
| 52 | GRN | DIRECT FUEL CYLINDER 3 (4803) | X160 pin 3 -> fuel injector 3 pin 1 |
| 55 | GRY/BLU | SENS CTRL 1 (5300) | Bank 1 intake camshaft position sensor pin 1 (on right cylinder head) |
| 56 | YEL/VIO | INTAKE SENS 1 (5275) | Bank 1 intake camshaft position sensor pin 3 |
| 57 | BLK/GRN | LOW REF 1 (5301) | Bank 1 intake camshaft position sensor pin 2 |
| 60 | BLU/WHT | SENS SIG (2918) | X161 pin 12 -> fuel pressure/temperature sensor pin B |
| 61 | GRY | DUTY CYCLE SIG (23) | Starting/charging system |
| 63 | BLK/GRY | LOW REF (6756) | Bank 2 exhaust camshaft position actuator solenoid valve pin 2 (lower center of left head) |
| 64 | GRN/BRN | EXHAUST SOL 2 (5283) | Bank 2 exhaust camshaft position actuator solenoid valve pin 1 |
| 65 | GRY/BLU | EXHAUST SOL 1 (5282) | Bank 1 exhaust camshaft position actuator solenoid valve pin 1 (lower center of right head) |
| 66 | BLK/VIO | LOW REF (6754) | Bank 1 exhaust camshaft position actuator solenoid valve pin 2 |
| 67 | GRN/WHT | DIRECT FUEL CYLINDER 5 (4905) | X160 pin 6 -> fuel injector 5 pin 2 |
| 68 | BLU/GRY | DIRECT FUEL CYLINDER 2 (4902) | X161 pin 8 -> fuel injector 2 pin 2 |
| 69 | BRN/WHT | DIRECT FUEL CYLINDER 1 (4901) | X160 pin 2 -> fuel injector 1 pin 2 |
| 70 | BLU/WHT | DIRECT FUEL CYLINDER 4 (4904) | X161 pin 9 -> fuel injector 4 pin 2 (WHT on injector side) |
| 71 | VIO/GRY | DIRECT FUEL CYLINDER 6 (4906) | X161 pin 10 -> fuel injector 6 pin 2 |
| 72 | GRN/GRY | DIRECT FUEL CYLINDER 3 (4903) | X160 pin 4 -> fuel injector 3 pin 2 |
| 73 | BLK/WHT | SIG GND (451) | G100 (middle of right cylinder head) |

Each direct injector has two ECM wires (high side pins 47-52, low side pins 67-72). Injectors 1, 3, 5 are on the inboard side of the bank 1 head (X160); injectors 2, 4, 6 on the inboard side of the bank 2 head (X161). Fuel pressure/temperature sensor is labeled "(NEAR FUEL TANK)" in the diagram, wired through X161 pins 11 (A, BRN/RED), 12 (B, BLU/WHT) and 5 (C, BLK/GRN).

Ignition coils (4-pin, above each cylinder): pin 1 BLK ground (coils 1/3/5 to G107 middle of right cylinder head, coils 2/4/6 to G109 middle of engine near exhaust pipe), pin 2 BLK/BLU or BLK/GRY low reference to ECM (J133 / J135 splices), pin 3 ECM control, pin 4 VIO/BLU ignition feed (coils 1/3/5 via splice J131 from SPARE/IGN COIL INJ FUSE 15A, coils 2/4/6 via splice J136 from IGN COIL INJ FUSE 15A).

## X2 — engine harness connector (73-pin), diagram pages 4-5

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRY/WHT | LOW CTRL SENS 2 (3122) | Bank 1 sensor 2 heated oxygen sensor pin 1 (after right catalytic converter) |
| 2 | WHT/BRN | LOW CTRL SENS 2 (3223) | Bank 2 sensor 2 heated oxygen sensor pin 1 (after left catalytic converter) |
| 5 | GRN/YEL | SER DATA BUS 23 (4623) | Computer data lines system |
| 7 | GRN/VIO | SER DATA BUS 21 (4621) | Computer data lines system |
| 9 | BRN/GRN | OIL LEVEL SW SIG (1174) | Engine oil level switch pin 1 (RWD: right side of oil pan); switch pin 2 BLK/WHT to G100 |
| 11 | WHT | HI BEAM CTRL (331) | Engine oil pressure sensor pin 1 (in oil filter housing) |
| 12 | BLK/BRN | LOW REF (2761) | X107 pin 2 -> engine coolant temperature sensor pin 1 |
| 17 | GRY/WHT | LOW CTRL SENS 1 (3113) | Bank 1 sensor 1 heated oxygen sensor pin 1 (before right catalytic converter) |
| 18 | GRN/YEL | LOW CTRL SENS 1 (3212) | Bank 2 sensor 1 heated oxygen sensor pin 1 (before left catalytic converter) |
| 21 | BLU/WHT | SENS SIG (1937) | X150 pin 9 -> X350 pin G -> secondary fuel level sensor pin 4 (top of fuel tank) |
| 22 | BLU/VIO | SENS SIG (1589) | X150 pin 7 -> X350 pin K -> primary fuel level sensor pin 4 (fuel pump & level sensor assembly) |
| 27 | WHT/RED | 5 VOLT REF (2705) | Engine oil pressure sensor pin 3 |
| 28 | VIO/BLU | RLY FSD SPLY 5 (5294) | Splice J132 (ignition relay output via IGN COIL INJ FUSE 15A, underhood fuse block pin 24) |
| 35 | WHT/BLK | LOW SIG SENS 1 (3111) | Bank 1 sensor 1 heated oxygen sensor pin 3 |
| 36 | YEL/WHT | LOW SIG SENS 1 (3211) | Bank 2 sensor 1 heated oxygen sensor pin 3 |
| 37 | WHT/YEL | LOW SIG SENS 2 (3121) | Bank 1 sensor 2 heated oxygen sensor pin 3 |
| 38 | YEL/BLU | LOW SIG SENS 2 (3221) | Bank 2 sensor 2 heated oxygen sensor pin 3 |
| 39 | BLK/YEL | LOW REF 1 (1716) | Knock sensor 1 pin 2 (top front of engine between cylinder heads) |
| 40 | BLK/GRY | LOW REF 2 (2303) | Knock sensor 2 pin 2 (left side of engine block) |
| 42 | YEL/WHT | SENS SIG (3200) | Multi-function intake air sensor pin 4 (on air cleaner assembly) |
| 43 | WHT/RED | 5 VOLT REF (3201) | Multi-function intake air sensor pin 2 |
| 46 | YEL/RED | 5 VOLT REF (2709) | X150 pin 24 -> fuel tank pressure sensor pin 3 (right rear frame near vapor canister) |
| 47 | GRY/RED | 5 VOLT REF (2704) | Manifold absolute pressure sensor pin 1 (top of intake manifold) |
| 48 | BLK/GRN | SENS LOW REF (469) | Manifold absolute pressure sensor pin 2 |
| 51 | BLK/VIO | SIG GND (2755) | Engine oil pressure sensor pin 2 |
| 52 | BRN/WHT | CTRL CLOSE (582) | Throttle body pin 2 (throttle motor) |
| 55 | VIO/GRY | HI SIG SENS 1 (3110) | Bank 1 sensor 1 heated oxygen sensor pin 4 |
| 56 | VIO/WHT | HI SIG SENS 1 (3210) | Bank 2 sensor 1 heated oxygen sensor pin 4 |
| 57 | VIO/BLU | HI SIG SENS 2 (3120) | Bank 1 sensor 2 heated oxygen sensor pin 4 |
| 58 | VIO/GRN | HI SIG SENS 2 (3220) | Bank 2 sensor 2 heated oxygen sensor pin 4 |
| 59 | VIO/GRY | KNOCK SENS SIG 1 (496) | Knock sensor 1 pin 1 |
| 60 | WHT/GRY | KNOCK SENS SIG 2 (1876) | Knock sensor 2 pin 1 |
| 63 | BLK/VIO | LOW REF (2760) | Multi-function intake air sensor pin 3 |
| 67 | GRN/WHT | SENS SIG (432) | Manifold absolute pressure sensor pin 3 |
| 70 | WHT/BLU | SENS SIG (6289) | Multi-function intake air sensor pin 1 |
| 72 | YEL | CTRL OPEN (581) | Throttle body pin 1 (throttle motor) |
| 73 | BLK/WHT | SIG GND (451) | G100 (middle of right cylinder head) |

All four heated oxygen sensors are 4-wire with pin 2 (VIO/BLU) as the heater feed: sensors 1 (upstream) via splice J132, sensors 2 (downstream) via splice J134 from the O2 SNSR EMIS FUSE 10A. Sensor pin 1 = low control (heater ground to ECM), pin 3 = low signal, pin 4 = high signal.

## X1 — vehicle harness connector (73-pin), diagram page 8

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 5 | BLK/VIO | LOW REF 2 (1272) | X150 pin 4 -> accelerator pedal position sensor pin 3 (BLK/VIO) |
| 6 | YEL/WHT | POSITION SIG 1 (1161) | X150 pin 2 -> accelerator pedal position sensor pin 5 (BLK/YEL) |
| 7 | BLK/BLU | LOW REF 1 (1271) | X150 pin 1 -> accelerator pedal position sensor pin 4 (BLK/BLU) |
| 9 | BLK/YEL | LOW REF (5382) | X150 pin 26 -> brake pedal position sensor pin 6 (on brake pedal bracket) |
| 12 | WHT | SERIAL DATA (-) 1 (2501) | Computer data lines system |
| 13 | WHT/BLU | BRAKE SIG (6311) | Cruise control system |
| 14 | WHT/GRY | A/C RLY CTRL (459) | Air conditioning system |
| 15 | YEL | COIL CTRL (459) | Underhood fuse block pin 1 -> engine controls ignition relay pin 86 |
| 16 | BRN/WHT | CHECK ENG IND CTRL (419) | X150 pin 29 -> X275 pin 47 -> instrument cluster pin 16 (malfunction indicator) |
| 17 | WHT/BLK | RLY SPD SIG (2366) | Cooling fans system |
| 21 | BRN/RED | 5 VOLT REF 2 (1274) | X150 pin 6 -> accelerator pedal position sensor pin 1 (BLK/RED) |
| 22 | GRN/WHT | POSITION SIG 2 (1162) | X150 pin 5 -> accelerator pedal position sensor pin 2 (BLK/GRN) |
| 23 | WHT/RED | 5 VOLT REF 1 (1164) | X150 pin 3 -> accelerator pedal position sensor pin 6 (BLK/WHT) |
| 25 | WHT/RED | 5 VOLT REF (5381) | X150 pin 25 -> brake pedal position sensor pin 5 |
| 26 | WHT/GRN | SENS SIG (5380) | X150 pin 27 -> brake pedal position sensor pin 4 |
| 28 | BLU | SERIAL DATA (+) 1 (2500) | Computer data lines system |
| 29 | WHT/GRY | PARK/NEUTRAL SIG 1 (1786) | Transmissions system |
| 30 | GRN/WHT | SENS SIG (492) | Multi-function intake air sensor pin 6 |
| 31 | YEL/VIO | STARTER RLY CTRL (4325) | Starting/charging system |
| 34 | GRY | HTR RLY CTRL (5127) | Air conditioning system |
| 38 | BLU/WHT | SENS SIG (890) | X150 pin 23 -> fuel tank pressure sensor pin 1 |
| 39 | BRN/GRY | HUMIDITY SENS SIG (4008) | Multi-function intake air sensor pin 8 |
| 44 | BLK/WHT | SIG GND (2151) | Splice J143 (engine harness near breakout to X150 & X151) -> G100; also A/C refrigerant pressure sensor pin 1, ambient air temp sensor pin 2 (via X151 pin 7 / X125 pin 11) and X150 pin 8 BLK/GRN -> J335 (fuel tank pressure sensor pin 2, fuel level sensors pin 3 via J412 / X350 pin L) |
| 45 | YEL/RED | BRK VAC 5 VOLT REF (6031) | Anti-lock brakes system |
| 46 | GRY | 5 VOLT REF (4109) | X150 pin 14 -> X275 pin 4 -> X211 pin 5 -> drive mode select switch pin 5 |
| 47 | BRN/RED | 5 VOLT REF (2700) | A/C refrigerant pressure sensor pin 2 (near lower right side of A/C condenser) |
| 49 | VIO/BLU | RLY FUSED SPLY 3 (5292) | Splice J136 (IGN COIL INJ FUSE 15A, underhood fuse block pin 11) |
| 50 | VIO/BLU | RLY FUSED SPLY 2 (5291) | Splice J131 (SPARE/IGN COIL INJ FUSE 15A, underhood fuse block pin 17) |
| 51 | VIO/YEL | WAKEUP SER DATA (5985) | Computer data lines system |
| 52 | RED/BRN | BATT POSITIVE VOLT (440) | X150 pin 48 -> rear body fuse block X1 pin 4, ECM/BATT FUSE 10A (hot at all times) |
| 54 | WHT | SOL CTRL (1310) | X150 pin 38 -> evaporative emission vent solenoid valve pin 1 (right rear frame near fuel tank) |
| 56 | BRN/GRN | HOOD AJAR SW SIG (109) | Door locks system |
| 64 | BLU/GRY | AMB TEMP SIG (636) | X151 pin 8 -> X125 pin 12 -> ambient air temperature sensor pin 1 (front of vehicle, rear of lower grille) |
| 65 | YEL/VIO | BRK VAC SIG (6030) | Anti-lock brakes system |
| 66 | WHT/VIO | SW SIG (4108) | X150 pin 35 -> X275 pin 69 -> X211 pin 6 -> drive mode select switch pin 2 (WHT) |
| 67 | GRN | SENS SIG (380) | A/C refrigerant pressure sensor pin 3 |
| 69 | GRN/GRY | PRIMARY RLY CTRL (465) | X150 pin 34 -> chassis control module pin 20 RLY CTRL (fuel pump control; coupe: right rear of luggage compt) |
| 70 | YEL/BLK | STARTER ENABLE RLY CTRL (625) | Starting/charging system |
| 71 | VIO/GRN | IGNITION 1 VOLT (439) | Underhood fuse block X4 pin 29, ECM IGN FUSE 15A (hot w/ ignition main relay energized) |
| 72 | VIO/BLU | RLY FUSED SPLY 3 (5292) | Splice J136 (IGN COIL INJ FUSE 15A, underhood fuse block pin 11) |
| 73 | VIO/BLU | RLY FUSED SPLY 1 (5290) | Underhood fuse block pin 10, ECM FUSE 25A |

Multi-function intake air sensor (on air cleaner assembly, 8-pin): 1 WHT/BLU (X2-70), 2 WHT/RED (X2-43 5V), 3 BLK/VIO (X2-63 low ref), 4 YEL/WHT (X2-42), 5 VIO/BLU (J134 feed), 6 GRN/WHT (X1-30), 7 BLK/WHT to G100, 8 BRN/GRY (X1-39 humidity).

Drive mode select switch: pin 9 BLK -> X211 pin 10 -> G202 (right kick panel).

## Fuel pump (chassis control module), diagram page 6

The ECM does not drive the fuel pump directly. The chassis control module (CCM; sedan: above left rear wheelwell, coupe: right rear of luggage compt) receives ECM X1-69 PRIMARY RLY CTRL on its pin 20 and drives the pump:

| CCM pin | Wire | Function | Connects to |
|---------|------|----------|-------------|
| 1 | RED/VIO | BATT POS VOLT (2640) | Rear body fuse block X1 pin 28, FUEL PUMP FSCM FUSE 20A (hot at all times) |
| 5, 6 | BLU | SER DATA (+) 1 (2500) | Computer data lines system |
| 9 | VIO/YEL | WAKEUP SER DATA (5985) | Computer data lines system |
| 11 | BLU/WHT | SENS SIG (7446) | J404 / J405 -> X350 pin E -> J411 (blunt cut shield, fuel tank near X350) |
| 13 | GRY | FUEL PUMP CTRL (120) | X350 pin F -> fuel pump pin 1 (fuel pump & level sensor assembly, top of fuel tank) |
| 17, 18 | WHT | SER DATA (-) 1 (2501) | Computer data lines system |
| 20 | GRN/GRY | RLY CTRL (465) | X150 pin 34 -> ECM X1-69 |
| 21 | VIO/BLK | IGNITION 1 VOLT (339) | Underhood fuse block X2 pin 8, FSCM IGN FUSE 10A |
| 22 | BRN/RED | 5 VOLT REF (7445) | X350 pin J -> fuel pressure sensor pin 3 (near fuel tank) |
| 23 | BLK/YEL | LOW REF (7447) | X350 pin D -> fuel pressure sensor pin 2 |
| 24 | BLU | GND EXTENSION (7443) | X350 pin H -> fuel pressure sensor pin 1 (BLU/WHT) |
| 25 | BLK | GND (2350) | G303 (left rear passenger footwell) |
| 38 | BLK/GRN | FUEL PUMP LOW REF (1580) | X350 pin M -> fuel pump pin 2 |

## Power supply / relays / grounds

Underhood fuse block (right front of engine compt), engine controls ignition relay: pin 86 coil control YEL from ECM X1-15 (COIL CTRL), pin 85 and pin 30 fed hot at all times, pin 87 feeds the fuse bus. Fuses on the relay output (all VIO/BLU):

- **SPARE/IGN COIL INJ FUSE 15A** -> pin 17 -> splice J131: ignition coils 1, 3, 5 pin 4 and ECM X1-50 (RLY FUSED SPLY 2)
- **ECM FUSE 25A** -> pin 10 -> ECM X1-73 (RLY FUSED SPLY 1)
- **IGN COIL INJ FUSE 15A** -> pin 11 -> splice J136: ignition coils 2, 4, 6 pin 4, ECM X1-49 and X1-72 (RLY FUSED SPLY 3); and -> pin 24 -> splice J132: ECM X2-28 (RLY FSD SPLY 5), upstream O2 sensor heaters (B1S1/B2S1 pin 2), bank 1/2 intake cam park lock solenoids pin 1, bank 1/2 valve lifter oil solenoids pin 1, EVAP purge solenoid pin 1, engine oil pressure control solenoid pin 1 (X106 pin 1)
- **O2 SNSR EMIS FUSE 10A** -> X4 pin 3 -> splice J134 (engine harness near rear of breakout to HPFP): downstream O2 sensor heaters (B1S2/B2S2 pin 2), multi-function intake air sensor pin 5; X2 pin 23 not used
- **SPARE PT FUSE 10A** -> X5 pin 32 not used
- A/C compressor clutch relay pin 85 is also fed from the relay output bus

Other feeds: **ECM IGN FUSE 15A** (underhood fuse block X4 pin 29, hot w/ ignition main relay energized) -> ECM X1-71 IGNITION 1 VOLT; **ECM/BATT FUSE 10A** (rear body fuse block, luggage compt above left rear wheelwell, X1 pin 4, hot at all times) -> X150 pin 48 -> ECM X1-52; **CNSTR VENT FUSE 10A** (rear body fuse block X2 pin 5) -> J431 -> EVAP vent solenoid pin 2 RED/GRN; **FSCM IGN FUSE 10A** and **AERO SHUTTER FUSE 10A** (grille shutter actuator via X100 pin 15) are shown but not ECM-related. Battery fuse block (on battery) FUSE 6 350A -> X6 -> underhood auxiliary fuse block.

Grounds: G100 (middle of right cylinder head) — ECM X3-73, X2-73, X1-44 (via J143), oil level switch, intake air sensor pin 7; G107 (middle of right cylinder head) — ignition coils 1, 3, 5 pin 1; G109 (middle of engine, near exhaust pipe) — ignition coils 2, 4, 6 pin 1; G101 (above left headlight) — grille shutter actuator; G202 (right kick panel) — drive mode switch; G303 (left rear passenger footwell) — chassis control module.

Splice locations: J131 engine harness near breakouts to ECM; J132 engine harness near breakout for ignition coil 5 towards X160 & X161; J133 engine harness near ignition coil 3; J134 engine harness near rear of breakout to HPFP; J135 engine harness near breakout to G110; J136 engine harness near breakouts to ECM; J143 engine harness near breakout to X150 & X151; J335 body harness near breakout to X320; J412 fuel tank near fuel level sensor assembly.
