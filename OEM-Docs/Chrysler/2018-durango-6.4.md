# 2018 Dodge Durango SRT V8-6.4L — PCM pinout

Transcribed from [2018-durango-6.4.pdf](2018-durango-6.4.pdf) (ProDemand "Printer Friendly View" print, "ENGINE PERFORMANCE > 6.4L" wiring diagram, "Fig 1" to "Fig 6: 6.4L, Engine Performance Circuit (1 of 6)" to "(6 of 6)" = PDF pages 1-6, sheets 585131-585136; PDF page 7 is blank).

The file name, the printed header ("YMMS: 2018 Dodge Durango SRT, Engine: 6.4L Eng") and the diagram content agree: eight fuel injectors, eight ignition coils, four multi displacement system cylinder solenoids and a short runner solenoid valve marked "(6.4L)". The drawing also carries 5.7L alternatives in three location notes (crankshaft position sensor, evap/purge solenoid, SP1939); they are quoted below as printed.

Powertrain Control Module (PCM), located right front of engine compartment. Two connectors, C1 and C2, each drawn with terminals 1-96.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 96 | Chassis side: power/ignition feeds, grounds, CAN C, APP sensor, A/C and fuel tank pressure, relay controls (ASD, fuel pump, vacuum pump, starter, fans), purge |
| C2 | 96 | Engine side: injectors, coils, MDS/VCT solenoids, crank/cam, knock, MAP/ECT/IAT/EOT/oil pressure, O2 sensors and heaters, electronic throttle, short runner valve, generator |

Chrysler circuit codes (K11, F342, D27, ...) are printed on the wire at the PCM and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). In-line connectors are named as printed (I9030, I9100, I3000, I6602A, XY3000A, XY4000A, XY4301A). Unlisted pins are not connected in this diagram.

## C1 — chassis side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 23 | F942 | PNK/GRN | FSD IGN SW OUT | PDC pin 28, fuse 78 (10 A), fed by run/start relay |
| 33 | D28 | YEL | CAN C (-) | Computer data lines system |
| 42 | K914 | BRN/WHT | SENS GND | SP1846: A/C pressure transducer pin 3 (SENS GND); evap system monitor switch pin 1 (SENS GND) via I3000 pin 1 |
| 44 | C18 | BLU/BRN | A/C PRESS SIG | A/C pressure transducer pin 2 |
| 48 | N8 | DK BLU/PNK | 5V SPLY | Fuel tank pressure sensor pin C (5V SPLY) via XY3000A pin 6 / I6602A pin H (BRN/YEL at sensor) |
| 52 | Z909 | BLK | GND | Ground G909B |
| 53 | Z909 | BLK | GND | Ground G909B |
| 54 | N10 | DK BLU/WHT | SENS GND | Fuel tank pressure sensor pin A (SENS GND) via XY3000A pin 30 / I6602A pin F (BRN/TAN at sensor) |
| 57 | D27 | TAN/WHT | CAN C (+) | Computer data lines system |
| 67 | K400 | BRN/VIO | APP SENS GND 2 | Accelerator pedal position sensor pin 4 |
| 68 | K167 | BRN/YEL | APP SENS GND 1 | Accelerator pedal position sensor pin 3 |
| 69 | K854 | VIO/BRN | 5V SPLY | SP804: accelerator pedal position sensor pin 6 (5V SPLY); A/C pressure transducer pin 1 (5V SPLY) |
| 70 | K108 | VIO/GRY | EVAP PURGE SOL SENS | Evap system monitor switch pin 2 via I3000 pin 23 |
| 72 | Z909 | BLK | GND | Ground G909B |
| 73 | N9 | DK BLU | FUEL PUMP CTRL | Fuel pump relay coil terminal 86 (PDC pin 25) |
| 74 | F342 | BRN/WHT | ASD CTRL OUT | SP102 (ASD relay output via fuse 64, 25 A) |
| 75 | F342 | BRN/WHT | ASD CTRL OUT | SP102 |
| 76 | F342 | BRN/WHT | ASD CTRL OUT | SP102 |
| 77 | T110 | DK GRN/YEL | VACUUM PUMP RLY CTRL | Vacuum pump relay coil terminal 85 (PDC C7 pin 10) via XY3000A pin 5 and XY4000A pin 15 |
| 78 | N112 | DK BLU/ORG | RAD FAN CTRL RLY | Cooling fans system |
| 79 | C13 | BLU/ORG | A/C CLUTCH CTRL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RLY CTRL | Auto shut down relay coil terminal 86 (PDC pin 4) |
| 81 | T752 | DK GRN/ORG | STRTR RLY CTRL | Starting/charging system |
| 82 | N201 (or K175) | DK BLU/GRN (or BRN/BLU) | LO SPD RAD FAN CTRL / RAD FAN CTRL | Cooling fans system |
| 88 | N7 | DK BLU/ORG | FUEL TANK PRESS SIG | Fuel tank pressure sensor pin B (FUEL TANK PRESS SIG) via XY3000A pin 10 / I6602A pin G |
| 91 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 5 |
| 92 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 2 |
| 93 | K852 | BRN/VIO | 5V SPLY | Accelerator pedal position sensor pin 1 |
| 94 | K52 | DK BLU/WHT | EVAP PURGE CTRL | Evap/purge solenoid pin 1 via I9030 pin 10 |
| 95 | K501 | BRN | COOLANT BYPASS VLV CTRL | Cooling fans system |
| 96 | A209 | RED | FSD B (+) | PDC C3 pin 3, fuse 22 (20 A), hot at all times |

