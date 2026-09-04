# 2018 Dodge Durango 2WD V8-5.7L Hemi — PCM pinout

Transcribed from [2018 Dodge or Ram Truck Durango 2WD ECU 5.7.pdf](2018%20Dodge%20or%20Ram%20Truck%20Durango%202WD%20ECU%205.7.pdf) (ALLDATA "Engine Controls" wiring diagram, Electrical - Interactive Color (Non OE), diagram pages 1-6 = PDF pages 2-7, sheets 585131-585136).

Powertrain Control Module (PCM), located right front of engine compartment. Two 96-way connectors: C1 (chassis/body side) and C2 (engine side). The diagram is shared with the 6.4L Durango; where a component location or circuit differs by engine it is marked (5.7L)/(6.4L) below.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 96 | Chassis side: power/ignition feeds, grounds, CAN C, APP sensor, A/C and fuel tank pressure, relay controls (ASD, fuel pump, vacuum pump, starter, fans), purge |
| C2 | 96 | Engine side: injectors, coils, MDS/VCT solenoids, crank/cam, knock, MAP/ECT/IAT/EOT/oil pressure, O2 sensors and heaters, electronic throttle, generator |

Chrysler circuit codes (K11, F342, D27, ...) are printed on each wire and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). Unlisted pins are not connected in this diagram.

## C1 — chassis side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 23 | F942 | PNK/GRN | FSD IGN SW OUT | PDC C7 pin 28, fuse 78 (10 A), fed by run/start relay |
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
| 73 | N9 | DK BLU | FUEL PUMP CTRL | Fuel pump relay coil (PDC pin 25) |
| 74 | F342 | BRN/WHT | ASD CTRL OUT | SP102 (ASD relay output via fuse 64, 25 A) |
| 75 | F342 | BRN/WHT | ASD CTRL OUT | SP102 |
| 76 | F342 | BRN/WHT | ASD CTRL OUT | SP102 |
| 77 | T110 | DK GRN/YEL | VACUUM PUMP RLY CTRL | Vacuum pump relay coil (PDC C7 pin 10) via XY4000A pin 15 |
| 78 | N112 | DK BLU/ORG | RAD FAN CTRL RLY | Cooling fans system |
| 79 | C13 | BLU/ORG | A/C CLUTCH CTRL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RLY CTRL | Auto shut down relay coil (PDC pin 4) |
| 81 | T752 | DK GRN/ORG | STRTR RLY CTRL | Starting/charging system |
| 82 | N201 (or K175) | DK BLU/GRN (or BRN/BLU) | LO SPD RAD FAN CTRL (heavy duty) / RAD FAN CTRL (light duty) | Cooling fans system |
| 88 | N7 | DK BLU/ORG | FUEL TANK PRESS SIG | Fuel tank pressure sensor pin B (FUEL TANK PRESS SIG) via XY3000A pin 10 / I6602A pin G |
| 91 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 5 |
| 92 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 2 |
| 93 | K852 | BRN/VIO | 5V SPLY | Accelerator pedal position sensor pin 1 |
| 94 | K52 | DK BLU/WHT | EVAP PURGE CTRL | Evap/purge solenoid pin 1 via I9030 pin 10 |
| 95 | K501 | BRN | COOLANT BYPASS VLV CTRL | Cooling fans system |
| 96 | A209 | RED | FSD B (+) | PDC C3 pin 3, fuse 22 (20 A), hot at all times |

Pin 82 is printed with two alternatives: circuit N201 / DK BLU/GRN "LO SPD RAD FAN CTRL" (note 1, heavy duty) or circuit K175 / BRN/BLU "RAD FAN CTRL" (note 2, light duty).

Component locations (pages 2-4): power distribution center — right side of engine compartment; A/C pressure transducer — left front of engine compartment; fuel tank pressure sensor — top of fuel tank; accelerator pedal position sensor — top of accelerator pedal assembly; evap system monitor switch — on evap canister assembly; evap/purge solenoid — rear of engine (5.7L) / left rear of engine (6.4L); SP102, SP804 — right front of engine compartment, in headlamp and dash harness; SP1846 — near the A/C pressure transducer; G909B — right front of engine compartment.

