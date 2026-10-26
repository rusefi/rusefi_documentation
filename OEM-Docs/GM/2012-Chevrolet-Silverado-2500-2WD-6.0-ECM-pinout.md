# 2012 Chevrolet Silverado 2500 2WD V8-6.0L — ECM pinout

Transcribed from [2012 Chevy Truck Silverado 2500 2WD 6.0 ECU.pdf](2012%20Chevy%20Truck%20Silverado%202500%202WD%206.0%20ECU.pdf) (ALLDATA “Engine Controls,” diagram sheets 1–6 = PDF pages 2–7, sheet IDs 372449–372454; 2012 Chevrolet Silverado 2500 2WD V8-6.0L).

Engine Control Module (ECM), left front of engine compartment, near the fan shroud. The diagram depicts X1 as a 56-terminal connector and X2 and X3 as 73-terminal connectors. Connector labels and terminal numbers below are those printed at the ECM.

Wire colors retain the source abbreviations (BLK black, BLU blue, BRN brown, GRN green, GRY gray, ORG orange, PNK pink, PPL purple, RED red, TAN tan, VIO violet, WHT white, YEL yellow; LT light, DK dark). Circuit numbers appear in parentheses after the printed function. Shared-reference rows identify source sheets for branch tracing. Unlisted terminals are not connected **in this diagram**; this does not establish whether a terminal is physically unused.

The source heading says 2WD, but sheet 1 also prints X1-4 as “4WD LOW SIG” and X1-5 as “AXLE SW SIG”; those rows are retained as drawn. Sheet 4 marks ranges of X3 terminals “NOT USED.” Only individually wired or identified terminals are listed below.

## X1 — 56 terminals (diagram sheets 1–2)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 2 | LT BLU | APP SENS 2 SIG (1162) | Accelerator pedal position sensor |
| 3 | YEL | MAF SENS SIG (492) | Mass air flow / intake air sensor |
| 4 | GRY/BLK | 4WD LOW SIG (1694) | Transmission / driveline system |
| 5 | TAN/WHT | AXLE SW SIG (1695) | Transmission / driveline system |
| 10 | DK BLU | APP SENS 1 SIG (1161) | Accelerator pedal position sensor |
| 11 | YEL/WHT | INLET PRESS SENS SIG (3200) | Pressure sensor circuit |
| 12 | ORG/BLK | A/C SENS SIG (380) | Air conditioning system |
| 13 | TAN | LOW REF (5514) | Shared reference / supply circuit; trace 5514 on sheets 1–2 |
| 14 | TAN | FP RLY CTRL (1465) | Fuel pump relay or control circuit |
| 16 | TAN | 5 VOLT REF 3 (1274) | Shared reference / supply circuit; trace 1274 on sheets 1–2 |
| 18 | DK BLU | WAKEUP SERIAL DATA (5985) | Computer data lines system |
| 19 | PNK | IGNITION 1 VOLT (439) | Fuse block supply |
| 20 | RED/WHT | B+ VOLT (440) | Fuse block supply |
| 24 | WHT/BLK | 5-VOLT REF 4 (1164) | Shared reference / supply circuit; trace 1164 on sheets 1–2 |
| 25 | GRY/WHT | 5-VOLT REF 1 (3201) | Shared reference / supply circuit; trace 3201 on sheets 1–2 |
| 26 | GRY/WHT | 5-VOLT REF 1 (2700) | Shared reference / supply circuit; trace 2700 on sheets 1–2 |
| 27 | YEL/BLK | STR ENABLE RLY CTRL (625) | Relay / fuse block circuit |
| 28 | DK GRN/WHT | PRIMARY RLY CTRL (465) | Fuel pump relay or control circuit |
| 29 | TAN | HIGH SPD DATA BUS + (2500) | Computer data lines system |
| 30 | PPL | LOW REF (1272) | Shared reference / supply circuit; trace 1272 on sheets 1–2 |
| 31 | TAN | LOW REF (2760) | Shared reference / supply circuit; trace 2760 on sheets 1–2 |
| 33 | LT BLU/WHT | BRAKE SW SIG (6311) | Brake or clutch pedal circuit |
| 34 | ORG/BLK | PARK/NEUTRAL SIG (1786) | Transmission / driveline system |
| 38 | BRN | LOW REF (1271) | Shared reference / supply circuit; trace 1271 on sheets 1–2 |
| 39 | TAN/WHT | LOW REF (3202) | Shared reference / supply circuit; trace 3202 on sheets 1–2 |
| 40 | YEL | PWTN RLY CTRL (5991) | Relay / fuse block circuit |
| 43 | TAN/BLK | HIGH SPD DATA BUS - (2501) | Computer data lines system |
| 45 | TAN/BLK | IAT SENS SIG (472) | Intake air temperature sensor |
| 47 | BRN | CHARGE IND SIG (25) | Starting / charging system |
| 50 | YEL/BLK | VEHICLE SPD SIG (1827) | Vehicle / transmission speed sensor circuit |
| 52 | BRN/WHT | MIL CTRL (419) | Instrument cluster malfunction indicator |
| 53 | DK GRN/WHT | COMPR CLTCH RLY CTRL (459) | Air conditioning system |
| 56 | WHT | EVAP VENT SOL CTRL (1310) | Evaporative emission system |

