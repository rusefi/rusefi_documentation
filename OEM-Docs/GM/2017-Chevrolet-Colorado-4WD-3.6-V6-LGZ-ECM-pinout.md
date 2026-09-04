# 2017 Chevrolet Colorado 4WD V6-3.6L (LGZ) — ECM pinout

Transcribed from [2017 Chevy Truck Colorado 4WD v6.pdf](2017%20Chevy%20Truck%20Colorado%204WD%20v6.pdf) (ALLDATA "Engine Controls" wiring diagram, pages 1–9, diagram sheets 562315–562323).

Engine Control Module (ECM), GM E82, located under the coolant reservoir. Three 73-pin connectors X1, X2, X3. The PDF only states "V6-3.6L"; the LGZ RPO code is assumed from the model year.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| X1 | 73 | Vehicle harness: power/relay feeds, GMLAN, pedal, brake, MAF/humidity, fuel tank, A/C, evap vent, cluster |
| X2 | 73 | Engine harness: O2 sensors, knock, oil pressure/level, MAP, intake air temp, throttle motor, fuel level |
| X3 | 73 | Engine harness: injectors, ignition coils, cam/crank sensors, cam phasers, high pressure pump, fuel pressure, ECT |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey; LT = light, DK = dark). Colors given are those of the harness wire on the ECM side of any intermediate connector. The number in parentheses after each function is the GM circuit number printed on the wire. Unlisted pins are not connected in this diagram.

## X1 — vehicle harness connector (73-pin)

Pins 55 to 63 are marked "NOT USED".

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 5 | BLK/VIO | APP LOW REF 2 (1272) | Accelerator pedal position sensor pin 5 (via X101-6) |
| 6 | YEL/WHT | APP SIG 1 (1161) | Accelerator pedal position sensor pin 3 (via X101-32) |
| 7 | BLK/LT BLU | APP LOW REF 1 (1271) | Accelerator pedal position sensor pin 4 (via X101-24) |
| 8 | WHT | HI SPD GMLAN SERIAL DATA (-) 3 (7494) | Computer data lines system |
| 9 | BLK/YEL | BRK POS SENS LOW REF (5382) | Brake pedal position sensor pin 5 (via X101-33) |
| 12 | WHT | HI SPD GMLAN SERIAL DATA (-) 1 (2501) | Computer data lines system |
| 13 | WHT/LT BLU | CRUISE/ETC/TCC BRK SIG (6311) | Cruise control system |
| 14 | WHT/GRY | A/C COMP CLUTCH RLY CTRL (459) | Air conditioning system |
| 15 | YEL | POWERTRAIN RLY COIL CTRL (5991) | Engine controls ignition relay coil, underhood fuse block (connector X4 pin 17) |
| 16 | BRN/WHT | CHECK ENGINE IND CTRL (419) | Instrument cluster pin 16 (malfunction indicator), via X101-7 and X200-30 |
| 17 | WHT/BLK | COOLING FAN CTRL RLY SPD SIG (2366) | Cooling fans system |
| 21 | BRN/RED | APP 5V REF 2 (1274) | Accelerator pedal position sensor pin 1 (via X101-8) |
| 22 | LT GRN/WHT | APP SIG 2 (1162) | Accelerator pedal position sensor pin 6 (via X101-23) |
| 23 | WHT/RED | APP 5V REF 1 (1164) | Accelerator pedal position sensor pin 2 (via X101-25) |
| 24 | LT BLU/YEL | HI SPD GMLAN SERIAL DATA (+) 3 (7493) | Computer data lines system |
| 25 | WHT/RED | BRK POS SENS 5V REF (5381) | Brake pedal position sensor pin 6 (via X101-35) |
| 26 | WHT/LT GRN | BRK POS SENS SIG (5380) | Brake pedal position sensor pin 4 (via X101-34) |
| 28 | LT BLU | HI SPD GMLAN SERIAL DATA (+) 1 (2500) | Computer data lines system |
| 29 | WHT/GRY | PARK/NEUTRAL SIG 1 (1786) | Transmissions system |
| 30 | LT GRN/WHT | MASS AIR FLOW SENS SIG (492) | Multi-function intake air sensor pin 6 |
| 38 | LT BLU/WHT | FUEL TANK PRESSURE SENS SIG (890) | Fuel tank pressure sensor pin 1 (via X101-15, X106-23) |
| 39 | BRN/GRY | HUMIDITY SENS SIG (4008) | Multi-function intake air sensor pin 8 |
| 44 | BLK/WHT | SIG GND (2151) | Splice J135; low reference for ambient air temperature sensor pin B, fuel tank pressure sensor pin 2, fuel level sensor pin 3 and fuel pressure sensor pin 2 |
| 47 | BRN/RED | A/C PRESSURE SENS 5V REF (2700) | A/C refrigerant pressure sensor pin 2 |
| 49 | VIO/LT BLU | RLY FUSED SPLY 3 (5292) | INJ EVEN fuse 15 A (underhood fuse block connector X3 pin 3); same feed goes through splice J116 to ignition coils 2, 4, 6 pin 4 |
| 50 | VIO/LT BLU | RLY FUSED SPLY 2 (5291) | INJ ODD fuse 15 A (underhood fuse block connector X3 pin 2); same feed goes through splice J113 to ignition coils 1, 3, 5 pin 4 |
| 51 | VIO/YEL | ACC WAKEUP SERIAL DATA (5985) | Computer data lines system |
| 52 | RED/WHT | BATT POS VOLT (140) | ECM BATT fuse 15 A (underhood fuse block connector X3 pin 27), hot at all times |
| 54 | WHT | EVAP CANISTER VENT SOL CTRL (1310) | Evaporative emission vent solenoid valve pin 1 (via X101-26, X106-34) |
| 64 | LT BLU/GRY | AIR TEMP SENS SIG (636) | Ambient air temperature sensor pin A (via X101-31, X102-26, X105-5) |
| 67 | LT GRN | A/C REFRIGERANT PRESSURE SENS SIG (380) | A/C refrigerant pressure sensor pin 3 |
| 69 | GRN/GRY | FUEL PUMP PRIMARY RLY CTRL (465) | Fuel pump driver control module pin 2 (via X101-13, X106-27) |
| 70 | YEL/BLK | STARTER ENABLE RLY CTRL (625) | Starting/charging system |
| 71 | VIO/GRY | RUN/CRANK IGN 1 VOLT (139) | FUEL MDL RUN/CRNK fuse 10 A (underhood fuse block connector X3 pin 20) via splice J110 |
| 73 | VIO/LT BLU | RLY FUSED SPLY 1 (5290) | ECM fuse 20 A (underhood fuse block connector X3 pin 1) |

