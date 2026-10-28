# 2013 Chevrolet Sonic L4-1.4L Turbo — ECM pinout

Transcribed from [2013 Chevrolet Sonic 1.4T.pdf](2013%20Chevrolet%20Sonic%201.4T.pdf) (ALLDATA “Engine Controls,” Electrical – Interactive Color (Non OE), diagram sheets 1–6 = PDF pages 2–7, sheet IDs 410231–410236; source vehicle heading: 2013 Chevrolet Sonic L4-1.4L Turbo).

Engine Control Module (ECM), left side of engine compartment. The drawing depicts X1 with 56 terminals and X2 and X3 with 73 terminals each. These are schematic terminal numbers, not connector-face views. Unlisted terminals are not connected **in this diagram**; their physical use is not established.

Wire colours retain the printed abbreviations: BLK black, BLU blue, BRN brown, GRN green, GRY gray, RED red, VIO violet, WHT white, YEL yellow; LT light, DK dark, NCA no colour available. A slash separates base and tracer colours. Circuit numbers follow the printed function in parentheses; “not printed” records missing source text. Component terminal numbers in the destination column come from tracing the wires across sheets.

X3-22, X3-38 and X3-58 each have alternative branches drawn from the same terminal: the 6110/6109/6111 wires reach the M/T clutch pedal pressure sensor, while 5382/5381/5380 terminate at exterior lights system references. M/T and A/T mean manual and automatic transmission. The output shaft speed sensor is labelled both “IN AUTOMATIC TRANSMISSION” and “(M/T)” in the source; this transcription retains that unresolved applicability conflict.

X3-19 is printed “LOW REF” and reaches output shaft speed sensor terminal 1; no voltage is specified.

## X1 — 56 terminals (diagram sheet 3)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 2 | LT GRN/WHT | ACC PEDAL POS SIG 2 (1162) | Accelerator pedal position (APP) sensor, terminal 2 |
| 3 | LT GRN/WHT | MAS AIR FLOW SENS SIG (492) | Multi-function intake air sensor, terminal 3 |
| 8 | BLK/YEL | INTAKE SENS CTRL (6014) | Multi-function intake air sensor, terminal 6 |
| 9 | LT BLU/GRY | PRESS SENS SIG (433) | Multi-function intake air sensor, terminal 1 |
| 10 | YEL/WHT | ACC PEDAL POS SIG 1 (1161) | APP sensor, terminal 5 |
| 11 | LT GRN | PRE TR AIR TEMP PR SIG (1533) | Turbocharger boost/intake air temperature sensor, terminal 1 |
| 12 | LT GRN | A/C RFGT PR SENS SIG (380) | A/C refrigerant pressure sensor, terminal 3 |
| 13 | BLK/BRN | LOW REF (5514) | Turbocharger boost/intake air temperature sensor, terminal 2 |
| 16 | BRN/RED | 5 VOLT REF (1274) | APP sensor, terminal 1 |
| 18 | VIO/YEL | WAKEUP SERIAL DATA (5985) | Computer data lines system |
| 19 | VIO/GRY | IGN (139) | Underhood fuse block, ECM5 fuse (10 A) |
| 20 | RED/WHT | B+ (140) | Underhood fuse block, ECM fuse (15 A), battery feed |
| 23 | WHT/RED | PRES SENS 5 V REF (2932) | Multi-function intake air sensor, terminal 2 |
| 24 | WHT/RED | 5 VOLT REF (1164) | APP sensor, terminal 6 |
| 25 | BRN/RED | 5 VOLT REF (5639) | A/C refrigerant pressure sensor, terminal 2 |
| 26 | BRN/RED | 5 VOLT REF (2700) | Turbocharger boost/intake air temperature sensor, terminal 3 |
| 27 | YEL | STARTER ENBLE RLY CTRL (447) | Starting/charging system |
| 28 | LT GRN/GRY | PRIMARY RLY CTRL (465) | Fuel pump control module, terminal 20, via underhood fuse block |
| 29 | LT BLU | SERIAL DATA + 1 (2500) | Computer data lines system (high-speed GMLAN +) |
| 30 | BLK/VIO | LOW REF (1272) | APP sensor, terminal 3 |
| 31 | BLK/VIO | LOW REF (2760) | Multi-function intake air sensor, terminal 7 |
| 32 | BLK/LT BLU | LOW REF (6813) | ECT sensor 2, terminal 2 |
| 33 | WHT/LT BLU | CRUISE/ETC/TCC BRK SIG (6311) | Cruise control system |
| 34 | WHT/GRY | PARK NETRL POS SW SIG (1786) | Emissions system |
| 38 | BLK/LT BLU | LOW REF (1271) | APP sensor, terminal 4 |
| 39 | BLK/LT GRN | LOW REF (5638) | A/C refrigerant pressure sensor, terminal 1 |
| 40 | YEL | POWERTRAIN RLY CTRL (5991) | Engine controls ignition relay coil, underhood fuse block |
| 41 | VIO/LT BLU | LOW SPD COOLING (5294) | Cooling fans system |
| 43 | WHT | SERIAL DATA - 1 (2501) | Computer data lines system (high-speed GMLAN −) |
| 45 | BRN/VIO | TEMP SENS SIG (472) | Multi-function intake air sensor, terminal 8 |
| 46 | YEL/BLK | TEMP SENS 2 SIG (3000) | ECT sensor 2, terminal 1 |
| 47 | LT BLU/WHT | CHARGE IND CTRL (225) | Starting/charging system |
| 52 | BRN/WHT | CHECK ENGINE IND CTRL (419) | Instrument cluster malfunction indicator, via X202-2 |
| 53 | WHT/GRY | A/C COMPR CLTH RLY CTRL (459) | Air conditioning system |
| 54 | BRN/YEL | HIGH SPEED RELAY CTRL (473) | Cooling fans system |
| 56 | WHT | EVAP CANSTR VENT CTRL (1310) | EVAP emission vent solenoid valve, terminal 2 |

