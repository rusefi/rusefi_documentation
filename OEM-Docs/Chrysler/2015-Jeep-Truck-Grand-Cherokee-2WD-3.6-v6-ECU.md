# 2015 Jeep Grand Cherokee 2WD V6-3.6L Pentastar — PCM pinout

Transcribed from [2015-Jeep-Truck-Grand-Cherokee-2WD-3.6-v6-ECU.pdf](2015-Jeep-Truck-Grand-Cherokee-2WD-3.6-v6-ECU.pdf) (ALLDATA "Engine Controls" wiring diagram, Electrical - Interactive Color (Non OE), diagram pages 1-5 = PDF pages 2-6, sheets 476069-476073; PDF page 1 carries only the vehicle heading, and each "Page n of 5" caption is printed below the preceding diagram).

Powertrain Control Module (PCM), located right front of engine compartment. Two 96-way connectors: C1 (chassis/body side) and C2 (engine side). The source heading states the vehicle as "2015 Jeep Truck Grand Cherokee 2WD V6-3.6L".

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 96 | Chassis side: battery/ignition feeds, grounds, CAN C, APP sensor, A/C and fuel tank pressure, ESIM, relay controls (ASD, fuel pump, starter, radiator fans, A/C clutch, vacuum pump), purge |
| C2 | 96 | Engine side: injectors, coils, VVT and oil pump solenoids, crank/cam, knock, MAP/ECT/IAT/EOT/oil pressure, O2 sensors and heaters, electronic throttle, generator |

Chrysler circuit codes (K11, F342, D27, ...) are printed on each wire at the PCM and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark, LT = light). Unlisted pins are not connected in this diagram.

## C1 — chassis side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | F344 | BRN/GRY | ASD RLY OUTPUT | PDC C3 pin 6, fuse 56 (15 A), fed by auto shutdown relay |
| 6 | T110 | DK GRN/YEL | VCM PMP RLY CTRL | Anti-lock brakes system |
| 19 | C18 | LT BLU/BRN | A/C PRES SIG | A/C pressure transducer pin 2 |
| 22 | K914 | BRN/WHT | SENS GND | SP1846: A/C pressure transducer pin 3 (SENS GND); evap system monitor switch pin 1 (SENS GND) via I3000 pin 1 |
| 23 | F942 | RED/LT GRN | FSD IGN SW OUTPUT | PDC C3 pin 28, fuse 78 (10 A), hot with run/start relay energized |
| 24 | N7 | BRN/VIO | FUEL TANK PRESS SIG | Fuel tank pressure sensor pin B (FUEL TANK PRESS SIG) via I3000 pin 10 / I6602A pin G |
| 30 | N201 | DK BLU/LT GRN | RAD FAN RLY CTRL | Air conditioning system |
| 33 | D28 | YEL | CAN C (-) | Computer data lines system |
| 48 | N8 | DK BLU/PNK | FUEL TANK PRESS SENS SPLY | Fuel tank pressure sensor pin C (FUEL TANK PRESS SENS SPLY) via I3000 pin 6 / I6602A pin H (BRN/YEL at sensor) |
| 52 | Z909 | BLK | GND | Ground G909B |
| 53 | Z909 | BLK | GND | Ground G909B |
| 54 | N10 | DK BLU/WHT | FUEL TANK PRES SENS RTN | Fuel tank pressure sensor pin A (FUEL TANK PRESS SENS RTN) via I3000 pin 30 / I6602A pin F (BRN/TAN at sensor) |
| 57 | D27 | TAN/WHT | CAN C(+) | Computer data lines system |
| 67 | K400 | BRN/VIO | APP SENS 2 GND | Accelerator pedal position sensor pin 4 |
| 68 | K167 | BRN/YEL | APP SENS 1 GND | Accelerator pedal position sensor pin 3 |
| 69 | K854 | VIO/BRN | 5V SPLY | Accelerator pedal position sensor pin 6 |
| 70 | K108 | VIO/GRY | ESIM SIG | Evap system monitor switch pin 2 via I3000 pin 23 |
| 72 | Z909 | BLK | GND | Ground G909B |
| 74 | F342 | BRN/WHT | ASD CTRL OUTPUT | SP102 (ASD relay output via fuse 64, 20 A) |
| 75 | F342 | BRN/WHT | ASD CTRL OUTPUT | SP102 |
| 76 | F342 | BRN/WHT | ASD CTRL OUTPUT | SP102 |
| 78 | N112 | DK BLU/ORG | HI SPD RAD FAN CTRL | Air conditioning system |
| 79 | C13 | LT BLU/ORG | A/C CLTCH COIL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RLY CTRL | Auto shutdown relay coil (PDC C3 pin 4) via I9030 pin 20 |
| 81 | T752 | DK GRN/ORG | STARTER RLY CTRL | Starting/charging system |
| 84 | K31 | BRN | FUEL PMP CTRL | Fuel pump relay coil (PDC C3 pin 25) |
| 91 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 5 |
| 92 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 2 |
| 93 | K852 | BRN/VIO | 5V SPLY | Accelerator pedal position sensor pin 1 |
| 94 | K52 | DK BLU/WHT | PWM PRG SIG | Evap/purge solenoid pin 1 (EVAP PRG CTRL) via I9030 pin 10 |
| 96 | A209 | RED | FUSED B (+) | PDC C3 pin 3, fuse 22 (20 A), hot at all times |