Pin 82 carries two printed alternatives: circuit N201 / DK BLU/GRN "(OR K175)" / "(OR BRN/BLU)", with the two function texts "LO SPD RAD FAN CTRL" and "RAD FAN CTRL" and the note markers 1 (HEAVY DUTY) and 2 (LIGHT DUTY). The markers are drawn inside the module below the two texts (marker 1 in line with "RAD FAN CTRL", marker 2 in line with "LO SPD RAD FAN CTRL"); the drawing does not state unambiguously which function, circuit and colour belongs to which duty rating.

Component locations (Fig 1-4): power distribution center assembly — right side of engine compartment; A/C pressure transducer — left front of engine compartment; fuel tank pressure sensor — top of fuel tank; accelerator pedal position sensor — top of accelerator pedal assembly; evap system monitor switch — on evap canister assembly; evap/purge solenoid — "(6.4L: left rear of engine) (5.7L: rear of engine)"; vacuum pump — top front of engine; SP102, SP804 — right front of engine compartment, in headlamp and dash harness; SP1846 — no location printed; G909B — right front of engine compartment.

Accelerator pedal position sensor pinout: 1 5V SPLY (BRN/VIO), 2 APP SIG 1 (BRN/WHT), 3 APP SENS GND 1 (BRN/YEL), 4 APP SENS GND 2 (BRN/VIO), 5 APP SIG 2 (WHT/BRN), 6 5V SPLY (VIO/BRN). Fuel tank pressure sensor: A SENS GND (BRN/TAN), B FUEL TANK PRESS SIG (DK BLU/ORG), C 5V SPLY (BRN/YEL). A/C pressure transducer: 1 5V SPLY (VIO/BRN), 2 A/C PRESS SIG (BLU/BRN), 3 SENS GND (BRN/WHT). Evap system monitor switch: 1 SENS GND (BRN/WHT), 2 EVAP PURGE SOL SENS (VIO/GRY). Evap/purge solenoid: 1 EVAP PURGE CTRL (DK BLU/WHT), 2 GND (BLK to G903A).