Component locations (pages 2–4): accelerator pedal position sensor — accelerator pedal bracket; brake pedal position sensor — above brake pedal assembly (its other three pins, BLK/BRN 5360 low ref, WHT 5359 sens ctrl, LT BLU/YEL 5361 sens sig, go to the body control module X2 via X200); ambient air temperature sensor — behind center of radiator grille; A/C refrigerant pressure sensor — A/C high pressure line (pin 1 BLK/BRN is a ground); multi-function intake air sensor — air intake duct (pin 7 BLK/WHT to G104, pin 5 VIO/LT BLU fed from MISC 1 fuse via splice J111); fuel tank pressure sensor and evaporative emission vent solenoid valve — top of fuel tank (vent solenoid pin 2 RED/LT GRN fed from CNSTR VENT SOL fuse 10 A, underhood fuse block connector X2 pin 73, hot at all times); fuel pump driver control module — above spare tire.

## X2 — engine harness connector (73-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRY/WHT | HTR LOW CTRL BANK 1 SENS 2 (3122) | Bank 1 sensor 2 heated oxygen sensor pin 1 |
| 2 | WHT/BRN | HTR LOW CTRL BANK 2 SENS 2 (3223) | Bank 2 sensor 2 heated oxygen sensor pin 1 |
| 7 | GRY | (no function label printed) (3890) | Computer data lines system |
| 10 | BRN/LT GRN | OIL LEVEL SW SIG (1174) | Engine oil level switch pin 2 |
| 11 | YEL/BRN | OIL PRESS SENS SIG (331) | Engine oil pressure sensor pin 1 |
| 12 | BLK/BRN | TEMP SENS LOW REF (2761) | Engine coolant temperature sensor pin 2 (via X114-2) |
| 17 | GRY/WHT | HTR LOW CTRL BANK 1 SENS 1 (3113) | Bank 1 sensor 1 heated oxygen sensor pin 1 |
| 18 | LT GRN/YEL | HTR LOW CTRL BANK 2 SENS 1 (3212) | Bank 2 sensor 1 heated oxygen sensor pin 1 |
| 22 | LT BLU/VIO | PRIMARY FUEL LEVEL SENS SIG (1589) | Fuel level sensor pin 4 (via X101-18, X106-32) |
| 27 | WHT/RED | SENS 5V REF (2705) | Engine oil pressure sensor pin 3 |
| 35 | WHT/BLK | BANK 1 SENS 1 (3111) | Bank 1 sensor 1 heated oxygen sensor pin 3 |
| 36 | YEL/WHT | BANK 2 SENS 1 (3211) | Bank 2 sensor 1 heated oxygen sensor pin 3 |
| 37 | WHT/YEL | BANK 1 SENS 2 (3121) | Bank 1 sensor 2 heated oxygen sensor pin 3 |
| 38 | YEL/LT BLU | BANK 2 SENS 2 (3221) | Bank 2 sensor 2 heated oxygen sensor pin 3 |
| 39 | BLK/YEL | SENS LOW REF 1 (1716) | Knock sensor 1 pin 2 |
| 40 | BLK/GRY | SENS LOW REF 2 (2303) | Knock sensor 2 pin 2 |
| 42 | YEL/WHT | ABSOLUTE PRESS SENS SIG (3200) | Multi-function intake air sensor pin 4 |
| 43 | WHT/RED | SENS 5V REF (3201) | Multi-function intake air sensor pin 2 |
| 45 | LT BLU/RED | 5V REF (1688) | Transmissions system |
| 46 | YEL/RED | FTP SENS 5V REF (2709) | Fuel tank pressure sensor pin 3 (via X101-16, X106-24) |
| 47 | GRY/RED | MAP SENS 5V REF (2704) | Manifold absolute pressure sensor pin 1 |
| 48 | BLK/LT GRN | MAP SENS LOW REF (469) | Manifold absolute pressure sensor pin 2 |
| 51 | BLK/VIO | OIL PRESS SENS LOW REF (2755) | Engine oil pressure sensor pin 2 |
| 52 | BRN/WHT | CTRL CLOSE (582) | Throttle body pin 2 (throttle motor) |
| 55 | VIO/GRY | HIGH SIG BANK 1 SENS 1 (3110) | Bank 1 sensor 1 heated oxygen sensor pin 4 |
| 56 | VIO/WHT | HIGH SIG BANK 2 SENS 1 (3210) | Bank 2 sensor 1 heated oxygen sensor pin 4 |
| 57 | VIO/LT BLU | HIGH SIG BANK 1 SENS 2 (3120) | Bank 1 sensor 2 heated oxygen sensor pin 4 |
| 58 | VIO/LT GRN | HIGH SIG BANK 2 SENS 2 (3220) | Bank 2 sensor 2 heated oxygen sensor pin 4 |
| 59 | VIO/GRY | KNOCK SENS SIG 1 (496) | Knock sensor 1 pin 1 |
| 60 | WHT/GRY | KNOCK SENS SIG 2 (1876) | Knock sensor 2 pin 1 |
| 63 | BLK/VIO | SENS LOW REF (2760) | Multi-function intake air sensor pin 3 |
| 65 | VIO/WHT | SPD SENS SIG (821) | Transmissions system |
| 66 | BLK/LT GRN | SPD SENS LOW REF (822) | Transmissions system |
| 67 | LT GRN/WHT | MAP PRESS SENS SIG (432) | Manifold absolute pressure sensor pin 3 |
| 70 | WHT/LT BLU | INDUCTION AIR TEMP SENS SIG (6289) | Multi-function intake air sensor pin 1 |
| 72 | YEL | CTRL OPEN (581) | Throttle body pin 1 (throttle motor) |
| 73 | BLK/WHT | SIG GND (151) | Ground G104 |