The A/C pressure transducer pin 1 (5V SPLY, VIO/BRN, via I9030 pin 3) is not drawn to C1-69. Its VIO/BRN wire runs across diagram pages 2-5 and ends at splice SP2176 on diagram page 2, the splice that distributes C2-67 (F855, PNK/YEL 5V SPLY); see the notes.

Component locations (pages 3-5): power distribution center assembly — right side of engine compartment; A/C pressure transducer — left front of engine compartment; fuel tank pressure sensor — on fuel tank; accelerator pedal position sensor — top of accelerator pedal assembly; evap system monitor switch — on evaporative emission canister assembly; evap/purge solenoid — top right side of engine; SP1846 — right side of engine compartment, in headlamp and dash harness; SP102 — location not printed; G909B — right front of engine compartment.

Accelerator pedal position sensor pinout: 1 5V SPLY (BRN/VIO), 2 APP SIG 1 (BRN/WHT), 3 APP SENS 1 GND (BRN/YEL), 4 APP SENS 2 GND (BRN/VIO), 5 APP SIG 2 (WHT/BRN), 6 5V SPLY (VIO/BRN). Fuel tank pressure sensor: A FUEL TANK PRESS SENS RTN (BRN/TAN), B FUEL TANK PRESS SIG (BRN/VIO), C FUEL TANK PRESS SENS SPLY (BRN/YEL). A/C pressure transducer: 1 5V SPLY (VIO/BRN), 2 A/C PRES SIG (LT BLU/BRN), 3 SENS GND (BRN/WHT). Evap system monitor switch: 1 SENS GND (BRN/WHT), 2 ESIM SIG (VIO/GRY). Evap/purge solenoid: 1 EVAP PRG CTRL (DK BLU/WHT), 2 GND (BLK to G903).