Accelerator pedal position sensor pinout: 1 5V SPLY (BRN/VIO), 2 APP SIG 1 (BRN/WHT), 3 APP SENS GND 1 (BRN/YEL), 4 APP SENS GND 2 (BRN/VIO), 5 APP SIG 2 (WHT/BRN), 6 5V SPLY (VIO/BRN). Fuel tank pressure sensor: A SENS GND (BRN/TAN), B FUEL TANK PRESS SIG (DK BLU/ORG), C 5V SPLY (BRN/YEL). A/C pressure transducer: 1 5V SPLY (VIO/BRN), 2 A/C PRESS SIG (BLU/BRN), 3 SENS GND (BRN/WHT).

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
| 20 | K904 | DK BLU/DK GRN | O2 RTN (DNSTRM) | SP2191: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 (O2 RTN DNSTRM) |
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
| 40 | K902 | BRN/DK GRN | O2 RTN (UPSTRM) | SP2190: oxygen sensor 1/1 pin 3 and oxygen sensor 2/1 pin 3 (O2 RTN UPSTRM) |
| 41 | K43 | DK BLU/GRN | O2 2/1 SIG | Oxygen sensor 2/1 pin 4 |
| 43 | G24 | VIO/BRN | EOT SIG | Oil temperature sensor pin 1 |
| 44 | K21 | DK BLU/GRN | IAT SIG | Intake air temperature sensor pin 1 |
| 45 | K1 | VIO/BRN | MAP SIG | Manifold absolute pressure sensor pin 1 |
| 48 | K299 | BRN/WHT | O2 1/2 HTR CTRL | Oxygen sensor 1/2 pin 1 |
| 49 | K18 | DK BLU/ORG | COIL CTRL 3 | Ignition coil 3 pin 1 |
| 50 | K17 | DK BLU/TAN | COIL CTRL 2 | Ignition coil 2 pin 1 |
| 51 | K19 | DK BLU/DK GRN | COIL CTRL 1 | Ignition coil 1 pin 1 |
| 53 | K238 | DK BLU/GRN | SRV SNS OUTPUT | Short runner solenoid valve pin 3 (6.4L only) |
| 60 | K237 | DK BLU/YEL | SRV ACT CTRL SIG | Short runner solenoid valve pin 4 (6.4L only) |
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

Component locations (pages 4-7): MDS cylinder solenoids 1/4/7/6 — under intake manifold, above cylinders 1, 4, 7 and 6 (grounds BLK to SP479 -> I9100 pin 6 -> G903A); variable camshaft timing solenoid — front of left cylinder bank; camshaft position sensor 1 — front of right cylinder head; crankshaft position sensor — front of engine block (5.7L) / on right cylinder head (6.4L); MAP sensor — rear of intake manifold; ECT sensor — top front of engine; oil temperature sensor — lower right front of engine; IAT sensor — top front of engine; oil pressure sensor — lower left front of engine; knock sensor 1 — left side of engine block; knock sensor 2 — right side of engine block; oxygen sensors 1/1 (left) and 2/1 (right) — upstream of catalytic converter; 1/2 (left) and 2/2 (right) — downstream; throttle body — top front of engine; short runner solenoid valve — rear of engine (6.4L); fuel injectors — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) cylinder banks; ignition coils — top of left (1, 3, 5, 7) and right (2, 4, 6, 8) cylinder bank valve covers; ignition capacitors 1/2 — rear of right/left cylinder bank. Splices: SP2186, SP2470 — right rear of engine, in engine harness; SP2190, SP2191, SP2176, SP2558 — rear of engine, in engine harness; SP2192 — right front of engine compartment, in engine harness; SP2173 — left rear of engine; SP2170 — right front of engine; SP1939 — right side of engine (5.7L) / right cylinder head (6.4L).

