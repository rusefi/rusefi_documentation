# 2018 Dodge Challenger SRT 392 — engine performance circuits and PCM pinouts (6.4L, 5.7L, 3.6L, 6.2L supercharged)

Transcribed from [2018-Dodge-Challenger-392.pdf](2018-Dodge-Challenger-392.pdf) (ProDemand "Printer Friendly View", "Engine Performance Circuit" wiring diagrams, PDF pages 1-23; PDF page 24 is blank). The page header reads "2018 Dodge Challenger SRT 392, Engine: 6.4L Eng", but the PDF holds the engine performance diagrams of all four Challenger engines, not only the 6.4L named by the file:

| Section heading in the PDF | Figures | PDF pages | Sheet identifiers |
|----------------------------|---------|-----------|-------------------|
| ENGINE PERFORMANCE > 3.6L | Fig 1-7, "3.6L, Engine Performance Circuit (1 of 7)" - "(7 of 7)" | 1-7 | 585207-585213 |
| ENGINE PERFORMANCE > 5.7L | Fig 1-5, "5.7L, Engine Performance Circuit (1 of 5)" - "(5 of 5)" | 8-12 | 585214-585218 |
| ENGINE PERFORMANCE > 6.2L SUPERCHARGED | Fig 1-6, "6.2L Supercharged, Engine Performance Circuit (1 of 6)" - "(6 of 6)" | 13-18 | 585219-585224 |
| ENGINE PERFORMANCE > 6.4L | Fig 1-5, "6.4L, Engine Performance Circuit (1 of 5)" - "(5 of 5)" | 19-23 | 585214-585218 |

The 5.7L and 6.4L figures are the same five drawings (same sheet identifiers); circuits that differ by engine are marked (5.7L)/(6.4L) inside the drawing. The 6.4L/5.7L section is given first below because it is the engine named by the file.

Powertrain Control Module (PCM), located right rear of engine compartment on every sheet. Two connectors, C1 and C2, each drawn with terminals 1-96. Unlisted pins are not connected in this diagram.

Connectors covered:

| Engine | Connector | Pins | Role |
|--------|-----------|------|------|
| 6.4L / 5.7L | C1 | 96 | Chassis side: ignition and battery feeds, grounds, CAN C, LIN, APP sensor, A/C pressure, fuel tank pressure, clutch switch (M/T), relay controls (ASD, fuel pump, vacuum pump, starter, fans), purge, chiller solenoid |
| 6.4L / 5.7L | C2 | 96 | Engine side: injectors, coils, MDS and VCT solenoids, crank/cam, knock, MAP/ECT/IAT/EOT/oil pressure, O2 sensors and heaters, electronic throttle, short runner valve (6.4L), skip shift and reverse lock out solenoids (M/T), generator |
| 3.6L | C1 | 96 | Chassis side, as above without the clutch circuits; adds evap purge solenoid return |
| 3.6L | C2 | 96 | Engine side: six injectors and coils, four cam phaser solenoids, two camshaft position sensors, oil pump solenoid, crank, knock, MAP/ECT/IAT/EOT/oil pressure, O2 sensors and heaters, electronic throttle, generator |
| 6.2L supercharged | C1 | 96 | Chassis side, plus fuel rail pressure, charge air and supercharger temperatures, fuel pump control module PWM |
| 6.2L supercharged | C2 | 96 | Engine side, plus wideband upstream O2 sensors, bank MAP sensors, supercharger bypass valve, crankcase pressure, second fuel pump control module (Demon) |

Chrysler circuit codes (K11, F342, D27, ...) are printed on each wire next to the PCM and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark). Inline connectors are named as printed (I200, I250, I251, I270, I512, I1501, I9000A, I9200A, I3022A); where the wire color changes across an inline connector, the color at the component is given in the "Connects to" column. PDC = power distribution center; its cavities are named as printed (63A, 72C, ...).

---

## 6.4L and 5.7L (sheets 585214-585218, PDF pages 19-23 and 8-12)

### C1 (96-pin) — 6.4L / 5.7L

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 17 | T17 | YEL/VIO | CLUTCH UPSTOP SIG | Radio frequency hub module C1 pin 15 (CLUTCH UPSTOP SIG) via I250 pin 16 |
| 23 | F914 | PNK/BRN | FUSED IGN SW O/P (RUN/START) | Front PDC 37B, fuse 37 (10 A), hot with run/start relay energized |
| 33 | D28 | YEL/GRN | CAN C (-) | Computer data lines system |
| 39 | T26 | DK GRN/ORG | CLUTCH UPSTOP SIG | Clutch interlock switch pin 1 (M/T) |
| 42 | K914 | BRN/WHT | SENS GND | Air conditioning system |
| 44 | C18 | BLU/BRN | A/C PRESS SIG | Air conditioning system |
| 48 | K859 | BRN/DK BLU | 5V SPLY | Fuel tank pressure sensor pin C via I251 pin 9 |
| 52 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 53 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 54 | K917 | BRN/TAN | SENS GND | Fuel tank pressure sensor pin A via I251 pin 10 |
| 55 | D511 | WHT/TAN | LIN BUS | SD511D (w/ SRT): computer data lines system; active exhaust valve 1 pin 2 and valve 2 pin 2 via I250 pin 18, I512 pin 8 and SD511K |
| 57 | D27 | TAN/WHT | CAN C (+) | Computer data lines system |
| 67 | K400 | BRN/VIO | APP SENS GND 2 | Accelerator pedal position sensor pin 4 |
| 68 | K167 | BRN/YEL | APP SENS GND 1 | Accelerator pedal position sensor pin 3 |
| 69 | K854 | VIO/BRN | 5V SPLY | SK854B: accelerator pedal position sensor pin 6 (APP 5V 2); A/C pressure transducer pin 1 (5V SPLY, BRN/VIO) via I1501 pin 1 |
| 70 | K108 | VIO/WHT | ESM SIG | Evap system monitor switch pin 2 via I250 pin 11 (VIO/GRY at switch) |
| 72 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 73 | N9 | BLU/TAN | FUEL PUMP RLY CTRL | Fuel pump relay terminal 86 (rear PDC 72C) via I250 pin 24 |
| 74 | F342 | BRN | ASD CTRL O/P | SF342E (ASD relay output via fuse 34, 25 A) |
| 75 | F342 | BRN | ASD CTRL O/P | SF342E |
| 76 | F342 | BRN | ASD CTRL O/P | SF342E |
| 77 | T110 | DK GRN/YEL | VACM PUMP RLY CTRL | Anti-lock brakes system |
| 78 | N112 | DK BLU/ORG | RAD FAN RLY CTRL | Cooling fans system |
| 79 | C13 | BLU/ORG | A/C CLUTCH CTRL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RLY CTRL | Auto shut down relay terminal 85 (front PDC 63D) |
| 81 | T752 | DK GRN/ORG | STRTR CTRL | Starting/charging system |
| 82 | N201 | DK BLU/GRN | LO SPD RAD FAN CTRL | Cooling fans system |
| 88 | N7 | DK BLU/ORG | FUEL TANK PRESS SIG | Fuel tank pressure sensor pin B (FUEL TANK PRESS SENS SIG) via I251 pin 8 |
| 91 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 5 |
| 92 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 2 |
| 93 | K852 | BRN/VIO | APP 5V 1 | Accelerator pedal position sensor pin 1 via SK852B |
| 94 | K52 | DK BLU/WHT | EVAP PURGE CTRL | Evap/purge solenoid pin 1 (EVAP PRG CTRL) via I200 pin 21 |
| 95 | C319 | BLU/YEL | CHILLER SOL CTRL | HVAC cooling solenoid pin 2 (Demon) via I200 pin 17 |
| 96 | A209 | RED/BRN | FUSED B (+) | Front PDC 31B, fuse 31 (25 A), hot at all times |

Pins 17 and 39 are both printed "CLUTCH UPSTOP SIG": pin 39 is wired to the clutch interlock switch, pin 17 to the radio frequency hub module. An arrow marked DEMON points at inline connector I1501 in the A/C pressure transducer 5V feed. On these sheets only the 5V feed of the A/C pressure transducer is drawn; C1-42 and C1-44 end at "Air conditioning system" references.

Component locations (Fig 1-2): front power distribution center — right side of engine compartment; rear power distribution center — printed "right rear of engine compt" on Fig 1 and "right rear of luggage compt" on Fig 3; fuel tank pressure sensor — top left side of fuel tank; clutch interlock switch (M/T) — top of clutch pedal assembly; radio frequency hub module — under center of hat shelf; fuel pump module — right side of luggage compartment; body control module — right end of dash; accelerator pedal position sensor — top of accelerator pedal assembly; A/C pressure transducer — left rear of engine compartment; active exhaust valve 1 — on rear of left exhaust; active exhaust valve 2 — at rear of right exhaust; evap system monitor switch — on evap canister assembly. Splices: SF342E — right rear of engine compartment, in headlamp and dash harness; SK854B, SD511D — left center rear of engine compartment, in headlamp and dash harness; SD511K — behind left center of rear bumper, in ADS jumper harness.