## C2 — engine side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K19 | DK BLU/DK GRN | COIL 1 CTRL | Ignition coil 1 pin 1 via I9000A pin 7 |
| 2 | K20 | BRN/DK GRN | GEN FLD CTRL | Starting/charging system |
| 3 | K447 | TAN/YEL | ETC MTR (+) | Throttle body pin 1 |
| 4 | K448 | TAN/ORG | ETC MTR (-) | Throttle body pin 2 |
| 8 | K11 | BRN/YEL | INJ 1 CTRL | Fuel injector 1 pin 1 via I9030 pin 2 |
| 9 | K12 | BRN/DK BLU | INJ 2 CTRL | Fuel injector 2 pin 1 via I9030 pin 11 |
| 10 | K13 | BRN/LT BLU | INJ 3 CTRL | Fuel injector 3 pin 1 via I9030 pin 13 |
| 11 | K14 | BRN/TAN | INJ 4 CTRL | Fuel injector 4 pin 1 via I9030 pin 14 |
| 12 | K2 | VIO/ORG | ECT SIG | Engine coolant temperature sensor pin 1 |
| 13 | K242 | BRN/WHT | KS 2 SIG | Knock sensor 2 pin 1 via I9200 pin 5 |
| 14 | K42 | DK BLU/YEL | KS 1 SIG | Knock sensor 1 pin 1 via I9200 pin 3 |
| 16 | G24 | VIO/BRN | EOT SIG | Oil temperature sensor pin 1 via I9200 pin 2 |
| 17 | K21 | DK BLU/LT GRN | IAT SIG | Intake air temperature sensor pin 1 |
| 18 | K904 | DK BLU/DK GRN | DNSTRM O2 RTN | SP2191: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 (DNSTRM O2 RTN) |
| 19 | K902 | BRN/DK GRN | UPSTRM O2 RTN | SP2190: oxygen sensor 1/1 pin 3 and oxygen sensor 2/1 pin 3 (O2 RTN UPSTRM) |
| 20 | G6 | VIO/GRY | OIL PRESS SIG | Oil pressure sensor pin 2 via I9200 pin 1 |
| 22 | K276 | DK BLU/WHT | VVT EXT 1/2 CTRL | Camshaft position solenoid 1/2 pin 1 |
| 23 | K76 | BRN/WHT | VVT INT 1/1 CTRL | Camshaft position solenoid 1/1 pin 1 (VVT INTAKE 1/1 CTRL) |
| 24 | K99 | BRN/LT GRN | O2 1/1 HTR CTRL | Oxygen sensor 1/1 pin 1 |
| 25 | K17 | DK BLU/TAN | COIL 2 CTRL | Ignition coil 2 pin 1 via I9000A pin 5 |
| 37 | K924 | WHT/BRN | KS 2 RTN | Knock sensor 2 pin 2 via I9200 pin 7 |
| 38 | K942 | BRN/LT GRN | KS 1 RTN | Knock sensor 1 pin 2 via I9200 pin 9 |
| 40 | A804 | RED/VIO | GEN SENS | Starting/charging system |
| 41 | K43 | DK BLU/LT GRN | O2 2/1 SIG | Oxygen sensor 2/1 pin 4 |
| 42 | K243 | BRN | 2/2 SIG | Oxygen sensor 2/2 pin 4 |
| 43 | K141 | DK BLU/YEL | 1/2 SIG | Oxygen sensor 1/2 pin 4 |
| 44 | K41 | DK BLU/LT BLU | O2 1/1 SIG | Oxygen sensor 1/1 pin 4 |
| 45 | K1 | VIO/BRN | MAP SIG | Manifold absolute pressure sensor pin 1 |
| 48 | K299 | BRN/WHT | HTR CTRL SPLY | Oxygen sensor 1/2 pin 1 (HTR CTRL SPLY) |
| 49 | K18 | DK BLU/ORG | COIL 3 CTRL | Ignition coil 3 pin 1 via I9000A pin 6 |
| 61 | K445 | DK BLU/DK GRN | SENS SIG 2/1 | Camshaft position sensor 2 pin 4 |
| 62 | K441 | DK BLU/BRN | SENS SIG 1/2 | Camshaft position sensor (rear of right cylinder head) pin 1 |
| 63 | K444 | DK BLU/TAN | SENS SIG 2/2 | Camshaft position sensor 2 pin 1 |
| 65 | K922 | BRN/DK BLU | TP SENS RTN | Throttle body pin 6 |
| 66 | K900 | DK BLU/DK GRN | SENS GND | SP2186: both camshaft position sensors pin 3, MAP sensor pin 2, oil temperature sensor pin 2 (via I9200 pin 8), oil pressure sensor pin 3 (via I9200 pin 6) |
| 67 | F855 | PNK/YEL | 5V SPLY | SP2176: crankshaft position sensor 1 pin 3, throttle body pin 4, oil pressure sensor pin 1 (via I9200 pin 4) |
| 68 | K915 | BRN/WHT | SENS GND | SP2192: intake air temperature sensor pin 2, engine coolant temperature sensor pin 2 |
| 72 | K199 | BRN/VIO | HTR CTRL | Oxygen sensor 2/1 pin 1 |
| 73 | K15 | DK BLU/GRY | COIL 4 CTRL | Ignition coil 4 pin 1 via I9000A pin 3 |
| 74 | K16 | DK BLU/YEL | COIL 5 CTRL | Ignition coil 5 pin 1 via I9000A pin 4 |
| 75 | K10 | DK BLU/ORG | COIL 6 CTRL | Ignition coil 6 pin 1 via I9000A pin 9 |
| 79 | K38 | BRN/ORG | INJ 5 CTRL | Fuel injector 5 pin 1 via I9030 pin 23 |
| 80 | K58 | BRN/VIO | INJ 6 CTRL | Fuel injector 6 pin 1 via I9030 pin 24 |
| 85 | K44 | DK BLU/GRY | SENS SIG | Camshaft position sensor (rear of right cylinder head) pin 4 |
| 86 | K24 | BRN/LT BLU | CNKSHFT POS SIG | Crankshaft position sensor 1 pin 2 |
| 87 | F856 | YEL/PNK | FSD ASD RLY O/P | SP2470: both camshaft position sensors pin 2 (5V SPLY), MAP sensor pin 3 (5V SPLY) |
| 88 | K925 | DK BLU/GRY | CNKSHFT POS GND | Crankshaft position sensor 1 pin 1 |
| 89 | K22 | BRN/ORG | TP 1 SIG | Throttle body pin 5 |
| 90 | K122 | BRN/DK GRN | TP 2 SIG | Throttle body pin 3 |
| 93 | G62 | VIO/YEL | OIL PRESS SOL CTRL | Oil pump solenoid pin 1 |
| 94 | K78 | BRN | VVT INT 2/1 CTRL | Camshaft position solenoid 2/1 pin 1 (VVT INTAKE 2/1 CTRL) |
| 95 | K277 | DK BLU | VVT EXT 2/2 CTRL | Camshaft position solenoid 2/2 pin 1 |
| 96 | K399 | BRN/GRY | HTR CTRL | Oxygen sensor 2/2 pin 1 |

