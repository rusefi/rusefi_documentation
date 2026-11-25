# 2015 Dodge Dart L4-2.4L — PCM pinout

Transcribed from [2015-Dodge-Dart-2.4-ECU.pdf](2015-Dodge-Dart-2.4-ECU.pdf) (ALLDATA "Engine Controls" wiring diagram, Electrical - Interactive Color (Non OE), diagram pages 1-7 = PDF pages 2-8, sheets 476232, 476238, 476243, 476249, 476254, 476260, 476265; PDF page 1 carries only the vehicle heading, and each "Page n of 7" caption is printed below the preceding diagram).

Powertrain Control Module (PCM), located on top of the transmission. Two 96-way connectors: C1 (chassis/body side) and C2 (engine side). The source heading states the vehicle as "2015 Dodge Dart L4-2.4L".

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1 | 96 | Chassis side: battery/ignition feeds, grounds, CAN C, LIN, APP sensor, brake switch, A/C and fuel tank pressure, evap system monitor switch, relay controls (ASD, fuel pump, starter, radiator fans, A/C clutch), purge |
| C2 | 96 | Engine side: injectors, coils, intake variable valve timing solenoids 1-4, crank/cam, knock, MAP/ECT/IAT/EOT/oil pressure, O2 sensors, electronic throttle, generator |

Chrysler circuit codes (K11, F342, D27, ...) are printed on each wire at the PCM and are given in the Circuit column. Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink, TAN; DK = dark, LT = light). Unlisted pins are not connected in this diagram.

## C1 — chassis side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 2 | K31 | BRN | FUEL PUMP CTRL | Fuel pump relay coil (86), PDC C2 pin 36 |
| 4 | K52 | DK BLU/WHT | EVAP PURGE CTRL | Evap/purge solenoid pin 1 (EVAP PURGE CTRL) via I201 pin H |
| 17 | B135 | DK GRN/LT GRN | BRAKE SIG 1 | SB135 (body harness): body control module C4 pin 57 (BRAKE SIG 1) and, via I405A pin A14, SB135 (dash harness): stop lamp switch pin 1 (BRAKE SIG 1) and radio frequency hub C1 pin 3 (BRAKE) |
| 18 | T22 | YEL/VIO | SW SIG | Exterior lights system |
| 20 | T26 | DK GRN/ORG | CLUTCH UPSTOP SIG | Starting/charging system |
| 22 | T120 | DK GRN/ORG | P/N SENS | Starting/charging system |
| 23 | F942 | PNK/LT GRN | FUSED IGN SW O/P | SF942: PDC C2 pin 2, fuse 11 (20 A), hot with run/start relay energized |
| 24 | K854 | VIO/BRN | 5V SPLY | SK854A: A/C pressure transducer pin 1 (5V SPLY); accelerator pedal position sensor pin 6 (5V SPLY) via I405A pin A2 |
| 25 | K175 | BRN/LT BLU | RAD FAN CTRL | Cooling fans system |
| 26 | C13 | LT BLU/ORG | A/C CLUTCH CTRL | Air conditioning system |
| 27 | K51 | BRN/WHT | ASD RLY CTRL | Auto shut down relay coil (86), PDC C2 pin 14 |
| 29 | K173 | BRN/VIO | RAD FAN CTRL SIG | Cooling fans system |
| 33 | D28 | YEL | CAN C (-) | Computer data lines system |
| 41 | N7 | DK BLU/ORG | TANK PRESS SIG | Fuel tank pressure sensor pin B (TANK PRESS SIG) via I200A pin A3 |
| 43 | T750 | YEL/GRY | STARTER RLY OUTPUT | Starting/charging system |
| 45 | D511 | WHT/TAN | LIN BUS | Computer data lines system |
| 47 | N8 | DK BLU/PNK | PRESS SENS SPLY | Fuel tank pressure sensor pin C (PRESS SENS SPLY) via I200A pin A4 |
| 48 | K852 | BRN/VIO | 5V SPLY | Accelerator pedal position sensor pin 5 (5V SPLY) via I405A pin A3 |
| 51 | Z905 | BLK | GND | Ground G105 |
| 52 | Z905 | BLK | GND | Ground G105 |
| 53 | Z905 | BLK | GND | Ground G105 |
| 57 | D27 | TAN/WHT | CAN C (+) | Computer data lines system |
| 64 | C18 | LT BLU/BRN | A/C PRESS SIG | A/C pressure transducer pin 2 (A/C PRESS SIG) |
| 67 | K400 | BRN/VIO | APP SENS GND 2 | Accelerator pedal position sensor pin 2 (APP GND 2) via I405A pin A6 |
| 68 | K167 | BRN/YEL | APP SENS GND 1 | Accelerator pedal position sensor pin 3 (APP GND 1) via I405A pin A5 |
| 70 | N10 | DK BLU/WHT | PRESS SENS RTN | Fuel tank pressure sensor pin A (PRESS SENS RTN) via I200A pin A2 |
| 72 | Z905 | BLK | GND | Ground G105 |
| 73 | F342 | BRN/WHT | ASD CTRL OUTPUT | SF342 (in dash harness) |
| 74 | F342 | BRN/WHT | ASD CTRL OUTPUT | SF342 (in dash harness) |
| 75 | F342 | BRN/WHT | ASD CTRL OUTPUT | SF342 (in dash harness) |
| 76 | F342 | BRN/WHT | ASD CTRL OUTPUT | SF342 (in dash harness) |
| 77 | F342 | BRN/WHT | ASD CTRL OUTPUT | SF342 (in dash harness) |
| 87 | K914 | BRN/WHT | SENS GND | A/C pressure transducer pin 3 (SENS GND) |
| 91 | K29 | WHT/BRN | APP SIG 2 | Accelerator pedal position sensor pin 1 (APP SIG 2) via I405A pin A7 |
| 92 | K23 | BRN/WHT | APP SIG 1 | Accelerator pedal position sensor pin 4 (APP SIG 1) via I405A pin A4 |
| 94 | K108 | VIO/GRY | EVAP PURGE SOL SENSE | Evap system monitor switch pin 2 (EVAP PURGE SOL SENSE) via I200A pin A9 |
| 95 | T753 | LT GRN/YEL | IGN CRANK SNSE | Starting/charging system |
| 96 | A908 | RED | FUSED B (+) | PDC C2 pin 33, fuse 18 (20 A), hot at all times |