Component locations (pages 4–7, 9): bank 1 sensor 1 HO2S — exhaust, before left catalytic converter; bank 2 sensor 1 — before right catalytic converter; bank 1 sensor 2 — after left catalytic converter; bank 2 sensor 2 — after right catalytic converter. All four O2 sensors are 4-wire (1 heater low, 2 heater supply VIO/LT BLU, 3 signal, 4 high/reference); the pre-cat heaters are fed from MISC 2 fuse via splice J107 and the post-cat heaters from MISC 1 fuse via splice J111. Knock sensor 1 — right side of engine; knock sensor 2 — left side of engine; engine oil pressure sensor — oil filter adapter; engine oil level switch — side of oil pan (pin 1 BLK to G104); manifold absolute pressure sensor — top of intake manifold; engine coolant temperature sensor — left side of engine; throttle body — intake manifold opening; fuel pump & level sensor assembly — top of fuel tank.

## X3 — engine harness connector (73-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRN | SOL CTRL 2 (5492) | Bank 2 valve lifter oil solenoid valve pin 2 |
| 2 | BLU | SOL CTRL 1 (5491) | Bank 1 valve lifter oil solenoid valve pin 2 |
| 3 | LT GRN/BRN | EXHAUST SENS CTRL 2 (5298) | Bank 2 exhaust camshaft position sensor pin 1 |
| 4 | YEL | INTAKE SENS 2 (5276) | Bank 2 intake camshaft position sensor pin 3 |
| 5 | WHT/LT BLU | INTAKE SENS CTRL 2 (5302) | Bank 2 intake camshaft position sensor pin 1 |
| 6 | VIO/LT BLU | SENS 5V REF (6270) | Crankshaft position sensor pin 1 |
| 7 | LT GRN | 60X SENS SIG (6271) | Crankshaft position sensor pin 3 |
| 8 | BRN/RED | TP SENS 5V REF (2701) | Throttle body pin 5 |
| 12 | BRN/LT BLU | IGN CTRL 6 (2126) | Ignition coil 6 pin 3 |
| 13 | LT BLU/GRY | IGN CTRL 5 (2125) | Ignition coil 5 pin 3 |
| 14 | YEL/LT BLU | IGN CTRL 4 (2124) | Ignition coil 4 pin 3 |
| 15 | BLK/GRY | LOW REF BANK 2 (2130) | Ignition coils 2, 4, 6 pin 2 (splice J115) |
| 16 | YEL | HIGH CTRL (7301) | High pressure fuel pump pin 2 |
| 17 | YEL/GRN | LOCK CTRL (4321) | Bank 2 intake camshaft position actuator park lock solenoid valve pin 2 |
| 18 | GRY/GRN | SKIP/SHIFT SOL CTRL (587) | Bank 1 intake camshaft position actuator park lock solenoid valve pin 2 |
| 19 | BLK/BRN | SENS LOW REF 2 (5299) | Bank 2 exhaust camshaft position sensor pin 2 |
| 20 | VIO/LT BLU | EXHAUST SENS 2 (5274) | Bank 2 exhaust camshaft position sensor pin 3 |
| 21 | BLK/VIO | CMP SENS LOW REF 2 (5303) | Bank 2 intake camshaft position sensor pin 2 |
| 22 | BLK/VIO | 60X SENS LOW REF (6272) | Crankshaft position sensor pin 2 |
| 23 | LT BLU/WHT | SENS (SENT1) SIG (3630) | Throttle body pin 3 |
| 24 | BLK/BRN | TP SENS LOW REF (2752) | Throttle body pin 4 |
| 26 | LT BLU/WHT | GEN TURN ON SIG (225) | Starting/charging system |
| 28 | LT GRN/LT BLU | IGN CTRL 3 (2123) | Ignition coil 3 pin 3 |
| 29 | LT BLU/WHT | IGN CTRL 2 (2122) | Ignition coil 2 pin 3 |
| 30 | LT BLU/VIO | IGN CTRL 1 (2121) | Ignition coil 1 pin 3 |
| 31 | BLK/LT BLU | LOW REF BANK 1 (2129) | Ignition coils 1, 3, 5 pin 2 (splice J114) |
| 32 | VIO/BLK | LOW CTRL (7300) | High pressure fuel pump pin 1 |
| 33 | LT GRN/LT BLU | PURGE SOL CTRL (428) | Evaporative emission purge solenoid valve pin 2 |
| 34 | BLU | COMMAND SIG (197) | Engine oil pressure control solenoid valve pin 2 (via X113-2) |
| 35 | GRY/YEL | EXHAUST SENS CTRL 1 (5297) | Bank 1 exhaust camshaft position sensor pin 1 |
| 36 | VIO/BLK | EXHAUST SENS 1 (5273) | Bank 1 exhaust camshaft position sensor pin 3 |
| 37 | BLK/GRY | SENS LOW REF 1 (5296) | Bank 1 exhaust camshaft position sensor pin 2 |
| 38 | LT BLU | TEMP SENS SIG (410) | Engine coolant temperature sensor pin 1 (via X114-1) |
| 39 | BRN/RED | PRESS SENS 5V REF (7445) | Fuel pressure/temperature sensor pin 3 (via X161-11) |
| 40 | BRN/RED | RAIL PRESS 5V REF (2917) | Fuel pressure sensor pin 3 (via X101-48, X106-45) |
| 41 | BLK/GRN | SENS LOW REF (2919) | Fuel pressure/temperature sensor pin 1 (via X161-5) |
| 43 | BLK/LT BLU | PHASER Y LOW REF (6755) | Bank 2 intake camshaft position actuator solenoid valve pin 2 |
| 44 | LT GRN | INTAKE SOL 2 (5272) | Bank 2 intake camshaft position actuator solenoid valve pin 1 |
| 45 | VIO/BRN | INTAKE SOL 1 (5284) | Bank 1 intake camshaft position actuator solenoid valve pin 1 |
| 46 | BLK/BRN | PHASER W LOW REF (6753) | Bank 1 intake camshaft position actuator solenoid valve pin 2 |
| 47 | WHT/LT GRN | HIGH VOLT CTRL CYL 5 (4805) | Fuel injector 5 pin 1 (via X160-5) |
| 48 | LT BLU | HIGH VOLT CTRL CYL 2 (4802) | Fuel injector 2 pin 1 (via X161-2) |
| 49 | BRN | HIGH VOLT CTRL CYL 1 (4801) | Fuel injector 1 pin 1 (via X160-1) |
| 50 | GRY/LT BLU | HIGH VOLT CTRL CYL 4 (4804) | Fuel injector 4 pin 1 (via X161-3) |
| 51 | VIO/LT GRN | HIGH VOLT CTRL CYL 6 (4806) | Fuel injector 6 pin 1 (via X161-4) |
| 52 | LT GRN | HIGH VOLT CTRL CYL 3 (4803) | Fuel injector 3 pin 1 (via X160-3) |
| 55 | GRY/LT BLU | INTAKE SENS CTRL 1 (5300) | Bank 1 intake camshaft position sensor pin 1 |
| 56 | YEL/VIO | INTAKE SENS 1 (5275) | Bank 1 intake camshaft position sensor pin 3 |
| 57 | BLK/LT GRN | SENS LOW REF 1 (5301) | Bank 1 intake camshaft position sensor pin 2 |
| 59 | LT BLU/WHT | FUEL LINE PRESS SENS SIG (7446) | Fuel pressure sensor pin 1 (via X101-44, X106-44) |
| 60 | BLU/WHT | FUEL RAIL PRESSURE SENS SIG (2918) | Fuel pressure/temperature sensor pin 2 (via X161-12) |
| 61 | GRY | DUTY CYCLE SIG (23) | Starting/charging system |
| 63 | BLK/GRY | PHASER Z LOW REF (6756) | Bank 2 exhaust camshaft position actuator solenoid valve pin 2 |
| 64 | LT GRN/BRN | EXHAUST SOL 2 (5283) | Bank 2 exhaust camshaft position actuator solenoid valve pin 1 |
| 65 | GRY/LT BLU | EXHAUST SOL 1 (5282) | Bank 1 exhaust camshaft position actuator solenoid valve pin 1 |
| 66 | BLK/VIO | PHASER X LOW REF (6754) | Bank 1 exhaust camshaft position actuator solenoid valve pin 2 |
| 67 | LT GRN/WHT | HIGH VOLT SPLY CYL 5 (4905) | Fuel injector 5 pin 2 (via X160-6) |
| 68 | LT BLU/GRY | HIGH VOLT SPLY CYL 2 (4902) | Fuel injector 2 pin 2 (via X161-8) |
| 69 | BRN/WHT | HIGH VOLT SPLY CYL 1 (4901) | Fuel injector 1 pin 2 (via X160-2) |
| 70 | LT BLU/WHT | HIGH VOLT SPLY CYL 4 (4904) | Fuel injector 4 pin 2 (via X161-9) |
| 71 | VIO/GRY | HIGH VOLT SPLY CYL 6 (4906) | Fuel injector 6 pin 2 (via X161-10) |
| 72 | LT GRN/GRY | HIGH VOLT SPLY CYL 3 (4903) | Fuel injector 3 pin 2 (via X160-4) |
| 73 | BLK/WHT | SIG GND (151) | Ground G104 |

