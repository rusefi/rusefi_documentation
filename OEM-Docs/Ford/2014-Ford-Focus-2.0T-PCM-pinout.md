# 2014 Ford Focus L4-2.0L Turbo — PCM pinout

Transcribed from [2014 Ford Focus 2.0T.pdf](2014%20Ford%20Focus%202.0T.pdf) and [2014 Ford Focus L4-2.0L Turbo.pdf](2014%20Ford%20Focus%20L4-2.0L%20Turbo.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1-7). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1381B | 58 | Vehicle/body harness |
| C1381E | 96 | Engine harness |

## C1381B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | BLK/GRN | PWR GND (GD120) | PCM ground (PDF p. 2) |
| 2 | BLK/GRN | PWR GND (GD120) | PCM ground (PDF p. 2) |
| 4 | BLK/GRN | PWR GND (GD120) | PCM ground (PDF p. 2) |
| 5 | GRY/YEL | VPWR (CBB08) | PCM power supply (PDF p. 2) |
| 6 | GRY/YEL | VPWR (CBB08) | PCM power supply (PDF p. 2) |
| 7 | GRY | C-VREF (LE238) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 8 | VIO | FCV (VE203) | Cooling fans system (PDF p. 2) |
| 9 | BLU/YEL | SMC (CDC12) | Starting/charging system (PDF p. 2) |
| 10 | WHT/ORG | ACCR (CH109) | Air conditioning system (PDF p. 2) |
| 11 | BLU/YEL | SMCS (CDC12) | Starting/charging system (PDF p. 2) |
| 12 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 2) |
| 13 | BLU/ORG | CPP (OR P/N SW) (CE903) | Clutch pedal position circuit (PDF p. 2) |
| 14 | VIO/ORG | WAKE UP (CE436) | Body control module (PDF p. 2) |
| 15 | VIO/GRY | ISP-R (CE341) | Ignition supply (PDF p. 2) |
| 16 | VIO/WHT | BPS (CCB08) | Brake pedal position switch (PDF p. 2) |
| 17 | BLU/YEL | CRANK DETECT (CDC12) | Engine coolant temperature sensor (PDF p. 2) |
| 20 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 2) |
| 21 | YEL/VIO | C-SIGRTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 25 | BRN/WHT | ENS (VE518) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 26 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 2) |
| 27 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 2) |
| 30 | GRN/RED | BPP (CCA29) | Brake pedal position switch (PDF p. 2) |
| 31 | YEL/GRN | C-VREF (VE424) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 32 | YEL/RED | VBATT (SBB10) | Battery power supply (PDF p. 2) |
| 33 | WHT/BLU | SSC CTRL (CE470) | Transmission circuit (PDF p. 2) |
| 34 | GRN/BLU | SIGRTN (RH107) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 35 | YEL/GRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 2) |
| 36 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 2) |
| 37 | BRN | SIGRTN (RH108) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 38 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 2) |
| 40 | GRN/ORG | SSC MONITOR (CE471) | Transmission circuit (PDF p. 2) |
| 41 | WHT | HS CAN- (VDB05) | Computer data lines system (PDF p. 2) |
| 42 | BLU | REVERSE GEAR SW (CET47) | Reversing lamp switch / exterior lights (PDF p. 2) |
| 43 | GRN/RED | CLTH PDL SW (CCA29) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 44 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 2) |
| 45 | WHT | FPC (VE208) | Fuel pump control module (PDF p. 2) |
| 46 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 2) |
| 48 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 2) |
| 51 | GRY/BRN | ACPT (LH108) | A/C pressure transducer (PDF p. 2) |
| 52 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 2) |
| 53 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 2) |
| 54 | WHT/BLU | HS CAN+ (VDB04) | Computer data lines system (PDF p. 2) |

