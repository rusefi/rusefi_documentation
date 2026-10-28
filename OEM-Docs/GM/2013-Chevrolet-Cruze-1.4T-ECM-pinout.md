# 2013 Chevrolet Cruze L4-1.4L Turbo — ECM pinout

Transcribed from [2013 Chevrolet Cruze 1.4T.pdf](2013%20Chevrolet%20Cruze%201.4T.pdf) (ALLDATA “Engine Controls,” Electrical – Interactive Color (Non OE), diagram sheets 1–6 = PDF pages 2–7, sheet IDs 410091–410096; source vehicle heading: 2013 Chevrolet Cruze L4-1.4L Turbo).

Engine Control Module (ECM), location not specified on these sheets. The drawing depicts X1 with 56 terminals and X2 and X3 with 73 terminals each. These are schematic terminal numbers, not connector-face views. Unlisted terminals are not connected **in this diagram**; their physical use is not established.

Wire colours retain the printed abbreviations: BLK black, BLU blue, BRN brown, GRN green, GRY gray, RED red, VIO violet, WHT white, YEL yellow; LT light, DK dark, NCA no colour available. A slash separates base and tracer colours. Circuit numbers follow the printed function in parentheses; “not printed” records missing source text. Component terminal numbers in the destination column come from tracing the wires across sheets.

X3-22, X3-38 and X3-58 each have alternative clutch/brake branches drawn from the **same terminal**; the bends beside adjacent pin numbers do not identify extra pins. M/T and A/T mean manual and automatic transmission. The separate brake pedal position sensor has a six-terminal M/T connection and a three-terminal A/T connection. The 6110/6109/6111 branches reach the clutch sensor; 5382/5381/5380 reach the brake sensor. X1-8 has a wire but no printed function or circuit number; X1-9 and X1-23 also lack circuit numbers at the ECM.

## X1 — 56 terminals (diagram sheet 3)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 2 | GRN/WHT | ACC PEDAL POS SIG 2 (1162) | Accelerator pedal position (APP) sensor, terminal 6 |
| 3 | GRN/WHT | MAS AIR FLOW SENS SIG (492) | Multi-function intake air sensor, terminal 3 |
| 8 | GRY/BLU | Not printed (circuit number not printed) | Multi-function intake air sensor, terminal 1 |
| 9 | YEL/WHT | PRESS SENS SIG (circuit number not printed) | Multi-function intake air sensor, terminal 6 |
| 10 | YEL/WHT | ACC PEDAL POS SIG 1 (1161) | APP sensor, terminal 3 |
| 11 | GRN | PRE TR AIR TEMP PR SIG (7330) | Intake manifold pressure/air temperature sensor, terminal 4 |
| 12 | GRN | A/C RFGT PR SENS SIG (380) | A/C refrigerant pressure sensor, terminal 3 |
| 13 | BLK/BRN | LOW REF (5514) | Intake manifold pressure/air temperature sensor, terminal 2 |
| 16 | BRN/RED | 5 VOLT REF (1274) | APP sensor, terminal 1 |
| 18 | BLU | WAKEUP SERIAL DATA (5985) | Computer data lines system |
| 19 | VIO/BLU | RUN/CRANK IGN 1 VOLT (139) | Underhood fuse block, fuse 5 (15 A); ignition relay supply |
| 20 | RED/WHT | BATTERY POSITIVE VOLT (140) | Underhood fuse block, fuse 2 (15 A), battery feed |
| 23 | WHT/RED | PRES SENS 5 V REF (circuit number not printed) | Multi-function intake air sensor, terminal 2 |
| 24 | BRN/RED | 5 VOLT REF (1164) | APP sensor, terminal 2 |
| 25 | BRN/RED | 5 VOLT REF (7331) | A/C refrigerant pressure sensor, terminal 2 |
| 26 | BRN/RED | 5 VOLT REF (2700) | Intake manifold pressure/air temperature sensor, terminal 3 |
| 27 | YEL/BLK | STARTR ENBLE RLY CTRL (625) | Starting/charging system |
| 28 | GRN/GRY | PRIMARY RLY CTRL (465) | Fuel pump control module, terminal 20, via underhood fuse block |
| 29 | BLU | HS GMLAN + (2500) | Computer data lines system (high-speed GMLAN +) |
| 30 | BLK/VIO | LOW REF (1272) | APP sensor, terminal 5 |
| 31 | BLK/VIO | LOW REF (2760) | Multi-function intake air sensor, terminal 7 |
| 32 | BLK/BLU | LOW REF (6813) | Engine coolant temperature (ECT) sensor 2, terminal 1 |
| 33 | WHT/DK BLU | CRUISE/ETC/TCC BRK SIG (6311) | Exterior lights system |
| 34 | GRN | PARK NETRL POS SW SIG (275) | Transmission system |
| 38 | BLK/VIO | LOW REF (1271) | APP sensor, terminal 4 |
| 39 | BLK/GRN | LOW REF (7332) | A/C refrigerant pressure sensor, terminal 1 |
| 40 | YEL | POWERTRAIN RLY CTRL (5991) | Engine controls ignition relay coil, underhood fuse block |
| 41 | GRN/VIO | LOW SPD COOLING FAN RLY CTRL (335) | Cooling fans system |
| 43 | WHT | HS GMLAN - (2501) | Computer data lines system (high-speed GMLAN −) |
| 45 | BRN/VIO | TEMP SENS SIG (472) | Multi-function intake air sensor, terminal 8 |
| 46 | YEL/BLK | TEMP SENS 2 SIG (3000) | ECT sensor 2, terminal 2 |
| 47 | BRN | CHARGE IND CTRL (25) | Starting/charging system |
| 52 | BRN/WHT | CHECK ENGINE IND CTRL (419) | Instrument cluster malfunction indicator, via X200-79 |
| 54 | BRN/YEL | HIGH SPEED RELAY CTRL (473) | Cooling fans system |
| 56 | WHT | EVAP CANSTR VENT CTRL (1310) | EVAP emission vent solenoid valve, terminal 2 |

