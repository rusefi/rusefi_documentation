# 2018 Dodge Challenger RWD V8-6.2L SC (Hellcat) — PCM pinout

Transcribed from [2018-Dodge-Challenger-RWD-6.2-SC-Hellcat-PCM-pinout.pdf](2018-Dodge-Challenger-RWD-6.2-SC-Hellcat-PCM-pinout.pdf) (ALLDATA "Engine Controls" wiring diagram, Electrical - Interactive Color (Non OE), diagram pages 1-6 = PDF pages 2-7, sheets 585219-585224).

Powertrain Control Module (PCM), located right rear of engine compartment. Two 96-way connectors: C1 (chassis/body side) and C2 (engine side). The diagram is shared with the Demon; circuits that differ are marked (Demon)/(except Demon) below, and (M/T) marks manual-transmission circuits.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 96 | Chassis side: power/ignition feeds, grounds, CAN C, LIN, APP sensor, A/C and fuel tank pressure, fuel rail pressure, charge air and supercharger outlet temperatures, clutch switch, relay controls (ASD, fuel pump, vacuum pump, starter, fan), fuel pump control module, purge |
| C2 | 96 | Engine side: injectors, coils, crank/cam, knock, MAP sensors, ECT/EOT/oil pressure, wideband upstream and downstream O2 sensors, electronic throttle, supercharger bypass valve, crankcase pressure, generator, M/T solenoids |

Chrysler circuit codes (K11, F342, D27, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). Unlisted pins are not connected in this diagram.

## C1 — chassis side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 17 | T17 | YEL/VIO | CLUTCH UP STOP SIG | Radio frequency hub module C1 pin 15 (CLUTCH UP STOP SIG) via I250 pin 16 |
| 22 | K181 | BRN/DK BLU | FUEL PRESS SIG | Fuel pressure sensor pin 1 via I200 pin 3 |
| 23 | F914 | PNK/BRN | FUSED IGN RUN/START | Front PDC 37B, fuse 37 (10 A), hot with run/start relay energized |
| 33 | D28 | YEL/GRN | CAN C (-) | Computer data lines system |
| 39 | T26 | DK GRN/ORG | CLUTCH UP STOP SIG | Clutch interlock switch pin 1 (M/T) |
| 42 | K914 | BRN/WHT | SENS GND | SK914C: A/C pressure transducer pin 3 (SENS GND) |
| 43 | K222 | BRN/GRN | CHARGE AIR COOLANT SIG | Charge air cooler temperature sensor pin 1 (CAC SIG) via I200 pin 12 |
| 44 | C18 | BLU/BRN | A/C PRESS SIG | A/C pressure transducer pin 2 |
| 48 | K859 | BRN/DK BLU | 5V SPLY | Fuel tank pressure sensor pin C via I251 pin 9 |
| 52 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 53 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 54 | K917 | BRN/TAN | SENS GND | Fuel tank pressure sensor pin A via I251 pin 10 |
| 55 | D511 | WHT/TAN | LIN BUS | SD511D: charge air cooler coolant pump pin 4; active exhaust valve 1 pin 2 and valve 2 pin 2 via I250 pin 18, I512 pin 8 and SD511K |
| 57 | D27 | TAN/WHT | CAN C (+) | Computer data lines system |
| 58 | K46 | DK BLU/BLU | BANK 1 TEMP SIG | MAP sensor bank 1 pin 2 via I200 pin 22 |
| 59 | K47 | DK BLU/GRN | BANK 2 TEMP SIG | MAP sensor bank 2 pin 2 via I200 pin 15 |
| 60 | K49 | VIO/BLU | SC OUTLET TEMP SIG | Supercharger outlet MAP sensor pin 2 via I200 pin 11 |
| 61 | N12 | DK BLU/GRN | FPCM PWM FDBCK | Fuel pump control module pin F via I250 pin 6 |
| 67 | K400 | BRN/VIO | APP SENS GND 2 | Accelerator pedal position sensor pin 4 |
| 68 | K167 | BRN/YEL | APP SENS GND 1 | Accelerator pedal position sensor pin 3 |
| 69 | K854 | VIO/BRN | APP 5V 2 | SK854B: accelerator pedal position sensor pin 6; A/C pressure transducer pin 1 (APP 5V 2) |
| 70 | K108 | VIO/WHT | ESIM SIG | Evap system monitor switch pin 2 via I250 pin 11 (VIO/GRY at switch) |
| 72 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 73 | N9 | BLU/TAN | FUEL PUMP RLY CTRL | Fuel pump relay coil terminal 86 (rear PDC 72C; 28C on Demon) via I250 pin 24 |
| 74 | F342 | BRN | ASD CTRL O/P | SF342E (ASD relay output via fuse 34, 25 A) |
| 75 | F342 | BRN | ASD CTRL O/P | SF342E |
| 76 | F342 | BRN | ASD CTRL O/P | SF342E |
| 77 | T110 | DK GRN/YEL | VACUUM PUMP RLY CTRL | Anti-lock brakes system |
| 79 | C13 | BLU/ORG | A/C CLUTCH CTRL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RLY CTRL | Auto shut down relay coil terminal 85 (front PDC 63D) |
| 81 | T752 | DK GRN/ORG | STARTER RLY CTRL | Starting/charging system |
| 82 | K175 | BRN/BLU | RAD FAN CTRL | Cooling fans system |
| 83 | N11 | DK BLU/DK GRN | FPCM PWM CTRL | Fuel pump control module pin B via I250 pin 2 |
| 88 | N7 | DK BLU/ORG | FUEL TANK PRESS SIG | Fuel tank pressure sensor pin B (FUEL TANK PRESS SENS) via I251 pin 8 |
| 91 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 5 |
| 92 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 2 |
| 93 | K852 | BRN/VIO | APP 5V 1 | Accelerator pedal position sensor pin 1 |
| 94 | K52 | DK BLU/WHT | EVAP PURGE CTRL | Evap/purge solenoid pin 1 via I200 pin 21 |
| 95 | C319 | BLU/YEL | CHILLER SOLENOID CTRL | HVAC cooling solenoid pin 2 (Demon) via I200 pin 17 |
| 96 | A209 | RED/BRN | FUSED B (+) | Front PDC 31B, fuse 31 (25 A), hot at all times |

