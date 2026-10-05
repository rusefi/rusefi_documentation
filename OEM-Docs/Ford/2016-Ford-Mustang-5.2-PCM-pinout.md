# 2016 Ford Mustang V8-5.2L — PCM pinout

Transcribed from [Ford-Mustang-2016-2.3.pdf](Ford-Mustang-2016-2.3.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 19–25 (5.2L engine diagrams)). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The file name names the 2.3L; these pages are the separate 5.2L diagrams. The source prints CE908 at both EXHVAL and EOL; retained as printed.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C175B | 103 | Vehicle/body harness |
| C175E | 95 | Engine harness |

## C175B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 19) |
| 5 | BLK/YEL | CASE GND (GD113) | PCM case ground (PDF p. 19) |
| 8 | GRN/VIO | CLUTCH DEACT SW (CE904) | Clutch pedal switch / cruise control (PDF p. 19) |
| 9 | BLU/ORG | CPP-BT (CE903) | Clutch pedal position circuit (PDF p. 19) |
| 10 | WHT/BLU | HFC (CEC01) | Cooling fans system (PDF p. 19) |
| 13 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 19) |
| 14 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 19) |
| 15 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 19) |
| 17 | GRN/BLU | LFC (CEC02) | Cooling fans system (PDF p. 19) |
| 20 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 19) |
| 22 | GRN/VIO | SHIFT DN (CET42) | Shift controls / paddle shifters (PDF p. 19) |
| 23 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 19) |
| 26 | VIO | GENLI (CDC15) | Starting/charging system (PDF p. 19) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 19) |
| 29 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 19) |
| 30 | YEL/VIO | SIGRTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 19) |
| 31 | WHT/GRN | FPM2 (VE521) | Fuel pump control module (PDF p. 19) |
| 32 | BLU | REVERSE SW (CET47) | Reversing lamp switch / exterior lights (PDF p. 19) |
| 33 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 19) |
| 34 | BLU/BRN | FRT (VE728) | Destination unresolved; follow printed circuit in source (PDF p. 19) |
| 35 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 19) |
| 36 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 19) |
| 39 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 19) |
| 40 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 19) |
| 42 | BRN/VIO | START (CPK34) | Starting/charging system (PDF p. 19) |
| 44 | BLU/BRN | FRP (VE727) | Fuel rail pressure sensor (PDF p. 19) |
| 46 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 19) |
| 47 | YEL/GRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 19) |
| 49 | GRY/ORG | IES (CE261) | Body control module (PDF p. 19) |
| 51 | GRY/VIO | SIGRTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 19) |
| 52 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 19) |
| 53 | VIO/GRN | MONITOR (VDC61) | Destination unresolved; follow printed circuit in source (PDF p. 19) |
| 54 | BLU | SIGRTN (RE320) | Return circuit; branch destinations unresolved (PDF p. 19) |
| 55 | GRN | RDFT (VET66) | Destination unresolved; follow printed circuit in source (PDF p. 19) |
| 58 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 19) |
| 59 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 19) |
| 60 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 19) |
| 61 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 19) |
| 63 | VIO/GRY | SPEED COMMAND (VYT11) | Destination unresolved; follow printed circuit in source (PDF p. 22) |
| 64 | YEL/VIO | ISP-R (CBB60) | Ignition supply (PDF p. 22) |
| 65 | GRY/ORG | UP WAKE (CE621) | Body control module (PDF p. 22) |
| 66 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 22) |
| 67 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 22) |
| 69 | YEL/GRN | DIAG (VYT12) | Destination unresolved; follow printed circuit in source (PDF p. 22) |
| 71 | WHT/ORG | SIGRTN (RE731) | Return circuit; branch destinations unresolved (PDF p. 22) |
| 72 | YEL/GRN | HO2S12 (VE731) | HO2S12 downstream oxygen sensor (PDF p. 22) |
| 73 | YEL/VIO | MAF (VE807) | Mass air flow sensor (PDF p. 22) |
| 75 | WHT/BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 22) |
| 76 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 22) |
| 90 | WHT/GRN | SIGRTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 22) |
| 91 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 22) |
| 97 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 22) |
| 99 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 22) |
| 100 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 22) |
| 102 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 22) |
| 103 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 22) |