## X2 — 73 terminals (diagram sheet 6)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | LT BLU/VIO | IGN CTRL 1 (2121) | Ignition coil/module, terminal D (ignition control 1) |
| 2 | LT GRN/YEL | FUEL INJ CTRL 1 (1744) | Fuel injector 1, terminal 2 |
| 3 | LT GRN/YEL | FUEL INJ CTRL 3 (1746) | Fuel injector 3, terminal 2 |
| 4 | BRN/YEL | FUEL INJ CTRL 4 (844) | Fuel injector 4, terminal 2 |
| 5 | YEL/WHT | FUEL INJ CTRL 2 (1745) | Fuel injector 2, terminal 2 |
| 10 | GRY/LT BLU | CAMSHAFT PHASER EXHAUST SOL 1 (5282) | Exhaust camshaft position actuator solenoid valve, terminal 2 |
| 11 | VIO/BRN | CAMSHAFT PHASER INTAKE SOL 1 (5284) | Intake camshaft position actuator solenoid valve, terminal 2 |
| 13 | VIO/LT BLU | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Underhood fuse block, ECM 2 fuse (20 A), through splice J119 |
| 14 | LT BLU | THERMOSTAT ENGINE COOL CTRL (6814) | Engine coolant thermostat heater, terminal 2 |
| 15 | YEL | THROTTLE ACTUATOR CTRL OPEN (581) | Throttle body motor, terminal B |
| 16 | BRN/WHT | THROTTLE ACTUATOR CTRL CLOSE (582) | Throttle body motor, terminal A |
| 17 | LT GRN/LT BLU | IGN CTRL 3 (2123) | Ignition coil/module, terminal F (ignition control 3) |
| 20 | BLK/VIO | LOW REF (6272) | Throttle body, terminal C (low reference) |
| 21 | GRY/BLK | CAMSHAFT CAM X GND (6267) | Exhaust camshaft position sensor, terminal 2 |
| 24 | LT GRN/BLK | CAMSHAFT CAM W GND (6266) | Intake camshaft position sensor, terminal 2 |
| 28 | VIO/LT BLU | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Same fused relay-supply branch as X2-13, splice J119 |
| 29 | BLK/LT BLU | LOW REF (6783) | Intake camshaft position actuator solenoid valve, terminal 1 |
| 30 | BLK/VIO | LOW REF (6754) | Exhaust camshaft position actuator solenoid valve, terminal 1 |
| 31 | YEL/LT BLU | OIL PRESS SW SIG CTRL (231) | Engine oil pressure switch, terminal 1 |
| 33 | YEL/LT BLU | IGN CTRL 4 (2124) | Ignition coil/module, terminal G (ignition control 4) |
| 35 | BLK/LT BLU | LOW REF (2129) | Ignition coil/module, terminal C (low reference) |
| 36 | VIO/LT BLU | CRANKSHAFT 60X SENS VOLT (6270) | Crankshaft position sensor, terminal 1 |
| 37 | GRY/YEL | CAMSHAFT CAM X SUP VOLT (6457) | Exhaust camshaft position sensor, terminal 1 |
| 40 | GRY/LT BLU | CAMSHAFT CAM W SUP VOLT (6259) | Intake camshaft position sensor, terminal 1 |
| 43 | GRY/RED | 5 VOLT REF (416) | Fuel pressure sensor, terminal 3 |
| 44 | BLK/BRN | LOW REF (2752) | Fuel pressure sensor, terminal 2 |
| 46 | GRY | TURBO BOOST PRESS SENS TEMP SIG (5641) | Turbocharger boost/intake air temperature sensor, terminal 4 |
| 47 | YEL/BRN | HO2S LOW SIG BANK 1 SENS 1 (1664) | Heated oxygen sensor 1 (exhaust manifold), terminal 3 |
| 49 | BLK/YEL | LOW REF (1716) | Knock sensor, terminal 2 |
| 53 | LT BLU/WHT | IGN CTRL 2 (2122) | Ignition coil/module, terminal E (ignition control 2) |
| 56 | LT GRN | CRANKSHAFT 60X SENS SIG (6271) | Crankshaft position sensor, terminal 3 |
| 57 | VIO/BLK | CAMSHAFT CAM X SIG (6264) | Exhaust camshaft position sensor, terminal 3 |
| 60 | YEL/VIO | CAMSHAFT CAM W SIG (6265) | Intake camshaft position sensor, terminal 3 |
| 63 | BRN/LT GRN | THROTTLE POSITION SENSOR SIG 1 (485) | Throttle body, terminal D |
| 65 | BRN/LT BLU | THROTTLE POSITION SENSOR SIG 2 (486) | Throttle body, terminal F |
| 67 | LT GRN | HO2S HIGH SIG BANK 1 SENS 1 (1665) | Heated oxygen sensor 1 (exhaust manifold), terminal 4 |
| 69 | VIO/GRY | KNOCK SENSOR SIG 1 (496) | Knock sensor, terminal 1 |
| 72 | GRY/WHT | HO2S HTR LOW CTRL BANK 1 SENS 1 (3113) | Heated oxygen sensor 1, heater terminal 2 |
| 73 | BLK | GROUND (1750) | G104, rear of cylinder bank |