C2-87 is labelled "FSD ASD RLY O/P" at the PCM, but its YEL/PNK wire feeds only the pins labelled "5V SPLY" on the two camshaft position sensors and the MAP sensor.

Component locations (pages 1-3): knock sensor 1 — under intake manifold, in left cylinder head; knock sensor 2 — under intake manifold, in right cylinder head; oxygen sensors 1/1 (right exhaust) and 2/1 (left exhaust) — upstream of catalytic converter; 1/2 (right exhaust) and 2/2 (left exhaust) — downstream of catalytic converter; intake air temperature sensor — right rear of engine; engine coolant temperature sensor — rear of left cylinder head; oil temperature sensor — top center rear of engine; throttle body — right rear of engine; crankshaft position sensor 1 — right side of engine block; camshaft position sensor 2 — rear of left cylinder head; camshaft position sensor (printed without a number) — rear of right cylinder head; manifold absolute pressure sensor — right rear of engine; oil pressure sensor — on oil filter bracket; camshaft position solenoids 1/2 and 1/1 — front of right cylinder bank; camshaft position solenoids 2/1 and 2/2 — front of left cylinder bank; oil pump solenoid — lower right front of engine; ignition coils — top of right (1, 3, 5) and left (2, 4, 6) cylinder banks; fuel injectors — top of right (1, 3, 5) and left (2, 4, 6) cylinder banks; ignition capacitor — rear of left cylinder bank; ignition capacitor 2 — rear of right cylinder bank. Splices: SP2190 — top center rear of engine, in engine harness; SP2191 — top of right cylinder bank, in engine harness; SP2192 — right rear of engine, in engine harness; SP2176 — right front of engine compartment, in engine harness; SP2186 — rear of right cylinder bank, in engine harness; SP2470 — rear of right cylinder bank, in engine harness; S344 — top center rear of engine, in injector harness; S342 — right rear of engine, in injector harness.