Fuel injectors (direct injection, 2-wire, driven directly by the ECM) are above their cylinders; injectors 2, 4, 6 go through connector X161 and injectors 5, 1, 3 through X160. Injector-side wire colors differ from the harness side (e.g. injector 2: DK BLU / DK BLU/GRY, injector 6: VIO / VIO/WHT).

Ignition coils (4-wire, above each spark plug): pin 1 BLK ground — coils 1, 3, 5 to G108 (right side of engine block) via splice J129, coils 2, 4, 6 to G109 (below cylinder 1); pin 2 low reference to ECM (J114 for bank 1, J115 for bank 2); pin 3 ignition control; pin 4 VIO/LT BLU fused supply (J113 for coils 1, 3, 5 from the INJ ODD fuse; J116 for coils 2, 4, 6 from the INJ EVEN fuse).

Component locations (pages 8–10): crankshaft position sensor — rear of engine block; bank 1 intake camshaft position sensor — front of right cylinder head; bank 1 exhaust camshaft position sensor — front of right cylinder head; bank 2 intake and exhaust camshaft position sensors — front of left cylinder head; camshaft position actuator solenoid valves — front of bank 1 / bank 2 cylinder head; high pressure fuel pump — mounted to rear of bank 2 cylinder head; fuel pressure/temperature sensor and fuel pressure sensor — left frame rail fuel line; evaporative emission purge solenoid valve — near throttle body; engine oil pressure control solenoid valve — rear of engine block. Pin 1 (VIO/LT BLU) of the purge solenoid, park lock solenoids, oil pressure control solenoid and both valve lifter oil solenoids is fed from the MISC 2 fuse via splice J107.