## X2 — 73 terminals (diagram sheet 6)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | BLU/VIO | IGN CTRL 1 (2121) | Ignition coil/module, terminal D (ignition control 1) |
| 2 | BRN/VIO | FUEL INJ CTRL 1 (1744) | Fuel injector 1, terminal 2 |
| 3 | BRN/YEL | FUEL INJ CTRL 3 (1746) | Fuel injector 3, terminal 2 |
| 4 | BRN | FUEL INJ CTRL 4 (844) | Fuel injector 4, terminal 2 |
| 5 | YEL/WHT | FUEL INJ CTRL 2 (1745) | Fuel injector 2, terminal 2 |
| 10 | GRY/BLU | CAMSHAFT PHASER EXHAUST SOL 1 (5282) | Exhaust camshaft position actuator solenoid valve, terminal 2 |
| 11 | VIO/BRN | CAMSHAFT PHASER INTAKE SOL 1 (5284) | Intake camshaft position actuator solenoid valve, terminal 2 |
| 13 | RED/BLU | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Underhood fuse block, fuse 9 (15 A), through splices J114 and J112 |
| 14 | BLU | THERMOSTAT ENGINE COOL CTRL (6814) | Engine coolant thermostat heater, terminal 2 |
| 15 | BRN/RED | THROTTLE ACTUATOR CTRL OPEN (581) | Throttle body motor, terminal B |
| 16 | BRN/WHT | THROTTLE ACTUATOR CTRL CLOSE (582) | Throttle body motor, terminal A |
| 17 | GRN/BLU | IGN CTRL 3 (2123) | Ignition coil/module, terminal F (ignition control 3) |
| 20 | BLK/VIO | LOW REF (6272) | Throttle body, terminal C (low reference) |
| 21 | BLK/GRY | CAMSHAFT CAM X GND (6267) | Exhaust camshaft position sensor, terminal 2 |
| 24 | BLK/GRN | CAMSHAFT CAM W GND (5301) | Intake camshaft position sensor, terminal 2 |
| 28 | RED/BLU | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Same fused relay-supply branch as X2-13, splice J112 |
| 29 | BRN/WHT | LOW REF (6753) | Intake camshaft position actuator solenoid valve, terminal 1 |
| 30 | BLK/VIO | LOW REF (6754) | Exhaust camshaft position actuator solenoid valve, terminal 1 |
| 31 | YEL/BLU | OIL PRESSURE SW SIG (231) | Engine oil pressure switch, terminal 1 |
| 33 | YEL/BLU | IGN CTRL 4 (2124) | Ignition coil/module, terminal G (ignition control 4) |
| 35 | BLK/BLU | LOW REF (2129) | Ignition coil/module, terminal C (low reference) |
| 36 | VIO/BLU | CRANKSHAFT 60X SENS VOLT (6270) | Crankshaft position sensor, terminal 1 |
| 37 | GRY/YEL | CAMSHAFT CAM X SUP VOLT (6457) | Exhaust camshaft position sensor, terminal 1 |
| 40 | GRY/BLU | CAMSHAFT CAM W SUP VOLT (5300) | Intake camshaft position sensor, terminal 1 |
| 43 | BRN/RED | 5 VOLT REF (2071) | Fuel pressure sensor, terminal 3 |
| 44 | BLK/YEL | LOW REF (2752) | Fuel pressure sensor, terminal 2 |
| 46 | GRY | TURBO BOOST PRESS SENS TEMP SIG (7329) | Intake manifold pressure/air temperature sensor, terminal 1 |
| 47 | BLK/GRN | HO2S LOW SIG BANK 1 SENS 1 (1664) | Heated oxygen sensor 1 (exhaust manifold), terminal 3 |
| 49 | BLK/YEL | LOW REF (1716) | Knock sensor, terminal 2 |
| 53 | BLU/WHT | IGN CTRL 2 (2122) | Ignition coil/module, terminal E (ignition control 2) |
| 56 | GRN | CRANKSHAFT 60X SENS SIG (6271) | Crankshaft position sensor, terminal 3 |
| 57 | VIO/BLK | CAMSHAFT CAM X SIG (6264) | Exhaust camshaft position sensor, terminal 3 |
| 60 | YEL/VIO | CAMSHAFT CAM W SIG (5275) | Intake camshaft position sensor, terminal 3 |
| 63 | BRN/GRN | THROTTLE POSITION SENSOR SIG 1 (485) | Throttle body, terminal D |
| 65 | BRN/BLU | THROTTLE POSITION SENSOR SIG 2 (486) | Throttle body, terminal F |
| 67 | BLK/GRN | HO2S HIGH SIG BANK 1 SENS 1 (1665) | Heated oxygen sensor 1 (exhaust manifold), terminal 4 |
| 69 | VIO/GRY | KNOCK SENSOR SIG 1 (496) | Knock sensor, terminal 1 |
| 72 | GRY/WHT | HO2S HTR LOW CTRL BANK 1 SENS 1 (3113) | Heated oxygen sensor 1, heater terminal 2 |
| 73 | BLK | GROUND (450) | G114, left rear of engine |