Component pinouts as printed: accelerator pedal position sensor — 1 APP 5V 1 (BRN/VIO), 2 APP SIG 1 (BRN/WHT), 3 APP SENS GND 1 (BRN/YEL), 4 APP SENS GND 2 (BRN/VIO), 5 APP SIG 2 (WHT/BRN), 6 APP 5V 2 (VIO/BRN). A/C pressure transducer — 1 5V SPLY (BRN/VIO); other terminals not drawn. Fuel tank pressure sensor — A SENS GND (BRN/TAN), B FUEL TANK PRESS SENS SIG (DK BLU/ORG), C 5V SPLY (BRN/DK BLU). Clutch interlock switch — 1 CLUTCH UPSTOP SIG (DK GRN/ORG), 2 CLUTCH INTERLOCK SIG (YEL/ORG, via I250 pin 8 to radio frequency hub module C1 pin 7, circuit T141), 3 GND (BLK to G101). Radio frequency hub module C1 — 7 CLUTCH INTERLOCK SIG (YEL/ORG, T141), 15 CLUTCH UPSTOP SIG (YEL/VIO, T17). Evap system monitor switch — 1 GND (BLK/WHT to G917A), 2 ESM SIG (VIO/GRY). HVAC cooling solenoid (Demon) — 1 GND (BLK to G901A), 2 CHILLER SOL CTRL (BLU/YEL). Active exhaust valves 1 and 2 — 1 FUSED B (+) (RED), 2 LIN BUS (WHT/TAN), 3 GND (BLK to SZ922P -> I512 pin 7 -> G305). Evap/purge solenoid — 1 EVAP PRG CTRL (DK BLU/WHT), 2 GND (BLK to G703).

### C2 (96-pin) — 6.4L / 5.7L

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | K454 | BRN/ORG | SOL CTRL 7 | Multi displacement system solenoid (cylinder 7) pin 1 via I270 pin 4 (A/T) |
| 4 | G6 | VIO/GRY | OIL PRESS SENS | Oil pressure sensor pin 2 |
| 6 | K452 | BRN/BLU | SOL CTRL 4 | Multi displacement system solenoid (cylinder 4) pin 1 via I270 pin 2 (A/T) |
| 8 | K11 | BRN/YEL | INJ CTRL 1 | Fuel injector 1 pin 1 |
| 9 | K12 | BRN/DK BLU | INJ CTRL 2 | Fuel injector 2 pin 1 |
| 10 | K13 | BRN/BLU | INJ CTRL 3 | Fuel injector 3 pin 1 |
| 11 | K14 | BRN/TAN | INJ CTRL 4 | Fuel injector 4 pin 1 |
| 12 | K2 | VIO/ORG | ECT SIG | Engine coolant temperature sensor pin 1 |
| 13 | K242 | BRN/WHT | KS 2 SIG | Knock sensor 2 pin 1 |
| 14 | K42 | DK BLU/YEL | KS 1 SIG | Knock sensor 1 pin 1 |
| 16 | G24 | VIO/BRN | EOT SIG | Oil temperature sensor pin 2 (6.4L branch) |
| 17 | K21 | DK BLU/GRN | IAT SIG | Inlet air temperature sensor pin 1 (6.4L branch) |
| 19 | K141 | DK BLU/YEL | O2 1/2 SIG | Oxygen sensor 1/2 pin 4 |
| 20 | K904 | DK BLU/DK GRN | O2 RTN DWNSTRM | SK904B: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 |
| 21 | K243 | BRN | O2 2/2 SIG | Oxygen sensor 2/2 pin 4 |
| 22 | K442 | DK BLU | VCT CTRL | Variable camshaft timing solenoid pin 2 via I270 pin 5 |
| 24 | K99 | BRN/GRN | O2 1/1 HTR CTRL | Oxygen sensor 1/1 pin 1 |
| 25 | K453 | BRN/DK GRN | SOL CTRL 6 | Multi displacement system solenoid (cylinder 6) pin 1 via I270 pin 3 (A/T) |
| 26 | K33 | DK BLU/GRN | SKIP SHIFT CTRL | Skip shift solenoid pin B (M/T) |
| 27 | not printed | DK BLU/BLU | REV LOCK-OUT CTRL | Reverse lock out solenoid pin B (REV LCK OUT CTRL) (M/T) |
| 31 | K451 | BRN/WHT | SOL CTRL 1 | Multi displacement system solenoid (cylinder 1) pin 1 via I270 pin 1 (A/T) |
| 32 | K20 | BRN/GRY | GEN FIELD CTRL | Starting/charging system |
| 33 | K447 | TAN/YEL | ETC MTR (+) | Throttle body pin 1 |
| 34 | K448 | TAN/ORG | ETC MTR (-) | Throttle body pin 2 |
| 35 | A804 | RED/VIO | GEN SNS | Starting/charging system |
| 37 | K924 | WHT/BRN | KS 2 RTN | Knock sensor 2 pin 2 |
| 38 | K942 | BRN/GRN | KS 1 RTN | Knock sensor 1 pin 2 |
| 39 | K41 | DK BLU/BLU | O2 1/1 SIG | Oxygen sensor 1/1 pin 4 |
| 40 | K902 | BRN/DK GRN | O2 RTN UPSTREAM | SK902H: oxygen sensor 1/1 pin 3 and oxygen sensor 2/1 pin 3 |
| 41 | K43 | DK BLU/GRN | O2 2/1 SIG | Oxygen sensor 2/1 pin 4 |
| 43 | G24 | VIO/BRN | EOT SIG | Oil temperature sensor pin 2 (5.7L branch) |
| 44 | K21 | DK BLU/GRN | IAT SIG | Inlet air temperature sensor pin 1 (5.7L branch) |
| 45 | K1 | VIO/BRN | MAP SIG | Manifold absolute pressure sensor pin 1 |
| 48 | K299 | BRN/WHT | O2 1/2 HTR CTRL SPLY | Oxygen sensor 1/2 pin 1 (O2 1/2 HTR CTRL) |
| 49 | K18 | DK BLU/ORG | COIL CTRL 3 | Ignition coil 3 pin 1 |
| 50 | K17 | DK BLU/TAN | COIL CTRL 2 | Ignition coil 2 pin 1 |
| 51 | K19 | DK BLU/DK GRN | COIL CTRL 1 | Ignition coil 1 pin 1 |
| 53 | K238 | DK BLU/GRN | SRV SENSE O/P | Short runner solenoid valve pin 3 (6.4L) |
| 60 | K237 | DK BLU/YEL | SRV ACT CTRL SIG | Short runner solenoid valve pin 4 (6.4L) |
| 65 | K922 | BRN/DK BLU | TP SENS RTN | Throttle body pin 6 |
| 66 | K900 | DK BLU/DK GRN | SENS GND | SK900B (M/T) / SK900G (A/T): camshaft position sensor pin 2, manifold absolute pressure sensor pin 2, oil pressure sensor pin 3 |
| 67 | F855 | PNK/YEL | 5V SPLY | SF855B: throttle body pin 4, crankshaft position sensor pin 1, oil pressure sensor pin 1 |
| 68 | K915 | BRN/WHT | SENS GND | SK915B (M/T) / SK915G (A/T): oil temperature sensor pin 1, inlet air temperature sensor pin 2, engine coolant temperature sensor pin 2 |
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
| 85 | K44 | DK BLU/GRY | CMP SIG | Camshaft position sensor pin 3 |
| 86 | K24 | BRN/BLU | CKP SIG | Crankshaft position sensor pin 3 |
| 87 | F856 | YEL/PNK | 5V SPLY | SF856B (M/T) / SF856G (A/T): camshaft position sensor pin 1, manifold absolute pressure sensor pin 3 |
| 88 | K925 | DK BLU/GRY | CKP GND | Crankshaft position sensor pin 2 |
| 89 | K22 | BRN/ORG | TP 1 SIG | Throttle body pin 5 |
| 90 | K122 | BRN/DK GRN | TP 2 SIG | Throttle body pin 3 |
| 96 | K399 | BRN/GRY | O2 2/2 HTR CTRL | Oxygen sensor 2/2 pin 1 |

The oil temperature (EOT) and inlet air temperature (IAT) signal wires split under a "6.4L / 5.7L" bracket: the 6.4L branch runs to C2-16 (EOT) and C2-17 (IAT), the 5.7L branch to C2-43 (EOT) and C2-44 (IAT). All four terminals carry the same printed function, circuit code and wire color. C2-27 has no circuit code printed.

