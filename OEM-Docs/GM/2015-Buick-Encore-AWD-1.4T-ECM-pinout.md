# 2015 Buick Encore AWD L4-1.4L Turbo — ECM pinout

Transcribed from [2015 Buick Truck Encore AWD 1.4T ECU.pdf](2015%20Buick%20Truck%20Encore%20AWD%201.4T%20ECU.pdf) (ALLDATA “Engine Controls,” diagram sheets 1–6 = PDF pages 2–7, sheet IDs 475589–475594; 2015 Buick Encore AWD L4-1.4L Turbo).

Engine Control Module (ECM), left front of engine compartment. The diagram depicts X1 as a 56-terminal connector and X2 and X3 as 73-terminal connectors. Connector labels and terminal numbers below are those printed at the ECM.

Wire colors retain the source abbreviations (BLK black, BLU blue, BRN brown, GRN green, GRY gray, ORG orange, PNK pink, PPL purple, RED red, TAN tan, VIO violet, WHT white, YEL yellow; LT light, DK dark). Circuit numbers appear in parentheses after the printed function. Shared-reference rows identify source sheets for branch tracing. Unlisted terminals are not connected **in this diagram**; this does not establish whether a terminal is physically unused.

The source prints several alternate wire colors as “OR”; both are preserved. X2-27 continues to the door locks system as drawn on sheet 6. Only individually wired or identified terminals are listed below.

## X1 — 56 terminals (diagram sheets 3–4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 2 | GRN/WHT (OR LT GRN/WHT) | ACCELERATOR PEDAL POS SIG 2 (1162) | Accelerator pedal position sensor |
| 3 | GRN/WHT (OR LT GRN/WHT) | MASS AIR FLOW SENS SIG (492) | Mass air flow / intake air sensor |
| 8 | BRN/GRY | HUMIDITY SENS SIG (4008) | Multi-function intake air sensor |
| 9 | YEL/WHT | PRESS SENS SIG (3200) | Pressure sensor circuit |
| 10 | YEL/WHT | ACCELERATOR PEDAL POS SIG 1 (1161) | Accelerator pedal position sensor |
| 11 | YEL/WHT | THROTTLE INLET SENS SIG (3200) | Throttle inlet pressure sensor |
| 12 | GRN (OR LT GRN) | A/C REFRIGERANT PRESS SENS SIG (380) | Air conditioning system |
| 13 | BLK/BRN | LOW REF (5514) | Shared reference / supply circuit; trace 5514 on sheets 3–4 |
| 16 | BRN/RED | 5 VOLT REF (1274) | Shared reference / supply circuit; trace 1274 on sheets 3–4 |
| 18 | VIO/YEL | WAKEUP SERIAL DATA (5985) | Computer data lines system |
| 19 | VIO/GRY | IGN (139) | Fuse block supply |
| 20 | RED/WHT | B+ (140) | Fuse block supply |
| 23 | WHT/RED | PRESS SENS 5 V REF (3201) | Pressure sensor circuit |
| 24 | WHT/RED | 5 VOLT REF (1) (1164) | Shared reference / supply circuit; trace 1164 on sheets 3–4 |
| 25 | WHT/RED | 5 VOLT REF (3201) | Shared reference / supply circuit; trace 3201 on sheets 3–4 |
| 26 | BRN/RED | 5 VOLT REF (2700) | Shared reference / supply circuit; trace 2700 on sheets 3–4 |
| 27 | YEL/BLK | START ENBLE RLY CTRL (625) | Relay / fuse block circuit |
| 28 | GRN/GRY (OR LT GRN/GRY) | PRIMARY RLY CTRL (465) | Fuel pump relay or control circuit |
| 29 | BLU | SERIAL DATA + 1 (2500) | Computer data lines system |
| 30 | BLK/VIO | LOW REF (1272) | Shared reference / supply circuit; trace 1272 on sheets 3–4 |
| 31 | BLK/VIO | LOW REF (2760) | Shared reference / supply circuit; trace 2760 on sheets 3–4 |
| 32 | BLK/BLU (OR BLK/LT BLU) | LOW REF (6813) | Shared reference / supply circuit; trace 6813 on sheets 3–4 |
| 33 | WHT/BLU | CRUISE/ETC/TCC BRK SIG (6311) | Brake or clutch pedal circuit |
| 34 | WHT/GRY | PARK NETRL POS SW SIG (1786) | Transmission / driveline system |
| 38 | BLK/BLU (OR BLK/LT BLU) | LOW REF (1271) | Shared reference / supply circuit; trace 1271 on sheets 3–4 |
| 39 | WHT/YEL | LOW REF (3202) | Shared reference / supply circuit; trace 3202 on sheets 3–4 |
| 40 | YEL | POWERTRAIN RLY CTRL (5991) | Relay / fuse block circuit |
| 41 | GRN/VIO | LOW SPD COOLING (335) | Engine cooling system |
| 43 | WHT | SERIAL DATA -1 (2501) | Computer data lines system |
| 45 | WHT/BLU (OR WHT/LT BLU) | TEMP SENS SIG (472) | Shared reference / supply circuit; trace 472 on sheets 3–4 |
| 46 | GRN/VIO (OR LT GRN/VIO) | TEMP SENS 2 SIG (3000) | Shared reference / supply circuit; trace 3000 on sheets 3–4 |
| 47 | BRN | CHARGE IND CTRL (25) | Starting / charging system |
| 49 | GRN/BLK | CAMSHAFT POSITION SENS REPLICATED SIG (3633) | Camshaft sensor or actuator circuit |
| 52 | BRN/WHT | CHECK ENGINE IND CTRL (419) | Instrument cluster malfunction indicator |
| 53 | WHT/GRY | A/C CLTH RLY CTRL (459) | Air conditioning system |
| 54 | BRN/YEL | HIGH SPEED RELAY CTRL (473) | Relay / fuse block circuit |
| 56 | WHT | EVAP CANSTR VENT CTRL (1310) | Evaporative emission system |

