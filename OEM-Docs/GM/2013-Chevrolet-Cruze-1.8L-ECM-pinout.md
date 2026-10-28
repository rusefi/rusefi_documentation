# 2013 Chevrolet Cruze L4-1.8L — ECM pinout

Transcribed from [2013 Chevrolet Cruze 1.8.pdf](2013%20Chevrolet%20Cruze%201.8.pdf) (ALLDATA “Engine Controls,” Electrical – Interactive Color (Non OE), diagram sheets 1–7 = PDF pages 2–8, sheet IDs 410097–410103; source vehicle heading: 2013 Chevrolet Cruze L4-1.8L).

Engine Control Module (ECM), left side of engine compartment. The drawing depicts X1 with 56 terminals and X2 and X3 with 73 terminals each. These are schematic terminal numbers, not connector-face views. Unlisted terminals are not connected **in this diagram**; their physical use is not established.

Wire colours retain the printed abbreviations: BLK black, BLU blue, BRN brown, GRN green, GRY gray, RED red, VIO violet, WHT white, YEL yellow; LT light, DK dark, NCA no colour available. A slash separates base and tracer colours. Circuit numbers follow the printed function in parentheses; “not printed” records missing source text. Component terminal numbers in the destination column come from tracing the wires across sheets.

X3-22, X3-38 and X3-58 each have alternative clutch/brake branches drawn from the same terminal. M/T and A/T mean manual and automatic transmission. The separate brake pedal position sensor uses six terminals for M/T and three for A/T. The 6110/6109/6111 branches reach the clutch sensor; 5382/5381/5380 reach the brake sensor.

Several printed labels disagree with the drawn destinations. X1-1 says “CHARGE IND CTRL” but reaches the instrument cluster malfunction indicator. X3-12 says “OVERRUN AIR VALVE SOLENOID” but reaches the intake manifold tuning valve. X3-53 says “INTAKE AIR TEMP SENSOR” yet reaches terminal 4 of that same valve; X3-55 says “AIR VALVE SOLENOID” but reaches the M/T vehicle speed sensor. X3-57 says “OUTPUT SPD DIGITAL SIG” but its WHT continuation reaches secondary air injection solenoid valve terminal 2 on sheet 4. These discrepancies are retained rather than assigning functions from a different diagram. X1-51, X1-55, X3-21 and X3-37 have circuit numbers and wires but no printed terminal function. The crankshaft signal is **X2-66**, as drawn on sheet 7.

