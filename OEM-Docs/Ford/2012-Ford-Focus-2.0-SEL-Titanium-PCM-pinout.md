# 2012 Ford Focus SEL / Titanium L4-2.0L — PCM pinout

Transcribed from [2012-Ford-Focus-2L-SEL.pdf](2012-Ford-Focus-2L-SEL.pdf) and [2012-Ford-Focus-2L-Titanium.pdf](2012-Ford-Focus-2L-Titanium.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1–6 in each export; page 7 is blank). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Both trim exports show the same PCM terminal tables. The source contains inconsistent labels: C175E-72 prints UO2SHRT11 on VE827; C175E-74 prints TACM+ on VE819; C175E-81 prints TP2 on CE412; C175E-10 prints TR P on VE804. These are retained as printed. C175B-19, -28, -39 have wires and circuit IDs but no adjacent PCM function label; marked Not labelled.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C175B | 58 | Vehicle/body harness |
| C175E | 96 | Engine harness |

## C175B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | BLK/GRN | PWR GND (GD120) | PCM ground (PDF p. 1) |
| 2 | BLK/GRN | PWR GND (GD120) | PCM ground (PDF p. 1) |
| 4 | BLK/GRN | PWR GND (GD120) | PCM ground (PDF p. 1) |
| 5 | GRY/YEL | VPWR (CBB08) | PCM power supply (PDF p. 1) |
| 6 | GRY/YEL | VPWR (CBB08) | PCM power supply (PDF p. 1) |
| 8 | VIO | FCV (VE203) | Cooling fans system (PDF p. 1) |
| 9 | BLU/YEL | SMC (CDC12) | Starting/charging system (PDF p. 1) |
| 10 | WHT/ORG | ACCR (CH109) | Air conditioning system (PDF p. 1) |
| 11 | BLU/YEL | SMCS (CDC12) | Starting/charging system (PDF p. 1) |
| 12 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 1) |
| 13 | GRY/ORG-or-BLU/ORG | CPP (OR P/N SW) (CDC26-or-CE903) | Clutch pedal position circuit (PDF p. 1) |
| 14 | VIO/ORG | PCM WAKE (CE436) | Body control module (PDF p. 1) |
| 15 | GRN | ISP-R (CBB42) | Ignition supply (PDF p. 1) |
| 16 | VIO/WHT | BPS (CCB08) | Brake pedal position switch (PDF p. 1) |
| 17 | BLU/YEL | CRANK DETECT (CDC12) | Engine coolant temperature sensor (PDF p. 1) |
| 19 | YEL/BLU | Not labelled (LE456) | In-line connector C134 terminal 10, marked NOT USED (PDF p. 1) |
| 20 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 1) |
| 21 | GRN | SIGRTN (RE242) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 25 | BRN/WHT | ENS (VE518) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 26 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 1) |
| 27 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 1) |
| 28 | BLU/ORG | Not labelled (RE456) | In-line connector C134 terminal 12, marked NOT USED (PDF p. 1) |
| 30 | GRN/RED | BPP (CCA29) | Brake pedal position switch (PDF p. 1) |
| 31 | GRN/BRN | C-VREF (VH442) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 34 | GRN/BLU | SIGRTN (RH107) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 35 | YEL/GRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 1) |
| 36 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 1) |
| 37 | BRN | C-SIGRTN (RH108) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 38 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 1) |
| 39 | WHT | Not labelled (VE757) | In-line connector C134 terminal 11, marked NOT USED (PDF p. 1) |
| 41 | WHT | HS CAN- (VDB05) | Computer data lines system (PDF p. 1) |
| 42 | BLU | REVERSED GEAR SW (CET47) | Reversing lamp switch / exterior lights (PDF p. 1) |
| 43 | GRN/RED | CLTH PDL SW (CCA29) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 44 | GRN/VIO | CANV (CE112) | EVAP canister vent valve (PDF p. 1) |
| 45 | WHT | FPC (VE208) | Fuel pump control module (PDF p. 1) |
| 46 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 1) |
| 48 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 1) |
| 51 | GRY/BRN | ACPT (LH108) | A/C pressure transducer (PDF p. 1) |
| 52 | YEL/ORG | APP (VE701) | Accelerator pedal position sensor (PDF p. 1) |
| 53 | GRN/ORG | APPVREF (LE136) | Accelerator pedal position sensor (PDF p. 1) |
| 54 | WHT/BLU | HS CAN+ (VDB04) | Computer data lines system (PDF p. 1) |