## X2 — 73 terminals (diagram sheets 5–6)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | BLU/VIO (OR LT BLU/VIO) | IGN CTRL 1 (2121) | Ignition coil 1 |
| 2 | GRN/YEL (OR LT GRN/YEL) | FUEL INJ CTRL 1 (1744) | Fuel injector 1 |
| 3 | BRN/VIO | FUEL INJ CTRL 3 (1746) | Fuel injector 3 |
| 4 | BRN/YEL | FUEL INJ CTRL 4 (844) | Fuel injector 4 |
| 5 | YEL/WHT | FUEL INJ CTRL 2 (1745) | Fuel injector 2 |
| 10 | GRY/BLU (OR GRY/LT BLU) | CAMSHAFT PHASER EXHAUST SOL 1 (5282) | Camshaft sensor or actuator circuit |
| 11 | VIO/BRN | CAMSHAFT PHASER INTAKE SOL 1 (5284) | Camshaft sensor or actuator circuit |
| 13 | VIO/BLU (OR VIO/LT BLU) | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Relay / fuse block circuit |
| 14 | BLU (OR LT BLU) | THERMOSTAT ENGINE COOL CTRL (6814) | Engine cooling system |
| 15 | YEL | THROTTLE ACTUATOR CTRL OPEN (581) | Throttle body |
| 16 | BRN/WHT | THROTTLE ACTUATOR CTRL CLOSE (582) | Throttle body |
| 17 | GRN/BLU (OR LT GRN/LT BLU) | IGN CTRL 3 (2123) | Ignition coil 3 |
| 20 | BLK/VIO | LOW REF (6272) | Shared reference / supply circuit; trace 6272 on sheets 5–6 |
| 21 | BLK/GRY | CAMSHAFT CAM X GND (5296) | Camshaft sensor or actuator circuit |
| 24 | BLK/GRN (OR BLK/LT GRN) | CAMSHAFT CAM W GND (5301) | Camshaft sensor or actuator circuit |
| 27 | BLK/YEL | SENS LOW REF (407) | Door locks system (continuation shown on sheet 6) |
| 28 | VIO/BLU | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Relay / fuse block circuit |
| 29 | BLK/BRN | LOW REF (6753) | Shared reference / supply circuit; trace 6753 on sheets 5–6 |
| 30 | BLK/VIO | LOW REF (6754) | Shared reference / supply circuit; trace 6754 on sheets 5–6 |
| 31 | YEL/BLU | OIL PRESS SW SIG (231) | Pressure sensor circuit |
| 33 | YEL/BLU (OR YEL/LT BLU) | IGN CTRL 4 (2124) | Ignition coil 4 |
| 35 | BLK/BLU (OR BLK/LT BLU) | LOW REF (2129) | Shared reference / supply circuit; trace 2129 on sheets 5–6 |
| 36 | VIO/BLU (OR VIO/LT BLU) | CRANKSHAFT 60X SENS VOLT (6270) | Crankshaft position sensor |
| 37 | GRY/YEL | CAMSHAFT CAM X SUP VOLT (5297) | Camshaft sensor or actuator circuit |
| 40 | GRY/BLU (OR GRY/LT BLU) | CAMSHAFT CAM W SUP VOLT (5300) | Camshaft sensor or actuator circuit |
| 43 | BRN/RED | 5 VOLT REF (2701) | Shared reference / supply circuit; trace 2701 on sheets 5–6 |
| 44 | BLK/BRN | LOW REF (2752) | Shared reference / supply circuit; trace 2752 on sheets 5–6 |
| 46 | BRN | TURBO BOOST PRESS SENS TEMP SIG (7348) | Turbocharger control / sensor circuit |
| 47 | WHT/BLK | HO2S HIGH SIG BANK 1 SENS 1 (3111) | Heated oxygen sensor circuit |
| 49 | BLK/YEL | LOW REF (1716) | Shared reference / supply circuit; trace 1716 on sheets 5–6 |
| 53 | BLU/WHT (OR LT BLU/WHT) | IGN CTRL 2 (2122) | Ignition coil 2 |
| 56 | GRN (OR LT GRN) | CRANKSHAFT 60X SENS SIG (6271) | Crankshaft position sensor |
| 57 | VIO/BLK | CAMSHAFT CAM X SIG (5273) | Camshaft sensor or actuator circuit |
| 60 | YEL/VIO | CAMSHAFT CAM W SIG (5275) | Camshaft sensor or actuator circuit |
| 63 | BRN/GRN (OR BRN/LT GRN) | THROTTLE POSITION SENSOR SIG 1 (485) | Throttle body |
| 65 | BRN/BLU (OR BRN/LT BLU) | THROTTLE POSITION SENSOR SIG 2 (486) | Throttle body |
| 67 | VIO/GRY | HO2S LOW SIG BANK 1 SENS 1 (3110) | Heated oxygen sensor circuit |
| 69 | VIO/GRY | KNOCK SENSOR SIG 1 (496) | Knock sensor circuit |
| 72 | GRY/WHT | HO2S HTR LOW CTRL BANK 1 SENS 1 (3113) | Heated oxygen sensor circuit |
| 73 | BLK | GROUND (1750) | Engine ground |