Pins 17 and 39 are both printed "CLUTCH UP STOP SIG": pin 39 is wired to the clutch interlock switch, pin 17 to the radio frequency hub module. The A/C pressure transducer connects through inline connector I1501 (pins 1, 2, 3 = transducer pins 1, 2, 3) on the Demon.

Component locations (pages 1-2): front power distribution center — right side of engine compartment; rear power distribution center — right rear of luggage compartment; A/C pressure transducer — left rear of engine compartment; fuel pressure sensor — rear of right cylinder bank; fuel tank pressure sensor — top left side of fuel tank; clutch interlock switch (M/T) — top of clutch pedal assembly; radio frequency hub module — under center of hat shelf; accelerator pedal position sensor — top of accelerator pedal assembly; ambient air temperature sensor — behind right side of upper front grille; active exhaust valve 1 — on rear of left exhaust; active exhaust valve 2 — at rear of right exhaust; skip shift solenoid and reverse lock out solenoid (M/T) — left side of transmission; hood ajar switch — right rear of engine compartment; evap system monitor switch — on evap canister assembly; body control module — right end of dash. Splices: SK914C — center rear of engine compartment, in headlamp and dash harness; SK854B, SD511D — left center rear of engine compartment, in headlamp and dash harness; SG931B — right front of engine compartment, in headlamp and dash harness; SD511K — behind left center of rear bumper, in ADS jumper harness.