## Power supply / relays (pages 2, 4, 6)

Underhood fuse block (next to battery), fed by fuse 5 (250 A) in the battery fuse block on top of the battery positive post:

- **Engine controls ignition relay** — coil driven by ECM X1-15 (POWERTRAIN RLY COIL CTRL); its output feeds the "hot with ignition main relay energized" fuses: ECM fuse 20 A (X1-73), INJ EVEN fuse 15 A (X1-49, coils 2/4/6), INJ ODD fuse 15 A (X1-50, coils 1/3/5), MISC 2 fuse 10 A (pre-cat O2 heaters and solenoids via J107), MISC 1 fuse 10 A (MAF sensor, post-cat O2 heaters via J111), A/C compressor clutch relay, and AERO SHTR fuse 10 A (active grille air shutter actuator)
- **ECM BATT fuse 15 A** — hot at all times, X1-52
- **FUEL MDL RUN/CRNK fuse 10 A** — hot with ignition main relay energized, feeds X1-71 and fuel pump driver control module pin 6 (IGN 1 VOLT) via splice J110
- **CNSTR VENT SOL fuse 10 A** — hot at all times, feeds the evaporative emission vent solenoid valve
- **FSCM fuse 30 A** — hot at all times, feeds fuel pump driver control module pin 1 (BATT POS VOLT, RED/VIO 1940)

The fuel pump is not driven by the ECM directly. The fuel pump driver control module (above spare tire) is enabled by ECM X1-69 (PRIMARY RELAY CTRL, pin 2) and talks to the ECM over high speed GMLAN bus 3 (pins 4/5 and 11/12/13/14, circuits 7493/7494); pin 8 GRY 120 drives the fuel pump pin 1, pin 9 BLK 650 grounds at G402 (forward of right leaf spring mount), pin 16 BLK/LT GRN 1580 is the fuel pump low reference. Fuel level sensor pin 4 (LT BLU/VIO) goes to ECM X2-22 and pin 3 (BLK/LT GRN) to the ECM signal ground through J405/J135.

Grounds: G104 (ECM X2-73, X3-73, multi-function intake air sensor, oil level switch), G108 and G109 (ignition coils), G105 under right headlamp assembly (active grille air shutter actuator), G402 (fuel pump driver control module).
