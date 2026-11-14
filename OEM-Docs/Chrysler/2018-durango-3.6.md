# 2018 Dodge Durango V6-3.6L — PCM pinout

Transcribed from [2018-durango-3.6.pdf](2018-durango-3.6.pdf) (ProDemand "Printer Friendly View" print, "ENGINE PERFORMANCE > 3.6L" wiring diagram, "Fig 1" to "Fig 6: 3.6L, Engine Performance Circuit (1 of 6)" to "(6 of 6)" = PDF pages 1-6, sheets 585137-585142; PDF page 7 is blank).

The source disagrees with itself about the engine. The printed page header reads "YMMS: 2018 Dodge Durango SRT, Engine: 6.4L Eng", but the section title, every figure title and the file name say 3.6L, and the drawing itself is a V6: six fuel injectors, six ignition coils, intake and exhaust camshaft position (VVT) solenoids on both banks, four VVL solenoids, an EGR valve assembly and an EGR temperature sensor. This transcription treats the diagram as the 3.6L engine controls.

Powertrain Control Module (PCM), located right front of engine compartment. Two connectors, C1 and C2, each drawn with terminals 1-96.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 96 | Chassis side: power/ignition feeds, grounds, CAN C, APP sensor, A/C and fuel tank pressure, hood ajar switch, relay controls (ASD, fuel pump, vacuum pump, starter, fans), purge |
| C2 | 96 | Engine side: injectors, coils, VVT/VVL/oil pump solenoids, EGR, crank/cam, knock, MAP/ECT/IAT/EOT/oil pressure, O2 sensors and heaters, electronic throttle, generator |

Chrysler circuit codes (K11, F342, D27, ...) are printed on the wire at the PCM and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). In-line connectors are named as printed (XY220A, XY221A, XY222A, XY223A, XY3000A, XY4000A, XY4301A, I9030, I6602A). Where the colour changes at an in-line connector the colour at the component is given in parentheses. Unlisted pins are not connected in this diagram.

