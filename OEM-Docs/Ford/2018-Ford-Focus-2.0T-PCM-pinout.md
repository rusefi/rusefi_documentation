# 2018 Ford Focus L4-2.0L Turbo — PCM pinout

Transcribed from [2018 Ford Focus 2.0T.pdf](2018%20Ford%20Focus%202.0T.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1-7). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1381B | 103 | Vehicle/body harness |
| C1381E | 95 | Engine harness |

## C1381B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 2) |
| 2 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 2) |
| 4 | VIO | FCV (VE203) | Cooling fans system (PDF p. 2) |
| 6 | GRN/VIO | CLUTCH PEDAL SWITCH1 (CE904) | Clutch pedal switch / cruise control (PDF p. 2) |
| 10 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 2) |
| 11 | YEL/GRN | VREF (LE424) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 12 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 2) |
| 13 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 14 | BRN/WHT | VREF BBP (LE150) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 16 | WHT/VIO | SIGRTN (RE230) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 17 | GRY/BRN | CPP SIGRTN (RET71) | Clutch pedal position circuit (PDF p. 2) |
| 18 | YEL/VIO | SIGRTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 19 | GRY/BRN | IAT (RE804) | Intake air temperature sensor (PDF p. 2) |
| 20 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 2) |
| 21 | GRN/BRN | SME (CDC79) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 22 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 2) |
| 27 | YEL/GRY | FPM (CE515) | Fuel pump control module (PDF p. 2) |
| 28 | VIO/ORG | WAKE UP (CE436) | Body control module (PDF p. 2) |
| 29 | BRN | INS (CR115) | Body control module (PDF p. 2) |
| 30 | BLU/ORG | CPP (CE903) | Clutch pedal position circuit (PDF p. 2) |
| 31 | BLU | GEAR SW (CET47) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 32 | GRN/BRN | CACT (VE804) | Charge air temperature sensor (PDF p. 2) |
| 35 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 2) |
| 36 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 2) |
| 37 | WHT/BRN | SIGRTN (RE710) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 39 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 2) |
| 43 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 2) |
| 47 | BLU/WHT | CRANK DETECT (CDC35) | Engine coolant temperature sensor (PDF p. 2) |
| 48 | WHT/ORG | ISP-R (CDC34) | Ignition supply (PDF p. 2) |
| 50 | VIO/BRN | LIN (VDN08) | LIN circuit; routing in source (PDF p. 2) |
| 51 | GRN/BLU | AAT (VE750) | Ambient air temperature sensor (PDF p. 3) |
| 52 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 3) |
| 54 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 3) |
| 55 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 3) |
| 56 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 3) |
| 58 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 3) |
| 62 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 3) |
| 65 | VIO/ORG | BPP (CES09) | Brake pedal position switch (PDF p. 3) |
| 66 | VIO/WHT | BPS (CCB08) | Brake pedal position switch (PDF p. 3) |
| 68 | WHT | - CAN HS (VDB05) | Computer data lines system (PDF p. 3) |
| 69 | WHT/BLU | + CAN HS (VDB04) | Computer data lines system (PDF p. 3) |
| 70 | YEL/GRN | BBP (VCA36) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 71 | BLU/BRN | FLP (VE727) | Fuel pressure sensor (PDF p. 3) |
| 72 | YEL | CKCP (VE763) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 73 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 3) |
| 74 | GRN/BRN | TCBP (VE805) | Turbocharger boost pressure sensor (PDF p. 3) |
| 75 | VIO/GRY | SIGRTN (VE740) | Return circuit; branch destinations unresolved (PDF p. 3) |
| 76 | YEL/BLU | CPP (VE772) | Clutch pedal position circuit (PDF p. 3) |
| 96 | BLK/GRN | GND PWR (GD120) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 97 | BLK/GRN | GND PWR (GD120) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 98 | BLK/GRN | GND PWR (GD120) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 99 | BLK/GRN | GND PWR (GD120) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 101 | GRY/YEL | VPWR (CBB08) | PCM power supply (PDF p. 3) |
| 102 | GRY/YEL | VPWR (CBB08) | PCM power supply (PDF p. 3) |
| 103 | GRY/YEL | VPWR (CBB08) | PCM power supply (PDF p. 3) |

