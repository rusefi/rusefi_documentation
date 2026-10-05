# 2016 Ford Mustang V6-3.7L — PCM pinout

Transcribed from [Ford-Mustang-2016-2.3.pdf](Ford-Mustang-2016-2.3.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 7–12 (3.7L engine diagrams)). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The file name names the 2.3L, but these pages are the separate 3.7L diagrams. The source prints INJ 6 on CE209 and CE210; retained as printed.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1381B | 103 | Vehicle/body harness |
| C1381E | 95 | Engine harness |

## C1381B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 7) |
| 5 | BLK/YEL | CASEGND (GD113) | PCM case ground (PDF p. 7) |
| 8 | GRN/VIO | CLUTCH DEACT SW (CE904) | Clutch pedal switch / cruise control (PDF p. 7) |
| 9 | BLU/ORG | CPP-BT (CE903) | Clutch pedal position circuit (PDF p. 7) |
| 10 | WHT/BLU | HFC (CEC01) | Cooling fans system (PDF p. 7) |
| 13 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 7) |
| 14 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 7) |
| 15 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 7) |
| 17 | GRN/BLU | LFC (CEC02) | Cooling fans system (PDF p. 7) |
| 20 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 7) |
| 22 | GRN/VIO | SHIFT DN (CET42) | Shift controls / paddle shifters (PDF p. 7) |
| 23 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 7) |
| 26 | VIO | GENLI (CDC15) | Starting/charging system (PDF p. 7) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 7) |
| 29 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 30 | YEL/VIO | SIGRTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 32 | BLU | REVERSE SW (CET47) | Reversing lamp switch / exterior lights (PDF p. 7) |
| 33 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 7) |
| 35 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 7) |
| 36 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 7) |
| 39 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 7) |
| 40 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 7) |
| 42 | BRN/VIO | START (CPK34) | Starting/charging system (PDF p. 7) |
| 46 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 7) |
| 47 | YEL/GRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 7) |
| 49 | YEL/GRY | IES (CE261) | Body control module (PDF p. 7) |
| 51 | GRY/VIO | SIGRTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 52 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 53 | VIO/GRN | BATT MONITOR (VDC61) | Battery monitor / starting/charging system (PDF p. 7) |
| 58 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 7) |
| 59 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 7) |
| 60 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 7) |
| 61 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 7) |
| 64 | YEL/VIO | ISP-R (CBB60) | Ignition supply (PDF p. 9) |
| 65 | GRY/ORG | WAKE UP (CE621) | Body control module (PDF p. 9) |
| 66 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 9) |
| 67 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 9) |
| 71 | WHT/ORG | SIGRTN (RE731) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 72 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 9) |
| 75 | WHT/BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 9) |
| 76 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 9) |
| 90 | WHT/GRN | SIGRTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 91 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 9) |
| 97 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 9) |
| 99 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 9) |
| 100 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 9) |
| 102 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 9) |
| 103 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 9) |