## C2 — engine side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K454 | BRN/ORG | SOL CTRL 7 | Multi displacement system cylinder solenoid 7 pin 1 via I9100 pin 4 |
| 4 | G6 | VIO/GRY | OIL PRESS SIG | Oil pressure sensor pin 2 (OIL PRESS SENS) |
| 6 | K452 | BRN/BLU | SOL CTRL 4 | Multi displacement system cylinder solenoid 4 pin 1 via I9100 pin 2 |
| 8 | K11 | BRN/YEL | INJ CTRL 1 | Fuel injector 1 pin 1 |
| 9 | K12 | BRN/DK BLU | INJ CTRL 2 | Fuel injector 2 pin 1 |
| 10 | K13 | BRN/BLU | INJ CTRL 3 | Fuel injector 3 pin 1 |
| 11 | K14 | BRN/TAN | INJ CTRL 4 | Fuel injector 4 pin 1 |
| 12 | K2 | VIO/ORG | ECT SIG | Engine coolant temperature sensor pin 1 |
| 13 | K242 | BRN/WHT | KS 2 SIG | Knock sensor 2 pin 1 |
| 14 | K42 | DK BLU/YEL | KS 1 SIG | Knock sensor 1 pin 1 |
| 19 | K141 | DK BLU/YEL | O2 1/2 SIG | Oxygen sensor 1/2 pin 4 |
| 20 | K904 | DK BLU/DK GRN | O2 RTN (DNSTRM) | SP2191: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 |
| 21 | K243 | BRN | O2 2/2 SIG | Oxygen sensor 2/2 pin 4 |
| 22 | K442 | DK BLU | VCT CTRL | Variable camshaft timing solenoid pin 2 (VCT SIG) via I9100 pin 5 |
| 24 | K99 | BRN/GRN | O2 1/1 HTR CTRL | Oxygen sensor 1/1 pin 1 |
| 25 | K453 | BRN/DK GRN | SOL CTRL 6 | Multi displacement system cylinder solenoid 6 pin 1 via I9100 pin 3 |
| 31 | K451 | BRN/WHT | SOL CTRL 1 | Multi displacement system cylinder solenoid 1 pin 1 via I9100 pin 1 |
| 32 | K20 | BRN/GRY | GEN FIELD CTRL | Starting/charging system |
| 33 | K447 | TAN/YEL | ETC MTR (+) | Throttle body pin 1 |
| 34 | K448 | TAN/ORG | ETC MTR (-) | Throttle body pin 2 |
| 35 | A804 | RED/VIO | GEN SNS | Starting/charging system |
| 37 | K924 | WHT/BRN | KS 2 RTN | Knock sensor 2 pin 2 |
| 38 | K942 | BRN/GRN | KS 1 RTN | Knock sensor 1 pin 2 |
| 39 | K41 | DK BLU/BLU | O2 1/1 SIG | Oxygen sensor 1/1 pin 4 |
| 40 | K902 | BRN/DK GRN | O2 RTN (UPSTRM) | SP2190: oxygen sensor 1/1 pin 3 and oxygen sensor 2/1 pin 3 |
| 41 | K43 | DK BLU/GRN | O2 2/1 SIG | Oxygen sensor 2/1 pin 4 |
| 43 | G24 | VIO/BRN | EOT SIG | Oil temperature sensor pin 1 |
| 44 | K21 | DK BLU/GRN | IAT SIG | Intake air temperature sensor pin 1 |
| 45 | K1 | VIO/BRN | MAP SIG | Manifold absolute pressure sensor pin 1 |
| 48 | K299 | BRN/WHT | O2 1/2 HTR CTRL | Oxygen sensor 1/2 pin 1 |
| 49 | K18 | DK BLU/ORG | COIL CTRL 3 | Ignition coil 3 pin 1 |
| 50 | K17 | DK BLU/TAN | COIL CTRL 2 | Ignition coil 2 pin 1 |
| 51 | K19 | DK BLU/DK GRN | COIL CTRL 1 | Ignition coil 1 pin 1 |
| 53 | K238 | DK BLU/GRN | SRV SNS OUTPUT | Short runner solenoid valve pin 3 |
| 60 | K237 | DK BLU/YEL | SRV ACT CTRL SIG | Short runner solenoid valve pin 4 |
| 65 | K922 | BRN/DK BLU | TP SENS RTN | Throttle body pin 6 |
| 66 | K900 | DK BLU/DK GRN | SENS GND | SP2186: camshaft position sensor 1 pin 2, MAP sensor pin 2, ECT sensor pin 2; also oil pressure sensor pin 3 |
| 67 | F855 | PNK/YEL | 5V SPLY | SP2176: throttle body pin 4, crankshaft position sensor pin 1, oil pressure sensor pin 1 |
| 68 | K915 | BRN/WHT | SENS GND | SP2192: oil temperature sensor pin 2, intake air temperature sensor pin 2 |
| 72 | K199 | BRN/VIO | O2 2/1 HTR CTRL | Oxygen sensor 2/1 pin 1 |
| 73 | K15 | DK BLU/GRY | COIL CTRL 4 | Ignition coil 4 pin 1 |
| 74 | K16 | DK BLU/YEL | COIL CTRL 5 | Ignition coil 5 pin 1 |
| 75 | K10 | DK BLU/ORG | COIL CTRL 6 | Ignition coil 6 pin 1 |
| 76 | K97 | BRN | COIL CTRL 7 | Ignition coil 7 pin 1 |
| 77 | K98 | DK BLU/YEL | COIL CTRL 8 | Ignition coil 8 pin 1 |
| 79 | K38 | BRN/ORG | INJ CTRL 5 | Fuel injector 5 pin 1 |
| 80 | K58 | BRN/VIO | INJ CTRL 6 | Fuel injector 6 pin 1 |
| 81 | K26 | BRN/YEL | INJ CTRL 7 | Fuel injector 7 pin 1 |
| 82 | K28 | BRN/BLU | INJ CTRL 8 | Fuel injector 8 pin 1 |
| 85 | K44 | DK BLU/GRY | CMP SIG | Camshaft position sensor 1 pin 3 |
| 86 | K24 | BRN/BLU | CKP SIG | Crankshaft position sensor pin 3 |
| 87 | F856 | YEL/PNK | 5V SPLY | SP2470: camshaft position sensor 1 pin 1, MAP sensor pin 3 |
| 88 | K925 | DK BLU/GRY | CKP GND | Crankshaft position sensor pin 2 |
| 89 | K22 | BRN/ORG | TP 1 SIG | Throttle body pin 5 |
| 90 | K122 | BRN/DK GRN | TP 2 SIG | Throttle body pin 3 |
| 96 | K399 | BRN/GRY | O2 2/2 HTR CTRL | Oxygen sensor 2/2 pin 1 |

