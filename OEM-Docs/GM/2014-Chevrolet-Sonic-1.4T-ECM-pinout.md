# 2014 Chevrolet Sonic L4-1.4L Turbo — ECM pinout

Transcribed from [2014 Chevrolet Sonic 1.4T ECU.pdf](2014%20Chevrolet%20Sonic%201.4T%20ECU.pdf) (ALLDATA “Engine Controls,” diagram sheets 1–6 = PDF pages 2–7, sheet IDs 444934–444939; 2014 Chevrolet Sonic L4-1.4L Turbo).

Engine Control Module (ECM), left side of engine compartment. The diagram depicts X1 as a 56-terminal connector and X2 and X3 as 73-terminal connectors. Connector labels and terminal numbers below are those printed at the ECM.

Wire colors retain the source abbreviations (BLK black, BLU blue, BRN brown, GRN green, GRY gray, ORG orange, PNK pink, PPL purple, RED red, TAN tan, VIO violet, WHT white, YEL yellow; LT light, DK dark). Circuit numbers appear in parentheses after the printed function. Shared-reference rows identify source sheets for branch tracing. Unlisted terminals are not connected **in this diagram**; this does not establish whether a terminal is physically unused.

On X3, circled 1 denotes manual transmission and circled 2 denotes automatic transmission. X3-19 and -22 are the respective pedal low-reference connections; X3-38 and -58 have alternative functions and colors. Wire colors and circuit numbers marked “OR” are alternative labels in the source.

## X1 — 56 terminals (diagram sheets 3–4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 2 | LT GRN/WHT | ACC PEDAL POS SIG 2 (1162) | Accelerator pedal position sensor |
| 3 | LT GRN/WHT | MAS AIR FLOW SENS SIG (492) | Mass air flow / intake air sensor |
| 8 | BLK/YEL | INTAKE SENS CTRL (6014) | Multi-function intake air sensor |
| 9 | LT BLU/GRY | PRESS SENS SIG (433) | Pressure sensor circuit |
| 10 | YEL/WHT | ACC PEDAL POS SIG 1 (1161) | Accelerator pedal position sensor |
| 11 | LT GRN | PRE TR AIR TEMP PR SIG (1533) | Intake air temperature sensor |
| 12 | LT GRN | A/C RFGT PR SENS SIG (380) | Air conditioning system |
| 13 | BLK/BRN | LOW REF (5514) | Shared reference / supply circuit; trace 5514 on sheets 3–4 |
| 16 | BRN/RED | 5 VOLT REF (1274) | Shared reference / supply circuit; trace 1274 on sheets 3–4 |
| 18 | VIO/YEL | WAKEUP SERIAL DATA (5985) | Computer data lines system |
| 19 | VIO/GRY | IGN (139) | Fuse block supply |
| 20 | RED/WHT | B+ (140) | Fuse block supply |
| 23 | WHT/RED | PRES SENS 5 V REF (2932) | Shared reference / supply circuit; trace 2932 on sheets 3–4 |
| 24 | WHT/RED | 5 VOLT REF (1164) | Shared reference / supply circuit; trace 1164 on sheets 3–4 |
| 25 | BRN/RED | 5 VOLT REF (5639) | Shared reference / supply circuit; trace 5639 on sheets 3–4 |
| 26 | BRN/RED | 5 VOLT REF (2700) | Shared reference / supply circuit; trace 2700 on sheets 3–4 |
| 27 | YEL | STARTER ENBLE RLY CTRL (447) | Relay / fuse block circuit |
| 28 | LT GRN/GRY | PRIMARY RLY CTRL (465) | Fuel pump relay or control circuit |
| 29 | LT BLU | SERIAL DATA + 1 (2500) | Computer data lines system |
| 30 | BLK/VIO | LOW REF (1272) | Shared reference / supply circuit; trace 1272 on sheets 3–4 |
| 31 | BLK/VIO | LOW REF (2760) | Shared reference / supply circuit; trace 2760 on sheets 3–4 |
| 32 | BLK/LT BLU | LOW REF (6813) | Shared reference / supply circuit; trace 6813 on sheets 3–4 |
| 33 | WHT/LT BLU | CRUISE/ETC/TCC BRK SIG (6311) | Brake or clutch pedal circuit |
| 34 | WHT/GRY | PARK NETRL POS SW SIG (1786) | Transmission / driveline system |
| 38 | BLK/LT BLU | LOW REF (1271) | Shared reference / supply circuit; trace 1271 on sheets 3–4 |
| 39 | BLK/LT GRN | LOW REF (5638) | Shared reference / supply circuit; trace 5638 on sheets 3–4 |
| 40 | YEL | POWERTRAIN RLY CTRL (5991) | Relay / fuse block circuit |
| 41 | VIO/LT BLU | LOW SPD COOLING (5294) | Engine cooling system |
| 43 | WHT | SERIAL DATA - 1 (2501) | Computer data lines system |
| 45 | BRN/VIO | TEMP SENS SIG (472) | Shared reference / supply circuit; trace 472 on sheets 3–4 |
| 46 | YEL/BLK | TEMP SENS 2 SIG (3000) | Shared reference / supply circuit; trace 3000 on sheets 3–4 |
| 47 | LT BLU/WHT | CHARGE IND CTRL (225) | Starting / charging system |
| 52 | BRN/WHT | CHECK ENGINE IND CTRL (419) | Instrument cluster malfunction indicator |
| 53 | WHT/GRY | A/C COMPR CLTH RLY CTRL (459) | Air conditioning system |
| 54 | BRN/YEL | HIGH SPEED RELAY CTRL (473) | Relay / fuse block circuit |
| 56 | WHT | EVAP CANSTR VENT CTRL (1310) | Evaporative emission system |

