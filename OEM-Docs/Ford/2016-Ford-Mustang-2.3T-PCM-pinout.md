# 2016 Ford Mustang L4-2.3L Turbo — PCM pinout

Transcribed from [2016 Ford Mustang 2.3T ECU.pdf](2016%20Ford%20Mustang%202.3T%20ECU.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1-7). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The same engine diagram set also appears in [Ford-Mustang-2016-2.3.pdf](Ford-Mustang-2016-2.3.pdf), PDF pages 1–6. Table page references refer to the primary PDF linked above.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1551B | 103 | Vehicle/body harness |
| C1551E | 95 | Engine harness |

## C1551B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 2) |
| 2 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 2) |
| 4 | WHT/BLU | HPC (CEC01) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 6 | GRN/VIO | CLUTCH DEACT SW (CE904) | Clutch pedal switch / cruise control (PDF p. 2) |
| 7 | GRY/VIO | SIG RTN (RES08) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 10 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 2) |
| 11 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 12 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 2) |
| 13 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 16 | YEL/VIO | SIG RTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 18 | GRY/VIO | SIG RTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 19 | BLU | SIG RTN (RE320) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 20 | GRN/BLU | EVAPCP1 (CE114) | EVAP canister vent valve (PDF p. 2) |
| 22 | WHT/BRN | CPP-BT (CE113) | EVAP purge valve (PDF p. 2) |
| 23 | GRN/BLU | LFC (CEC02) | Cooling fans system (PDF p. 2) |
| 26 | VIO | GENLI (CDC15) | Starting/charging system (PDF p. 2) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 2) |
| 28 | GRY/ORG | WAKE UP (CE261) | Body control module (PDF p. 2) |
| 29 | YEL/GRY | IES (CE621) | Body control module (PDF p. 2) |
| 30 | BLU/ORG | CPP (CE903) | Clutch pedal position circuit (PDF p. 2) |
| 31 | BLU | REVERSE SW (CET47) | Reversing lamp switch / exterior lights (PDF p. 2) |
| 35 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 2) |
| 36 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 2) |
| 38 | WHT/ORG | SIG RTN B (RE731) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 39 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 2) |
| 41 | WHT/BRN | VACC (VE462) | Air conditioning system (PDF p. 2) |
| 43 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 2) |
| 47 | BRN/VIO | START 1 (CPK34) | Starting/charging system (PDF p. 2) |
| 48 | YEL/VIO | ISP-R (CBB60) | Ignition supply (PDF p. 2) |
| 50 | WHT/GRN | LIN (VDN06) | LIN circuit; routing in source (PDF p. 2) |
| 51 | YEL | AAT (VH407) | Ambient air temperature sensor (PDF p. 3) |
| 52 | VIO/ORG | ACPT (VH443) | A/C pressure transducer (PDF p. 3) |
| 54 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 3) |
| 55 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 3) |
| 57 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 3) |
| 58 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 3) |
| 59 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 3) |
| 62 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 3) |
| 65 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 3) |
| 66 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 3) |
| 68 | WHT | HS1 CAN- (VDB05) | Computer data lines system (PDF p. 3) |
| 69 | WHT/BLU | HS1 CAN+ (VDB04) | Computer data lines system (PDF p. 3) |
| 70 | BRN/YEL | EOP (CMC14) | Engine oil pressure sensor (PDF p. 3) |
| 71 | BRN/BLU | FLP (VE761) | Fuel pressure sensor (PDF p. 3) |
| 72 | YEL/GRN | PCV (VE779) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 73 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 3) |
| 74 | YEL/GRN | TCBP (VE824) | Turbocharger boost pressure sensor (PDF p. 3) |
| 75 | VIO/GRY | IAT (VE470) | Intake air temperature sensor (PDF p. 3) |
| 78 | BLU/ORG | AMC (CE106) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 88 | GRN/VIO | SHIFT DN (CET42) | Shift controls / paddle shifters (PDF p. 3) |
| 89 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 3) |
| 94 | VIO/GRN | BATT MONITOR (VDC61) | Battery monitor / starting/charging system (PDF p. 3) |
| 96 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 97 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 98 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 99 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 101 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 3) |
| 102 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 3) |
| 103 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 3) |