## C1381E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 7) |
| 2 | WHT/BLU | SSC CONTROL (CE470) | Transmission circuit (PDF p. 7) |
| 3 | VIO/GRN | TCBY (VE836) | Turbocharger bypass valve (PDF p. 7) |
| 6 | BLU/WHT | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 7 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 7) |
| 8 | GRY | VREF (LE238) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 9 | GRY | OPS (CMC24) | Oil pressure switch (PDF p. 7) |
| 11 | YEL/VIO | CKP (VE711) | Crankshaft position sensor (PDF p. 7) |
| 14 | WHT/GRN | UO2SHTR11 (VE827) | Oxygen sensor 11 (PDF p. 7) |
| 16 | BLU/RED | TCWRVS (VE824) | Turbocharger wastegate regulating valve solenoid (PDF p. 7) |
| 20 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 27 | GRN/ORG | SSC MONITOR (CE471) | Transmission circuit (PDF p. 7) |
| 28 | BRN/BLU | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 7) |
| 29 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 7) |
| 31 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 7) |
| 33 | BLU | MAP (LE329) | Manifold absolute pressure sensor (PDF p. 7) |
| 36 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 7) |
| 37 | BRN/BLU | FRP (VE761) | Fuel rail pressure sensor (PDF p. 7) |
| 42 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 7) |
| 43 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 7) |
| 46 | BLU/GRY | CHT2 (VE712) | Cylinder head temperature sensor (PDF p. 7) |
| 48 | GRN | UO2SPCT11 (LE452) | Oxygen sensor 11 (PDF p. 7) |
| 49 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 7) |
| 50 | BRN/BLU | KS2+ (VE802) | Knock sensor 2 (PDF p. 7) |
| 51 | BRN/GRN | KS2- (RE324) | Knock sensor 2 (PDF p. 7) |
| 52 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 5) |
| 53 | GRN/WHT | SIGRTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 5) |
| 54 | GRN/VIO | CMP12 (VE707) | Camshaft position 12 sensor (PDF p. 5) |
| 57 | YEL/BLU | COP2D (CE304) | Coil on plug 2 (PDF p. 5) |
| 63 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 5) |
| 64 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 5) |
| 65 | VIO/ORG | KS1+ (VE801) | Knock sensor 1 (PDF p. 5) |
| 66 | WHT/BRN | KS1- (RE323) | Knock sensor 1 (PDF p. 5) |
| 68 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 5) |
| 72 | BLU/ORG | COP3B (CE305) | Coil on plug 3 (PDF p. 5) |
| 77 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump (PDF p. 5) |
| 78 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 5) |
| 82 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 5) |
| 83 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 5) |
| 84 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 5) |
| 85 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 5) |
| 86 | YEL/VIO | + TACM (CE412) | Electronic throttle motor (PDF p. 5) |
| 87 | YEL/BLU | INJ1RTN (RE205) | Fuel injector 1 (PDF p. 5) |
| 88 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 (PDF p. 5) |
| 91 | BLU/GRN | - TACM (CE426) | Electronic throttle motor (PDF p. 5) |
| 92 | BLU | INJ4RTN (RE208) | Fuel injector 4 (PDF p. 5) |
| 93 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 (PDF p. 5) |

## Power, grounds, and routing

Battery junction box PCM power relay output feeds fuse 36 (10A), GRY/YEL circuit CBB08, then C1381B-101, C1381B-102, C1381B-103 through splice S127.

PCM relay control: C1381B-58, YEL/BLU CE302. The relay contact feed uses fuse 12 (30A); its coil feed uses fuse 23 (5A).

PCM grounds: C1381B-96, C1381B-97, C1381B-98, C1381B-99, GD120, to G104.

ISP-R C1381B-48, WHT/ORG CDC34, continues to the starting/charging system. See PDF pages 2–3 for power and relay routing.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