## X3 — 73 terminals (diagram sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | LT GRN/WHT | REVERSE SW SIG (5007) | Exterior lights system (reverse switch) |
| 10 | LT GRN/LT BLU | EVAP CANISTER PUR SOL CTRL (428) | EVAP purge solenoid valve, terminal 1 |
| 13 | BRN/YEL | OVERRUN AIR VALVE SOL (5268) | Turbocharger bypass solenoid valve, terminal 1 |
| 15 | BRN/YEL | WASTE GATE SOL CTRL (258) | Turbocharger wastegate solenoid valve, terminal 1 |
| 17 | YEL | GENERATOR FIELD DUTY CYCLE SIG (23) | Starting/charging system |
| 19 | BLK/YEL | LOW REF (401) | Transmission output shaft speed sensor, terminal 1 (M/T as marked) |
| 22 | BLK/GRY; BLK/YEL | LOW REF (6110; 5382) | Clutch pedal pressure sensor terminal C (6110, M/T); exterior lights system (5382) |
| 27 | BLK/LT GRN | LOW REF (6281) | FTP sensor terminal 2; J303 branches to instrument cluster system (with emissions system) |
| 28 | GRY/RED | 5 VOLT REF (2704) | FTP sensor, terminal 3 |
| 29 | BLK/LT GRN | LOW REF (469) | Manifold absolute pressure (MAP) sensor, terminal 2 |
| 30 | BLK/BRN | LOW REF (2761) | ECT sensor 1, terminal 2 |
| 32 | BRN/GRY | HO2S HTR HI CTRL BANK1 SENS2 (5035) | Heated oxygen sensor 2 (downstream of catalytic converter), heater terminal 2 |
| 35 | YEL/BRN | 5 VOLT REF (3604) | Transmission output shaft speed sensor, terminal 3 (M/T as marked) |
| 38 | GRY/RED; WHT/RED | CLUTCH APPLY SENS VOLT REF (6109; 5381) | Clutch pedal pressure sensor terminal A (6109, M/T); exterior lights system (5381) |
| 43 | BRN/WHT | 5 VOLT REF (6283) | MAP sensor, terminal 1 |
| 45 | LT GRN/WHT | ABSOLT PRESS SENS SIG (432) | MAP sensor, terminal 3 |
| 46 | LT GRN/VIO | ENG COOLANT TEMP SENS SIG (2032) | ECT sensor 1, terminal 1 |
| 55 | YEL | OUTPUT SPD DIGITAL SIG (400) | Transmission output shaft speed sensor, terminal 2 (M/T as marked) |
| 58 | YEL; WHT/LT GRN | SENS SIG (6111; 5380) | Clutch pedal pressure sensor terminal B (6111, M/T); exterior lights system (5380) |
| 63 | BLK/BRN | FUEL TANK PRESS SENS SIG (6284) | FTP sensor, terminal 1 |
| 64 | LT BLU/VIO | PRIMARY FUEL LVL SENS SIG (1589) | Instrument cluster system / primary fuel level signal |
| 67 | LT GRN | HO2S HIGH SIG BANK 1 SENS 2 (1668) | Heated oxygen sensor 2, terminal 4 |
| 68 | YEL/WHT | HO2S LOW SIG BANK 1 SENS 2 (1669) | Heated oxygen sensor 2, terminal 3 |