SF342 (in dash harness) joins C1-73 to C1-77 to the fuse 24 (20 A) output of the auto shut down relay (PDC C2 pin 64, BRN/WHT) and, through I201 pin C, to SF342 (in engine harness), which feeds pin 2 of the four fuel injectors; see the power supply section.

Component locations (pages 1-3): evap/purge solenoid — right side of engine; fuel tank pressure sensor — upper right side of fuel tank; evap system monitor switch — on evaporative emissions canister assembly; stop lamp switch — top of brake pedal assembly; radio frequency hub — left rear corner of luggage compartment; A/C pressure transducer — on high pressure A/C line; accelerator pedal position sensor — top of accelerator pedal assembly; body control module — left end of dash; SK854A — left side of engine compartment, in dash harness; G105 — left front corner of engine compartment.

Accelerator pedal position sensor pinout: 1 APP SIG 2 (WHT/BRN), 2 APP GND 2 (BRN/VIO), 3 APP GND 1 (BRN/YEL), 4 APP SIG 1 (BRN/WHT), 5 5V SPLY (BRN/VIO), 6 5V SPLY (VIO/BRN). Fuel tank pressure sensor: A PRESS SENS RTN (DK BLU/WHT), B TANK PRESS SIG (DK BLU/ORG), C PRESS SENS SPLY (DK BLU/PNK). A/C pressure transducer: 1 5V SPLY (VIO/BRN), 2 A/C PRESS SIG (LT BLU/BRN), 3 SENS GND (BRN/WHT). Evap system monitor switch: 1 GND (BLK to G324), 2 EVAP PURGE SOL SENSE (VIO/GRY). Evap/purge solenoid: 1 EVAP PURGE CTRL (DK BLU/WHT), 2 GND (BLK to G104). Stop lamp switch: 1 BRAKE SIG 1 (DK GRN/LT GRN), 2 BRAKE SIG 2 (DK GRN/YEL), 3 IGN SW OUTPUT (PNK/LT GRN), 4 FUSED B(+) (GRY/RED).