Sensor and actuator pinouts as printed: accelerator pedal position sensor — 1 APP 5V 1 (BRN/VIO), 2 APP SIG 1 (BRN/WHT), 3 APP SENS GND 1 (BRN/YEL), 4 APP SENS GND 2 (BRN/VIO), 5 APP SIG 2 (WHT/BRN), 6 APP 5V 2 (VIO/BRN). A/C pressure transducer — 1 APP 5V 2 (VIO/BRN), 2 A/C PRESS SIG (BLU/BRN), 3 SENS GND (BRN/WHT). Fuel pressure sensor — 1 FUEL PRESS SIG (BRN/DK BLU), 2 SENS GND (DK BLU/DK GRN, to SK900B), 3 5V SPLY (YEL/PNK, to SF856B). Fuel tank pressure sensor — A SENS GND (BRN/TAN), B FUEL TANK PRESS SENS (DK BLU/ORG), C 5V SPLY (BRN/DK BLU). Clutch interlock switch — 1 CLUTCH UP STOP SIG (DK GRN/ORG), 2 CLUTCH INTERLOCK SIG (YEL/ORG, via I250 pin 8 to radio frequency hub module C1 pin 7, circuit T141), 3 GND (BLK to G101). Evap system monitor switch — 1 GND (BLK/WHT to G917A), 2 ESIM SIG (VIO/GRY). Charge air cooler coolant pump — 1 GND (BLK to G901A), 2 FUSED B (+) (RED/BLU), 3 ASD CTRL O/P (BRN), 4 LIN BUS (WHT/TAN). Active exhaust valves 1 and 2 — 1 FUSED B (+) (RED), 2 LIN BUS (WHT/TAN), 3 GND (BLK to SZ922P -> I512 pin 7 -> G305).