Component locations (Fig 2-5): multi displacement system solenoids (A/T) — under intake manifold, at cylinders 1, 4, 7 and 6; variable camshaft timing solenoid — top front of engine; camshaft position sensor — front of right cylinder bank; crankshaft position sensor — right rear of engine block; skip shift solenoid and reverse lock out solenoid (M/T) — left side of transmission; manifold absolute pressure sensor — no location printed; evap/purge solenoid — right rear of engine compartment; oil temperature sensor — right front of engine block (6.4L) / left front of engine block (5.7L); inlet air temperature sensor — top front of engine; oil pressure sensor — on oil filter bracket; knock sensor 2 — right side of engine block; knock sensor 1 — left side of engine block; oxygen sensor 2/1 — in right exhaust manifold; oxygen sensor 1/1 — in left exhaust manifold; oxygen sensor 1/2 — in left exhaust, in catalytic converter; oxygen sensor 2/2 — in right exhaust, in catalytic converter; throttle body — top left front of engine; short runner solenoid valve (6.4L) — center rear of engine; engine coolant temperature sensor — left front of engine; fuel injectors — top of left bank (7, 1, 5, 3 as drawn) and right bank (8, 6, 4, 2); ignition coils — top of left bank (5, 1, 3, 7 as drawn) and right bank (4, 6, 2, 8); ignition capacitor — rear of left cylinder bank. Splices: SF856B (M/T) / SF856G (A/T) — left rear of engine, in engine harness; SK900B (M/T) / SK900G (A/T) — left rear of engine (A/T) or right rear of engine (M/T), in engine harness; SF342C — rear of right cylinder bank (5.7L) or rear of left cylinder bank (6.4L), in engine harness; SK915B (M/T) / SK915G (A/T) — right side of engine, in engine harness; SK902H — left rear of engine, in engine harness; SK904B, SF855B, SF343L — right rear of engine, in engine harness.

Sensor pinouts as printed: camshaft position sensor — 1 5V SPLY (YEL/PNK), 2 SENS GND (DK BLU/DK GRN), 3 CMP SIG (DK BLU/GRY). Crankshaft position sensor — 1 5V SPLY (PNK/YEL), 2 CKP GND (DK BLU/GRY), 3 CKP SIG (BRN/BLU). Manifold absolute pressure sensor — 1 MAP SIG (VIO/BRN), 2 SENS GND (DK BLU/DK GRN), 3 5V SPLY (YEL/PNK). Oil temperature sensor — 1 SENS GND (BRN/WHT), 2 EOT SIG (VIO/BRN). Inlet air temperature sensor — 1 IAT SIG (DK BLU/GRN), 2 SENS GND (BRN/WHT). Engine coolant temperature sensor — 1 ECT SIG (VIO/ORG), 2 SENS GND (BRN/WHT). Oil pressure sensor — 1 5V SPLY (PNK/YEL), 2 OIL PRESS SENS (VIO/GRY), 3 SENS GND (DK BLU/DK GRN). Knock sensor 1 — 1 DK BLU/YEL, 2 BRN/GRN. Knock sensor 2 — 1 BRN/WHT, 2 WHT/BRN. Throttle body — 1 ETC MTR (+) (TAN/YEL), 2 ETC MTR (-) (TAN/ORG), 3 TP 2 SIG (BRN/DK GRN), 4 5V SPLY (PNK/YEL), 5 TP 1 SIG (BRN/ORG), 6 TP SENS RTN (BRN/DK BLU). Upstream oxygen sensors (1/1, 2/1) — 1 HTR CTRL, 2 GND (BLK to G703), 3 O2 RTN UPSTREAM (BRN/DK GRN), 4 O2 SIG. Downstream oxygen sensors (1/2, 2/2) — 1 HTR CTRL, 2 GND (BLK to G703), 3 O2 RTN DNSTRM (DK BLU/DK GRN), 4 O2 SIG. Short runner solenoid valve (6.4L) — 1 FSD ASD RLY O/P (BRN/YEL), 2 GND (BLK to G703), 3 SRV SENSE O/P (DK BLU/GRN), 4 SRV ACT CTRL SIG (DK BLU/YEL). Variable camshaft timing solenoid — 1 GND (BLK), 2 VCT CTRL (DK BLU). Multi displacement system solenoids — 1 SOL CTRL x, 2 GND (BLK to SP479). Skip shift solenoid — A ASD CTRL O/P (BRN), B SKIP SHIFT CTRL (DK BLU/GRN). Reverse lock out solenoid — A ASD CTRL O/P (BRN), B REV LCK OUT CTRL (DK BLU/BLU). Fuel injectors — 1 PCM driver, 2 BRN/WHT from SF342C. Ignition coils — 1 COIL CTRL x, 2 FSD ASD RLY O/P (BRN/YEL from SF343L). Ignition capacitor — 1 BRN/YEL from SF343L.

### Power supply, relays and grounds — 6.4L / 5.7L (Fig 1-3)

Front power distribution center assembly, right side of engine compartment:

- **Auto shut down relay** — terminals 86 (63C) and 30 (63A) are fed RED/WHT from SA751B, which is fed by rear PDC fuse 4 (60 A, hot at all times, 4B). Terminal 85 -> 63D (BRN/WHT, K51) -> PCM C1-80 (ASD RLY CTRL). Terminal 87 -> 63B (PNK/DK BLU) -> 34A, feeding fuses 34 and 35.
- **Fuse 34 (25 A)** -> 34B (BRN, F342) -> SF342E -> PCM C1-74/75/76 (ASD CTRL O/P) and, via I200 pin 13 (BRN/WHT), SF342C -> fuel injectors pin 2, skip shift solenoid pin A and reverse lock out solenoid pin A (M/T).
- **Fuse 35 (20 A)** -> 35B (BRN/YEL) -> I200 pin 2 -> SF343L -> ignition coils pin 2 (FSD ASD RLY O/P), ignition capacitor pin 1, short runner solenoid valve pin 1 (6.4L).
- **Fuse 37 (10 A)**, hot with run/start relay energized -> 37B (PNK/BRN, F914) -> PCM C1-23.
- **Fuse 31 (25 A)**, hot at all times -> 31B (RED/BRN, A209) -> PCM C1-96 (FUSED B (+)).

Rear power distribution center assembly:

- **Fuel pump relay** — terminal 30 -> 72A (VIO/RED) -> 21B, fuse 21 (30 A, hot at all times). Terminal 87 -> 72B (DK BLU/ORG, N1) -> fuel pump module pin 5 (FUEL PMP CTRL O/P). Terminal 86 -> 72C (BLU/TAN, N9) -> I250 pin 24 -> PCM C1-73. Terminal 85 -> 72D (BLK) -> SZ922J -> ground G305.
- **Fuse 36 (20 A)**, hot at all times -> 36B (RED) -> I512 pin 10 -> SA947E -> active exhaust valve 1 pin 1 and valve 2 pin 1 (FUSED B (+)).

Grounds: G102 — right front of engine compartment (PCM C1-52/53/72 via SZ903C); G101 — right front of engine compartment (clutch interlock switch pin 3); G305 — right rear of luggage compartment (fuel pump relay terminal 85 via SZ922J; active exhaust valves via SZ922P and I512 pin 7); G904A — right side of engine (multi displacement system solenoids via SP479 and I270 pin 6; variable camshaft timing solenoid pin 1 — joined to the SP479 run on A/T, via I270 pin 6 on M/T); G901A — left front corner of engine compartment (HVAC cooling solenoid); G917A — under passenger's seat (evap system monitor switch); G703 — no location printed (evap/purge solenoid, all four oxygen sensors, short runner solenoid valve); G121 — no location printed (fuel pump module pin 3).

Other modules on the same sheets (not PCM pins): fuel pump module — 1 FUEL LVL SIG 2 (DK BLU/GRY, N5), 2 FUEL LVL SENSE RTN (BLK, G109), 3 GND (BLK, Z916, to G121), 4 FUEL LVL SENS SIG (DK BLU/WHT, N4), 5 FUEL PMP CTRL O/P (DK BLU/ORG, N1). Body control module — C6 pin 11 CAN IHS (-) (WHT, D146) and pin 12 CAN IHS (+) (WHT/GRN, D145) to the computer data lines system; C5 pin 17 FUEL LVL SENS SIG, pin 16 FUEL LVL SENSE RTN, pin 15 FUEL LVL SIG 2 to fuel pump module pins 4, 2 and 1. Cluster — 12 CAN C (+) (BRN/WHT), 13 CAN C (-) (YEL) to the computer data lines system.

---

## 3.6L (sheets 585207-585213, PDF pages 1-7)