## C1381E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump (PDF p. 7) |
| 2 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 7) |
| 3 | YEL/BLU | INJ1RTN (RE205) | Fuel injector 1 (PDF p. 7) |
| 6 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 7) |
| 7 | BRN/BLU | FLP (VE761) | Fuel pressure sensor (PDF p. 7) |
| 8 | GRY/ORG | TCBP (VE805) | Turbocharger boost pressure sensor (PDF p. 7) |
| 9 | GRY | FRP (VE727) | Fuel rail pressure sensor (PDF p. 7) |
| 10 | GRN/BRN | IAT (VE804) | Intake air temperature sensor (PDF p. 7) |
| 11 | GRN/BRN | CACT (VE804) | Charge air temperature sensor (PDF p. 7) |
| 12 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 7) |
| 15 | BLU/WHT | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 18 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 19 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 7) |
| 25 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 (PDF p. 7) |
| 26 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 (PDF p. 7) |
| 27 | BLU | INJ4RTN (RE208) | Fuel injector 4 (PDF p. 7) |
| 29 | YEL/ORG | TCBY (CE167) | Turbocharger bypass valve (PDF p. 7) |
| 34 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 36 | WHT/BRN | SIGRTN (RE329) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 41 | VIO/BRN | LIN (VDN08) | LIN circuit; routing in source (PDF p. 7) |
| 45 | YEL/VIO | CKP + (VE711) | Crankshaft position sensor (PDF p. 7) |
| 46 | GRN/WHT | SIGRTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 50 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 7) |
| 52 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 7) |
| 53 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 7) |
| 54 | BLU/BRN | OPS (CE908) | Oil pressure switch (PDF p. 7) |
| 56 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 7) |
| 58 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 7) |
| 59 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 7) |
| 60 | WHT/BRN | KS1- (RE323) | Knock sensor 1 (PDF p. 7) |
| 61 | BRN/GRN | KS2- (RE324) | Knock sensor 2 (PDF p. 7) |
| 64 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 7) |
| 65 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 7) |
| 67 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 4) |
| 69 | BLU/ORG | COP3B (CE305) | Coil on plug 3 (PDF p. 4) |
| 70 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 4) |
| 71 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 4) |
| 72 | WHT/GRN | UO2SHTR11 (VE827) | HO2S11 signal terminal; source label says heater but circuit VE827 is retained as printed (PDF p. 4) |
| 74 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 4) |
| 76 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 4) |
| 77 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 4) |
| 79 | GRN/VIO | CMP12 (VE707) | Camshaft position 12 sensor (PDF p. 4) |
| 80 | BRN/BLU | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 4) |
| 81 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 4) |
| 83 | BLU | MAP (LE329) | Manifold absolute pressure sensor (PDF p. 4) |
| 84 | VIO/ORG | KS1+ (VE801) | Knock sensor 1 (PDF p. 4) |
| 85 | BRN/BLU | KS2+ (VE802) | Knock sensor 2 (PDF p. 4) |
| 88 | GRN | UO2SPCT11 (LE452) | Oxygen sensor 11 (PDF p. 4) |
| 89 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 4) |
| 91 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 4) |
| 93 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 4) |
| 94 | YEL/BLU | COP2D (CE304) | Coil on plug 2 (PDF p. 4) |
| 95 | BLU/RED | TCWRVS (CE844) | Turbocharger wastegate regulating valve solenoid (PDF p. 4) |

## Power, grounds, and routing

Battery junction box PCM power relay output feeds fuse 36 (10A), GRY/YEL circuit CBB08, then C1381B-5, C1381B-6 through splice S127.

PCM relay control: C1381B-27, YEL/BLU CE302. The relay contact feed uses fuse 12 (30A); its coil feed uses fuse 23 (5A).

PCM grounds: C1381B-1, C1381B-2, C1381B-4, GD120, to G104.

The ignition-related branch includes fuse 34 (10A), VIO/GRY, on PDF page 3. C1381B-32 is separately labelled VBATT; its upstream feed is not resolved here. See PDF pages 2–3.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