## C2 — engine side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | K171 | VIO/YEL | SC OUTLET MAP SIG | Supercharger outlet MAP sensor pin 4 |
| 3 | K7 | DK BLU/TAN | SC INLET TEMP SIG | Manifold absolute pressure sensor pin 2 (TEMP SIG) |
| 4 | G6 | VIO/GRY | OIL PRESS SIG | Oil pressure sensor pin 2 |
| 8 | K11 | BRN/YEL | INJ CTRL 1 | Fuel injector 1 pin 1 |
| 9 | K12 | BRN/DK BLU | INJ CTRL 2 | Fuel injector 2 pin 1 |
| 10 | K13 | BRN/BLU | INJ CTRL 3 | Fuel injector 3 pin 1 |
| 11 | K14 | BRN/TAN | INJ CTRL 4 | Fuel injector 4 pin 1 |
| 12 | K2 | VIO/ORG | ECT SIG | Engine coolant temperature sensor pin 1 |
| 13 | K242 | BRN/WHT | KS 2 SIG | Knock sensor 2 pin 1 |
| 14 | K42 | DK BLU/YEL | KS 1 SIG | Knock sensor 1 pin 1 |
| 15 | K89 | BRN/GRN | O2 1/1 POSITIVE CURR CTRL | Oxygen sensor 1/1 pin 3 |
| 16 | K103 | BRN/BLU | PUMP CELL CURR TRIM | Oxygen sensor 1/1 pin 7 (O2 1/1 PUMP CELL CURR TRIM) |
| 17 | K734 | BRN/DK GRN | O2 1/2 PUMP CURR | Oxygen sensor 2/1 pin 3 |
| 18 | K733 | BRN | O2 1/2 PMP CELL CURR TRIM | Oxygen sensor 2/1 pin 7 |
| 19 | K141 | DK BLU/YEL | O2 1/2 SIG | Oxygen sensor 1/2 pin 4 |
| 20 | K904 | DK BLU/DK GRN | O2 RTN DWNSTRM | SK904B: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 |
| 21 | K243 | BRN | O2 2/2 SIG | Oxygen sensor 2/2 pin 4 |
| 24 | K79 | BRN/BLU | O2 1/1 HTR CTRL | Oxygen sensor 1/1 pin 5 |
| 26 | K33 | DK BLU/GRN | SKIP SHIFT CTRL | Skip shift solenoid pin B (M/T) |
| 27 | K333 | DK BLU/BLU | REV LCK OUT CTRL | Reverse lock out solenoid pin B (M/T) |
| 32 | K20 | BRN/GRY | GEN FIELD CTRL | Starting/charging system |
| 33 | K447 | TAN/YEL | ETC MTR (+) | Throttle body pin 1 |
| 34 | K448 | TAN/ORG | ETC MTR (-) | Throttle body pin 2 |
| 35 | A804 | RED/VIO | GEN SNS | Starting/charging system |
| 37 | K924 | WHT/BRN | KS 2 RTN | Knock sensor 2 pin 2 |
| 38 | K942 | BRN/GRN | KS 1 RTN | Knock sensor 1 pin 2 |
| 39 | K41 | DK BLU/BLU | O2 1/1 SIG | Oxygen sensor 1/1 pin 2 |
| 40 | K902 | BRN/DK GRN | O2 RTN UPSTREAM | Oxygen sensor 1/1 pin 1 |
| 41 | K43 | DK BLU/GRN | O2 2/1 SIG | Oxygen sensor 2/1 pin 2 |
| 42 | K906 | GRY/DK GRN | O2 2/1 RTN | Oxygen sensor 2/1 pin 1 |
| 43 | G24 | VIO/BRN | EOT SIG | Oil temperature sensor pin 2 |
| 45 | K1 | VIO/BRN | MAP SIG | Manifold absolute pressure sensor pin 4 |
| 46 | K871 | DK BLU/GRY | SCB VLV SENS SIG 1 | Bypass supercharger valve pin 5 |
| 48 | K299 | BRN/WHT | O2 1/2 HTR CTRL SPLY | Oxygen sensor 1/2 pin 1 (O2 1/2 HTR CTRL) |
| 49 | K18 | DK BLU/ORG | COIL CTRL 3 | Ignition coil 3 pin 1 |
| 50 | K17 | DK BLU/TAN | COIL CTRL 2 | Ignition coil 2 pin 1 |
| 51 | K19 | DK BLU/DK GRN | COIL CTRL 1 | Ignition coil 1 pin 1 |
| 52 | N211 | GRY/TAN | FPCM PWM CTRL | Fuel pump control module 2 pin B (Demon) via I200 pin 4 and I250 pin 1 |
| 55 | K873 | VIO/ORG | SCB VLV CTRL (+) | Bypass supercharger valve pin 1 |
| 56 | K874 | VIO/GRY | SCB VLV CTRL (-) | Bypass supercharger valve pin 2 |
| 57 | K872 | DK BLU/ORG | SCB VLV SIG 2 | Bypass supercharger valve pin 3 (SCB VLV SENS SIG 2) |
| 58 | K37 | BRN/ORG | BANK 1 MAP SIG | MAP sensor bank 1 pin 4 |
| 64 | N212 | GRY/GRN | FPCM PWM FDBCK | Fuel pump control module 2 pin F (Demon) via I200 pin 5 and I250 pin 7 |
| 65 | K922 | BRN/DK BLU | TP SENS RTN | Throttle body pin 6 |
| 66 | K900 | DK BLU/DK GRN | SENS GND | SK900B: camshaft position sensor pin 2, MAP sensor bank 1 pin 1, MAP sensor bank 2 pin 1, manifold absolute pressure sensor pin 1, charge air cooler temperature sensor pin 2, supercharger outlet MAP sensor pin 1, fuel pressure sensor pin 2; also oil pressure sensor pin 3 |
| 67 | F855 | PNK/YEL | 5V SPLY | SF855B: throttle body pin 4, crankshaft position sensor pin 1, oil pressure sensor pin 1, bypass supercharger valve pin 4 |
| 68 | K915 | BRN/WHT | SENS GND | SK915B: oil temperature sensor pin 1, engine coolant temperature sensor pin 2, bypass supercharger valve pin 6, crankcase pressure 2 sensor pin 2 |
| 69 | K664 | DK BLU | CRANKCASE PRESS SIG | Crankcase pressure 2 sensor pin 1 |
| 71 | K383 | BRN/BLU | BANK 2 MAP SIG | MAP sensor bank 2 pin 4 |
| 72 | K80 | BRN/TAN | O2 1/2 HTR CTRL | Oxygen sensor 2/1 pin 5 (O2 1/2 HTR CTRL RTN) |
| 73 | K15 | DK BLU/GRY | COIL CTRL 4 | Ignition coil 4 pin 1 |
| 74 | K16 | DK BLU/YEL | COIL CTRL 5 | Ignition coil 5 pin 1 |
| 75 | K10 | DK BLU/ORG | COIL CTRL 6 | Ignition coil 6 pin 1 |
| 76 | K97 | BRN | COIL CTRL 7 | Ignition coil 7 pin 1 |
| 77 | K98 | DK BLU/YEL | COIL CTRL 8 | Ignition coil 8 pin 1 |
| 79 | K38 | BRN/ORG | INJ CTRL 5 | Fuel injector 5 pin 1 |
| 80 | K58 | BRN/VIO | INJ CTRL 6 | Fuel injector 6 pin 1 |
| 81 | K26 | BRN/YEL | INJ CTRL 7 | Fuel injector 7 pin 1 |
| 82 | K28 | BRN/BLU | INJ CTRL 8 | Fuel injector 8 pin 1 |
| 85 | K44 | DK BLU/GRY | CMP SIG | Camshaft position sensor pin 3 |
| 86 | K24 | BRN/BLU | CKP SIG | Crankshaft position sensor pin 3 |
| 87 | F856 | YEL/PNK | 5V SPLY | SF856B: camshaft position sensor pin 1, MAP sensor bank 1 pin 3, MAP sensor bank 2 pin 3, manifold absolute pressure sensor pin 3, supercharger outlet MAP sensor pin 3, crankcase pressure 2 sensor pin 3, fuel pressure sensor pin 3 |
| 88 | K925 | DK BLU/GRY | CKP GND | Crankshaft position sensor pin 2 |
| 89 | K22 | BRN/ORG | TP 1 SIG | Throttle body pin 5 |
| 90 | K122 | BRN/DK GRN | TP 2 SIG | Throttle body pin 3 |
| 94 | K319 | DK BLU/ORG | CHILLER SOLENOID CTRL | Engine cooling solenoid pin 1 (Demon) via I3022A pin 6 |
| 96 | K399 | BRN/GRY | O2 2/2 HTR CTRL | Oxygen sensor 2/2 pin 1 |