## X2 — 73 terminals (diagram sheets 5–6)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 1 | PPL | IC 1 CTRL (2121) | Ignition coil 1 |
| 2 | TAN | INJECTOR 1 CTRL (1744) | Fuel injector 1 |
| 3 | DK BLU/WHT | INJECTOR 8 CTRL (878) | Fuel injector 8 |
| 4 | ORG/BLK | INJECTOR 7 CTRL (877) | Fuel injector 7 |
| 5 | LT GRN/BLK | INJECTOR 2 CTRL (1745) | Fuel injector 2 |
| 6 | YEL/BLK | INJECTOR 6 CTRL (846) | Fuel injector 6 |
| 7 | TAN/WHT | INJECTOR 5 CTRL (845) | Fuel injector 5 |
| 8 | LT BLU/BLK | INJECTOR 4 CTRL (844) | Fuel injector 4 |
| 9 | PNK/BLK | INJECTOR 3 CTRL (1746) | Fuel injector 3 |
| 11 | PPL | CAMSHAFT CTRL (5284) | Camshaft sensor or actuator circuit |
| 15 | YEL | TAC MTR CTRL 1 (581) | Throttle body |
| 16 | BRN | TAC MTR CTRL 2 (582) | Throttle body |
| 17 | PPL/WHT | IC 8 CTRL (2128) | Ignition coil 8 |
| 18 | DK GRN/WHT | IC 4 CTRL (2124) | Ignition coil 4 |
| 19 | BRN/WHT | LOW REF (2130) | Shared reference / supply circuit; trace 2130 on sheets 5–6 |
| 20 | GRY | LOW REF (6272) | Shared reference / supply circuit; trace 6272 on sheets 5–6 |
| 24 | BRN | LOW REF (6266) | Shared reference / supply circuit; trace 6266 on sheets 5–6 |
| 25 | BLK | LOW REF (2755) | Shared reference / supply circuit; trace 2755 on sheets 5–6 |
| 28 | PNK/BLK | IGNITION 1 VOLT (1339) | Fuse block supply |
| 29 | TAN | LOW REF (2199) | Shared reference / supply circuit; trace 2199 on sheets 5–6 |
| 33 | ORG | IC 7 CTRL (2127) | Ignition coil 7 |
| 34 | DK GRN | IC 5 CTRL (2125) | Ignition coil 5 |
| 35 | BRN | LOW REF (2129) | Shared reference / supply circuit; trace 2129 on sheets 5–6 |
| 36 | PPL | 5-VOLT REF 2 (6270) | Shared reference / supply circuit; trace 6270 on sheets 5–6 |
| 40 | DK BLU | 5-VOLT REF 1 (6259) | Shared reference / supply circuit; trace 6259 on sheets 5–6 |
| 41 | GRY | 5-VOLT REF 1 (2705) | Shared reference / supply circuit; trace 2705 on sheets 5–6 |
| 43 | GRY | 5-VOLT REF 4 (2701) | Shared reference / supply circuit; trace 2701 on sheets 5–6 |
| 44 | TAN | LOW REF (2752) | Shared reference / supply circuit; trace 2752 on sheets 5–6 |
| 47 | TAN | HO2S LOW SIG (1664) | Heated oxygen sensor circuit |
| 48 | TAN | HO2S LOW SIG (1667) | Heated oxygen sensor circuit |
| 49 | GRY | KS 1 SIG (1716) | Knock sensor circuit |
| 50 | GRY | KS 2 SIG (2303) | Knock sensor circuit |
| 52 | LT GRN | HO2S LOW CTRL (3212) | Heated oxygen sensor circuit |
| 53 | ORG/WHT | IC 2 CTRL (2122) | Ignition coil 2 |
| 54 | LT BLU/WHT | IC 6 CTRL (2126) | Ignition coil 6 |
| 55 | LT BLU | IC 3 CTRL (2123) | Ignition coil 3 |
| 56 | LT GRN | CKP SENS SIG (6271) | Crankshaft position sensor |
| 60 | DK BLU/WHT | CMP SENS SIG (6265) | Camshaft sensor or actuator circuit |
| 61 | TAN/WHT | PRESS SENS SIG (331) | Pressure sensor circuit |
| 63 | DK GRN | TP SENS 1 SIG (485) | Throttle body |
| 65 | PPL | TP SENS 2 SIG (486) | Throttle body |
| 67 | PPL/WHT | HO2S HIGH SIG (1665) | Heated oxygen sensor circuit |
| 68 | PPL | HO2S HIGH SIG (1666) | Heated oxygen sensor circuit |
| 69 | DK BLU | KS 1 SIG (496) | Knock sensor circuit |
| 70 | LT BLU | KS 2 SIG (1876) | Knock sensor circuit |
| 72 | GRY/WHT | HO2S HEATER LOW (3113) | Heated oxygen sensor circuit |
| 73 | BLK/WHT | GND (451) | Engine ground |