Sensor pinouts as printed: Crankshaft position sensor 1 — 1 CNKSHFT POS GND (DK BLU/GRY), 2 CNKSHFT POS SIG (BRN/LT BLU), 3 5V SPLY (PNK/YEL). Camshaft position sensor 2 (left head) — 1 SENS SIG 2/2 (DK BLU/TAN), 2 5V SPLY (YEL/PNK), 3 SENS GND (DK BLU/DK GRN), 4 SENS SIG 2/1 (DK BLU/DK GRN). Camshaft position sensor (right head) — 1 SENS SIG 1/2 (DK BLU/BRN), 2 5V SPLY (YEL/PNK), 3 SENS GND (DK BLU/DK GRN), 4 SENS SIG (DK BLU/GRY). MAP — 1 MAP SIG (VIO/BRN), 2 SENS GND (DK BLU/DK GRN), 3 5V SPLY (YEL/PNK). ECT — 1 ECT SIG (VIO/ORG), 2 SENS GND (BRN/WHT). IAT — 1 IAT SIG (DK BLU/LT GRN), 2 SENS GND (BRN/WHT). EOT — 1 EOT SIG (VIO/BRN), 2 SENS GND (DK BLU/DK GRN). Oil pressure sensor — 1 5V SPLY (PNK/YEL), 2 OIL PRESS SIG (VIO/GRY), 3 SENS GND (DK BLU/DK GRN). Knock sensor 1 — 1 DK BLU/YEL, 2 BRN/LT GRN; knock sensor 2 — 1 BRN/WHT, 2 WHT/BRN. Throttle body — 1 ETC MTR (+) (TAN/YEL), 2 ETC MTR (-) (TAN/ORG), 3 TP 2 SIG (BRN/DK GRN), 4 5V SPLY (PNK/YEL), 5 TP 1 SIG (BRN/ORG), 6 TP SENS RTN (BRN/DK BLU). Upstream O2 sensors (1/1, 2/1) — 1 HTR CTRL, 2 GND (BLK to G903A), 3 O2 RTN (UPSTRM) (BRN/DK GRN), 4 1/1 SIG or 2/1 SIG. Downstream O2 sensors (1/2, 2/2) — 1 HTR CTRL SPLY (1/2) or HTR CTRL (2/2), 2 GND (BLK to G903A), 3 DNSTRM O2 RTN (DK BLU/DK GRN), 4 1/2 SIG or 2/2 SIG. Camshaft position solenoids and oil pump solenoid — 1 control (PCM driver), 2 GND (BLK to G903A). Injectors — 1 PCM driver, 2 BRN/WHT from S342. Coils — 1 COIL x CTRL (PCM driver), 2 FSD ASD RLY O/P (BRN/GRY from S344).

## Power supply / relays (page 4)

Power distribution center assembly, right side of engine compartment:

- **Auto shutdown relay** — pins 85 and 30 hot at all times; contact (87) feeds fuse 63 (20 A), fuse 64 (20 A) and fuse 56 (15 A).
  - Fuse 63 -> PDC C3 pin 7 (BRN/YEL) -> I9000A pin 12 (BRN/GRY after the connector) -> S344 -> ignition coils 1-6 pin 2 (FSD ASD RLY O/P), ignition capacitor pin 1 and ignition capacitor 2 pin 1.
  - Fuse 64 -> PDC C3 pin 5 (BRN/WHT, F342) -> I9030 pin 2 -> SP102 -> PCM C1-74/75/76 (ASD CTRL OUTPUT) and, via I9030 pin 1 -> S342, fuel injectors 1-6 pin 2.
  - Fuse 56 -> PDC C3 pin 6 (BRN/GRY, F344) -> PCM C1-1 (ASD RLY OUTPUT).
  - Relay coil (86) -> PDC C3 pin 4 (BRN/WHT, K51) -> I9030 pin 20 -> PCM C1-80 (ASD RLY CTRL).