### C1 (96-pin) — 3.6L

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 23 | F914 | PNK/BRN | FUSED IGN SW O/P (RUN/START) | Front PDC 37B, fuse 37 (10 A), hot with run/start relay energized |
| 33 | D28 | YEL/GRN | CAN C (-) | Computer data lines system |
| 42 | K914 | BRN/WHT | SENS GND | SK914C -> A/C pressure transducer pin 3 via I1501 pin 3 |
| 44 | C18 | BLU/BRN | A/C PRESS SIG | A/C pressure transducer pin 2 via I1501 pin 2 |
| 45 | K70 | DK BLU/BRN | EVAP PURGE SOL RTN | Evap/purge solenoid pin 2 via I200 pin 20 |
| 48 | K859 | BRN/DK BLU | 5 VOLT SPLY | Fuel tank pressure sensor pin C via I251 pin 9 |
| 52 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 53 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 54 | K917 | BRN/TAN | SENS GND | Fuel tank pressure sensor pin A via I251 pin 10 |
| 55 | D511 | WHT/TAN | LIN BUS | SD511D (w/ SRT): computer data lines system; active exhaust valve 1 pin 2 and valve 2 pin 2 via I250 pin 18, I512 pin 8 and SD511K |
| 57 | D27 | TAN/WHT | CAN C (+) | Computer data lines system |
| 67 | K400 | BRN/VIO | APP SENS GND 2 | Accelerator pedal position sensor pin 4 |
| 68 | K167 | BRN/YEL | APP SENS GND 1 | Accelerator pedal position sensor pin 3 |
| 69 | K854 | VIO/BRN | 5 VOLT SPLY | SK854B: accelerator pedal position sensor pin 6 (5 VOLT SPLY); A/C pressure transducer pin 1 (5 VOLT SPLY) via I1501 pin 1 |
| 70 | K108 | VIO/WHT | ESIM SIG | Evap system monitor switch pin 2 via I250 pin 11 |
| 72 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 73 | N9 | BLU/TAN | FUEL PUMP RLY CTRL | Fuel pump relay terminal 86 (rear PDC 72C) via I250 pin 24 |
| 74 | F342 | BRN | ASD CTRL O/P | SF342E (ASD relay output via fuse 34, 25 A) |
| 75 | F342 | BRN | ASD CTRL O/P | SF342E |
| 76 | F342 | BRN | ASD CTRL O/P | SF342E |
| 77 | T110 | DK GRN/YEL | VACUUM PUMP RLY CTRL | Anti-lock brakes system |
| 78 | N112 | DK GRN/ORG | RAD FAN RLY CTRL | Cooling fans system |
| 79 | C13 | BLU/ORG | A/C CLUTCH CTRL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RLY CTRL | Auto shut down relay terminal 85 (front PDC 63D) |
| 81 | T752 | DK GRN/ORG | STARTER RLY CTRL | Starting/charging system |
| 82 | N201 | DK BLU/GRN | LOW SPD RAD FAN CTRL | Cooling fans system |
| 88 | N7 | DK BLU/ORG | FUEL TANK PRESS SIG | Fuel tank pressure sensor pin B via I251 pin 8 |
| 91 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 5 |
| 92 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 2 |
| 93 | K852 | BRN/VIO | APP 5 VOLT 1 | Accelerator pedal position sensor pin 1 via SK852B |
| 94 | K52 | DK BLU/WHT | EVAP PURGE CTRL | Evap/purge solenoid pin 1 via I200 pin 21 |
| 95 | C319 | BLU/YEL | CHILLER SOL CTRL | HVAC cooling solenoid pin 2 (Demon) via I200 pin 17 |
| 96 | A209 | RED/BRN | FUSED B (+) | Front PDC 31B, fuse 31 (25 A), hot at all times |

An arrow marked DEMON points at inline connector I1501 (pins 1, 2, 3 = A/C pressure transducer pins 1, 2, 3).

Component locations (Fig 1-3): evap/purge solenoid — right rear of engine compartment; evap system monitor switch — on evap canister assembly; rear power distribution center — printed "right rear of luggage compt" on Fig 1 and "right rear of engine compt" on Fig 2; front power distribution center — right side of engine compartment; fuel tank pressure sensor — top left side of fuel tank; active exhaust valve 1 — on rear of left exhaust; active exhaust valve 2 — at rear of right exhaust; A/C pressure transducer — left rear of engine compartment; hood ajar switch — right rear of engine compartment; ambient air temperature sensor — behind right side of upper front grille; body control module — right end of dash; fuel pump module — right side of luggage compartment; accelerator pedal position sensor — top of accelerator pedal assembly. Splices: SK914C — center rear of engine compartment, in headlamp and dash harness; SF342E — right rear of engine compartment, in headlamp and dash harness; SK854B, SD511D — left center rear of engine compartment, in headlamp and dash harness; SG931B (w/ remote start system) — right front of engine compartment, in headlamp and dash harness; SD511K — behind left center of rear bumper, in ADS jumper harness.

Component pinouts as printed: accelerator pedal position sensor — 1 APP 5 VOLT 1 (BRN/VIO), 2 APP SIG 1 (BRN/WHT), 3 APP SENS GND 1 (BRN/YEL), 4 APP SENS GND 2 (BRN/VIO), 5 APP SIG 2 (WHT/BRN), 6 5 VOLT SPLY (VIO/BRN). A/C pressure transducer — 1 5 VOLT SPLY (VIO/BRN), 2 A/C PRESS SIG (BLU/BRN), 3 SENS GND (BRN/WHT). Fuel tank pressure sensor — A SENS GND (BRN/TAN), B FUEL TANK PRESS SIG (DK BLU/ORG), C 5 VOLT SPLY (BRN/DK BLU). Evap/purge solenoid — 1 EVAP PURGE CTRL (DK BLU/WHT), 2 EVAP PURGE SOL RTN (DK BLU/BRN). Evap system monitor switch — 1 GND (BLK/WHT to G917A), 2 ESIM SIG (VIO/WHT). HVAC cooling solenoid (Demon) — 1 GND (BLK to G901A), 2 CHILLER SOL CTRL (BLU/YEL). Active exhaust valves 1 and 2 — 1 FUSED B (+) (RED), 2 LIN BUS (WHT/TAN), 3 GND (BLK to SZ922P -> G305).