## C2 — engine side connector (96-pin)

| Pin | Circuit | Wire | Function (as printed) | Connects to |
|-----|---------|------|----------------------|-------------|
| 1 | N35 | VIO | AIR SOL 2 RTN | Intake variable valve timing solenoid 2 pin 1 |
| 2 | N36 | DK BLU/ORG | AIR SOL 3 CTRL | Intake variable valve timing solenoid 3 pin 2 |
| 3 | N37 | DK BLU | AIR SOL 3 RTN | Intake variable valve timing solenoid 3 pin 1 |
| 4 | N38 | LT GRN/WHT | AIR SOL 4 SIG | Intake variable valve timing solenoid 4 pin 2 |
| 5 | N39 | LT GRN | AIR SOL 4 RTN | Intake variable valve timing solenoid 4 pin 1 |
| 10 | K2 | VIO/ORG | ECT SIG | Engine coolant temperature sensor pin 1 |
| 11 | K1 | VIO/BRN | MAP SIG | Manifold absolute pressure sensor pin 1 |
| 16 | K42 | DK BLU/YEL | KS 1 SIG | Knock sensor pin 1 |
| 17 | G6 | VIO/GRY | OIL PRESS SIG | Oil pressure switch pin 2 (OIL PRESS SIG) |
| 18 | K904 | DK BLU/LT GRN | O2 RTN DOWNSTRM | Oxygen sensor 1/2 pin 3 (O2 RTN (DOWNSTRM)) |
| 20 | K41 | DK BLU/VIO | O2 1/1 SIG | Oxygen sensor 1/1 pin 2 |
| 21 | K902 | BRN/LT GRN | O2 RTN (UPSTRM) | Oxygen sensor 1/1 pin 1 |
| 24 | K447 | BRN/YEL | ETC MOTOR (+) | Throttle body pin 1 |
| 25 | N34 | LT GRN/WHT | AIR SOL 2 CTRL | Intake variable valve timing solenoid 2 pin 2 |
| 26 | N33 | BRN | VVA SOL 1 RTN CKT | Intake variable valve timing solenoid 1 pin 1 (SOL 1 RTN) |
| 27 | N32 | BRN/RED | VVA SOL 1 SIG CKT | Intake variable valve timing solenoid 1 pin 2 (SOL 1 SIG) |
| 32 | A804 | RED/VIO | GENERATOR SNSE | Starting/charging system |
| 33 | G24 | VIO/BRN | EOT SIG | Oil temperature sensor pin 2 |
| 34 | K900 | DK BLU/LT GRN | SENS GND | SK900: intake air temperature sensor pin 2, engine coolant temperature sensor pin 2, MAP sensor pin 2, camshaft position sensor pin 2 |
| 40 | K942 | BRN/LT GRN | KS 1 RTN | Knock sensor pin 2 |
| 41 | K103 | BRN/DK BLU | CELL CURRENT TRIM | Oxygen sensor 1/1 pin 7 |
| 42 | K141 | DK BLU/YEL | O2 1/2 SIG | Oxygen sensor 1/2 pin 4 |
| 44 | K89 | BRN/LT GRN | POSITIVE CURRENT CTRL | Oxygen sensor 1/1 pin 3 |
| 45 | F856 | YEL/VIO | 5V SPLY | SF856: camshaft position sensor pin 1, MAP sensor pin 3 |
| 46 | F855 | PNK/YEL | 5V SPLY | SF855: crankshaft position sensor pin 3 (VIO/YEL), oil pressure switch pin 1 (VIO/YEL), throttle body pin 4 (PNK/YEL) |
| 48 | K448 | BRN/RED | ETC MOTOR (-) | Throttle body pin 2 |
| 49 | K17 | DK BLU/LT GRN | COIL CTRL 2 | Ignition coil 2 pin 1 |
| 50 | K19 | DK BLU/LT GRN | COIL CTRL 1 | Ignition coil 1 pin 1 |
| 56 | K21 | DK BLU/LT GRN | IAT SIG | Intake air temperature sensor pin 1 |
| 58 | K915 | BRN/WHT | SENS GND | SK915: oil pressure switch pin 3, oil temperature sensor pin 1 |
| 63 | K441 | DK BLU/BRN | CMP SIG 2 | Camshaft position sensor pin 3 |
| 64 | K925 | DK BLU/GRY | CKP GND | Crankshaft position sensor pin 1 |
| 68 | K22 | BRN/RED | TP 1 SIG | Throttle body pin 5 |
| 69 | K122 | BRN/LT GRN | TP 2 SIG | Throttle body pin 3 |
| 70 | K922 | BRN/DK BLU | TP SENS RTN | Throttle body pin 6 |
| 73 | K18 | DK BLU/ORG | COIL CTRL 3 | Ignition coil 3 pin 1 |
| 74 | K15 | DK BLU/GRY | COIL CTRL 4 | Ignition coil 4 pin 1 |
| 76 | K79 | BRN/DK BLU | O2 1/1 HTR CTRL | Oxygen sensor 1/1 pin 5 |
| 77 | K299 | BRN/WHT | HTR CTRL SPLY | Oxygen sensor 1/2 pin 1 (HTR CTRL SPLY) |
| 82 | K11 | BRN/YEL | INJ CTRL 1 | Fuel injector 1 pin 1 |
| 83 | K12 | BRN/DK BLU | INJ CTRL 2 | Fuel injector 2 pin 1 |
| 84 | K13 | BRN/WHT | INJ CTRL 3 | Fuel injector 3 pin 1 |
| 85 | K14 | BRN/RED | INJ CTRL 4 | Fuel injector 4 pin 1 |
| 88 | K24 | BRN/DK BLU | CKP SIG | Crankshaft position sensor pin 2 |
| 96 | K20 | BRN/GRY | GENERATOR FIELD CTRL | Starting/charging system |