## X1 — 56 terminals (diagram sheet 3)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | BRN/WHT | CHARGE IND CTRL (419) | Instrument cluster malfunction indicator, via X200-79 (printed function says charge indicator) |
| 2 | GRN/WHT | ACC PEDAL POS SIG 2 (1162) | Accelerator pedal position (APP) sensor, terminal 6 |
| 3 | GRN/WHT | MAS AIR FLOW SENS SIG (492) | Multi-function intake air sensor, terminal 3 |
| 8 | BRN/GRY | HUMIDITY SENS SIG (4008) | Multi-function intake air sensor, terminal 1 (humidity signal) |
| 10 | YEL/WHT | ACC PEDAL POS SIG 1 (1161) | APP sensor, terminal 3 |
| 11 | WHT/YEL | ABSOL PRESS SENS SIG (3200) | Multi-function intake air sensor, terminal 6 |
| 12 | GRN | A/C RFGT PR SENS SIG (380) | A/C refrigerant pressure sensor, terminal 3 |
| 13 | BLK/BRN | PRES SENS LOW REF (5514) | A/C refrigerant pressure sensor, terminal 1 |
| 16 | BRN/RED | PEDAL POS 5 VOLT REF (1274) | APP sensor, terminal 1 |
| 18 | VIO/YEL | WAKEUP SERIAL DATA (5985) | Computer data lines system |
| 19 | VIO/GRY | RUN/CRANK IGN 1 VOLT (139) | Underhood fuse block, fuse 5 (15 A); ignition relay supply |
| 20 | RED/WHT | BATTERY POSITIVE VOLT (140) | Underhood fuse block, fuse 2 (15 A), battery feed |
| 24 | WHT/RED | PEDAL POS 5 VOLT REF 1 (1164) | APP sensor, terminal 2 |
| 25 | WHT/YEL | PRESS SENS 5V RTN (3202) | Multi-function intake air sensor, terminal 2 |
| 26 | BRN/RED | PRESS SENS 5 VOLT REF (2700) | A/C refrigerant pressure sensor, terminal 2 |
| 27 | YEL/BLK | STARTR ENBLE RLY CTRL (625) | Starting/charging system |
| 28 | GRN/GRY | PRIMARY RLY CTRL (465) | Fuel pump control module, terminal 20, via underhood fuse block |
| 29 | BLU | GMLAN SERIAL DATA + 1 (2500) | Computer data lines system (high-speed GMLAN +) |
| 30 | BLK/VIO | PEDAL POSI LOW REF 2 (1272) | APP sensor, terminal 5 |
| 31 | BLK/VIO | TEMP SENS LOW REF (2760) | Multi-function intake air sensor, terminal 7 |
| 32 | BLK/BLU | TEMP SENS 2 LOW REF (6813) | Engine coolant temperature (ECT) sensor 2, terminal 1 |
| 33 | WHT/BLU | CRUISE/ETC/TCC BRK SIG (6311) | Exterior lights system |
| 34 | WHT/GRY | PARK NETRL SIG (1786) | Transmission system |
| 38 | BLK/BLU | PEDAL POSI LOW REF 1 (1271) | APP sensor, terminal 4 |
| 40 | YEL | POWERTRAIN RLY CTRL (5991) | Engine controls ignition relay coil, underhood fuse block |
| 41 | GRN/VIO | LOW SPD COOLING FAN RLY CTRL (335) | Cooling fans system |
| 43 | WHT | GMLAN SERIAL DATA - 1 (2501) | Computer data lines system (high-speed GMLAN −) |
| 45 | BRN/VIO | AIR TEMP SENS SIG (472) | Multi-function intake air sensor, terminal 8 |
| 46 | YEL/BLK | TEMP SENS 2 SIG (3000) | ECT sensor 2, terminal 2 |
| 47 | BRN | CHARGE IND CTRL (25) | Starting/charging system |
| 51 | YEL/BLK | Not printed (429) | Secondary air injection solenoid valve relay coil, underhood fuse block |
| 53 | WHT/GRY | COMP CLUTCH RLY CTRL (459) | Air conditioning system |
| 54 | BRN/YEL | HIGH SPEED RELAY CTRL (473) | Cooling fans system |
| 55 | GRN/BLU | Not printed (436) | Secondary air injection pump relay coil, underhood fuse block |
| 56 | WHT | EVAP CANSTR VENT CTRL (1310) | EVAP emission vent solenoid valve, terminal 2 |