## X2 — 73 terminals (diagram sheets 5–6)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | LT BLU/VIO | IGN CTRL 1 (2121) | Ignition coil 1 |
| 2 | LT GRN/YEL | FUEL INJ CTRL 1 (1744) | Fuel injector 1 |
| 3 | LT GRN/YEL | FUEL INJ CTRL 3 (1746) | Fuel injector 3 |
| 4 | BRN/YEL | FUEL INJ CTRL 4 (844) | Fuel injector 4 |
| 5 | YEL/WHT | FUEL INJ CTRL 2 (1745) | Fuel injector 2 |
| 10 | GRY/LT BLU | CAMSHAFT PHASER EXHAUST SOL 1 (5282) | Camshaft sensor or actuator circuit |
| 11 | VIO/BRN | CAMSHAFT PHASER INTAKE SOL 1 (5284) | Camshaft sensor or actuator circuit |
| 13 | VIO/LT BLU | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Relay / fuse block circuit |
| 14 | LT BLU | THERMOSTAT ENGINE COOL CTRL (6814) | Engine cooling system |
| 15 | YEL | THROTTLE ACTUATOR CTRL OPEN (581) | Throttle body |
| 16 | BRN/WHT | THROTTLE ACTUATOR CTRL CLOSE (582) | Throttle body |
| 17 | LT GRN/LT BLU | IGN CTRL 3 (2123) | Ignition coil 3 |
| 20 | BLK/VIO | LOW REF (6272) | Shared reference / supply circuit; trace 6272 on sheets 5–6 |
| 21 | GRY/BLK | CAMSHAFT CAM X GND (6267) | Camshaft sensor or actuator circuit |
| 24 | LT GRN/BLK | CAMSHAFT CAM W GND (6266) | Camshaft sensor or actuator circuit |
| 28 | VIO/LT BLU | POWERTRAIN MAIN RLY FUSE SPLY 1 (5290) | Relay / fuse block circuit |
| 29 | BLK/LT BLU | LOW REF (6783) | Shared reference / supply circuit; trace 6783 on sheets 5–6 |
| 30 | BLK/VIO | LOW REF (6754) | Shared reference / supply circuit; trace 6754 on sheets 5–6 |
| 31 | YEL/LT BLU | OIL PRESS SW SIG CTRL (231) | Pressure sensor circuit |
| 33 | YEL/LT BLU | IGN CTRL 4 (2124) | Ignition coil 4 |
| 35 | BLK/LT BLU | LOW REF (2129) | Shared reference / supply circuit; trace 2129 on sheets 5–6 |
| 36 | VIO/LT BLU | CRANKSHAFT 60X SENS VOLT (6270) | Crankshaft position sensor |
| 37 | GRY/YEL | CAMSHAFT CAM X SUP VOLT (6457) | Camshaft sensor or actuator circuit |
| 40 | GRY/LT BLU | CAMSHAFT CAM W SUP VOLT (6259) | Camshaft sensor or actuator circuit |
| 43 | GRY/RED | 5 VOLT REF (416) | Shared reference / supply circuit; trace 416 on sheets 5–6 |
| 44 | BLK/BRN | LOW REF (2752) | Shared reference / supply circuit; trace 2752 on sheets 5–6 |
| 46 | GRY | TURBO BOOST PRESS SENS TEMP SIG (5641) | Turbocharger control / sensor circuit |
| 47 | YEL/BRN | HO2S LOW SIG BANK 1 SENS 1 (1664) | Heated oxygen sensor circuit |
| 49 | BLK/YEL | LOW REF (1716) | Shared reference / supply circuit; trace 1716 on sheets 5–6 |
| 53 | LT BLU/WHT | IGN CTRL 2 (2122) | Ignition coil 2 |
| 56 | LT GRN | CRANKSHAFT 60X SENS SIG (6271) | Crankshaft position sensor |
| 57 | VIO/BLK | CAMSHAFT CAM X SIG (6264) | Camshaft sensor or actuator circuit |
| 60 | YEL/VIO | CAMSHAFT CAM W SIG (6265) | Camshaft sensor or actuator circuit |
| 63 | BRN/LT GRN | THROTTLE POSITION SENSOR SIG 1 (485) | Throttle body |
| 65 | BRN/LT BLU | THROTTLE POSITION SENSOR SIG 2 (486) | Throttle body |
| 67 | LT GRN | HO2S HIGH SIG BANK 1 SENS 1 (1665) | Heated oxygen sensor circuit |
| 69 | VIO/GRY | KNOCK SENSOR SIG 1 (496) | Knock sensor circuit |
| 72 | GRY/WHT | HO2S HTR LOW CTRL BANK 1 SENS 1 (3113) | Heated oxygen sensor circuit |
| 73 | BLK | GROUND (1750) | Engine ground |