## C1 — chassis side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 23 | F942 | PNK/GRN | FSD IGN SW O/P | PDC pin 28, fuse 78 (10 A), fed by run/start relay |
| 33 | D28 | YEL | CAN C (-) | Computer data lines system |
| 42 | K914 | BRN/WHT | SENS GND | SP1846: A/C pressure transducer pin 3 (SENS GND); evap system monitor switch pin 1 (SENS GND) via XY3000A pin 1 |
| 44 | C18 | BLU/BRN | A/C PRES SIG | A/C pressure transducer pin 2 |
| 46 | K806 | DK BLU/BRN | HOOD AJAR SW SIG | Anti-theft system |
| 48 | N8 | DK BLU/PNK | 5V SPLY | Fuel tank pressure sensor pin C (5V SPLY) via XY3000A pin 6 / I6602A pin H (BRN/YEL at sensor) |
| 52 | Z909 | BLK | GND | Ground G909B |
| 53 | Z909 | BLK | GND | Ground G909B |
| 54 | N10 | DK BLU/WHT | SENS GND | Fuel tank pressure sensor pin A (SENS GND) via XY3000A pin 30 / I6602A pin F (BRN/TAN at sensor) |
| 57 | D27 | TAN/WHT | CAN C (+) | Computer data lines system |
| 67 | K400 | BRN/VIO | APP SENS 2 GND | Accelerator pedal position sensor pin 4 |
| 68 | K167 | BRN/YEL | APP SENS 1 GND | Accelerator pedal position sensor pin 3 |
| 69 | K854 | VIO/BRN | 5V SPLY | SP804: accelerator pedal position sensor pin 6 (5V SPLY); A/C pressure transducer pin 1 (5V SPLY) |
| 70 | K108 | VIO/GRY | EVAP PRG SOL SENS | Evap system monitor switch pin 2 via XY3000A pin 23 |
| 72 | Z909 | BLK | GND | Ground G909B |
| 73 | N9 | DK BLU | FUEL PMP CTRL | Fuel pump relay coil terminal 86 (PDC pin 25) |
| 74 | F342 | BRN/WHT | ASD CTRL OUTPUT | SP102 (ASD relay output via fuse 64, 25 A) |
| 75 | F342 | BRN/WHT | ASD CTRL OUTPUT | SP102 |
| 76 | F342 | BRN/WHT | ASD CTRL OUTPUT | SP102 |
| 77 | T110 | DK GRN/YEL | VCM PMP RLY CTRL | Vacuum pump relay coil terminal 85 (PDC C7 pin 10) via XY3000A pin 5 and XY4000A pin 11 |
| 78 | N112 | DK BLU/ORG | HI SPD RAD FAN CTRL | Cooling fans system |
| 79 | C13 | BLU/ORG | A/C CLUTCH COIL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RLY CTRL | Auto shut down relay coil terminal 86 (PDC pin 4) |
| 81 | T752 | DK GRN/ORG | STARTER RLY CTRL | Starting/charging system |
| 82 | N201 (or K175) | DK BLU/GRN (or BRN/BLU) | RAD FAN CTRL / LO SPD RAD FAN CTRL | Cooling fans system |
| 88 | N7 | DK BLU/ORG | FUEL TANK PRESS SIG | Fuel tank pressure sensor pin B (FUEL TANK PRESS SIG) via XY3000A pin 10 / I6602A pin G |
| 91 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 5 |
| 92 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 2 |
| 93 | K852 | BRN/VIO | 5V SPLY | Accelerator pedal position sensor pin 1 |
| 94 | K52 | DK BLU/WHT | EVAP PRG CTRL | Evap/purge solenoid pin 1 via I9030 pin 10 |
| 95 | K501 | BRN | COOLANT BYPASS VALVE CTRL | Cooling fans system |
| 96 | A209 | RED | FUSED B (+) | PDC C3 pin 3, fuse 22 (20 A), hot at all times |

Pin 82 carries two printed alternatives: circuit N201 / DK BLU/GRN "(OR K175)" / "(OR BRN/BLU)", with the two function texts "RAD FAN CTRL" and "LO SPD RAD FAN CTRL" and the note markers 1 (HEAVY DUTY) and 2 (LIGHT DUTY). The markers are drawn inside the module below the two texts (marker 1 in line with "RAD FAN CTRL", marker 2 in line with "LO SPD RAD FAN CTRL"); the drawing does not state unambiguously which function, circuit and colour belongs to which duty rating.

Component locations (Fig 3, 5, 6): power distribution center assembly — right rear of engine compartment; A/C pressure transducer — left front of engine compartment; fuel tank pressure sensor — top of fuel tank; accelerator pedal position sensor — top of accelerator pedal assembly; evap system monitor switch — on evap canister assembly; evap/purge solenoid — top center of engine; vacuum pump — top front of engine; SP102, SP804, SP1846 — right front of engine compartment, in headlamp and dash harness; G909B — right front of engine compartment.

Accelerator pedal position sensor pinout: 1 5V SPLY (BRN/VIO), 2 APP SIG 1 (BRN/WHT), 3 APP SENS 1 GND (BRN/YEL), 4 APP SENS 2 GND (BRN/VIO), 5 APP SIG 2 (WHT/BRN), 6 5V SPLY (VIO/BRN). Fuel tank pressure sensor: A SENS GND (BRN/TAN), B FUEL TANK PRESS SIG (DK BLU/ORG), C 5V SPLY (BRN/YEL). A/C pressure transducer: 1 5V SPLY (VIO/BRN), 2 A/C PRES SIG (BLU/BRN), 3 SENS GND (BRN/WHT). Evap system monitor switch: 1 SENS GND (BRN/WHT), 2 EVAP PRG SOL SENS (VIO/GRY). Evap/purge solenoid: 1 EVAP PRG CTRL (DK BLU/WHT), 2 GND (BLK to G903A).