### C2 (96-pin) — 3.6L

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 4 | G6 | VIO/GRY | OIL PRESS SIG | Oil pressure sensor pin 2 via I9200A pin 1 |
| 8 | K11 | BRN/YEL | INJECTOR CTRL 1 | Fuel injector 1 pin 2 via I9000A pin 2 |
| 9 | K12 | BRN/DK BLU | INJECTOR CTRL 2 | Fuel injector 2 pin 2 via I9000A pin 11 |
| 10 | K13 | BRN/BLU | INJECTOR CTRL 3 | Fuel injector 3 pin 2 via I9000A pin 13 (BRN at injector) |
| 11 | K14 | BRN/TAN | INJECTOR CTRL 4 | Fuel injector 4 pin 2 via I9000A pin 14 (BRN/YEL at injector) |
| 12 | K2 | VIO/ORG | ECT SIG | Engine coolant temperature sensor pin 1 |
| 13 | K242 | BRN/WHT | KS SIG 2 | Knock sensor 2 pin 1 via I9200A pin 5 |
| 14 | K42 | DK BLU/YEL | KS SIG 1 | Knock sensor 1 pin 1 via I9200A pin 3 (DK BLU at sensor) |
| 19 | K141 | DK BLU/YEL | O2 1/2 SIG | Oxygen sensor 1/2 pin 4 |
| 20 | K904 | DK BLU/DK GRN | O2 RTN DOWNSTREAM | SK904G: oxygen sensor 1/2 pin 3 and oxygen sensor 2/2 pin 3 |
| 21 | K243 | BRN | O2 2/2 SIG | Oxygen sensor 2/2 pin 4 |
| 22 | K276 | DK BLU/WHT | VVT EXHAUST CTRL | Camshaft position solenoid 1/2 pin 1 (VVT EXHAUST CTRL 1/2) |
| 23 | K76 | BRN/WHT | VVT INTAKE CTRL | Camshaft position solenoid 1/1 pin 1 (VVT INTAKE CTRL 1/1) |
| 24 | K99 | BRN/GRN | O2 1/1 HEATER CTRL | Oxygen sensor 1/1 pin 1 |
| 32 | K20 | BRN/GRY | GEN FD CTRL | Starting/charging system |
| 33 | K447 | TAN/YEL | ETC MTR (+) | Throttle body pin 1 |
| 34 | K448 | TAN/ORG | ETC MTR (-) | Throttle body pin 2 |
| 35 | A804 | RED/VIO | GEN SENSE | Starting/charging system |
| 37 | K924 | WHT/BRN | KS RTN 2 | Knock sensor 2 pin 2 via I9200A pin 7 (PNK/RED at sensor) |
| 38 | K942 | BRN/GRN | KS RTN 1 | Knock sensor 1 pin 2 via I9200A pin 9 |
| 39 | K41 | DK BLU/BLU | O2 1/1 SIG | Oxygen sensor 1/1 pin 4 |
| 40 | K902 | BRN/DK GRN | O2 RTN UPSTREAM | SK902H: oxygen sensor 1/1 pin 3 and oxygen sensor 2/1 pin 3 |
| 41 | K43 | DK BLU/GRN | O2 2/1 SIG | Oxygen sensor 2/1 pin 4 |
| 43 | G24 | VIO/BRN | EOT SIG | Oil temperature sensor pin 1 via I9200A pin 2 (VIO at sensor) |
| 44 | K21 | DK BLU/GRN | IAT SIG | Inlet air temperature sensor pin 1 |
| 45 | K1 | VIO/BRN | MAP SIG | Manifold absolute pressure sensor pin 1 |
| 48 | K299 | BRN/WHT | O2 1/2 HEATER CTRL SPLY | Oxygen sensor 1/2 pin 1 |
| 49 | K18 | DK BLU/ORG | COIL CTRL 3 | Ignition coil 3 pin 1 via I9000A pin 6 |
| 50 | K17 | DK BLU/TAN | COIL CTRL 2 | Ignition coil 2 pin 1 via I9000A pin 5 (DK BLU/VIO at coil) |
| 51 | K19 | DK BLU/GRN | COIL CTRL 1 | Ignition coil 1 pin 1 via I9000A pin 7 |
| 61 | K445 | DK BLU/PNK | CMP SIG 4 | Camshaft position sensor 2 pin 4 |
| 62 | K441 | DK BLU/BRN | CMP SIG 2 | Camshaft position sensor 1 pin 1 |
| 63 | K444 | DK BLU/TAN | CMP SIG 3 | Camshaft position sensor 2 pin 1 |
| 65 | K922 | BRN/DK BLU | TP SENS RTN | Throttle body pin 6 |
| 66 | K900 | DK BLU/DK GRN | SENS GND | SK900G: camshaft position sensor 1 pin 3, camshaft position sensor 2 pin 3, manifold absolute pressure sensor pin 2, oil pressure sensor pin 3 via I9200A pin 6 |
| 67 | F855 | PNK/YEL | 5 VOLT SPLY | SF855B: crankshaft position sensor pin 3, throttle body pin 4, oil pressure sensor pin 1 via I9200A pin 4 (BRN/ORG at sensor) |
| 68 | K915 | BRN/WHT | SENS GND | SK915G: engine coolant temperature sensor pin 2, inlet air temperature sensor pin 2, oil temperature sensor pin 2 via I9200A pin 8 (DK BLU/DK GRN at sensor) |
| 72 | K199 | BRN/VIO | O2 2/1 HEATER CTRL | Oxygen sensor 2/1 pin 1 |
| 73 | K15 | DK BLU/GRY | COIL CTRL 4 | Ignition coil 4 pin 1 via I9000A pin 3 (DK BLU at coil) |
| 74 | K16 | DK BLU/YEL | COIL CTRL 5 | Ignition coil 5 pin 1 via I9000A pin 4 |
| 75 | K10 | DK BLU/ORG | COIL CTRL 6 | Ignition coil 6 pin 1 via I9000A pin 9 |
| 79 | K38 | BRN/ORG | INJECTOR CTRL 5 | Fuel injector 5 pin 2 via I9000A pin 23 (BRN/RED at injector) |
| 80 | K58 | BRN/VIO | INJECTOR CTRL 6 | Fuel injector 6 pin 2 via I9000A pin 24 |
| 85 | K44 | DK BLU/GRY | CMP SIG | Camshaft position sensor 1 pin 4 |
| 86 | K24 | BRN/BLU | CKP SIG | Crankshaft position sensor pin 2 |
| 87 | F856 | YEL/PNK | 5 VOLT SPLY | SF856G: camshaft position sensor 1 pin 2, camshaft position sensor 2 pin 2, manifold absolute pressure sensor pin 3 |
| 88 | K925 | DK BLU/GRY | CKP GND | Crankshaft position sensor pin 1 |
| 89 | K22 | BRN/ORG | TP SIG 1 | Throttle body pin 5 |
| 90 | K122 | BRN/DK GRN | TP SIG 2 | Throttle body pin 3 |
| 93 | G62 | VIO/YEL | OIL PUMP CTRL | Oil pump solenoid pin 1 |
| 94 | K78 | BRN | VVT INTAKE CTRL 2 | Camshaft position solenoid 2/1 pin 1 (VVT INTAKE CTRL 2/1) |
| 95 | K277 | DK BLU | VVT EXHAUST CTRL 2 | Camshaft position solenoid 2/2 pin 1 (VVT EXHAUST CTRL 2/2) |
| 96 | K399 | BRN/GRY | O2 2/2 HEATER CTRL | Oxygen sensor 2/2 pin 1 |

Component locations (Fig 4-7): oil pump solenoid — lower right front of engine; crankshaft position sensor — right front of engine block; camshaft position sensor 2 — rear of left cylinder bank; camshaft position sensor 1 — top rear of right cylinder bank; camshaft position solenoid 2/1 — right front of left cylinder head; camshaft position solenoid 2/2 — left front of left cylinder head; camshaft position solenoid 1/1 — left front of right cylinder head; camshaft position solenoid 1/2 — right front of right cylinder head; oil temperature sensor and oil pressure sensor — under intake manifold; engine coolant temperature sensor — left rear of engine; manifold absolute pressure sensor — no location printed; inlet air temperature sensor — top right rear of engine; ignition coils 2, 4, 6 — top of left bank cylinder; ignition coils 1, 3, 5 — top of right bank cylinder; ignition capacitor 2 — rear of right cylinder bank; ignition capacitor — rear of left cylinder bank; fuel injectors 2, 4, 6 — top of left cylinder bank; fuel injectors 1, 3, 5 — top of right cylinder bank; oxygen sensor 1/1 — in right exhaust manifold; oxygen sensor 2/1 — in left exhaust manifold; oxygen sensor 2/2 — in left exhaust, in catalytic converter; oxygen sensor 1/2 — in right exhaust, in catalytic converter; knock sensors 1 and 2 — under intake manifold; throttle body — right rear of engine. Splices: SF855B, SF856G, SK900G, SK902H — right rear of engine compartment, in engine harness; SK915G — no location printed; SK904G — right side of engine compartment, in engine harness; S344 — top center rear of engine, in injector harness; S342 — top rear of engine, in injector harness.

Sensor pinouts as printed: crankshaft position sensor — 1 CKP GND (DK BLU/GRY), 2 CKP SIG (BRN/BLU), 3 5 VOLT SPLY (PNK/YEL). Camshaft position sensor 1 — 1 CMP SIG 2 (DK BLU/BRN), 2 5 VOLT SPLY (YEL/PNK), 3 SENS GND (DK BLU/DK GRN), 4 CMP SIG (DK BLU/GRY). Camshaft position sensor 2 — 1 CMP SIG 3 (DK BLU/TAN), 2 5 VOLT SPLY (YEL/PNK), 3 SENS GND (DK BLU/DK GRN), 4 CMP SIG 4 (DK BLU/PNK). Camshaft position solenoids — 1 VVT control (2/1 BRN, 2/2 DK BLU, 1/1 BRN/WHT, 1/2 DK BLU/WHT), 2 GND (BLK to G904A). Oil pump solenoid — 1 OIL PUMP CTRL (VIO/YEL), 2 GND (BLK to G904A). Oil temperature sensor — 1 EOT SIG (VIO), 2 SENS GND (DK BLU/DK GRN). Engine coolant temperature sensor — 1 ECT SIG (VIO/ORG), 2 SENS GND (BRN/WHT). Oil pressure sensor — 1 5 VOLT SPLY (BRN/ORG), 2 OIL PRESS SIG (VIO/GRY), 3 SENS GND (DK BLU/DK GRN). Manifold absolute pressure sensor — 1 MAP SIG (VIO/BRN), 2 SENS GND (DK BLU/DK GRN), 3 5 VOLT SPLY (YEL/PNK). Inlet air temperature sensor — 1 IAT SIG (DK BLU/GRN), 2 SENS GND (BRN/WHT). Knock sensor 1 — 1 DK BLU, 2 BRN/GRN. Knock sensor 2 — 1 BRN/WHT, 2 PNK/RED. Throttle body — 1 ETC MTR (+) (TAN/YEL), 2 ETC MTR (-) (TAN/ORG), 3 TP 2 SIG (BRN/DK GRN), 4 5 VOLT SPLY (PNK/YEL), 5 TP 1 SIG (BRN/ORG), 6 TP SENS RTN (BRN/DK BLU). Upstream oxygen sensors (1/1, 2/1) — 1 HEATER CTRL, 2 GND (BLK to G703), 3 O2 RTN UPSTREAM (BRN/DK GRN), 4 O2 SIG. Downstream oxygen sensors (1/2, 2/2) — 1 HEATER CTRL (1/2 printed "O2 1/2 HEATER CTRL SPLY"), 2 GND (BLK to G703), 3 O2 RTN DOWNSTREAM (DK BLU/DK GRN), 4 O2 SIG. Fuel injectors — 1 BRN/WHT from S342, 2 PCM driver. Ignition coils — 1 COIL CTRL x, 2 FUSED ASD RLY (BRN/GRY from S344). Ignition capacitors — 1 BRN/GRY from S344.

### Power supply, relays and grounds — 3.6L (Fig 1-3, 6)

Front power distribution center assembly, right side of engine compartment:

- **Auto shut down relay** — terminals 30 (63A) and 86 (63C) are fed RED/WHT from SA751B, which is fed by rear PDC fuse 4 (60 A, hot at all times, 4B). Terminal 85 -> 63D (BRN/WHT, K51) -> PCM C1-80. Terminal 87 -> 63B (PNK/DK BLU) -> 34A, feeding fuses 34 and 35. Terminal 87A is not connected.
- **Fuse 34 (25 A)** -> 34B (BRN, F342) -> SF342E -> PCM C1-74/75/76 and, via I200 pin 13 (BRN) and I9000A pin 1 (BRN/WHT), S342 -> fuel injectors pin 1.
- **Fuse 35 (20 A)** -> 35B (BRN/YEL) -> I200 pin 2 -> I9000A pin 12 (BRN/GRY) -> S344 -> ignition coils pin 2 (FUSED ASD RLY), ignition capacitor and ignition capacitor 2.
- **Fuse 37 (10 A)**, hot with run/start relay energized -> 37B (PNK/BRN, F914) -> PCM C1-23.
- **Fuse 31 (25 A)**, hot at all times -> 31B (RED/BRN, A209) -> PCM C1-96.

Rear power distribution center assembly:

- **Fuel pump relay** — terminal 30 -> 72A (VIO/RED) -> 21B, fuse 21 (30 A, hot at all times). Terminal 87 -> 72B (DK BLU/ORG, N1) -> fuel pump module pin 5 (FUEL PUMP CTRL OUT). Terminal 86 -> 72C (BLU/TAN, N9) -> I250 pin 24 -> PCM C1-73. Terminal 85 -> 72D (BLK) -> SZ922J -> ground G305. Terminal 87A is not connected.
- **Fuse 36 (20 A)**, hot at all times -> 36B (RED) -> I512 pin 10 -> SA947E -> active exhaust valve 1 pin 1 and valve 2 pin 1 (FUSED B (+)).
- **Fuse 6 (40 A)**, hot at all times -> 6B (RED, A903) -> body control module C3 pin 4 (FUSED B (+)).

Grounds: G102 — right front of engine compartment (PCM C1-52/53/72 via SZ903C); G305 — right rear of luggage compartment (fuel pump relay terminal 85 via SZ922J, active exhaust valves via SZ922P, body control module C2 pin 1); G904A — right side of engine (oil pump solenoid, four camshaft position solenoids); G901A — left front corner of engine compartment (HVAC cooling solenoid); G917A — under passenger's seat (evap system monitor switch); G703 — no location printed (all four oxygen sensors); G121 — no location printed (fuel pump module pin 3).

Other modules on the same sheets (not PCM pins): body control module — C4 pin 22 AAT SIG (VIO/GRN, G31) and pin 23 SENS GND (VIO/BRN, G931) to the ambient air temperature sensor (1 AAT SIG, 2 SENS GND); with remote start, SG931B also joins hood ajar switch pin 2 (SENS GND, VIO/BRN) to that sensor ground; C3 pin 4 FUSED B (+) (RED, A903); C2 pin 1 GND (BLK, Z922); pins 25 CAN C (+) (BRN, D45) and 26 CAN C (-) (YEL, D46) to the computer data lines system; pins 17 FUEL LVL SENS SIG (DK BLU/WHT, N4), 16 FUEL LVL SENSE RTN (BLK, G109), 15 FUEL LVL SIG 2 (DK BLU/GRY, N5) to fuel pump module pins 4, 2 and 1. The connector label C5 is printed once, after pin 15, for the group 25, 26, 17, 16, 15. Fuel pump module — 1 FUEL LVL SIG 2, 2 FUEL LVL SENSE RTN, 3 GND (BLK, Z916, to G121), 4 FUEL LVL SENS SIG, 5 FUEL PUMP CTRL OUT (DK BLU/ORG, N1). Cluster — 12 CAN C (+) (BRN/WHT), 13 CAN C (-) (YEL) to the computer data lines system.

---

## 6.2L supercharged (sheets 585219-585224, PDF pages 13-18)

The drawing is shared with the Demon; circuits that differ are marked (Demon)/(except Demon), and (M/T) marks manual-transmission circuits. The same sheets are transcribed from another print in [2018-Dodge-Challenger-RWD-6.2-SC-Hellcat-PCM-pinout.md](2018-Dodge-Challenger-RWD-6.2-SC-Hellcat-PCM-pinout.md).

### C1 (96-pin) — 6.2L supercharged

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 17 | T17 | YEL/VIO | CLUTCH UP STOP SIG | Radio frequency hub module C1 pin 15 (CLUTCH UP STOP SIG) via I250 pin 16 |
| 22 | K181 | BRN/DK BLU | FUEL PRESS SIG | Fuel pressure sensor pin 1 via I200 pin 3 |
| 23 | F914 | PNK/BRN | FUSED IGN RUN/START | Front PDC 37B, fuse 37 (10 A), hot with run/start relay energized |
| 33 | D28 | YEL/GRN | CAN C (-) | Computer data lines system |
| 39 | T26 | DK GRN/ORG | CLUTCH UP STOP SIG | Clutch interlock switch pin 1 (M/T) |
| 42 | K914 | BRN/WHT | SENS GND | SK914C -> A/C pressure transducer pin 3 via I1501 pin 3 |
| 43 | K222 | BRN/GRN | CHARGE AIR COOLANT SIG | Charge air cooler temperature sensor pin 1 (CAC SIG) via I200 pin 12 |
| 44 | C18 | BLU/BRN | A/C PRESS SIG | A/C pressure transducer pin 2 via I1501 pin 2 |
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
| 69 | K854 | VIO/BRN | APP 5V 2 | SK854B: accelerator pedal position sensor pin 6; A/C pressure transducer pin 1 (APP 5V 2) via I1501 pin 1 |
| 70 | K108 | VIO/WHT | ESIM SIG | Evap system monitor switch pin 2 via I250 pin 11 (VIO/GRY at switch) |
| 72 | Z903 | BLK | GND | SZ903C -> ground G102 |
| 73 | N9 | BLU/TAN | FUEL PUMP RLY CTRL | Fuel pump relay terminal 86 (rear PDC 72C / 28C) via I250 pin 24 |
| 74 | F342 | BRN | ASD CTRL O/P | SF342E (ASD relay output via fuse 34, 25 A) |
| 75 | F342 | BRN | ASD CTRL O/P | SF342E |
| 76 | F342 | BRN | ASD CTRL O/P | SF342E |
| 77 | T110 | DK GRN/YEL | VACUUM PUMP RLY CTRL | Anti-lock brakes system |
| 79 | C13 | BLU/ORG | A/C CLUTCH CTRL | Air conditioning system |
| 80 | K51 | BRN/WHT | ASD RLY CTRL | Auto shut down relay terminal 85 (front PDC 63D) |
| 81 | T752 | DK GRN/ORG | STARTER RLY CTRL | Starting/charging system |
| 82 | K175 | BRN/BLU | RAD FAN CTRL | Cooling fans system |
| 83 | N11 | DK BLU/DK GRN | FPCM PWM CTRL | Fuel pump control module pin B via I250 pin 2 |
| 88 | N7 | DK BLU/ORG | FUEL TANK PRESS SIG | Fuel tank pressure sensor pin B (FUEL TANK PRESS SENS) via I251 pin 8 |
| 91 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 5 |
| 92 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 2 |
| 93 | K852 | BRN/VIO | APP 5V 1 | Accelerator pedal position sensor pin 1 |
| 94 | K52 | DK BLU/WHT | EVAP PURGE CTRL | Evap/purge solenoid pin 1 (EVAP PRG CTRL) via I200 pin 21 |
| 95 | C319 | BLU/YEL | CHILLER SOLENOID CTRL | HVAC cooling solenoid pin 2 (Demon) via I200 pin 17 |
| 96 | A209 | RED/BRN | FUSED B (+) | Front PDC 31B, fuse 31 (25 A), hot at all times |

Pins 17 and 39 are both printed "CLUTCH UP STOP SIG": pin 39 is wired to the clutch interlock switch, pin 17 to the radio frequency hub module. An arrow marked DEMON points at inline connector I1501 (pins 1, 2, 3 = A/C pressure transducer pins 1, 2, 3).

Component locations (Fig 1-3): rear power distribution center — right rear of luggage compartment; front power distribution center — right side of engine compartment; fuel pressure sensor — rear of right cylinder bank; clutch interlock switch (M/T) — top of clutch pedal assembly; radio frequency hub module — under center of hat shelf; fuel tank pressure sensor — top left side of fuel tank; A/C pressure transducer — left rear of engine compartment; body control module — right end of dash; ambient air temperature sensor — behind right side of upper front grille; hood ajar switch — right rear of engine compartment; charge air cooler coolant pump — no location printed; accelerator pedal position sensor — top of accelerator pedal assembly; active exhaust valve 1 — on rear of left exhaust; active exhaust valve 2 — at rear of right exhaust; skip shift solenoid and reverse lock out solenoid (M/T) — left side of transmission; evap system monitor switch — on evap canister assembly; evap/purge solenoid — right rear of engine compartment. Splices: SK914C — center rear of engine compartment, in headlamp and dash harness; SK854B, SD511D — left center rear of engine compartment, in headlamp and dash harness; SG931B (w/ remote start system) — right front of engine compartment, in headlamp and dash harness; SD511K — behind left center of rear bumper, in ADS jumper harness.