## Power, relay and ground routing

Sheet 3 shows battery fuse block fuse 4 (150 A) supplying the underhood fuse block next to the left front strut tower. The ECM fuse (15 A) feeds X1-20 continuously; ECM5 (10 A), hot with the ignition main relay energized, feeds X1-19. X1-40 controls the engine controls ignition relay coil (block X2-D2). ECM 2 (20 A) feeds X2-13/X2-28 through J119 and the thermostat heater. The injector/ignition-coil fuse (15 A) feeds the ignition module and all injectors through J118. ECM 3 (10 A), through J117, feeds both oxygen sensor heaters and the wastegate solenoid. ECM 1 (10 A), through J133, feeds the EVAP purge and turbocharger bypass solenoids. ECM 4 (10 A), through J132, feeds the multi-function intake air sensor. The flux fuel fuse (10 A) feeds the EVAP vent valve. FSCM 1 is 20 A; FSCM2/levelling is 10 A.

On sheet 4, the fuel pump control module receives battery power at terminal 1 (FSCM 1) and ignition at terminal 21 (FSCM2/levelling). Its grounds reach G400 (right C pillar) through J335. Module terminal 38 is the pump low reference, terminals 5/6 and 17/18 are GMLAN pairs, and terminal 20 receives the ECM primary relay control circuit 465. The fuel pump/level sensor assembly and module locations are separately annotated for notchback and hatchback bodies.

X2-73 (BLK, circuit 1750) grounds at G104, rear of cylinder bank. The ignition module and multi-function intake air sensor also ground at G104, the latter through J110. Sensor low-reference circuits are listed separately from these chassis grounds.