## C175E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/BLU | INJ 1 (CE205) | Fuel injector 1 (PDF p. 25) |
| 2 | BRN | INJ 5 (CE209) | Fuel injector 5 (PDF p. 25) |
| 3 | YEL/ORG | INJ 4 (CE208) | Fuel injector 4 (PDF p. 25) |
| 4 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 25) |
| 5 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 25) |
| 6 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 25) |
| 7 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 25) |
| 8 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 25) |
| 9 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 25) |
| 10 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 25) |
| 11 | BLU/BRN | EXHVAL (CE908) | Destination unresolved; follow printed circuit in source (PDF p. 25) |
| 14 | BLU/GRY | TCC (CET10) | Transmission torque converter clutch circuit (PDF p. 25) |
| 15 | YEL/VIO | LPC (CET09) | Transmission line pressure control circuit (PDF p. 25) |
| 16 | VIO/ORG | INJ 8 (CE212) | Fuel injector 8 (PDF p. 25) |
| 17 | VIO/GRN | VPWR (LE111) | Transmission sensor supply (PDF p. 25) |
| 20 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 25) |
| 21 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 25) |
| 22 | BRN/BLU | VBPWR (RET24) | Transmission sensor ground (PDF p. 25) |
| 23 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 25) |
| 24 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 25) |
| 25 | WHT/VIO | TSS (RET33) | Transmission turbine shaft speed sensor (PDF p. 25) |
| 26 | YEL/ORG | OSS (RET04) | Transmission output shaft speed sensor (PDF p. 25) |
| 27 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 25) |
| 30 | BLU/BRN | EOL (CE908) | Engine oil level switch (PDF p. 25) |
| 31 | VIO/GRY | INJ 3 (CE207) | Fuel injector 3 (PDF p. 25) |
| 34 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 25) |
| 35 | WHT | UO2SPC21 (LE450) | Oxygen sensor 21 (PDF p. 25) |
| 36 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 25) |
| 37 | VIO | TR-P (VET32) | Transmission range circuit (PDF p. 25) |
| 39 | BLK | SHDRTN (DE135) | Return circuit; branch destinations unresolved (PDF p. 25) |
| 40 | GRY/ORG | VRSRTN2 (RE429) | Return circuit; branch destinations unresolved (PDF p. 25) |
| 41 | GRN/VIO | CMP22 (VE707) | Camshaft position 22 sensor (PDF p. 25) |
| 42 | YEL/BLU | CMP21 (VE738) | Camshaft position 21 sensor (PDF p. 25) |
| 44 | YEL/ORG | IMRC2M (VE741) | Intake manifold runner control assembly (PDF p. 25) |
| 45 | BLU/WHT | IMRC1M (VE742) | Intake manifold runner control assembly (PDF p. 25) |
| 46 | GRY/BRN | INJ 7 (CE211) | Fuel injector 7 (PDF p. 25) |
| 47 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 25) |
| 49 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 25) |
| 50 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 25) |
| 51 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 25) |
| 52 | WHT/BRN | KS1 - (RE323) | Knock sensor 1 (PDF p. 25) |
| 53 | VIO/ORG | KS1 + (VE801) | Knock sensor 1 (PDF p. 25) |
| 54 | GRY/ORG | VRSRTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 25) |
| 55 | BRN/BLU | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 25) |
| 56 | WHT/GRN | CMP12 (VE736) | Camshaft position 12 sensor (PDF p. 25) |
| 57 | GRY | EOP (CMC24) | Engine oil pressure sensor (PDF p. 25) |
| 59 | WHT | IMRC2 (CE511) | Intake manifold runner control assembly (PDF p. 25) |
| 60 | YEL/GRY | IMRC (CE923) | Intake manifold runner control assembly (PDF p. 25) |
| 61 | GRY/YEL | INJ 2 (CE206) | Fuel injector 2 (PDF p. 25) |
| 62 | GRN/WHT | INJ 6 (CE210) | Fuel injector 6 (PDF p. 25) |
| 67 | BRN/GRN | KS2 - (RE324) | Knock sensor 2 (PDF p. 25) |
| 68 | BRN/BLU | KS2 + (VE802) | Knock sensor 2 (PDF p. 25) |
| 69 | GRN/BRN | CKP - (RE135) | Crankshaft position sensor (PDF p. 25) |
| 70 | YEL/VIO | CKP + (VE711) | Crankshaft position sensor (PDF p. 25) |
| 71 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 22) |
| 72 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 22) |
| 73 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 22) |
| 74 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 22) |
| 75 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 22) |
| 77 | WHT/BLU | SSE (CET16) | Transmission solenoid assembly (PDF p. 22) |
| 78 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 22) |
| 79 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 22) |
| 81 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 22) |
| 82 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 22) |
| 83 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 22) |
| 84 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 22) |
| 87 | YEL/BLU | COP2H (CE304) | Coil on plug 2 (PDF p. 22) |
| 88 | BLU/ORG | COP3F (CE305) | Coil on plug 3 (PDF p. 22) |
| 89 | WHT/BRN | COP5B (CE307) | Coil on plug 5 (PDF p. 22) |
| 90 | BLU/BRN | COP8D (CE310) | Coil on plug 8 (PDF p. 22) |
| 91 | BLU/GRN | TSPC (CET25) | Transmission circuit (PDF p. 22) |
| 92 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 22) |
| 93 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 22) |
| 94 | YEL/GRY | COP7G (CE309) | Coil on plug 7 (PDF p. 22) |
| 95 | VIO/BRN | COP6E (CE308) | Coil on plug 6 (PDF p. 22) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 38 (20A), BLU CBK01, then C175B-97, C175B-99, C175E-17 through splice S103.

PCM relay control: C175B-20, YEL/BLU CE302. The relay coil supply is fuse 22 (10A).

RUN/START fuse 60 (5A), YEL/VIO CBB60, feeds C175B-64.

PCM ground circuits C175B-100, C175B-102, C175B-103, GD113, terminate at G101. The supply/ground network uses S103 and S130; case-ground branches, where shown, use S120.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