## X3 — 73 terminals (diagram sheets 3–4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|-----------------------|-------------|
| 10 | DK GRN/WHT | EVAP CTRL (428) | Evaporative emission system |
| 16 | ORG/WHT | HO2S CTRL (3223) | Heated oxygen sensor circuit |
| 17 | GRY | GENERATOR SIG (23) | Starting / charging system |
| 22 | BRN | LOW REF (not numbered) | Low-reference wire on sheet 4; circuit number not printed |
| 27 | TAN/BLK | LOW REF (6049) | Shared reference / supply circuit; trace 6049 on sheets 3–4 |
| 28 | GRY | 5 VOLT REF 3 (2704) | Shared reference / supply circuit; trace 2704 on sheets 3–4 |
| 29 | ORG/BLK | LOW REF (469) | Shared reference / supply circuit; trace 469 on sheets 3–4 |
| 30 | TAN | LOW REF (2761) | Shared reference / supply circuit; trace 2761 on sheets 3–4 |
| 32 | GRY/WHT | HO2S CTRL (3122) | Heated oxygen sensor circuit |
| 38 | WHT | VOL SPLY (5359) | Shared reference / supply circuit; trace 5359 on sheets 3–4 |
| 43 | GRY | 5 VOLT REF 1 (2709) | Shared reference / supply circuit; trace 2709 on sheets 3–4 |
| 44 | LT BLU | SECONDARY SIG (1937) | Fuel level sender / instrument cluster circuit |
| 45 | LT GRN | MAP SENS SIG (432) | Pressure sensor circuit |
| 46 | YEL | ECT SENS SIG (410) | Engine coolant temperature sensor |
| 48 | PPL/WHT | VSS HI SIG (821) | Vehicle / transmission speed sensor circuit |
| 49 | LT GRN/BLK | VSS LOW SIG (822) | Vehicle / transmission speed sensor circuit |
| 55 | ORG/BLK | TOS SIG (6399) | Vehicle / transmission speed sensor circuit |
| 58 | YEL | SIG SNSR (5361) | Shared reference / supply circuit; trace 5361 on sheets 3–4 |
| 63 | DK GRN | FUEL TANK SIG (890) | Fuel tank pressure sensor |
| 64 | PPL | PMRY SEN SIG (1589) | Fuel level sender / instrument cluster circuit |
| 65 | PPL | HO2S HI SIG (1670) | Heated oxygen sensor circuit |
| 66 | TAN | HO2S LOW SIG (1671) | Heated oxygen sensor circuit |
| 67 | PPL/WHT | HO2S HI SIG (1668) | Heated oxygen sensor circuit |
| 68 | TAN/WHT | HO2S LOW SIG (1669) | Heated oxygen sensor circuit |

## Power and ground routing

Sheet 2 shows the underhood fuse block and powertrain relay. ECM-IGN fuse 56 (15 A) supplies X1-19 (PNK circuit 439); ECM-BATT fuse 12 (10 A) supplies X1-20 (RED/WHT circuit 440). The relay output feeds ENG fuse 4 (15 A) and ECM/THROT CONT fuse 5 (15 A). X1-40 (YEL circuit 5991) controls the powertrain relay. Sheet 6 also shows X2-28 as ignition voltage and X2-73 (BLK/WHT circuit 451) as ground. The fuel pump relay/control paths and fuel tank pressure and level circuits span sheets 1–4.