## X3 — 73 terminals (diagram sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | GRN/WHT | REVERSE SW SIG (5007) | Exterior lights system (reverse switch) |
| 10 | GRN/BLU | EVAP CANISTER PUR SOL CTRL (428) | EVAP purge solenoid valve, terminal 1 |
| 13 | GRN | OVERRUN AIR VALVE SOL (3060) | Turbocharger bypass solenoid valve, terminal 1 |
| 15 | BRN/RED | WASTE GATE SOL CTRL (3058) | Turbocharger wastegate solenoid valve, terminal 1 |
| 17 | GRY | GENERATOR FIELD DUTY CYCLE SIG (23) | Starting/charging system |
| 19 | WHT/BLK | LOW REF (3097) | Vehicle speed sensor, terminal 2 (M/T) |
| 22 | BLK/GRY; BLK/BRN | LOW REF (6110; 5382) | Clutch pedal position sensor A (M/T); brake pedal position sensor terminal 6 (M/T) or 2 (A/T), on the alternative 5382 branch |
| 27 | BLK/GRN | LOW REF (6281) | Fuel tank pressure (FTP) sensor, terminal 2; splice J127 also branches to instrument cluster system |
| 28 | BRN/RED | 5 VOLT REF (2704) | FTP sensor, terminal 3 |
| 29 | BLK/GRN | LOW REF (469) | Manifold absolute pressure (MAP) sensor, terminal 2 |
| 30 | BLK/BLU | LOW REF (2761) | ECT sensor 1, terminal 2 |
| 32 | BRN/GRY | HO2S HTR HI CTRL BANK1 SENS2 (1423) | Heated oxygen sensor 2 (downstream of catalytic converter), heater terminal 2 |
| 35 | GRY/BLK | 5VOLT REF (3096) | Vehicle speed sensor, terminal 1 (M/T) |
| 38 | GRY/RED; WHT/RED | CLUTCH APPLY SENS VOLT REF / 5VOLT REF (6109; 5381) | Clutch pedal position sensor C (M/T); brake pedal position sensor terminal 5 (M/T) or 1 (A/T), on the alternative 5381 branch |
| 43 | YEL/RED | 5 VOLT REF (2709) | MAP sensor, terminal 1 |
| 45 | GRN/WHT | MANIFOLD ABSOLT PRESS SENS SIG (432) | MAP sensor, terminal 3 |
| 46 | BLU | ENGINE COOLANT TEMP SENS SIG (410) | ECT sensor 1, terminal 1 |
| 55 | DK GRN | OUTPUT SPD DIGITAL SIG (3098) | Vehicle speed sensor, terminal 3 (M/T) |
| 58 | YEL; WHT | CLH APP SENS SIG / BRK POS SENS SIG (6111; 5380) | Clutch pedal position sensor B (M/T); brake pedal position sensor terminal 4 (M/T) or 3 (A/T), on the alternative 5380 branch |
| 63 | BLU/WHT | FUEL TANK PRESS SENS SIG (890) | FTP sensor, terminal 1 |
| 64 | BLU/VIO | PRIMARY FUEL LVL SENS SIG (1589) | Instrument cluster system / primary fuel level signal |
| 67 | GRN | HO2S HIGH SIG BANK 1 SENS 2 (1668) | Heated oxygen sensor 2, terminal 4 |
| 68 | BLK/GRN | HO2S LOW SIG BANK 1 SENS 2 (1669) | Heated oxygen sensor 2, terminal 3 |