Component locations (pages 3-7): throttle body — right rear of engine; fuel injectors 1-4 — right side of cylinder head, at 1, 2, 3 and 4 cylinder; camshaft position sensor — left rear of cylinder head; crankshaft position sensor — left side of engine block; oil pressure switch — lower left front of engine; oil temperature sensor — lower right front of engine; knock sensor — right side of engine block; intake variable valve timing solenoid 1 — right front side of cylinder head; solenoid 2 — right side of cylinder head; solenoid 3 — right front side of cylinder head; solenoid 4 — right rear side of cylinder head; ignition coils 1-4 — left side of cylinder head, at 1, 2, 3 and 4 cylinder; ignition capacitor — left front of engine; intake air temperature sensor — in intake air duct; engine coolant temperature sensor — rear of cylinder head; manifold absolute pressure sensor — front of intake manifold; oxygen sensor 1/1 — in exhaust manifold; oxygen sensor 1/2 — in exhaust, downstream of catalytic converter. Splices: SF855 — center of rear of engine, in engine harness; SF856 — center rear of engine, in engine harness; SK900 — center rear of engine, in engine harness; SK915 — rear of engine, in engine harness; SF343 — left front of engine, in engine harness; SF342 — in engine harness.

Sensor pinouts as printed: Crankshaft position sensor — 1 CKP GND (DK BLU/GRY), 2 CKP SIG (BRN/DK BLU), 3 5V SPLY (VIO/YEL). Camshaft position sensor — 1 5V SPLY (YEL/VIO), 2 SENS GND (DK BLU/LT GRN), 3 CMP SIG 2 (DK BLU/BRN). MAP — 1 MAP SIG (VIO/BRN), 2 SENS GND (DK BLU/LT GRN), 3 5V SPLY (YEL/VIO). ECT — 1 ECT SIG (VIO/ORG), 2 SENS GND (DK BLU/LT GRN). IAT — 1 IAT SIG (DK BLU/LT GRN), 2 SENS GND (DK BLU/LT GRN). Oil temperature sensor — 1 SENS GND (BRN/WHT), 2 EOT SIG (VIO/BRN). Oil pressure switch — 1 5V SPLY (VIO/YEL), 2 OIL PRESS SIG (VIO/GRY), 3 SENS GND (BRN/WHT). Knock sensor — 1 DK BLU/YEL, 2 BRN/LT GRN. Throttle body — 1 ETC MOTOR (+) (BRN/YEL), 2 ETC MOTOR (-) (BRN/RED), 3 TP 2 SIG (BRN/LT GRN), 4 5V SPLY (PNK/YEL), 5 TP 1 SIG (BRN/RED), 6 TP SENS RTN (BRN/DK BLU). Oxygen sensor 1/1 — 1 O2 RTN (UPSTRM) (BRN/LT GRN), 2 O2 1/1 SIG (DK BLU/VIO), 3 POSITIVE CURRENT CTRL (BRN/LT GRN), 5 O2 1/1 HTR CTRL (BRN/DK BLU), 6 GND (BLK to G105 via I201 pin E), 7 CELL CURRENT TRIM (BRN/DK BLU). Oxygen sensor 1/2 — 1 HTR CTRL SPLY (BRN/WHT), 2 GND (BLK to G105 via I201 pin J), 3 O2 RTN (DOWNSTRM) (DK BLU/LT GRN), 4 O2 1/2 SIG (DK BLU/YEL). Intake variable valve timing solenoids — solenoid 1: 1 SOL 1 RTN (BRN), 2 SOL 1 SIG (BRN/RED); solenoid 2: 1 AIR SOL 2 RTN (VIO), 2 AIR SOL 2 CTRL (LT GRN/WHT); solenoid 3: 1 AIR SOL 3 RTN (DK BLU), 2 AIR SOL 3 CTRL (DK BLU/ORG); solenoid 4: 1 AIR SOL 4 RTN (LT GRN), 2 AIR SOL 4 SIG (LT GRN/WHT). Injectors — 1 PCM driver, 2 BRN/WHT from SF342 (in engine harness). Coils — 1 COIL CTRL x (PCM driver), 2 ASD RLY OUTPUT (BRN/YEL from SF343). Ignition capacitor — 1 ASD RLY OUTPUT (BRN/WHT from SF343).