## C2 — engine side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K534 | GRY/YEL | VVL SOL 2/2 CTRL | VVL solenoid 2/2 pin 1 via XY222A pin 15 |
| 3 | K932 | DK BLU/BLU | SENS SIG | EGR temperature sensor pin 2 (SENS SIG) |
| 4 | G60 | VIO/YEL | OIL PRESS SIG | Oil pressure sensor pin 2 (OIL PRESS SIG) via XY220A pin 1 (VIO at sensor) |
| 6 | K532 | VIO/GRY | VVL SOL 1/2 CTRL | VVL solenoid 1/2 pin 1 via XY222A pin 13 |
| 8 | K11 | BRN/YEL | INJ 1 CTRL | Fuel injector 1 pin 1 via XY222A pin 1 |
| 9 | K12 | BRN/DK BLU | INJ 2 CTRL | Fuel injector 2 pin 1 via XY222A pin 9 |
| 10 | K13 | BRN/BLU | INJ 3 CTRL | Fuel injector 3 pin 1 via XY222A pin 2 |
| 11 | K14 | BRN/TAN | INJ 4 CTRL | Fuel injector 4 pin 1 via XY222A pin 10 |
| 12 | K2 | VIO/ORG | ECT SIG | Engine coolant temperature sensor pin 1 via XY223A pin 4 |
| 13 | K242 | BRN/WHT | KS 2 SIG | Knock sensor 2 pin 1 via XY220A pin 5 |
| 14 | K42 | DK BLU/YEL | KS 1 SIG | Knock sensor 1 pin 1 via XY220A pin 3 |
| 19 | K141 | DK BLU/YEL | 1/2 SIG | Oxygen sensor 1/2 pin 4 |
| 20 | K904 | DK BLU/DK GRN | DNSTRM O2 RTN | SP2191: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 |
| 21 | K243 | BRN | 2/2 SIG | Oxygen sensor 2/2 pin 4 |
| 22 | K276 | DK BLU/WHT | VVT EXT CTRL | Camshaft position solenoid 1/2 pin 1 (VVT EXT CTRL) via XY222A pin 3 |
| 23 | K76 | BRN/WHT | VVT INT CTRL | Camshaft position solenoid 1/1 pin 1 (VVT INTAKE CTRL) via XY222A pin 5 |
| 24 | K99 | BRN/GRN | HTR CTRL | Oxygen sensor 1/1 pin 1 |
| 25 | K533 | GRY | VVL SOL 2/1 CTRL | VVL solenoid 2/1 pin 1 via XY222A pin 14 |
| 29 | T762 | DK GRN/YEL | STRT PCR RLY CTRL | Starting/charging system |
| 31 | K531 | VIO | VVL SOL 1/2 CTRL | VVL solenoid 1/1 pin 1 via XY222A pin 12 |
| 32 | K20 | BRN/GRY | GEN FLD CTRL | Starting/charging system |
| 33 | K447 | TAN/YEL | ETC MTR (+) | Throttle body pin 1 |
| 34 | K448 | TAN/ORG | ETC MTR (-) | Throttle body pin 2 |
| 35 | A804 | RED/VIO | GEN SENS | Starting/charging system |
| 37 | K924 | WHT/BRN | KS 2 RTN | Knock sensor 2 pin 2 via XY220A pin 7 (WHT at sensor) |
| 38 | K942 | BRN/GRN | KS 1 RTN | Knock sensor 1 pin 2 via XY220A pin 8 |
| 39 | K41 | DK BLU/BLU | O2 1/1 SIG | Oxygen sensor 1/1 pin 4 |
| 40 | K902 | BRN/DK GRN | UPSTRM O2 RTN | SP2190: oxygen sensor 1/1 pin 3 and oxygen sensor 2/1 pin 3 |
| 41 | K43 | DK BLU/GRN | O2 2/1 SIG | Oxygen sensor 2/1 pin 4 |
| 43 | G224 | VIO/YEL | EOT SIG | Oil temperature sensor pin 1 via XY223A pin 9 (VIO/BRN at sensor) |
| 44 | K21 | DK BLU/GRN | IAT SIG | Intake air temperature sensor pin 1 |
| 45 | K1 | VIO/BRN | MAP SIG | Manifold absolute pressure sensor pin 1 |
| 48 | K299 | BRN/WHT | HTR CTRL | Oxygen sensor 1/2 pin 1 |
| 49 | K18 | DK BLU/ORG | COIL 3 CTRL | Ignition coil 3 pin 1 via XY221A pin 3 |
| 50 | K17 | DK BLU/TAN | COIL 2 CTRL | Ignition coil 2 pin 1 via XY221A pin 2 |
| 51 | K19 | DK BLU/DK GRN | COIL 1 CTRL | Ignition coil 1 pin 1 via XY221A pin 1 |
| 55 | K682 | DK BLU/WHT | EGR CTRL 1 | EGR valve assembly pin 5 |
| 56 | K684 | DK BLU/YEL | EGR CTRL 2 | EGR valve assembly pin 4 |
| 57 | K683 | DK BLU/GRY | EGR SIG | EGR valve assembly pin 2 |
| 61 | K445 | DK BLU/DK GRN | SENS 2/2 SIG | Camshaft position sensor 2 pin 4 via XY223A pin 7 |
| 62 | K441 | DK BLU/BRN | SENS 1/2 SIG | Camshaft position sensor 1 pin 1 via XY223A pin 11 |
| 63 | K444 | DK BLU/TAN | SENS SIG | Camshaft position sensor 2 pin 1 (SENS SIG) via XY223A pin 6 |
| 65 | K922 | BRN/DK BLU | TP SENS RTN | Throttle body pin 6 |
| 66 | K900 | DK BLU/DK GRN | SENS GND | SP2186: camshaft position sensor 1 pin 3 (XY223A pin 2), camshaft position sensor 2 pin 3 (XY223A pin 14), MAP sensor pin 2, EGR temperature sensor pin 1, ECT sensor pin 2 (XY223A pin 12), oil temperature sensor pin 2 (XY223A pin 8), oil pressure sensor pin 3 (XY220A pin 6, BLK/GRY at sensor), EGR valve assembly pin 1 |
| 67 | F855 | PNK/YEL | 5V SPLY | SP2176: crankshaft position sensor pin 3, throttle body pin 4, oil pressure sensor pin 1 (XY220A pin 4, BRN/ORG at sensor) |
| 68 | K915 | BRN/WHT | SENS GND | SP305: intake air temperature sensor pin 2; anti-theft system |
| 72 | K199 | BRN/VIO | HTR CTRL | Oxygen sensor 2/1 pin 1 |
| 73 | K15 | DK BLU/GRY | COIL 4 CTRL | Ignition coil 4 pin 1 via XY221A pin 4 |
| 74 | K16 | DK BLU/YEL | COIL 5 CTRL | Ignition coil 5 pin 1 via XY221A pin 5 |
| 75 | K10 | DK BLU | COIL 6 CTRL | Ignition coil 6 pin 1 via XY221A pin 6 |
| 79 | K38 | BRN/ORG | INJ 5 CTRL | Fuel injector 5 pin 1 via XY222A pin 8 |
| 80 | K58 | BRN/VIO | INJ 6 CTRL | Fuel injector 6 pin 1 via XY222A pin 16 |
| 83 | T753 | DK GRN/YEL | IGN CRANK SENSE | Starting/charging system |
| 85 | K44 | DK BLU/GRY | SENS SIG | Camshaft position sensor 1 pin 4 (SENS SIG) via XY223A pin 10 |
| 86 | K24 | BRN/BLU | CKP SIG | Crankshaft position sensor pin 2 |
| 87 | F856 | YEL/PNK | 5V SPLY | SP2470: camshaft position sensor 1 pin 2 (XY223A pin 3, BRN/YEL at sensor), camshaft position sensor 2 pin 2 (XY223A pin 15, BRN/YEL at sensor), MAP sensor pin 3, EGR valve assembly pin 3 |
| 88 | K925 | DK BLU/GRY | CKP GND | Crankshaft position sensor pin 1 |
| 89 | K22 | BRN/ORG | TP 1 SIG | Throttle body pin 5 |
| 90 | K122 | BRN/DK GRN | TP 2 SIG | Throttle body pin 3 |
| 93 | G62 | VIO/YEL | OIL PRESS SOL CTRL | Oil pump solenoid pin 1 |
| 94 | K78 | BRN | VVT INT 2/1 CTRL | Camshaft position solenoid 2/1 pin 1 (VVT INTAKE 2 CTRL) via XY222A pin 6 |
| 95 | K277 | DK BLU | VVT EXT 2/2 CTRL | Camshaft position solenoid 2/2 pin 1 (VVT EXT 2 CTRL) via XY222A pin 4 |
| 96 | K399 | BRN/GRY | HTR CTRL | Oxygen sensor 2/2 pin 1 |