Component pinouts as printed: accelerator pedal position sensor — 1 APP 5V 1 (BRN/VIO), 2 APP SIG 1 (BRN/WHT), 3 APP SENS GND 1 (BRN/YEL), 4 APP SENS GND 2 (BRN/VIO), 5 APP SIG 2 (WHT/BRN), 6 APP 5V 2 (VIO/BRN). A/C pressure transducer — 1 APP 5V 2 (VIO/BRN), 2 A/C PRESS SIG (BLU/BRN), 3 SENS GND (BRN/WHT). Fuel pressure sensor — 1 FUEL PRESS SIG (BRN/DK BLU), 2 SENS GND (DK BLU/DK GRN, to SK900B), 3 5V SPLY (YEL/PNK, to SF856B). Fuel tank pressure sensor — A SENS GND (BRN/TAN), B FUEL TANK PRESS SENS (DK BLU/ORG), C 5V SPLY (BRN/DK BLU). Clutch interlock switch — 1 CLUTCH UP STOP SIG (DK GRN/ORG), 2 CLUTCH INTERLOCK SIG (YEL/ORG, via I250 pin 8 to radio frequency hub module C1 pin 7, circuit T141), 3 GND (BLK to G101). Evap system monitor switch — 1 GND (BLK/WHT to G917A), 2 ESIM SIG (VIO/GRY). Charge air cooler coolant pump — 1 GND (BLK to G901A), 2 FUSED B (+) (RED/BLU), 3 ASD CTRL O/P (BRN), 4 LIN BUS (WHT/TAN). Active exhaust valves 1 and 2 — 1 FUSED B (+) (RED), 2 LIN BUS (WHT/TAN), 3 GND (BLK to SZ922P -> I512 pin 7 -> G305). Evap/purge solenoid — 1 EVAP PRG CTRL (DK BLU/WHT), 2 GND (BLK to G703). HVAC cooling solenoid (Demon) — 1 GND (BLK to G901A), 2 CHILLER SOLENOID CTRL (BLU/YEL).

### C2 (96-pin) — 6.2L supercharged

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
| 66 | K900 | DK BLU/DK GRN | SENS GND | SK900B: camshaft position sensor pin 2, MAP sensor bank 1 pin 1, MAP sensor bank 2 pin 1, manifold absolute pressure sensor pin 1, charge air cooler temperature sensor pin 2, supercharger outlet MAP sensor pin 1, fuel pressure sensor pin 2, oil pressure sensor pin 3 |
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

The source prints "O2 1/2" on the pump-current and heater-return circuits that are wired to oxygen sensor 2/1 (PCM C2-17, C2-18, C2-72; sensor pins 3, 7, 5), while the heater of oxygen sensor 1/2 is on C2-48. Labels are transcribed as printed; the "Connects to" column gives the sensor each wire reaches.

Component locations (Fig 3-6): camshaft position sensor — front of right cylinder bank; crankshaft position sensor — right rear of engine block; MAP sensor bank 2 — front of right cylinder bank; MAP sensor bank 1 — rear of left cylinder bank; manifold absolute pressure sensor — no location printed; charge air cooler temperature sensor — rear of charge air cooler assembly; oil temperature sensor — right front of engine block; engine coolant temperature sensor — left front of engine; oil pressure sensor — on oil filter bracket; knock sensor 2 — right side of engine block; knock sensor 1 — left side of engine block; oxygen sensor 2/1 — in right exhaust manifold; oxygen sensor 1/1 — in left exhaust manifold; oxygen sensor 1/2 — in left exhaust, in catalytic converter; oxygen sensor 2/2 — in right exhaust, in catalytic converter; supercharger outlet MAP sensor — left rear of supercharger; bypass supercharger valve (SCB) — right side of supercharger assembly; crankcase pressure 2 sensor — top left side of engine; throttle body — top left front of engine; fuel pump control module — right side of luggage compartment; fuel pump module — connector C1 top left side of fuel tank, connector C2 top right side of fuel tank; fuel injectors — top of left bank (7, 1, 5, 3 as drawn) and right bank (8, 6, 4, 2); ignition coils — top of left bank (5, 1, 3, 7 as drawn) and right bank (2, 6, 4, 8); ignition capacitor — rear of left cylinder bank. Splices: SK900B, SF855B, SF343L — right rear of engine, in engine harness; SF342C — rear of right cylinder bank, in engine harness; SK915B — center rear of engine, in engine harness; SK904B — left rear of engine, in engine harness; SZ310 — under left rear seat, in body harness; SN13B/SN14B (except Demon), SN13D/SN14D (Demon) — behind front of left rear quarter panel, in body harness; SG109B — under passenger's door sill, in body harness; SF856B, SN13A/SN13C, SN14A/SN14C, SN213A/B, SN214A/B, SZ31B — no location printed.

Sensor pinouts as printed: camshaft position sensor — 1 5V SPLY (YEL/PNK), 2 SENS GND (DK BLU/DK GRN), 3 CMP SIG (DK BLU/GRY). Crankshaft position sensor — 1 5V SPLY (PNK/YEL), 2 CKP GND (DK BLU/GRY), 3 CKP SIG (BRN/BLU). MAP sensor bank 1 — 1 SENS GND (DK BLU/DK GRN), 2 BANK 1 TEMP SIG (DK BLU/BLU), 3 5V SPLY (YEL/PNK), 4 BANK 1 MAP SIG (BRN/ORG). MAP sensor bank 2 — 1 SENS GND (DK BLU/DK GRN), 2 BANK 2 TEMP SIG (DK BLU/GRN), 3 5V SPLY (YEL/PNK), 4 BANK 2 MAP SIG (BRN/BLU). Manifold absolute pressure sensor — 1 SENS GND (DK BLU/DK GRN), 2 TEMP SIG (DK BLU/TAN), 3 5V SPLY (YEL/PNK), 4 MAP SIG (VIO/BRN). Supercharger outlet MAP sensor — 1 SENS GND (DK BLU/DK GRN), 2 SC OUTLET TEMP SIG (VIO/BLU), 3 5V SPLY (YEL/PNK), 4 SC OUTLET MAP SIG (VIO/YEL). Charge air cooler temperature sensor — 1 CAC SIG (BRN/GRN), 2 SENS GND (DK BLU/DK GRN). Oil temperature sensor — 1 SENS GND (BRN/WHT), 2 EOT SIG (VIO/BRN). Engine coolant temperature sensor — 1 ECT SIG (VIO/ORG), 2 SENS GND (BRN/WHT). Oil pressure sensor — 1 5V SPLY (PNK/YEL), 2 OIL PRESS SIG (VIO/GRY), 3 SENS GND (DK BLU/DK GRN). Crankcase pressure 2 sensor — 1 CRANKCASE PRESS SIG (DK BLU), 2 SENS GND (BRN/WHT), 3 5V SPLY (YEL/PNK). Knock sensor 1 — 1 DK BLU/YEL, 2 BRN/GRN. Knock sensor 2 — 1 BRN/WHT, 2 WHT/BRN. Throttle body — 1 ETC MTR (+) (TAN/YEL), 2 ETC MTR (-) (TAN/ORG), 3 TP 2 SIG (BRN/DK GRN), 4 5V SPLY (PNK/YEL), 5 TP 1 SIG (BRN/ORG), 6 TP SENS RTN (BRN/DK BLU). Bypass supercharger valve — 1 SCB VLV CTRL (+) (VIO/ORG), 2 SCB VLV CTRL (-) (VIO/GRY), 3 SCB VLV SENS SIG 2 (DK BLU/ORG), 4 5V SPLY (PNK/YEL), 5 SCB VLV SENS SIG 1 (DK BLU/GRY), 6 SENS GND (BRN/WHT). Oxygen sensor 1/1 — 1 O2 RTN UPSTREAM (BRN/DK GRN), 2 O2 1/1 SIG (DK BLU/BLU), 3 O2 1/1 POSITIVE CURR CTRL (BRN/GRN), 5 O2 1/1 HTR CTRL (BRN/BLU), 6 GND (BLK to G703), 7 O2 1/1 PUMP CELL CURR TRIM (BRN/BLU). Oxygen sensor 2/1 — 1 O2 2/1 RTN (GRY/DK GRN), 2 O2 2/1 SIG (DK BLU/GRN), 3 O2 1/2 PUMP CURR (BRN/DK GRN), 5 O2 1/2 HTR CTRL RTN (BRN/TAN), 6 GND (BLK to G703), 7 O2 1/2 PUMP CELL CURR TRIM (BRN). Downstream oxygen sensors (1/2, 2/2) — 1 HTR CTRL, 2 GND (BLK to G703), 3 O2 RTN DWNSTRM (DK BLU/DK GRN), 4 O2 SIG. Fuel injectors — 1 PCM driver, 2 BRN/WHT from SF342C. Ignition coils — 1 COIL CTRL x, 2 FSD ASD RLY O/P (BRN/YEL from SF343L). Ignition capacitor — 1 BRN/YEL from SF343L. Skip shift solenoid — A ASD CTRL O/P (BRN/WHT from SF342C), B SKIP SHIFT CTRL (DK BLU/GRN). Reverse lock out solenoid — A ASD CTRL O/P (BRN/WHT from SF342C), B REV LCK OUT CTRL (DK BLU/BLU). Engine cooling solenoid (Demon) — 1 CHILLER SOLENOID CTRL (DK BLU/ORG), 2 GND (BLK to G901A).