## Power, relay and ground routing

Sheet 3 shows the underhood fuse block next to the left strut tower. Fuse 2 (15 A) feeds X1-20 continuously. Fuse 5 (15 A), hot with the ignition main relay energized, feeds X1-19 (and splice J144 for A/T). X1-40 controls the engine controls ignition relay coil through block X3-17. Relay-fed fuse 11 (10 A) feeds the multi-function intake air sensor. Fuse 47 (10 A), via J111, feeds the turbocharger bypass and wastegate solenoids, both oxygen sensor heaters and EVAP purge valve. Fuse 10 (15 A) feeds the thermostat heater. Fuse 9 (15 A), via J114, feeds the ignition coil, all four injectors and X2-13/X2-28 (the latter through J112). Fuse 4 (10 A) feeds the EVAP vent valve. Fuse 16 (7.5 A) feeds the active grille air shutter actuator when equipped with engine improvement fuel economy. Fuse 8 (15 A) is marked not used.

Battery fuse block fuse 5 (250 A) has a RED/WHT continuation on sheets 3–4; its downstream destination is not drawn on these sheets. Underhood fuse 67 (20 A) feeds fuel pump control module terminal 1. Fuse 18 (10 A) feeds that module's terminal 21. Its grounds terminate at G402 (right side of luggage compartment); the fuel pump return goes to module terminal 38. Its terminals 5/6 and 17/18 are GMLAN pairs, and terminal 20 receives the ECM primary relay control circuit 465. The brake pedal sensor also connects to body control module X1-19, X3-13 and X1-7 on sheet 5.

X2-73 (BLK, circuit 450) grounds at G114, left rear of engine. The ignition coil grounds separately at G112. The multi-function intake air sensor grounds at G114; the active grille actuator grounds at G101, left front corner of the engine compartment. Sensor low-reference circuits are listed separately from these chassis grounds.