## X2 — 73 terminals (diagram sheet 7)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | BLU/VIO | IGN CTRL 1 (2121) | Ignition coil/module, terminal D (ignition control 1) |
| 2 | GRN/YEL | FUEL INJ CTRL 1 (1744) | Fuel injector 1, terminal 2 |
| 3 | BRN/VIO | FUEL INJ CTRL 3 (1746) | Fuel injector 3, terminal 2 |
| 4 | BRN/YEL | FUEL INJ CTRL 4 (844) | Fuel injector 4, terminal 2 |
| 5 | YEL/WHT | FUEL INJ CTRL 2 (1745) | Fuel injector 2, terminal 2 |
| 10 | GRY/BLU | CAMSHAFT PHASER EXHAUST SOL 1 (5282) | Exhaust camshaft position actuator solenoid valve, terminal 2 |
| 11 | VIO/BRN | CAMSHAFT PHASER INTAKE SOL 1 (5284) | Intake camshaft position actuator solenoid valve, terminal 2 |
| 13 | VIO/BLU | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Underhood fuse block, fuse 47 (10 A), through splices J111 and J112 |
| 14 | BLU | THERMOSTAT ENGINE COOL CTRL (6814) | Engine coolant thermostat heater, terminal 1 |
| 15 | YEL | THROTTLE ACTUATOR CTRL OPEN (581) | Throttle body motor, terminal B |
| 16 | BRN/WHT | THROTTLE ACTUATOR CTRL CLOSE (582) | Throttle body motor, terminal A |
| 17 | GRN/BLU | IGN CTRL 3 (2123) | Ignition coil/module, terminal F (ignition control 3) |
| 20 | BLK/VIO | LOW REF (6272) | Throttle body, terminal C (low reference) |
| 21 | BLK/GRY | CAMSHAFT CAM X GND (5296) | Exhaust camshaft position sensor, terminal 2 |
| 24 | BLK/GRN | CAMSHAFT CAM W GND (5301) | Intake camshaft position sensor, terminal 2 |
| 28 | VIO/BLU | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Same fused relay-supply branch as X2-13, splice J112 |
| 29 | BRN/WHT | LOW REF (6753) | Intake camshaft position actuator solenoid valve, terminal 1 |
| 30 | BLK/VIO | LOW REF (6754) | Exhaust camshaft position actuator solenoid valve, terminal 1 |
| 31 | YEL/BLU | OIL PRESSURE SW SIG (231) | Engine oil pressure switch, terminal 1 |
| 33 | YEL/BLU | IGN CTRL 4 (2124) | Ignition coil/module, terminal G (ignition control 4) |
| 35 | BLK/BLU | LOW REF (2129) | Ignition coil/module, terminal C (low reference) |
| 36 | VIO/BLU | CRANKSHAFT 60X SENS VOLT (6270) | Crankshaft position sensor, terminal 3 (NCA on sensor side) |
| 37 | GRY/YEL | CAMSHAFT CAM X SUP VOLT (5297) | Exhaust camshaft position sensor, terminal 1 |
| 40 | GRY/BLU | CAMSHAFT CAM W SUP VOLT (5300) | Intake camshaft position sensor, terminal 1 |
| 43 | BRN/RED | 5 VOLT REF (2071) | Fuel pressure sensor, terminal 3 |
| 44 | BLK/BRN | LOW REF (2752) | Fuel pressure sensor, terminal 2 (BLK/YEL at sensor, BLK/BRN at ECM) |
| 47 | WHT/BLK | HO2S LOW SIG BANK 1 SENS 1 (1664) | Heated oxygen sensor 1, terminal 2 |
| 49 | BLK/YEL | LOW REF (1716) | Knock sensor, terminal 2 |
| 53 | BLU/WHT | IGN CTRL 2 (2122) | Ignition coil/module, terminal E (ignition control 2) |
| 57 | VIO/BLK | CAMSHAFT CAM X SIG (5273) | Exhaust camshaft position sensor, terminal 3 |
| 60 | YEL/VIO | CAMSHAFT CAM W SIG (5275) | Intake camshaft position sensor, terminal 3 |
| 63 | BRN/GRN | THROTTLE POSITION SENSOR SIG 1 (485) | Throttle body, terminal D |
| 65 | BRN/BLU | THROTTLE POSITION SENSOR SIG 2 (486) | Throttle body, terminal F |
| 66 | GRN | CRANKSHAFT 60X SENS SIG (6271) | Crankshaft position sensor, terminal 1 (NCA on sensor side) |
| 67 | VIO/GRY | HO2S HIGH SIG BANK 1 SENS 1 (3110) | Heated oxygen sensor 1, terminal 4 |
| 69 | VIO/GRY | KNOCK SENSOR SIG 1 (496) | Knock sensor, terminal 1 |
| 72 | GRY/WHT | HO2S HTR LOW CTRL BANK 1 SENS 1 (3113) | Heated oxygen sensor 1, heater terminal 3 |
| 73 | BLK | GROUND (450) | G114, left rear of engine |