- **Fuel pump relay** — pin 30 hot at all times; contact (87) -> fuse 70 (20 A) -> PDC C5 pin 17 (DK BLU/ORG, N1) -> I4300 pin 1 -> I6602A pin E -> fuel pump module pin 4 (FUEL PUMP CTRL O/P). Coil: pin 85 hot with run/start relay energized; pin 86 -> PDC C3 pin 25 (BRN, K31) -> PCM C1-84 (FUEL PMP CTRL).
- **Fuse 78 (10 A)**, hot with run/start relay energized -> PDC C3 pin 28 (RED/LT GRN, F942) -> PCM C1-23 (FSD IGN SW OUTPUT).
- **Fuse 22 (20 A)**, hot at all times -> PDC C3 pin 3 (RED, A209) -> PCM C1-96 (FUSED B (+)).

PDC pins 4, 7, 5, 6 and 25 share one dashed connector outline labelled C3; pins 28 and 3 share a second outline, also labelled C3; pin 17 is labelled C5.

Grounds: G903A — right front of engine compartment (GND pin 2 of all four oxygen sensors, the four camshaft position solenoids and the oil pump solenoid); G909B — right front of engine compartment (PCM C1-52/53/72); G903 — printed without suffix or location (evap/purge solenoid pin 2); G917A — under left rear of vehicle (fuel pump module pin 1, Z917 BLK, via I6602A pin A).

Other modules on the same diagram (not PCM pins): body control module (right end of dash) connector C5 pins 26 CAN C (-) (YEL, D46) and 25 CAN C (+) (BRN, D45) to the computer data lines system, 15 FUEL LVL SIG 2 (DK BLU/GRY, N5) -> I4000 pin 9 / I6602A pin D -> fuel level sensor pin 3, 17 FUEL LVL SENS SIG (DK BLU/WHT, N4) -> I4000 pin 2 / I6602A pin C -> fuel pump module pin 3, 16 FUEL LVL SENS RTN (BRN/WHT, G109) -> I4100 pin 4 / I6602A pin B (BLK/WHT) -> S01A (under rear of center console, in rear harness) -> fuel pump module pin 2 (BRN/WHT) and fuel level sensor pin 2 (BLK/WHT). The fuel level sensor (in fuel tank) and fuel pump module (top left side of fuel tank) report to the BCM, not the PCM.

## Notes

- A/C pressure transducer 5V SPLY (pin 1, VIO/BRN, I9030 pin 3) is drawn as a VIO/BRN wire that ends at SP2176 together with the PNK/YEL F855 wires from C2-67. No circuit code is printed on this wire, and it does not reach C1-69 (K854, VIO/BRN), which in this diagram feeds only the accelerator pedal position sensor pin 6.
- Inline connector I9030 pin 2 is printed twice with different wires: BRN/WHT between PDC C3 pin 5 (fuse 64) and SP102 (diagram page 4), and BRN/YEL between C2-8 and fuel injector 1 (diagram page 5).
- The fuse 63 output changes color at I9000A pin 12, from BRN/YEL on the PDC side to BRN/GRY on the engine side.
- C1-6 (VCM PMP RLY CTRL), C1-30 (RAD FAN RLY CTRL), C1-78 (HI SPD RAD FAN CTRL), C1-79 (A/C CLTCH COIL), C1-81 (STARTER RLY CTRL), C2-2 (GEN FLD CTRL) and C2-40 (GEN SENS) leave this diagram for the named systems; their loads are not shown here.

Cross-check: every 2015 Grand Cherokee entry in [2015-Grand-Cherokee-V6-vs-2018-Durango-V8-ECU-pinout-comparison.md](2015-Grand-Cherokee-V6-vs-2018-Durango-V8-ECU-pinout-comparison.md) agrees with this transcription (pins, circuit codes and colors); no discrepancies were found.