The source prints "O2 1/2" on the pump-current and heater circuits of the upstream right-bank sensor (oxygen sensor 2/1: PCM C2-17, C2-18, C2-72 and sensor pins 3, 7, 5), while the downstream left-bank sensor 1/2 heater is on C2-48. The labels are transcribed as printed; the wiring above shows which sensor each pin reaches.

Component locations (pages 3-6): camshaft position sensor — front of right cylinder bank; crankshaft position sensor — right rear of engine block; MAP sensor bank 1 — rear of left cylinder bank; MAP sensor bank 2 — front of right cylinder bank; charge air cooler temperature sensor — rear of charge air cooler assembly; supercharger outlet MAP sensor — left rear of supercharger; bypass supercharger valve (SCB) — right side of supercharger assembly; oil temperature sensor — right front of engine block; engine coolant temperature sensor — left front of engine; oil pressure sensor — on oil filter bracket; knock sensor 1 — left side of engine block; knock sensor 2 — right side of engine block; crankcase pressure 2 sensor — top left side of engine; oxygen sensor 1/1 — in left exhaust manifold; oxygen sensor 2/1 — in right exhaust manifold; oxygen sensor 1/2 — in left exhaust, in catalytic converter; oxygen sensor 2/2 — in right exhaust, in catalytic converter; throttle body — top left front of engine; evap/purge solenoid — right rear of engine compartment; fuel injectors — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) bank cylinders; ignition coils — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) bank cylinders; ignition capacitor — rear of left cylinder bank. Splices: SK900B, SF855B, SF343L — right rear of engine, in engine harness; SF342C — rear of right cylinder bank, in engine harness; SK915B — center rear of engine, in engine harness; SK904B — left rear of engine, in engine harness.