## Power supply / relays (page 4)

Power distribution center assembly, left side of engine compartment. The single connector label printed on the PDC pin row is C2.

- **Auto shut down relay** — pins 30 and 85 hot at all times; contact (87) -> PDC pin 15 (WHT/RED) -> external WHT/RED loop -> PDC pin 66 -> fuse 24 (20 A) and fuse 16 (15 A).
  - Fuse 24 -> PDC pin 64 (BRN/WHT, F342) -> SF342 (in dash harness) -> PCM C1-73/74/75/76/77 (ASD CTRL OUTPUT) and, via I201 pin C (BRN/GRY after the connector) -> SF342 (in engine harness) -> fuel injectors 1-4 pin 2 (BRN/WHT).
  - Fuse 16 -> PDC pin 63 (BRN/YEL) -> I201 pin D -> SF343 -> ignition coils 1-4 pin 2 (ASD RLY OUTPUT, BRN/YEL) and ignition capacitor pin 1 (BRN/WHT).
  - Relay coil (86) -> PDC pin 14 (BRN/WHT, K51) -> PCM C1-27 (ASD RLY CTRL).
- **Fuel pump relay** — pin 30 fed from fuse 21 (20 A, hot at all times) through an external RED loop from PDC pin 18 to PDC pin 37; contact (87) -> PDC pin 42 (DK BLU/ORG, N1) -> I200A pin A1 -> fuel pump module pin 4 (PMP CTRL OUTPUT). Coil: pin 85 -> PDC pin 35 (PNK/LT GRN) -> SF942 (fuse 11 output); pin 86 -> PDC pin 36 (BRN, K31) -> PCM C1-2 (FUEL PUMP CTRL).
- **Fuse 11 (20 A)**, hot with run/start relay energized -> PDC C2 pin 2 (PNK/LT GRN, F942) -> SF942 -> PCM C1-23 (FUSED IGN SW O/P), fuel pump relay coil (PDC pin 35) and, via I405A pin B12, stop lamp switch pin 3 (IGN SW OUTPUT).
- **Fuse 18 (20 A)**, hot at all times -> PDC C2 pin 33 (RED, A908) -> PCM C1-96 (FUSED B (+)).

