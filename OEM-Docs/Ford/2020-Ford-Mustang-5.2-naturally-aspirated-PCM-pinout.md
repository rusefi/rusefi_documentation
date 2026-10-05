# 2020 Ford Mustang V8-5.2L (naturally aspirated) — PCM pinout

Transcribed from [Ford-Mustang-2020-2.3.pdf](Ford-Mustang-2020-2.3.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 20–26 (5.2L naturally aspirated diagrams)). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The file name names 2.3L and the export header selects a 5.0L GT; these diagram captions identify the separate 5.2L naturally aspirated variant.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1381B | 103 | Vehicle/body harness |
| C1381E | 95 | Engine harness |

## C1381B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 20) |
| 5 | BLK/YEL | CASE GND (GD113) | PCM case ground (PDF p. 20) |
| 8 | GRN/VIO | CLUTCH DEACT SW (CE904) | Clutch pedal switch / cruise control (PDF p. 20) |
| 9 | BLU/ORG | CPP-BT (CE903) | Clutch pedal position circuit (PDF p. 20) |
| 10 | WHT/BLU | HFC (CEC01) | Cooling fans system (PDF p. 20) |
| 13 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 20) |
| 14 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 20) |
| 15 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 20) |
| 17 | GRN/BLU | LFC (CEC02) | Cooling fans system (PDF p. 20) |
| 20 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 20) |
| 26 | VIO | GENLI (CDC15) | Starting/charging system (PDF p. 20) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 20) |
| 29 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 20) |
| 30 | YEL/VIO | SIG RTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 20) |
| 31 | WHT/GRN | FPM2 (VE521) | Fuel pump control module (PDF p. 20) |
| 32 | BLU | REVERSE SW (CET47) | Reversing lamp switch / exterior lights (PDF p. 20) |
| 33 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 20) |
| 34 | BLU/BRN | FRP (VE727) | Fuel rail pressure sensor (PDF p. 20) |
| 35 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 20) |
| 36 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 20) |
| 39 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 20) |
| 40 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 20) |
| 42 | GRN/WHT | START (CPK34) | Starting/charging system (PDF p. 20) |
| 44 | BLU/BRN | FRT (VE728) | Destination unresolved; follow printed circuit in source (PDF p. 20) |
| 46 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 20) |
| 47 | YEL/GRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 20) |
| 49 | GRY/ORG | IES (CE261) | Body control module (PDF p. 20) |
| 51 | GRY/VIO | SIGRTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 20) |
| 52 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 20) |
| 53 | VIO/GRN | MONITOR (VDC61) | Destination unresolved; follow printed circuit in source (PDF p. 20) |
| 54 | BLU | SIG RTN (RE320) | Return circuit; branch destinations unresolved (PDF p. 20) |
| 55 | GRN | RDFT (VET66) | Destination unresolved; follow printed circuit in source (PDF p. 20) |
| 58 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 20) |
| 59 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 20) |
| 60 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 20) |
| 61 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 20) |
| 63 | VIO/GRY | SPEED COMMAND (VYT11) | Destination unresolved; follow printed circuit in source (PDF p. 23) |
| 64 | YEL/VIO | ISP-R (CBB60) | Ignition supply (PDF p. 23) |
| 65 | VIO/ORG | UP WAKE (CE436) | Body control module (PDF p. 23) |
| 66 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 23) |
| 67 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 23) |
| 69 | YEL/GRN | DIAG (VYT12) | Destination unresolved; follow printed circuit in source (PDF p. 23) |
| 71 | WHT/ORG | SIGRTN (RE731) | Return circuit; branch destinations unresolved (PDF p. 23) |
| 72 | YEL/GRN | HO2S12 (VE731) | HO2S12 downstream oxygen sensor (PDF p. 23) |
| 73 | YEL/VIO | MAF (VE807) | Mass air flow sensor (PDF p. 23) |
| 75 | BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 23) |
| 76 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 23) |
| 90 | WHT/GRN | SIGRTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 23) |
| 91 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 23) |
| 97 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 23) |
| 99 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 23) |
| 100 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 23) |
| 102 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 23) |
| 103 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 23) |