## C1381E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/BLU | INJ 1 (CE205) | Fuel injector 1 (PDF p. 12) |
| 2 | YEL/ORG | INJ 4 (CE208) | Fuel injector 4 (PDF p. 12) |
| 3 | GRY/YEL | INJ 2 (CE206) | Fuel injector 2 (PDF p. 12) |
| 4 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 12) |
| 5 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 12) |
| 6 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 12) |
| 7 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 12) |
| 8 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 12) |
| 9 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 12) |
| 10 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 12) |
| 14 | BLU/GRY | TCC (CET10) | Transmission torque converter clutch circuit (PDF p. 12) |
| 15 | YEL/VIO | LPC (CET09) | Transmission line pressure control circuit (PDF p. 12) |
| 16 | BRN | INJ 6 (CE209) | Fuel injector 6 (PDF p. 12) |
| 17 | VIO/GRN | VBPWR (LE111) | Destination unresolved; follow printed circuit in source (PDF p. 12) |
| 18 | BLU | INJPWRM (CBK01) | Destination unresolved; follow printed circuit in source (PDF p. 12) |
| 20 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 12) |
| 21 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 12) |
| 22 | BRN/BLU | TR GND (OR VBPWR) (RET24) | Destination unresolved; follow printed circuit in source (PDF p. 12) |
| 23 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 12) |
| 24 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 12) |
| 25 | WHT/VIO | TSS (RET33) | Transmission turbine shaft speed sensor (PDF p. 12) |
| 26 | YEL/ORG | OSS (RET04) | Transmission output shaft speed sensor (PDF p. 12) |
| 27 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 12) |
| 29 | GRN/WHT | SIGRTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 31 | VIO/GRY | INJ 3 (CE207) | Fuel injector 3 (PDF p. 12) |
| 32 | BLU/GRN | MAP (VE803) | Manifold absolute pressure sensor (PDF p. 12) |
| 34 | BLU/WHT | VREF2 (LE458) | Reference supply; branch destinations unresolved (PDF p. 12) |
| 35 | WHT | UO2SPC21 (LE450) | Oxygen sensor 21 (PDF p. 12) |
| 36 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 12) |
| 37 | VIO | TR-P (VET32) | Transmission range circuit (PDF p. 12) |
| 39 | BLK | SHDRTN (DE135) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 40 | GRY/ORG | VRSRTN2 (RE429) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 41 | GRN/VIO | CMP22 (VE707) | Camshaft position 22 sensor (PDF p. 12) |
| 42 | YEL/BLU | CMP21 (VE738) | Camshaft position 21 sensor (PDF p. 12) |
| 46 | GRN/WHT | INJ 6 (CE210) | Fuel injector 6 (PDF p. 12) |
| 47 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 12) |
| 48 | GRY | EOP (CMC24) | Engine oil pressure sensor (PDF p. 12) |
| 49 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 50 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 12) |
| 51 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 12) |
| 52 | WHT/BRN | KS1 - (RE323) | Knock sensor 1 (PDF p. 12) |
| 53 | VIO/ORG | KS1 + (VE801) | Knock sensor 1 (PDF p. 12) |
| 54 | GRY/ORG | VRSRTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 55 | BRN/BLU | CMP12 (VE706) | Camshaft position 12 sensor (PDF p. 12) |
| 56 | WHT/GRN | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 12) |
| 67 | BRN/GRN | KS2 - (RE324) | Knock sensor 2 (PDF p. 12) |
| 68 | BRN/BLU | KS2 + (VE802) | Knock sensor 2 (PDF p. 12) |
| 69 | GRN/WHT | CKP - (RE135) | Crankshaft position sensor (PDF p. 12) |
| 70 | YEL/VIO | CKP + (VE711) | Crankshaft position sensor (PDF p. 12) |
| 71 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 9) |
| 72 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 9) |
| 73 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 9) |
| 74 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 9) |
| 75 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 9) |
| 77 | WHT/BLU | SSE (CET16) | Transmission solenoid assembly (PDF p. 9) |
| 78 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 9) |
| 79 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 9) |
| 81 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 9) |
| 82 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 9) |
| 83 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 9) |
| 84 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 9) |
| 88 | BLU/ORG | COP3E (CE305) | Coil on plug 3 (PDF p. 9) |
| 89 | GRN/VIO | COP4B (CE306) | Coil on plug 4 (PDF p. 9) |
| 90 | WHT/BRN | COP5D (CE307) | Coil on plug 5 (PDF p. 9) |
| 91 | BLU/GRN | TSPC (CET25) | Transmission circuit (PDF p. 9) |
| 92 | YEL/BLU | COP2C (CE304) | Coil on plug 2 (PDF p. 9) |
| 93 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 9) |
| 94 | VIO/BRN | COP6F (CE308) | Coil on plug 6 (PDF p. 9) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 38 (20A), BLU CBK01, then C1381B-97, C1381B-99 through splice S103.

PCM relay control: C1381B-20, YEL/BLU CE302. The relay coil supply is fuse 22 (10A).

RUN/START fuse 60 (5A), YEL/VIO CBB60, feeds C1381B-64.

PCM ground circuits C1381B-5, C1381B-100, C1381B-102, C1381B-103, GD113, terminate at G101. The supply/ground network uses S103 and S130; case-ground branches, where shown, use S120.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