## X3 — 73 terminals (diagram sheets 1–2)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 10 | GRN/BLU (OR LT GRN/LT BLU) | EVAP CANISTER PURGE SOL CTRL (428) | Evaporative emission system |
| 13 | GRN (OR LT GRN) | TURBO BYPASS SOL CTRL BANK (1) (3060) | Turbocharger control / sensor circuit |
| 15 | YEL | WASTEGATE SOL CTRL (1) (3058) | Turbocharger control / sensor circuit |
| 17 | GRY | GENERATOR FIELD DUTY CYCLE SIG (23) | Starting / charging system |
| 22 | BLK/YEL | LOW REF (5382) | Shared reference / supply circuit; trace 5382 on sheets 1–2 |
| 27 | BLK/GRN | LOW REF (6281) | Shared reference / supply circuit; trace 6281 on sheets 1–2 |
| 28 | GRY/RED | 5 VOLT REF (2704) | Shared reference / supply circuit; trace 2704 on sheets 1–2 |
| 29 | BLK/GRN (OR BLK/LT GRN) | LOW REF (469) | Shared reference / supply circuit; trace 469 on sheets 1–2 |
| 30 | BLK/BRN | LOW REF (2761) | Shared reference / supply circuit; trace 2761 on sheets 1–2 |
| 32 | GRY/WHT | HO2S HTR HI CTRL BANK 1 SENS 2 (3122) | Heated oxygen sensor circuit |
| 38 | WHT/RED | 5 VOLT REF (5381) | Shared reference / supply circuit; trace 5381 on sheets 1–2 |
| 43 | YEL/RED | 5 VOLT REF (2709) | Shared reference / supply circuit; trace 2709 on sheets 1–2 |
| 44 | BLU/WHT | SEC FUEL LEVEL SIG (1937) | Fuel level sender / instrument cluster circuit |
| 45 | GRN/WHT (OR LT GRN/WHT) | MAP SENS SIG (432) | Pressure sensor circuit |
| 46 | BLU (OR LT BLU) | ENG COOLANT TEMP SENS SIG (410) | Engine coolant temperature sensor |
| 58 | WHT/GRN (OR WHT/LT GRN) | SENS SIG (5380) | Brake pedal position sensor |
| 63 | BLU/WHT (OR LT BLU/WHT) | FUEL TANK PRESS SENS SIG (890) | Fuel tank pressure sensor |
| 64 | BLU/VIO | PRIMARY FUEL LVL SENS SIG (1589) | Fuel level sender / instrument cluster circuit |
| 67 | VIO/BLU (OR VIO/LT BLU) | HO2S HIGH SIG BANK 1 SENS 2 (3120) | Heated oxygen sensor circuit |
| 68 | WHT/YEL | HO2S LOW SIG BANK 1 SENS 2 (3121) | Heated oxygen sensor circuit |

## Power and ground routing

Sheet 3 shows battery fuse 4 (150 A) feeding the underhood fuse block and its ignition relay. X1-19 (VIO/GRY circuit 139) is ignition voltage; X1-20 (RED/WHT circuit 140) is battery voltage through the ECM B+ fuse (15 A); X1-40 (YEL circuit 5991) controls the relay. The block also shows ECM PT IGN-1/IGN-2 fuse (20 A), ignition-coil/injector-coil fuse (15 A), MAF sensor fuse (10 A), and canister purge/water valve/turbo wastegate/turbo bypass/O2-sensor fuse (10 A). X2-13 and X2-28 carry fused powertrain relay supply (circuit 5290), and X2-73 (BLK circuit 1750) grounds at G103.