## X3 — 73 terminals (diagram sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | GRN/WHT | REVERSE SW SIG (5007) | Exterior lights system (reverse switch) |
| 10 | GRN/BLU | EVAP CANISTER PUR SOL CTRL (428) | EVAP purge solenoid valve, terminal 1 |
| 12 | BLU | OVERRUN AIR VALVE SOLENOID (7302) | Intake manifold tuning solenoid valve, terminal 3 (sheet 4); source labels this overrun air valve |
| 17 | GRY | GENERATOR FIELD DUTY CYCLE SIG (23) | Starting/charging system |
| 19 | WHT/BLK | LOW REF (3097) | Vehicle speed sensor, terminal 2 (M/T) |
| 21 | GRN/BRN | Not printed (3603) | Secondary air injection solenoid valve, terminal 3 (sheet 4) |
| 22 | BLK/GRY; BLK/BRN | LOW REF (6110; 5382) | Clutch pedal position sensor A (M/T); brake pedal position sensor terminal 6 (M/T) or 2 (A/T), on the alternative 5382 branch |
| 27 | BLK/GRN | LOW REF (6281) | Fuel tank pressure (FTP) sensor, terminal 2; splice J127 also branches to instrument cluster system |
| 28 | GRY/RED | 5 VOLT REF (2704) | FTP sensor, terminal 3 |
| 29 | BLK/GRN | LOW REF (469) | Manifold absolute pressure (MAP) sensor, terminal 2 |
| 30 | BLK/BRN | LOW REF (2761) | ECT sensor 1, terminal 2 |
| 32 | GRN/WHT | HO2S HTR HI CTRL BANK1 SENS2 (3122) | Heated oxygen sensor 2 (downstream of catalytic converter), heater terminal 2 |
| 35 | GRY/BLK | 5VOLT REF (3096) | Vehicle speed sensor, terminal 1 (M/T) |
| 37 | WHT/BRN | Not printed (6452) | Secondary air injection solenoid valve, terminal 1 (sheet 4) |
| 38 | GRY/RED; WHT | CLUTCH APPLY SENS VOLT REF / 5VOLT REF (6109; 5381) | Clutch pedal position sensor C (M/T); brake pedal position sensor terminal 5 (M/T) or 1 (A/T), on the alternative 5381 branch |
| 43 | YEL/RED | 5 VOLT REF (2709) | MAP sensor, terminal 1 |
| 45 | GRN/WHT | MANIFOLD ABSOLT PRESS SENS SIG (432) | MAP sensor, terminal 3 |
| 46 | BLU | ENGINE COOLANT TEMP SENS SIG (410) | ECT sensor 1, terminal 1 |
| 53 | GRY/GRN | INTAKE AIR TEMP SENSOR (7303) | Intake manifold tuning solenoid valve, terminal 4 (sheet 4) |
| 55 | DK GRN | AIR VALVE SOLENOID (3098) | Vehicle speed sensor, terminal 3 (M/T); printed function says air valve solenoid |
| 57 | WHT | OUTPUT SPD DIGITAL SIG (6453) | Secondary air injection solenoid valve, terminal 2 (sheet 4); printed function says output speed signal |
| 58 | YEL; WHT | CLH APP SENS SIG / BRK POS SENS SIG (6111; 5380) | Clutch pedal position sensor B (M/T); brake pedal position sensor terminal 4 (M/T) or 3 (A/T), on the alternative 5380 branch |
| 63 | BLU/WHT | FUEL TANK PRESS SENS SIG (890) | FTP sensor, terminal 1 |
| 64 | BLU/VIO | PRIMARY FUEL LVL SENS SIG (1589) | Instrument cluster system / primary fuel level signal |
| 67 | VIO/BLU | HO2S HIGH SIG BANK 1 SENS 2 (3120) | Heated oxygen sensor 2, terminal 4 |
| 68 | WHT/YEL | HO2S LOW SIG BANK 1 SENS 2 (3121) | Heated oxygen sensor 2, terminal 3 |

## Power, relay and ground routing

Sheet 3 shows the underhood fuse block next to the left strut tower. Fuse 2 (15 A) feeds X1-20 continuously; relay-fed fuse 5 (15 A) feeds X1-19, with splice J144 for A/T. X1-40 controls the engine controls ignition relay coil through block X3-17. Relay-fed fuse 11 (10 A) feeds the multi-function intake air sensor. Fuse 9 (15 A) feeds the ignition coil and, through J114 and injector-harness splice J108, the injectors. Fuse 47 (10 A), through J111, feeds both oxygen sensor heaters, the EVAP purge valve and X2-13/X2-28 (the latter through J112). Sheet 4 labels the secondary-air relay-coil supply as coming from fuse 47. Fuse 4 (10 A) feeds the EVAP vent and intake manifold tuning valve. Fuse 10 (15 A) feeds the thermostat heater. Fuse 16 (7.5 A) supplies the active grille actuator where equipped with engine improvement fuel economy. The block marks its X3-13 branch not used.

Sheet 4 shows secondary air injection pump fuse 59 (30 A) feeding the pump relay contact. Relay output passes through X190-16 to pump terminal A; terminal B grounds at G114 through J124. X1-55 (circuit 436) controls the pump relay coil. X1-51 (circuit 429) controls the secondary air injection solenoid valve relay coil; its switched output feeds valve terminal 5. Valve terminal 4 grounds at G114 through J124. Valve terminals 1, 2 and 3 connect to X3-37, X3-57 and X3-21, respectively. Fuse 14 (10 A) is drawn as a loop between block X2-20 and X2-9, with no external load shown.

Battery fuse block fuse 5 (250 A) has a RED/WHT continuation through sheets 3–5, without a downstream load shown. Fuse 67 (20 A) feeds fuel pump control module terminal 1; fuse 18 (10 A) feeds terminal 21. The module grounds at G402, right side of luggage compartment. Its terminal 38 is the pump low reference, terminals 5/6 and 17/18 are serial-data pairs, and terminal 20 receives ECM primary relay control circuit 465. Sheet 6 shows the brake sensor's body control module connections (X1-19, X3-13 and X1-7).

X2-73 (BLK, circuit 450) grounds at G114, left rear of engine. The multi-function intake air sensor, manifold tuning valve, secondary air pump and secondary air solenoid ground through J124 at G114. The ignition coil grounds at G112 (top left rear of engine); the active grille actuator grounds at G101 (left front corner of engine compartment).