Sensor pinouts as printed: CMP sensor 1 — 1 5V SPLY (YEL/PNK), 2 SENS GND (DK BLU/DK GRN), 3 CMP SIG (DK BLU/GRY). CKP sensor — 1 5V SPLY (PNK/YEL), 2 CKP GND (DK BLU/GRY), 3 CKP SIG (BRN/BLU). MAP — 1 MAP SIG (VIO/BRN), 2 SENS GND (DK BLU/DK GRN), 3 5V SPLY (YEL/PNK). ECT — 1 ECT SIG (VIO/ORG), 2 SENS GND (DK BLU/DK GRN). EOT — 1 EOT SIG (VIO/BRN), 2 SENS GND (BRN/WHT). IAT — 1 IAT SIG (DK BLU/GRN), 2 SENS GND (BRN/WHT). Oil pressure sensor — 1 5V SPLY (PNK/YEL), 2 OIL PRESS SENS (VIO/GRY), 3 SENS GND (DK BLU/DK GRN). Knock sensors — 1 KS SIG, 2 KS RTN. Throttle body — 1 ETC MTR (+) (TAN/YEL), 2 ETC MTR (-) (TAN/ORG), 3 TP 2 SIG (BRN/DK GRN), 4 5V SPLY (PNK/YEL), 5 TP 1 SIG (BRN/ORG), 6 TP SENS RTN (BRN/DK BLU). Upstream O2 sensors (1/1, 2/1) — 1 HTR CTRL, 2 GND (BLK to G903A), 3 O2 RTN (UPSTRM) (BRN/DK GRN), 4 O2 SIG. Downstream O2 sensors (1/2, 2/2) — 1 HTR CTRL, 2 GND (BLK to G903A), 3 O2 RTN (DNSTRM) (DK BLU/DK GRN), 4 O2 SIG. Injectors — 1 INJ x (PCM driver), 2 ASD CTRL OUT (BRN/WHT). Coils — 1 COIL CTRL x (PCM driver), 2 FSD ASD RLY OUT (BRN/YEL).

## Power supply / relays (page 2)

Power distribution center assembly, right side of engine compartment (all relay pin 30 feeds are hot at all times):

- **Auto shut down relay** — contact feeds fuse 63 (20 A) and fuse 64 (25 A). Fuse 63 -> PDC C3 pin 7 (BRN/YEL) -> via I9030 pin 3 -> SP2558 / SP1939 -> ignition coils pin 2 (FSD ASD RLY OUT), ignition capacitors 1 and 2, short runner solenoid valve pin 1 (6.4L). Fuse 64 -> PDC C3 pin 5 (BRN/WHT, F342) -> SP102 -> PCM C1-74/75/76 (ASD CTRL OUT) and, via I9030 pin 2 -> SP2173 / SP2170, fuel injectors pin 2. Relay coil -> PDC pin 4 (BRN/WHT, K51) -> PCM C1-80 (ASD RLY CTRL).
- **Fuel pump relay** — contact -> fuse 70 (20 A) -> PDC C5 pin 17 (DK BLU/ORG, N1) -> XY4301A pin 4 / I6602A pin E -> fuel pump module pin 4 (FUEL PMP CTRL OUT). Coil: PDC pin 25 (DK BLU, N9) -> PCM C1-73; other side of coil from run/start relay output.
- **Vacuum pump relay** — contact -> fuse 9 (30 A) -> PDC C3 pin 22 (DK GRN/VIO) -> I9030 pin 6 -> vacuum pump pin 1 (VACUUM PUMP RLY OUT; pump pin 2 BLK to G906A). Coil: PDC C7 pin 10 (DK GRN/YEL, T110) -> XY4000A pin 15 -> PCM C1-77; other side of coil from run/start relay output.
- **Run/start relay** — contact -> fuse 78 (10 A) -> PDC C7 pin 28 (PNK/GRN, F942) -> PCM C1-23 (FSD IGN SW OUT); also feeds the fuel pump and vacuum pump relay coils.
- **Fuse 22 (20 A)**, hot at all times -> PDC C3 pin 3 (RED, A209) -> PCM C1-96 (FSD B (+)).

Grounds: G903A and G909B — right front of engine compartment (G909B carries PCM C1-52/53/72; G903A carries MDS/VCT solenoid grounds via SP479, evap/purge solenoid pin 2, all four O2 sensor GND pins and the short runner solenoid valve GND); G906A — right front of engine compartment (vacuum pump); G917A — left front of cargo area (fuel pump module and fuel level sensor return via S01A).

Other modules on the same diagram (not PCM pins): instrument cluster pins 12 CAN C (+) (BRN/WHT) and 13 CAN C (-) (YEL) to the computer data lines system; body control module (right kick panel) connector C5 pins 25 CAN C (+) (BRN, D45), 26 CAN C (-) (YEL, D46), 15 FUEL LVL SIG 2 (DK BLU/GRY, N5), 16 FUEL LVL SENS RTN (BLK, G109), 17 FUEL LVL SENS SIG (DK BLU/WHT, N4) — the fuel level sensor and fuel pump module (top of fuel tank) report to the BCM, not the PCM.

Cross-check: every 2018 Durango entry in [2015-Grand-Cherokee-V6-vs-2018-Durango-V8-ECU-pinout-comparison.md](2015-Grand-Cherokee-V6-vs-2018-Durango-V8-ECU-pinout-comparison.md) agrees with this transcription (pins, circuit codes and colors); no discrepancies were found.