## C1381E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/BLU | INJ 1 (CE205) | Fuel injector 1 (PDF p. 26) |
| 2 | BRN | INJ 5 (CE209) | Fuel injector 5 (PDF p. 26) |
| 3 | YEL/ORG | INJ 4 (CE208) | Fuel injector 4 (PDF p. 26) |
| 4 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 26) |
| 5 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 26) |
| 6 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 26) |
| 7 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 26) |
| 8 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 26) |
| 9 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 26) |
| 10 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 26) |
| 11 | BLU/BRN | EXHVAL (CE908) | Destination unresolved; follow printed circuit in source (PDF p. 26) |
| 16 | VIO/ORG | INJ 8 (CE212) | Fuel injector 8 (PDF p. 26) |
| 17 | VIO/GRN | VBPWR (LE111) | Transmission sensor supply (PDF p. 26) |
| 18 | BLU | INJPWRM (CBK01) | Destination unresolved; follow printed circuit in source (PDF p. 26) |
| 20 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 26) |
| 21 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 26) |
| 22 | BRN/BLU | VBPWR (RET24) | Transmission sensor ground (PDF p. 26) |
| 23 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 26) |
| 24 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 26) |
| 26 | YEL/ORG | OSS (RET04) | Transmission output shaft speed sensor (PDF p. 26) |
| 27 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 26) |
| 31 | VIO/GRY | INJ 3 (CE207) | Fuel injector 3 (PDF p. 26) |
| 34 | VIO/GRN | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 26) |
| 35 | WHT | UO2SPC21 (LE450) | Oxygen sensor 21 (PDF p. 26) |
| 36 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 26) |
| 39 | BLK | SHDRTN (DE135) | Return circuit; branch destinations unresolved (PDF p. 26) |
| 40 | GRY/ORG | VRSRTN2 (RE429) | Return circuit; branch destinations unresolved (PDF p. 26) |
| 41 | GRN/VIO | CMP22 (VE707) | Camshaft position 22 sensor (PDF p. 26) |
| 42 | YEL/BLU | CMP21 (VE738) | Camshaft position 21 sensor (PDF p. 26) |
| 44 | YEL/ORG | IMRC2M (VE741) | Intake manifold runner control assembly (PDF p. 26) |
| 45 | BLU/WHT | IMRC1M (VE742) | Intake manifold runner control assembly (PDF p. 26) |
| 46 | GRY/BRN | INJ 7 (CE211) | Fuel injector 7 (PDF p. 26) |
| 47 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 26) |
| 49 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 26) |
| 50 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 26) |
| 51 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 26) |
| 52 | WHT/BRN | KS1 - (RE323) | Knock sensor 1 (PDF p. 26) |
| 53 | VIO/ORG | KS1 + (VE801) | Knock sensor 1 (PDF p. 26) |
| 54 | GRY/ORG | VRSRTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 26) |
| 55 | BRN/BLU | CMP12 (VE706) | Camshaft position 12 sensor (PDF p. 26) |
| 56 | WHT/GRN | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 26) |
| 57 | GRY | EOP (CMC24) | Engine oil pressure sensor (PDF p. 26) |
| 59 | WHT | IMRC2 (CE511) | Intake manifold runner control assembly (PDF p. 26) |
| 60 | YEL/GRY | IMRC (CE923) | Intake manifold runner control assembly (PDF p. 26) |
| 61 | GRY/YEL | INJ 2 (CE206) | Fuel injector 2 (PDF p. 26) |
| 62 | GRN/WHT | INJ 6 (CE210) | Fuel injector 6 (PDF p. 26) |
| 67 | BRN/GRN | KS2 - (RE324) | Knock sensor 2 (PDF p. 26) |
| 68 | BRN/BLU | KS2 + (VE802) | Knock sensor 2 (PDF p. 26) |
| 69 | GRN/BRN | CKP - (RE135) | Crankshaft position sensor (PDF p. 26) |
| 70 | YEL/VIO | CKP + (VE711) | Crankshaft position sensor (PDF p. 26) |
| 71 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 23) |
| 78 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 23) |
| 79 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 23) |
| 81 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 23) |
| 82 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 23) |
| 83 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 23) |
| 84 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 23) |
| 87 | YEL/BLU | COP2H (CE304) | Coil on plug 2 (PDF p. 23) |
| 88 | BLU/ORG | COP3F (CE305) | Coil on plug 3 (PDF p. 23) |
| 89 | WHT/BRN | COP5B (CE307) | Coil on plug 5 (PDF p. 23) |
| 90 | BLU/BRN | COP8D (CE310) | Coil on plug 8 (PDF p. 23) |
| 92 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 23) |
| 93 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 23) |
| 94 | YEL/GRY | COP7G (CE309) | Coil on plug 7 (PDF p. 23) |
| 95 | VIO/BRN | COP6E (CE308) | Coil on plug 6 (PDF p. 23) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 38 (20A), BLU CBK01, then C1381B-97, C1381B-99 through splice S103.

PCM relay control: C1381B-20, YEL/BLU CE302. The relay coil supply is fuse 22 (10A).

RUN/START fuse 60 (5A), YEL/VIO CBB60, feeds C1381B-64.

PCM ground circuits C1381B-100, C1381B-102, C1381B-103, GD113, terminate at G101. The supply/ground network uses S103 and S130; case-ground branches, where shown, use S120.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