## C175E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/WHT | FVR (CBB12) | Fuel injection pump (PDF p. 6) |
| 2 | BRN/YEL | FVRRTN (CE231) | Fuel injection pump (PDF p. 6) |
| 3 | YEL/BLU | INJ1RTN (RE305) | Fuel injector 1 (PDF p. 6) |
| 6 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 6) |
| 7 | BLU/BRN | FLP (VE727) | Fuel pressure sensor (PDF p. 6) |
| 9 | BLU/BRN | FRP (VE727) | Fuel rail pressure sensor (PDF p. 6) |
| 10 | GRN/BRN | TR P (VE804) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 12 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 6) |
| 15 | BRN/BLU | E-VREF (VE706) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 16 | GRN/VIO | E-VREF (VE707) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 17 | GRY | C-VREF (LE238) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 18 | GRY/VIO | E-VREF (LE135) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 19 | BLU/GRN | ETCREF (CE426) | Electronic throttle control assembly (PDF p. 6) |
| 23 | BRN/BLU | FTPREF (LE230) | Fuel tank pressure sensor (PDF p. 6) |
| 25 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 (PDF p. 6) |
| 26 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 (PDF p. 6) |
| 27 | BLU | INJ4RTN (RE208) | Fuel injector 4 (PDF p. 6) |
| 32 | WHT/VIO | SIGRTN (RE230) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 33 | BRN/GRN | ECT-GND (RE141) | Engine coolant temperature sensor (PDF p. 6) |
| 34 | GRN/VIO | E-SIGRTN (RE238) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 35 | GRN/VIO | C-SIGRTN (RE238) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 36 | WHT/BRN | SIGRTN (RE329) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 40 | GRY | E-VREF (LE238) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 41 | BLU/BRN | LIN (VDC46) | LIN circuit; routing in source (PDF p. 6) |
| 44 | GRN/BRN | E-SIGRTN (LE143) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 45 | YEL/VIO | CKP (VE711) | Crankshaft position sensor (PDF p. 6) |
| 46 | GRN/BRN | E-SIGRTN (RE135) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 47 | YEL/VIO | E-SIGRTN (LE144) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 50 | BLU/WHT | TACM- (LE428) | Electronic throttle motor (PDF p. 6) |
| 52 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 6) |
| 53 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 6) |
| 54 | BLU/BRN | OPS (CE908) | Oil pressure switch (PDF p. 6) |
| 55 | BLU/GRN | MAF (VE803) | Mass air flow sensor (PDF p. 6) |
| 58 | YEL/VIO | ETCRTN (RE427) | Electronic throttle control assembly (PDF p. 6) |
| 59 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 6) |
| 60 | WHT/BRN | KS1- (RE323) | Knock sensor 1 (PDF p. 6) |
| 61 | BRN/GRN | KS2- (RE324) | Knock sensor 2 (PDF p. 6) |
| 64 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 6) |
| 65 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 6) |
| 67 | GRY | VCT11 (CE501) | Variable camshaft timing 11 solenoid (PDF p. 3) |
| 69 | BLU/ORG | COP3B (CE305) | Coil on plug 3 (PDF p. 3) |
| 70 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 3) |
| 71 | VIO/BRN | VCT12 (CE508) | Variable camshaft timing 12 solenoid (PDF p. 3) |
| 72 | WHT/GRN | UO2SHRT11 (VE827) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 74 | GRN/VIO | TACM+ (VE819) | Electronic throttle motor (PDF p. 3) |
| 76 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 3) |
| 77 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 3) |
| 79 | BRN | CMP12 (RE144) | Camshaft position 12 sensor (PDF p. 3) |
| 80 | VIO | CMP11 (RE143) | Camshaft position 11 sensor (PDF p. 3) |
| 81 | YEL/VIO | TP2 (CE412) | Throttle position sensor (PDF p. 3) |
| 84 | VIO/ORG | KS1+ (VE801) | Knock sensor 1 (PDF p. 3) |
| 85 | BRN/BLU | KS2+ (VE802) | Knock sensor 2 (PDF p. 3) |
| 88 | GRN | UO2SPCT11 (LE452) | Oxygen sensor 11 (PDF p. 3) |
| 89 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 3) |
| 91 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 3) |
| 93 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 3) |
| 94 | YEL/BLU | COP2D (CE304) | Coil on plug 2 (PDF p. 3) |

## Power, grounds, and routing

Battery junction box PCM power relay output feeds fuse 36 (10A), GRY/YEL circuit CBB08, then C175B-5, C175B-6 through splice S127.

PCM relay control: C175B-27, YEL/BLU CE302. The relay contact feed uses fuse 12 (30A); its coil feed uses fuse 23 (5A).

PCM grounds: C175B-1, C175B-2, C175B-4, GD120, to G104.

The ignition relay supplies fuse 38 (15A); GRN CBB42 feeds C175B-15 (ISP-R). See PDF pages 1–2.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