## X3 — 73 terminals (diagram sheets 1–2)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | LT GRN/WHT | REVERSE SW SIG (5007) | Exterior lights system |
| 10 | LT GRN/LT BLU | EVAP CANISTER PUR SOL CTRL (428) | Evaporative emission system |
| 13 | BRN/YEL | OVERRUN AIR VALVE SOL (5268) | Turbocharger control / sensor circuit |
| 15 | BRN/YEL | WASTE GATE SOL CTRL (258) | Turbocharger control / sensor circuit |
| 17 | YEL | GENERATOR FIELD DUTY CYCLE SIG (23) | Starting / charging system |
| 19 | BLK/YEL | CLUTCH LOW REF (401) | Brake or clutch pedal circuit |
| 22 | BLK/GRY (OR BLK/YEL) | BRK POS SENS LOW REF (6110 (OR 5382)) | Brake or clutch pedal circuit |
| 27 | BLK/LT GRN | LOW REF (6281) | Shared reference / supply circuit; trace 6281 on sheets 1–2 |
| 28 | GRY/RED | 5 VOLT REF (2704) | Shared reference / supply circuit; trace 2704 on sheets 1–2 |
| 29 | BLK/LT GRN | LOW REF (469) | Shared reference / supply circuit; trace 469 on sheets 1–2 |
| 30 | BLK/BRN | LOW REF (2761) | Shared reference / supply circuit; trace 2761 on sheets 1–2 |
| 32 | BRN/GRY | HO2S HTR HI CTRL BANK1 SENS2 (5035) | Heated oxygen sensor circuit |
| 35 | YEL/BRN | 5 VOLT REF (3604) | Shared reference / supply circuit; trace 3604 on sheets 1–2 |
| 38 | GRY/RED (OR WHT/RED) | CLUTCH APPLY SENS VOLT REF / BRK POS SENS 5V REF (6109 (OR 5381)) | Brake or clutch pedal circuit |
| 43 | BRN/WHT | 5 VOLT REF (6283) | Shared reference / supply circuit; trace 6283 on sheets 1–2 |
| 45 | LT GRN/WHT | ABSOLT PRESS SENS SIG (432) | Pressure sensor circuit |
| 46 | LT GRN/VIO | ENG COOLANT TEMP SENS SIG (2032) | Engine coolant temperature sensor |
| 55 | YEL | OUTPUT SPD SENS SIG (400) | Vehicle / transmission speed sensor circuit |
| 58 | YEL (OR WHT/LT GRN) | CLUTCH SENS SIG / BRK POS SENS SIG (6111 (OR 5380)) | Brake or clutch pedal circuit |
| 63 | BLK/BRN | FUEL TANK PRESS SENS SIG (6284) | Fuel tank pressure sensor |
| 64 | LT BLU/VIO | PRIMARY FUEL LVL SENS SIG (1589) | Fuel level sender / instrument cluster circuit |
| 67 | LT GRN | HO2S HIGH SIG BANK 1 SENS 2 (1668) | Heated oxygen sensor circuit |
| 68 | YEL/WHT | HO2S LOW SIG BANK 1 SENS 2 (1669) | Heated oxygen sensor circuit |

## Power and ground routing

Sheet 3 shows battery fuse 4 (150 A) feeding the underhood fuse block and the engine controls ignition relay. X1-19 (VIO/GRY circuit 139) is ignition voltage; X1-20 (RED/WHT circuit 140) is battery voltage through the ECM fuse (15 A); X1-40 (YEL circuit 5991) controls the relay. The block also shows ECM 1, 3, 4, and 5 fuses (10 A each), ECM 2 (20 A), FSCM 1 (20 A), FSCM 2/levelling (10 A), and injector/ignition-coil fuse (15 A). X2-13 and X2-28 carry fused powertrain relay supply (circuit 5290), and X2-73 (BLK circuit 1750) grounds at G104.