Sensor pinouts as printed: CMP sensor — 1 5V SPLY (YEL/PNK), 2 SENS GND (DK BLU/DK GRN), 3 CMP SIG (DK BLU/GRY). CKP sensor — 1 5V SPLY (PNK/YEL), 2 CKP GND (DK BLU/GRY), 3 CKP SIG (BRN/BLU). MAP sensor bank 1 — 1 SENS GND (DK BLU/DK GRN), 2 BANK 1 TEMP SIG (DK BLU/BLU), 3 5V SPLY (YEL/PNK), 4 BANK 1 MAP SIG (BRN/ORG). MAP sensor bank 2 — 1 SENS GND (DK BLU/DK GRN), 2 BANK 2 TEMP SIG (DK BLU/GRN), 3 5V SPLY (YEL/PNK), 4 BANK 2 MAP SIG (BRN/BLU). Manifold absolute pressure sensor — 1 SENS GND (DK BLU/DK GRN), 2 TEMP SIG (DK BLU/TAN), 3 5V SPLY (YEL/PNK), 4 MAP SIG (VIO/BRN). Supercharger outlet MAP sensor — 1 SENS GND (DK BLU/DK GRN), 2 SC OUTLET TEMP SIG (VIO/BLU), 3 5V SPLY (YEL/PNK), 4 SC OUTLET MAP SIG (VIO/YEL). Charge air cooler temperature sensor — 1 CAC SIG (BRN/GRN), 2 SENS GND (DK BLU/DK GRN). ECT — 1 ECT SIG (VIO/ORG), 2 SENS GND (BRN/WHT). EOT — 1 SENS GND (BRN/WHT), 2 EOT SIG (VIO/BRN). Oil pressure sensor — 1 5V SPLY (PNK/YEL), 2 OIL PRESS SIG (VIO/GRY), 3 SENS GND (DK BLU/DK GRN). Crankcase pressure 2 sensor — 1 CRANKCASE PRESS SIG (DK BLU), 2 SENS GND (BRN/WHT), 3 5V SPLY (YEL/PNK). Knock sensors — 1 KS SIG, 2 KS RTN. Throttle body — 1 ETC MTR (+) (TAN/YEL), 2 ETC MTR (-) (TAN/ORG), 3 TP 2 SIG (BRN/DK GRN), 4 5V SPLY (PNK/YEL), 5 TP 1 SIG (BRN/ORG), 6 TP SENS RTN (BRN/DK BLU). Bypass supercharger valve — 1 SCB VLV CTRL (+) (VIO/ORG), 2 SCB VLV CTRL (-) (VIO/GRY), 3 SCB VLV SENS SIG 2 (DK BLU/ORG), 4 5V SPLY (PNK/YEL), 5 SCB VLV SENS SIG 1 (DK BLU/GRY), 6 SENS GND (BRN/WHT). Oxygen sensor 1/1 — 1 O2 RTN UPSTREAM (BRN/DK GRN), 2 O2 1/1 SIG (DK BLU/BLU), 3 O2 1/1 POSITIVE CURR CTRL (BRN/GRN), 5 O2 1/1 HTR CTRL (BRN/BLU), 6 GND (BLK to G703), 7 O2 1/1 PUMP CELL CURR TRIM (BRN/BLU). Oxygen sensor 2/1 — 1 O2 2/1 RTN (GRY/DK GRN), 2 O2 2/1 SIG (DK BLU/GRN), 3 O2 1/2 PUMP CURR (BRN/DK GRN), 5 O2 1/2 HTR CTRL RTN (BRN/TAN), 6 GND (BLK to G703), 7 O2 1/2 PUMP CELL CURR TRIM (BRN). Downstream O2 sensors (1/2, 2/2) — 1 HTR CTRL, 2 GND (BLK to G703), 3 O2 RTN DWNSTRM (DK BLU/DK GRN), 4 O2 SIG. Injectors — 1 INJ CTRL x (PCM driver), 2 ASD feed (BRN/WHT from SF342C). Coils — 1 COIL CTRL x (PCM driver), 2 FSD ASD RLY O/P (BRN/YEL from SF343L). Skip shift and reverse lock out solenoids — A ASD CTRL O/P (BRN/WHT from SF342C), B control (PCM driver).