Component locations (Fig 3-6): MDS cylinder solenoids 1/4/7/6 — under intake manifold, above 1, 4, 7 and 6 cylinders (pin 2 GND, BLK, to SP479 -> I9100 pin 6 -> G903A); variable camshaft timing solenoid — front of left cylinder bank (pin 1 GND, BLK, to SP479); camshaft position sensor 1 — front of right cylinder head; crankshaft position sensor — "(6.4L: on right cylinder head) (5.7L: front of engine block)"; MAP sensor — rear of intake manifold; ECT sensor — top front engine; oil temperature sensor — lower right front of engine; IAT sensor — top front of engine; oil pressure sensor — lower left front of engine; knock sensor 2 — right side of engine block; knock sensor 1 — left side of engine block; oxygen sensor 2/1 — in right exhaust, upstream of catalytic converter; oxygen sensor 1/1 — in left exhaust, upstream; oxygen sensor 1/2 — in left exhaust, downstream; oxygen sensor 2/2 — in right exhaust, downstream; throttle body — top front of engine; short runner solenoid valve "(6.4L)" — rear of engine; fuel injectors 7, 1, 5, 3 — top of left cylinder bank; fuel injectors 8, 6, 4, 2 — top of right cylinder bank; ignition coils 5, 1, 3, 7 — top of left cylinder bank valve cover; ignition coils 4, 6, 2, 8 — top of right cylinder bank valve cover; ignition capacitor 2 — rear of left cylinder bank; ignition capacitor (printed without a number) — rear of right cylinder bank. Splices: SP2186, SP2470 — right rear of engine, in engine harness; SP2190, SP2191, SP2558 — rear of engine, in engine harness; SP2176 — right front of engine, in engine harness; SP2192 — right front of engine compartment, in engine harness; SP2173 — left rear of engine, in engine harness; SP2170 — right front of engine, in engine harness; SP1939 — "(5.7L: right side of engine, in engine harness) (6.4L: right cylinder head, in engine harness)".

Sensor pinouts as printed: CMP sensor 1 — 1 5V SPLY (YEL/PNK), 2 SENS GND (DK BLU/DK GRN), 3 CMP SIG (DK BLU/GRY). CKP sensor — 1 5V SPLY (PNK/YEL), 2 CKP GND (DK BLU/GRY), 3 CKP SIG (BRN/BLU). MAP — 1 MAP SIG (VIO/BRN), 2 SENS GND (DK BLU/DK GRN), 3 5V SPLY (YEL/PNK). ECT — 1 ECT SIG (VIO/ORG), 2 SENS GND (DK BLU/DK GRN). EOT — 1 EOT SIG (VIO/BRN), 2 SENS GND (BRN/WHT). IAT — 1 IAT SIG (DK BLU/GRN), 2 SENS GND (BRN/WHT). Oil pressure sensor — 1 5V SPLY (PNK/YEL), 2 OIL PRESS SENS (VIO/GRY), 3 SENS GND (DK BLU/DK GRN). Knock sensor 2 — 1 KS 2 SIG (BRN/WHT), 2 KS 2 RTN (WHT/BRN). Knock sensor 1 — 1 KS 1 SIG (DK BLU/YEL), 2 KS 1 RTN (BRN/GRN). Throttle body — 1 ETC MTR (+) (TAN/YEL), 2 ETC MTR (-) (TAN/ORG), 3 TP 2 SIG (BRN/DK GRN), 4 5V SPLY (PNK/YEL), 5 TP 1 SIG (BRN/ORG), 6 TP SENS RTN (BRN/DK BLU). Short runner solenoid valve — 1 FSD ASD RLY OUTPUT (BRN/YEL), 2 GND (BLK to G903A), 3 SRV SNS OUTPUT (DK BLU/GRN), 4 SRV ACT CTRL SIG (DK BLU/YEL). Upstream O2 sensors (1/1, 2/1) — 1 HTR CTRL, 2 GND (BLK to G903A), 3 O2 RTN (UPSTRM) (BRN/DK GRN), 4 O2 SIG. Downstream O2 sensors (1/2, 2/2) — 1 HTR CTRL, 2 GND (BLK to G903A), 3 O2 RTN (DNSTRM) (DK BLU/DK GRN), 4 O2 SIG. MDS cylinder solenoids — 1 SOL CTRL x, 2 GND (BLK). Injectors — 1 INJ x (PCM driver), 2 ASD CTRL OUT (BRN/WHT). Coils — 1 COIL CTRL x (PCM driver), 2 FSD ASD RLY OUT (BRN/YEL). Ignition capacitors — 1 (BRN/YEL), case to ground.