Pins 6 and 31 are both printed "VVL SOL 1/2 CTRL" at the PCM. Pin 6 (K532, VIO/GRY) is wired to VVL solenoid 1/2 and pin 31 (K531, VIO) is wired to VVL solenoid 1/1, so the label on pin 31 does not match the component it reaches. The oxygen sensor heater pins 24, 48, 72 and 96 are all printed "HTR CTRL" without a sensor number; the sensor is identified by the wire traced.

Component locations (Fig 1-4): knock sensor 2 — under intake manifold, on left cylinder head; knock sensor 1 — under intake manifold, on right cylinder head; EGR temperature sensor — right front of engine; oxygen sensor 1/1 — in right exhaust, upstream of catalytic converter; oxygen sensor 2/1 — in left exhaust, upstream; oxygen sensor 1/2 — in right exhaust, downstream; oxygen sensor 2/2 — in left exhaust, downstream; VVL solenoids 2/1 and 2/2 — front of left cylinder head; VVL solenoid 1/1 — front of right cylinder head; VVL solenoid 1/2 — rear of right cylinder head; camshaft position solenoids 1/2 and 1/1 — front of right cylinder head; camshaft position solenoids 2/1 and 2/2 — front of left cylinder head; oil pump solenoid — lower right front of engine; oil pressure sensor — top center rear of engine; EGR valve assembly — top right front of engine; crankshaft position sensor — front of engine block; camshaft position sensor 2 — rear of left cylinder head; camshaft position sensor 1 — rear of right cylinder head; MAP sensor — top right front of engine; IAT sensor — top front of engine; ECT sensor — left front of engine; oil temperature sensor — top center rear of engine; throttle body — top front of engine; ignition coils 6, 4, 2 — top of left cylinder bank valve cover; ignition coils 5, 3, 1 — top of right cylinder bank valve cover; fuel injectors 6, 4, 2 — top of left cylinder bank; fuel injectors 5, 3, 1 — top of right cylinder bank; ignition capacitor 2 — rear of left cylinder bank; ignition capacitor (printed without a number) — rear of right cylinder bank. Splices: SP2191 — right rear of engine, in engine harness; SP2190 — rear of engine, in engine harness; SP2186 — right rear of engine, in engine harness; SP2470, SP2176 — right front of engine, in engine harness; S002A — printed "(in steering wheel)"; SP305, S004A — no location printed.