## Power supply / relays (pages 1-3)

Front power distribution center assembly, right side of engine compartment:

- **Auto shut down relay** — terminals 86 (coil) and 30 (contact) are fed RED/WHT (front PDC 63C and 63A) from SA751B, which is fed by rear PDC fuse 4 (60 A, hot at all times, rear PDC 4B). Coil terminal 85 -> 63D (BRN/WHT, K51) -> PCM C1-80 (ASD RLY CTRL). Contact terminal 87 -> 63B (PNK/DK BLU) -> 34A, feeding fuses 34 and 35.
- **Fuse 34 (25 A)**, ASD relay output -> 34B (BRN, F342) -> SF342E -> PCM C1-74/75/76 (ASD CTRL O/P), charge air cooler coolant pump pin 3, and via I200 pin 13 (BRN/WHT) -> SF342C -> fuel injectors pin 2, skip shift solenoid pin A and reverse lock out solenoid pin A.
- **Fuse 35 (20 A)**, ASD relay output -> 35B (BRN/YEL) -> I200 pin 2 -> SF343L -> ignition coils pin 2 (FSD ASD RLY O/P) and ignition capacitor pin 1.
- **Fuse 37 (10 A)**, hot with run/start relay energized -> 37B (PNK/BRN, F914) -> PCM C1-23 (FUSED IGN RUN/START).
- **Fuse 31 (25 A)**, hot at all times -> 31B (RED/BRN, A209) -> PCM C1-96 (FUSED B (+)).
- **Fuse 22 (40 A)**, hot at all times -> 22B (RED/BLU) -> charge air cooler coolant pump pin 2 (FUSED B (+)).

Rear power distribution center assembly, right rear of luggage compartment (relay terminals are numbered 72A-72D except Demon and 28B-28D on the Demon):

- **Fuel pump relay** — coil terminal 86 -> 72C/28C (BLU/TAN, N9) -> I250 pin 24 -> PCM C1-73 (FUEL PUMP RLY CTRL); coil terminal 85 -> 72D/28D (BLK) -> SZ922J (except Demon) -> ground G305.
  - Except Demon: contact terminal 30 -> 72A (VIO/RED) -> 21B, fuse 21 (30 A, hot at all times). Contact terminal 87 -> 72B (DK BLU/ORG, N1) -> fuel pump control module pin A (FUEL PUMP CTRL O/P).
  - Demon: contact terminal 30 is linked inside the PDC to the hot-at-all-times feed. Contact terminal 87 -> 28B (RED) -> SA3A -> 40A and 41A. Fuse 40 (30 A) -> 40B (VIO/RED, N15) -> fuel pump control module pin A. Fuse 41 (30 A) -> 41B (GRY/PNK, N215) -> fuel pump control module 2 pin A.
- **Fuse 36 (10 A)**, hot at all times -> 36B (RED) -> I512 pin 10 -> SA947E -> active exhaust valve 1 pin 1 and active exhaust valve 2 pin 1 (FUSED B (+)).

Grounds: G102 — right front of engine compartment (PCM C1-52/53/72 via SZ903C); G101 — right front of engine compartment (clutch interlock switch); G703 (evap/purge solenoid pin 2 and all four O2 sensor GND pins); G901A — left front corner of engine compartment (charge air cooler coolant pump, HVAC cooling solenoid and engine cooling solenoid on Demon); G305 — right rear of luggage compartment (fuel pump relay coil, active exhaust valves); G917A — under passenger's seat (evap system monitor switch); G924A and G924C — right rear of luggage compartment (fuel pump control modules pin E).