Interior power distribution center assembly (under left side of dash, next to steering column): fuse 26 (5 A), hot at all times -> pin D7 (GRY/RED) -> I300A pin B11 -> stop lamp switch pin 4 (FUSED B(+)).

Grounds: G105 — left front corner of engine compartment (PCM C1-51/52/53/72, Z905 BLK; oxygen sensor 1/1 pin 6 via I201 pin E; oxygen sensor 1/2 pin 2 via I201 pin J); G104 — lower left front of engine block (evap/purge solenoid pin 2); G324 — right side of luggage compartment (evap system monitor switch pin 1; fuel pump module pin 1, Z924 BLK).

Other modules on the same diagram (not PCM pins): body control module (left end of dash) — C6 pin 37 AAT SIG (VIO/LT GRN, G31) -> I405A pin B8 -> I101 pin 1 -> ambient air temperature sensor pin 1 (behind right side of front grille); C6 pin 52 SENS GND (VIO/BRN, G931) -> I405A pin A11 -> I101 pin 3 -> SG931 (with hood ajar switch; behind center of front fascia, in front end module harness) -> ambient air temperature sensor pin 2 (SENS GND) and hood ajar switch pin 2 (SNSR GND; at hood latch mechanism); C4 pin 57 BRAKE SIG 1 (DK GRN/LT GRN, B135) -> SB135 (body harness), shared with PCM C1-17; C4 pin 11 BRAKE SIG 2 (DK GRN/YEL, B134) -> I405A pin B13 -> stop lamp switch pin 2; C6 pin 24 SENS RTN (BLK, G109) -> fuel pump module pin 2 (LVL SENS RTN); C6 pin 25 SENS SIG (DK BLU/WHT, N4) -> fuel pump module pin 3 (LVL SENS SIG); C4 pin 38 CAN C (+) (BRN, D45) and C4 pin 37 CAN C (-) (YEL, D46) to the computer data lines system. The fuel level sender in the fuel pump module (top of fuel tank) reports to the BCM, not the PCM.

## Notes

- Two circuits change color along their run: the C2-46 5 V supply (F855) is PNK/YEL at the PCM and at the throttle body but VIO/YEL from SF855 to the crankshaft position sensor and the oil pressure switch; the ASD feed (F342) is BRN/WHT from C1-73..77 up to I201 pin C and BRN/GRY between I201 and SF342 (in engine harness).
- Two different splices are both named SF342: one "in dash harness" at the PCM C1-73..77 pins and one "in engine harness" at the injector feed. SB135 is likewise printed twice (body harness and dash harness), on either side of I405A pin A14.
- The camshaft position sensor has a single signal pin labelled CMP SIG 2 (C2-63); no CMP SIG 1 circuit appears in this diagram.
- The component at C2-17 is titled "oil pressure switch" but is wired as a three-wire sensor (5V SPLY, OIL PRESS SIG, SENS GND).
- The four intake variable valve timing solenoids each have a dedicated PCM driver pair. The PCM pin labels are inconsistent: solenoid 1 uses "VVA SOL 1 SIG CKT / RTN CKT", solenoids 2 and 3 use "AIR SOL n CTRL / RTN", solenoid 4 uses "AIR SOL 4 SIG / RTN".
- Oxygen sensor 1/1 is a six-wire wideband sensor (O2 1/1 SIG, O2 RTN, POSITIVE CURRENT CTRL, CELL CURRENT TRIM, heater control, ground); oxygen sensor 1/2 is a four-wire sensor. Both heater grounds go to G105, and no separate heater supply from the ASD relay is drawn.
- C2-77 is labelled "HTR CTRL SPLY" at both the PCM and oxygen sensor 1/2 pin 1.
- C1-18 (SW SIG), C1-20 (CLUTCH UPSTOP SIG), C1-22 (P/N SENS), C1-25 (RAD FAN CTRL), C1-26 (A/C CLUTCH CTRL), C1-29 (RAD FAN CTRL SIG), C1-43 (STARTER RLY OUTPUT), C1-45 (LIN BUS), C1-95 (IGN CRANK SNSE), C2-32 (GENERATOR SNSE) and C2-96 (GENERATOR FIELD CTRL) leave this diagram for the named systems; their loads are not shown here.