Sensor and actuator pinouts as printed: CMP sensor 1 — 1 SENS 1/2 SIG (DK BLU/BRN), 2 5V SPLY (BRN/YEL), 3 SENS GND (DK BLU/DK GRN), 4 SENS SIG (DK BLU/GRY). CMP sensor 2 — 1 SENS SIG (DK BLU/TAN), 2 5V SPLY (BRN/YEL), 3 SENS GND (DK BLU/DK GRN), 4 SENS 2/2 SIG (DK BLU/DK GRN). CKP sensor — 1 CKP GND (DK BLU/GRY), 2 CKP SIG (BRN/BLU), 3 5V SPLY (PNK/YEL). MAP — 1 MAP SIG (VIO/BRN), 2 SENS GND (DK BLU/DK GRN), 3 5V SPLY (YEL/PNK). ECT — 1 ECT SIG (VIO/ORG), 2 SENS GND (DK BLU/DK GRN). EOT — 1 EOT SIG (VIO/BRN), 2 SENS GND (DK BLU/DK GRN). IAT — 1 IAT SIG (DK BLU/GRN), 2 SENS GND (BRN/WHT). EGR temperature sensor — 1 SENS GND (DK BLU/DK GRN), 2 SENS SIG (DK BLU/BLU). Oil pressure sensor — 1 5V SPLY (BRN/ORG), 2 OIL PRESS SIG (VIO), 3 SENS GND (BLK/GRY). EGR valve assembly — 1 SENS GND (DK BLU/DK GRN), 2 EGR SIG (DK BLU/GRY), 3 5V SPLY (YEL/PNK), 4 EGR CTRL 2 (DK BLU/YEL), 5 EGR CTRL 1 (DK BLU/WHT). Knock sensor 2 — 1 KS 2 SIG (BRN/WHT), 2 KS 2 RTN (WHT). Knock sensor 1 — 1 KS 1 SIG (DK BLU/YEL), 2 KS 1 RTN (BRN/GRN). Throttle body — 1 ETC MTR (+) (TAN/YEL), 2 ETC MTR (-) (TAN/ORG), 3 TP 2 SIG (BRN/DK GRN), 4 5V SPLY (PNK/YEL), 5 TP 1 SIG (BRN/ORG), 6 TP SENS RTN (BRN/DK BLU). Upstream O2 sensors (1/1, 2/1) — 1 HTR CTRL, 2 GND (BLK to G903A), 3 UPSTRM O2 RTN (BRN/DK GRN), 4 SIG. Downstream O2 sensors (1/2, 2/2) — 1 HTR CTRL, 2 GND (BLK to G903A), 3 DNSTRM O2 RTN (DK BLU/DK GRN), 4 SIG. VVL solenoids — 1 VVL SOL CTRL, 2 GND (BLK; 2/1 and 2/2 to G914A, 1/1 and 1/2 to G927A). Camshaft position solenoids — 1 control, 2 GND (BLK; 1/2 and 1/1 to G927A, 2/1 and 2/2 to G914A). Oil pump solenoid — 1 OIL PRESS SOL CTRL (VIO/YEL), 2 GND (BLK to G903A). Injectors — 1 INJ x (PCM driver), 2 ASD CTRL OUT (BRN/WHT). Coils — 1 COIL x CTRL (PCM driver), 2 FSD ASD RLY O/P (BRN/WHT), 3 GND (BLK; coils 6, 4, 2 to G914A, coils 5, 3, 1 to G927A). Ignition capacitors — 1 (BRN/WHT), case to ground.