## Fuel pump control modules (pages 5-6)

Fuel pump control module, right side of luggage compartment: A FUEL PUMP CTRL O/P (DK BLU/ORG, N1; or VIO/RED, N15) from the fuel pump relay circuit; B FPCM PWM CTRL (DK BLU/DK GRN, N11) -> PCM C1-83; D FUEL PUMP PWM CTRL (DK BLU/ORG, N13); E GND (BLK, Z924) -> G924A; F FPCM PWM FDBCK (DK BLU/GRN, N12) -> PCM C1-61; G GND (SHIELD, Z31) -> SZ310; H FUEL PUMP RTN (VIO/BLU, N14).

Fuel pump control module 2 (Demon): A FUEL PUMP CTRL O/P (GRY/PNK, N215) from fuse 41; B FPCM PWM CTRL (GRY/TAN, N211) -> PCM C2-52; D FUEL PUMP PWM CTRL (GRY/ORG, N213); E GND (BLK, Z924) -> G924C; F FPCM PWM FDBCK (GRY/GRN, N212) -> PCM C2-64; G GND (SHIELD, Z31) -> SZ31B; H FUEL PUMP RTN (GRY/BLK, N214).

Fuel pump module (connector C1 — top left side of fuel tank; C2 — top right side of fuel tank):

| Pin | Function (as printed) | Except Demon | Demon |
|-----|----------------------|--------------|-------|
| C1-1 | FUEL PUMP RTN | VIO/BLU (N14) from fuel pump control module pin H | same |
| C1-2 | FUEL PUMP RTN | VIO/BLU (N14) from fuel pump control module pin H | GRY/BLK (N214) from fuel pump control module 2 pin H via SN214A/SN214B |
| C1-3 | FUEL LVL SENS SIG | DK BLU/WHT (N4) -> body control module C5 pin 17 | same |
| C1-4 | FUEL LVL SENSE RTN | BLK (G109) -> SG109B -> body control module C5 pin 16 | same |
| C1-5 | FUEL PUMP PWM CTRL | DK BLU/ORG (N13) from fuel pump control module pin D | same |
| C1-6 | FUEL PUMP PWM CTRL | DK BLU/ORG (N13) from fuel pump control module pin D | GRY/ORG (N213) from fuel pump control module 2 pin D via SN213A/SN213B |
| C2-2 | FUEL LVL SIG 2 | DK BLU/GRY (N5) -> body control module C5 pin 15 | — |
| C2-3 | FUEL LVL SENSE RTN | BLK (G109) -> SG109B | — |

The source prints the pin numbers in two rows marked DEMON and EXCEPT DEMON: C1 pins 1-6 appear in both, C2 pins only in the EXCEPT DEMON row. Splices SN13A/SN14A (except Demon) and SN13C/SN14C (Demon) — under left rear seat, in body harness; SN13B/SN14B (except Demon) and SN13D/SN14D (Demon) — behind front of left rear quarter panel, in body harness; SG109B — under passenger's door sill, in body harness.

Other modules on the same diagram (not PCM pins): instrument cluster pins 12 CAN C (+) (BRN/WHT) and 13 CAN C (-) (YEL) to the computer data lines system; body control module connector C6 pins 11 CAN IHS (-) (WHT, D146) and 12 CAN IHS (+) (WHT/GRN, D145), C5 pins 15/16/17 fuel level (above), C4 pins 22 AAT SIG (VIO/GRN, G31) and 23 SENS GND (VIO/BRN, G931) to the ambient air temperature sensor (pin 1 AAT SIG, pin 2 SENS GND); with remote start, SG931B also joins hood ajar switch pin 2 (SENS GND) to that sensor ground.