### Power supply, relays and grounds — 6.2L supercharged (Fig 1-3)

Front power distribution center assembly, right side of engine compartment:

- **Auto shut down relay** — terminals 86 (63C) and 30 (63A) are fed RED/WHT from SA751B, which is fed by rear PDC fuse 4 (60 A, hot at all times, 4B). Terminal 85 -> 63D (BRN/WHT, K51) -> PCM C1-80. Terminal 87 -> 63B (PNK/DK BLU) -> 34A, feeding fuses 34 and 35.
- **Fuse 34 (25 A)** -> 34B (BRN, F342) -> SF342E -> PCM C1-74/75/76, charge air cooler coolant pump pin 3 and, via I200 pin 13 (BRN/WHT), SF342C -> fuel injectors pin 2, skip shift solenoid pin A and reverse lock out solenoid pin A (M/T).
- **Fuse 35 (20 A)** -> 35B (BRN/YEL) -> I200 pin 2 -> SF343L -> ignition coils pin 2 and ignition capacitor pin 1.
- **Fuse 37 (10 A)**, hot with run/start relay energized -> 37B (PNK/BRN, F914) -> PCM C1-23.
- **Fuse 31 (25 A)**, hot at all times -> 31B (RED/BRN, A209) -> PCM C1-96.
- **Fuse 22 (40 A)**, hot at all times -> 22B (RED/BLU) -> charge air cooler coolant pump pin 2 (FUSED B (+)).

Rear power distribution center assembly, right rear of luggage compartment. The fuel pump relay cavities are printed with two identifiers each (72B and 28B, 72C and 28C, 72D and 28D); 72A carries one.

- **Fuel pump relay** — terminal 86 -> 72C / 28C (BLU/TAN, N9) -> I250 pin 24 -> PCM C1-73. Terminal 85 -> 72D / 28D (BLK) -> SZ922J (except Demon) -> ground G305.
  - Except Demon (bracket 2): terminal 30 -> 72A (VIO/RED) -> 21B, fuse 21 (30 A, hot at all times). Terminal 87 -> 72B / 28B (DK BLU/ORG, N1) -> fuel pump control module pin A.
  - Demon (bracket 1): terminal 30 is linked inside the PDC to the hot-at-all-times feed ahead of fuse 21. Terminal 87 -> 72B / 28B (printed "(OR RED) DK BLU/ORG"; RED) -> SA3A -> 40A and 41A. Fuse 40 (30 A) -> 40B (VIO/RED, N15) -> fuel pump control module pin A. Fuse 41 (30 A) -> 41B (GRY/PNK, N215) -> fuel pump control module 2 pin A.
- **Fuse 36 (10 A)**, hot at all times -> 36B (RED) -> I512 pin 10 -> SA947E -> active exhaust valve 1 pin 1 and valve 2 pin 1 (FUSED B (+)).

Grounds: G102 — right front of engine compartment (PCM C1-52/53/72 via SZ903C); G101 — right front of engine compartment (clutch interlock switch); G305 — right rear of luggage compartment (fuel pump relay terminal 85, active exhaust valves); G901A — left front corner of engine compartment (charge air cooler coolant pump, HVAC cooling solenoid, engine cooling solenoid); G917A — under passenger's seat (evap system monitor switch); G924A — right rear of luggage compartment (fuel pump control module pin E); G924C — right rear of luggage compartment (fuel pump control module 2 pin E); G703 — no location printed (evap/purge solenoid, all four oxygen sensors).

### Fuel pump control modules — 6.2L supercharged (Fig 5-6)

Fuel pump control module: A FUEL PUMP CTRL O/P (DK BLU/ORG, N1; or VIO/RED, N15) from the fuel pump relay circuit; B FPCM PWM CTRL (DK BLU/DK GRN, N11) -> I250 pin 2 -> PCM C1-83; C not connected; D FUEL PUMP PWM CTRL (DK BLU/ORG, N13); E GND (BLK, Z924) -> G924A; F FPCM PWM FDBCK (DK BLU/GRN, N12) -> I250 pin 6 -> PCM C1-61; G GND (wire printed SHIELD, Z31) -> SZ310, the shield of the N13 wire; H FUEL PUMP RTN (VIO/BLU, N14).

Fuel pump control module 2 (Demon): A FUEL PUMP CTRL O/P (GRY/PNK, N215) from fuse 41; B FPCM PWM CTRL (GRY/TAN, N211) -> PCM C2-52; C not connected; D FUEL PUMP PWM CTRL (GRY/ORG, N213); E GND (BLK, Z924) -> G924C; F FPCM PWM FDBCK (GRY/GRN, N212) -> PCM C2-64; G GND (wire printed SHIELD, Z31) -> SZ31B, the shield of the N213 wire; H FUEL PUMP RTN (GRY/BLK, N214).

Fuel pump module:

| Pin | Function (as printed) | Except Demon | Demon |
|-----|----------------------|--------------|-------|
| C1-1 | FUEL PUMP RTN | VIO/BLU (N14) from fuel pump control module pin H | same |
| C1-2 | FUEL PUMP RTN | VIO/BLU (N14) from fuel pump control module pin H (bracket 2) | GRY/BLK (printed "OR 214") from fuel pump control module 2 pin H via SN214A and SN214B (bracket 1) |
| C1-3 | FUEL LVL SENS SIG | DK BLU/WHT (N4) -> body control module C5 pin 17 | same |
| C1-4 | FUEL LVL SENSE RTN | BLK (G109) -> SG109B -> body control module C5 pin 16 | same |
| C1-5 | FUEL PUMP PWM CTRL | DK BLU/ORG (N13) from fuel pump control module pin D | same |
| C1-6 | FUEL PUMP PWM CTRL | DK BLU/ORG (N13) from fuel pump control module pin D (bracket 2) | GRY/ORG (N213) from fuel pump control module 2 pin D via SN213A and SN213B (bracket 1) |
| C2-2 | FUEL LVL SIG 2 | DK BLU/GRY (N5) -> body control module C5 pin 15 | see note |
| C2-3 | FUEL LVL SENSE RTN | BLK (G109) -> SG109B | see note |

The terminal numbers of the fuel pump module are printed in two rows marked DEMON and EXCEPT DEMON: C1 pins 1-6 appear in both rows, C2 pins 1-3 only in the EXCEPT DEMON row. C2 pin 1 is not connected in this diagram.

Other modules on the same sheets (not PCM pins): body control module — C6 pin 11 CAN IHS (-) (WHT, D146) and pin 12 CAN IHS (+) (WHT/GRN, D145) to the computer data lines system; C5 pins 17, 16, 15 fuel level (above); C4 pin 23 SENS GND (VIO/BRN, G931) and pin 22 AAT SIG (VIO/GRN, G31) to the ambient air temperature sensor (1 AAT SIG, 2 SENS GND); with remote start, SG931B also joins hood ajar switch pin 2 (SENS GND, VIO/BRN). Cluster — 12 CAN C (+) (BRN/WHT), 13 CAN C (-) (YEL) to the computer data lines system.

---

## Notes on the source

- The rear power distribution center location is printed two ways: "right rear of engine compt" (3.6L Fig 2, 5.7L/6.4L Fig 1) and "right rear of luggage compt" (3.6L Fig 1, 5.7L/6.4L Fig 3, 6.2L Fig 1 and Fig 3).
- Rear PDC fuse 36 (active exhaust valve feed) is printed 20 A on the 3.6L and 5.7L/6.4L sheets and 10 A on the 6.2L sheet.
- C1-78 (N112, RAD FAN RLY CTRL) is DK GRN/ORG on the 3.6L sheet and DK BLU/ORG on the 5.7L/6.4L sheet; the 6.2L sheet has no wire on C1-78 and uses C1-82 (K175, RAD FAN CTRL).
- On 6.2L Fig 1, two arrows marked EXCEPT DEMON and DEMON both point at the 41B (GRY/PNK) wire; which part of the run each note applies to is not resolvable from the drawing. The wire feeds fuel pump control module 2, which is itself marked (Demon).
- The 3.6L and 5.7L/6.4L sheets include Demon-marked parts (HVAC cooling solenoid, inline connector I1501) and the active exhaust valves, as drawn.
- Oxygen sensor bank numbering follows each drawing: sensor 1/1 is in the right exhaust manifold on the 3.6L sheets and in the left exhaust manifold on the V8 sheets.