## Power supply / relays (Fig 5)

Power distribution center assembly, right rear of engine compartment. Relay terminals 30 are on the "hot at all times" bus. The PDC output terminals are drawn in dashed connector groups: 7, 4 and 5 under the label C3; 17 under C5; 25 and 22 under C3; 10 under C7; 28 and 3 under C3.

- **Auto shut down relay** — terminal 87 feeds fuse 63 (20 A) and fuse 64 (25 A). Fuse 63 -> PDC pin 7 (BRN/YEL) -> I9030 pin 3 -> XY221A pin 7 (BRN/WHT on the engine side) -> S004A (left bank) and S002A (right bank), which are joined by a BRN/WHT wire. S004A feeds ignition coils 6, 4, 2 pin 2, ignition capacitor 2 and fuel injectors 6, 4, 2 pin 2; S002A feeds ignition coils 5, 3, 1 pin 2, the right-bank ignition capacitor and fuel injectors 5, 3, 1 pin 2. Fuse 64 -> PDC pin 5 (BRN/WHT, F342 at the PCM) -> SP102 -> PCM C1-74/75/76 (ASD CTRL OUTPUT); SP102 also has a BRN/WHT branch to I9030 pin 2 marked "(NOT USED)". Coil terminal 86 -> PDC pin 4 (BRN/WHT, K51) -> PCM C1-80 (ASD RLY CTRL); coil terminal 85 on the hot-at-all-times bus.
- **Fuel pump relay** — terminal 87 -> fuse 70 (20 A) -> PDC C5 pin 17 (DK BLU/ORG) -> XY4301A pin 4 -> I6602A pin E -> fuel pump module pin 4 (FUEL PUMP CTRL O/P, circuit N1). Coil terminal 86 -> PDC pin 25 (DK BLU, N9) -> PCM C1-73; coil terminal 85 from the run/start relay output.
- **Vacuum pump relay** — terminal 87 -> fuse 9 (30 A) -> PDC pin 22 (DK GRN/VIO) -> I9030 pin 6 -> vacuum pump pin 1 (VACUUM PUMP RLY OUT; pump pin 2 GND, BLK, via I9030 pin 8 to G906A). Coil terminal 85 -> PDC C7 pin 10 (DK GRN/YEL, T110) -> XY4000A pin 11 -> XY3000A pin 5 -> PCM C1-77; coil terminal 86 from the run/start relay output.
- **Run/start relay** — terminal 87 -> fuse 78 (10 A) -> PDC pin 28 (PNK/GRN, F942) -> PCM C1-23 (FSD IGN SW O/P); terminal 87 also feeds the fuel pump and vacuum pump relay coils. Its coil is not shown.
- **Fuse 22 (20 A)**, hot at all times -> PDC C3 pin 3 (RED, A209) -> PCM C1-96 (FUSED B (+)).