## C1551E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 7) |
| 2 | GRY/YEL | SSE (CET18) | Transmission solenoid assembly (PDF p. 7) |
| 3 | YEL/GRY | TCBY (CE148) | Turbocharger bypass valve (PDF p. 7) |
| 5 | BLU | FTPTREF (LE230) | Fuel tank pressure sensor (PDF p. 7) |
| 6 | BLU/WHT | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 7 | YEL | ETCRRF (LE134) | Electronic throttle control assembly (PDF p. 7) |
| 8 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 9 | GRY | OPS (CMC24) | Oil pressure switch (PDF p. 7) |
| 10 | VIO | TR-P (VET32) | Transmission range circuit (PDF p. 7) |
| 11 | YEL/VIO | CKP (VE711) | Crankshaft position sensor (PDF p. 7) |
| 12 | BRN/GRN | OSS (VET26) | Transmission output shaft speed sensor (PDF p. 7) |
| 14 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 7) |
| 16 | VIO/WHT | TCWRVS (VE460) | Turbocharger wastegate regulating valve solenoid (PDF p. 7) |
| 20 | YEL/GRN | SIG RTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 22 | VIO/GRN | VPWR (OR VBPWR) (LE111) | Transmission sensor supply (PDF p. 7) |
| 27 | WHT/ORG | TSS (VET33) | Transmission turbine shaft speed sensor (PDF p. 7) |
| 28 | BRN/BLU | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 7) |
| 29 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 7) |
| 30 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 7) |
| 31 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 7) |
| 32 | BRN/BLU | TRGND (OR SIG RTN) (RET24) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 33 | GRN/BRN | MAP (VE804) | Manifold absolute pressure sensor (PDF p. 7) |
| 34 | GRY/BLU | IAT2 (RE804) | Intake air temperature sensor (PDF p. 7) |
| 36 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 7) |
| 37 | BLU | FRP (LE238) | Fuel rail pressure sensor (PDF p. 7) |
| 42 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 7) |
| 43 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 7) |
| 44 | BLU/GRY | TCC (CET10) | Transmission torque converter clutch circuit (PDF p. 7) |
| 45 | GRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 7) |
| 46 | BLU/GRY | CHT2 (VE712) | Cylinder head temperature sensor (PDF p. 7) |
| 48 | GRN | UO2SPCT11 (LE452) | Oxygen sensor 11 (PDF p. 7) |
| 49 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 7) |
| 50 | BRN/BLU | KS2+ (VE802) | Knock sensor 2 (PDF p. 7) |
| 51 | BRN/GRN | KS2- (RE324) | Knock sensor 2 (PDF p. 7) |
| 52 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 5) |
| 53 | GRN/WHT | SIGRTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 5) |
| 54 | GRN/VIO | CMP12 (VE707) | Camshaft position 12 sensor (PDF p. 5) |
| 57 | YEL/BLU | COP2D (CE304) | Coil on plug 2 (PDF p. 5) |
| 59 | YEL/VIO | LPC (CET09) | Transmission line pressure control circuit (PDF p. 5) |
| 60 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 5) |
| 63 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 5) |
| 64 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 5) |
| 65 | VIO/ORG | KS1+ (VE801) | Knock sensor 1 (PDF p. 5) |
| 66 | WHT/BRN | KS1- (RE323) | Knock sensor 1 (PDF p. 5) |
| 67 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 5) |
| 68 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 5) |
| 72 | BLU/ORG | COP3B (CE305) | Coil on plug 3 (PDF p. 5) |
| 75 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 5) |
| 77 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump (PDF p. 5) |
| 78 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 5) |
| 80 | BRN | TSPC (CET49) | Transmission circuit (PDF p. 5) |
| 82 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 5) |
| 83 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 5) |
| 84 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 5) |
| 85 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 5) |
| 86 | YEL/VIO | TACM + (CE412) | Electronic throttle motor (PDF p. 5) |
| 87 | YEL/BLU | INJ1RTN (RE205) | Fuel injector 1 (PDF p. 5) |
| 88 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 (PDF p. 5) |
| 91 | BLU/GRN | TACM - (CE426) | Electronic throttle motor (PDF p. 5) |
| 92 | BLU | INJ4RTN (RE208) | Fuel injector 4 (PDF p. 5) |
| 93 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 (PDF p. 5) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 38 (20A), BLU CBK01, then C1551B-101, C1551B-102, C1551B-103, C1551E-22 through splice S103.

PCM relay control: C1551B-58, YEL/BLU CE302. The relay coil supply is fuse 22 (10A).

RUN/START fuse 60 (5A), YEL/VIO CBB60, feeds C1551B-48.

PCM ground circuits C1551B-96, C1551B-97, C1551B-98, C1551B-99, GD113, terminate at G101. The supply/ground network uses S103 and S130; case-ground branches, where shown, use S120.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