## Power supply / relays (Fig 1)

Power distribution center assembly, right side of engine compartment. Relay terminals 30 are on the "hot at all times" bus. The PDC output terminals are drawn in dashed connector groups: 7, 4 and 5 under the label C3; 17 under C5; 25 and 22 under C3; 10 under C7; 28 and 3 under C3.

- **Auto shut down relay** — terminal 87 feeds fuse 63 (20 A) and fuse 64 (25 A). Fuse 63 -> PDC pin 7 (BRN/YEL) -> I9030 pin 3 -> SP2558 / SP1939 -> ignition coils pin 2 (FSD ASD RLY OUT), both ignition capacitors, short runner solenoid valve pin 1. Fuse 64 -> PDC pin 5 (BRN/WHT, F342 at the PCM) -> SP102 -> PCM C1-74/75/76 (ASD CTRL OUT) and, via I9030 pin 2 -> SP2173 / SP2170, fuel injectors pin 2. Coil terminal 86 -> PDC pin 4 (BRN/WHT, K51) -> PCM C1-80 (ASD RLY CTRL); coil terminal 85 on the hot-at-all-times bus.
- **Fuel pump relay** — terminal 87 -> fuse 70 (20 A) -> PDC C5 pin 17 (DK BLU/ORG) -> XY4301A pin 4 -> I6602A pin E -> fuel pump module pin 4 (FUEL PMP CTRL OUT, circuit N1). Coil terminal 86 -> PDC pin 25 (DK BLU, N9) -> PCM C1-73; coil terminal 85 from the run/start relay output.
- **Vacuum pump relay** — terminal 87 -> fuse 9 (30 A) -> PDC pin 22 (DK GRN/VIO) -> I9030 pin 6 -> vacuum pump pin 1 (VACUUM PUMP RLY OUT; pump pin 2 GND, BLK, via I9030 pin 8 to G906A). Coil terminal 85 -> PDC C7 pin 10 (DK GRN/YEL, T110) -> XY4000A pin 15 -> XY3000A pin 5 -> PCM C1-77; coil terminal 86 from the run/start relay output.
- **Run/start relay** — terminal 87 -> fuse 78 (10 A) -> PDC pin 28 (PNK/GRN, F942) -> PCM C1-23 (FSD IGN SW OUT); terminal 87 also feeds the fuel pump and vacuum pump relay coils. Its coil is not shown.
- **Fuse 22 (20 A)**, hot at all times -> PDC C3 pin 3 (RED, A209) -> PCM C1-96 (FSD B (+)).

Grounds: G903A — right front of engine compartment (MDS/VCT solenoid grounds via SP479 and I9100 pin 6, evap/purge solenoid pin 2, all four O2 sensor GND pins, short runner solenoid valve GND); G909B — right front of engine compartment (PCM C1-52/53/72); G906A — right front of engine compartment (vacuum pump); G917A — left front of cargo area (fuel pump module pin 1 GND, circuit Z917, via I6602A pin A).

Other modules on the same diagram (not PCM pins): cluster pins 12 CAN C (+) (BRN/WHT) and 13 CAN C (-) (YEL) to the computer data lines system; body control module (right kick panel) connector C5 pins 26 CAN C (-) (YEL, D46) and 25 CAN C (+) (BRN, D45) to the computer data lines system, 15 FUEL LVL SIG 2 (DK BLU/GRY, N5) via XY4000A pin 14 / I6602A pin D to fuel level sensor pin 3, 16 FUEL LVL SENS RTN (BLK, G109) via XY4000A pin 1 / I6602A pin B to S01A (fuel pump module pin 2 and fuel level sensor pin 2, BLK/WHT), 17 FUEL LVL SENS SIG (DK BLU/WHT, N4) via XY4000A pin 13 / I6602A pin C to fuel pump module pin 3. The fuel level sensor and fuel pump module (top of fuel tank) report to the BCM, not the PCM.