Grounds: G903A — right front of engine compartment (all four O2 sensor GND pins, oil pump solenoid, evap/purge solenoid pin 2); G909B — right front of engine compartment (PCM C1-52/53/72); G914A — top left of engine (VVL solenoids 2/1 and 2/2, camshaft position solenoids 2/1 and 2/2, ignition coils 6, 4, 2); G927A — top right center of engine (VVL solenoids 1/1 and 1/2, camshaft position solenoids 1/2 and 1/1, ignition coils 5, 3, 1); G906A — right front of engine compartment (vacuum pump); G917A — left front of cargo area (fuel pump module pin 1 GND, circuit Z916, via I6602A pin A).

Other modules on the same diagram (not PCM pins): cluster pins 12 CAN C (+) (BRN/WHT) and 13 CAN C (-) (YEL) to the computer data lines system; body control module (right kick panel) connector C5 pins 26 CAN C (-) (YEL, D46) and 25 CAN C (+) (BRN, D45) to the computer data lines system, 15 FUEL LVL SIG 2 (DK BLU/GRY, N5) via XY4000A pin 14 / I6602A pin D to fuel level sensor pin 3, 16 FUEL LVL SENS RTN (BLK, G109) via XY4000A pin 1 / I6602A pin B to S01A (fuel pump module pin 2 and fuel level sensor pin 2, BLK/WHT), 17 FUEL LVL SENS SIG (DK BLU/WHT, N4) via XY4000A pin 13 / I6602A pin C to fuel pump module pin 3. The fuel level sensor and fuel pump module (top of fuel tank) report to the BCM, not the PCM.
