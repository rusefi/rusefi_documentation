# 2015 Ford Mustang V8-5.0L — PCM pinout

Transcribed from [2015-mustang-v8.pdf](2015-mustang-v8.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1-6, diagrams 466571-466576; page 7 is the export trailer). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The export header selects a V6/3.7L vehicle, which conflicts with the filename and the engine circuitry in these sheets. The scope here follows the diagram circuitry; the source header is not treated as confirmation of vehicle fitment.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C175B | 103 | Vehicle/body harness |
| C175E | 95 | Engine harness |

## C175B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 1) |
| 5 | BLK/YEL | CASEGND (GD113) | PCM case ground (PDF p. 1) |
| 8 | GRN/VIO | CLU DEACT SW (CE904) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 9 | BLU/ORG | CPP-BT (CE903) | Clutch pedal position circuit (PDF p. 1) |
| 10 | WHT/BLU | HFC (CEC01) | Cooling fans system (PDF p. 1) |
| 13 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 1) |
| 14 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 1) |
| 15 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 1) |
| 17 | GRN/BLU | LFC (CEC02) | Cooling fans system (PDF p. 1) |
| 20 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 1) |
| 22 | GRN/VIO | SHIFT DN (CET42) | Shift controls / paddle shifters (PDF p. 1) |
| 23 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 1) |
| 26 | VIO | GENLI (CDC15) | Starting/charging system (PDF p. 1) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 1) |
| 29 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 30 | YEL/VIO | SIGRTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 32 | BLU | REVERSE SW (CET47) | Reversing lamp switch / exterior lights (PDF p. 1) |
| 33 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 1) |
| 35 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 1) |
| 36 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 1) |
| 39 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 1) |
| 40 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 1) |
| 42 | BRN/VIO | START (CPK34) | Starting/charging system (PDF p. 1) |
| 46 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 1) |
| 47 | YEL/GRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 1) |
| 49 | YEL/GRY | IES (CE261) | Body control module (PDF p. 1) |
| 51 | GRY/VIO | SIGRTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 52 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 53 | VIO/GRN | MONITOR (VDC61) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 54 | BLU | SIGRTN (RE320) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 58 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 1) |
| 59 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 1) |
| 60 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 1) |
| 61 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 1) |
| 64 | YEL/VIO | ISP-R (CBB60) | Ignition supply (PDF p. 3) |
| 65 | GRY/ORG | UP WAKE (CE621) | Body control module (PDF p. 3) |
| 66 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 3) |
| 67 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 3) |
| 71 | WHT/ORG | SIGRTN (RE731) | Return circuit; branch destinations unresolved (PDF p. 3) |
| 72 | YEL/GRN | HO2S12 (VE731) | HO2S12 downstream oxygen sensor (PDF p. 3) |
| 73 | YEL/VIO | MAF (VE807) | Mass air flow sensor (PDF p. 3) |
| 75 | WHT/BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 3) |
| 76 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 3) |
| 90 | WHT/GRN | SIGRTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 3) |
| 91 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 3) |
| 97 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 3) |
| 99 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 3) |
| 100 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 102 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 103 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |

## C175E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/BLU | INJ 1 (CE205) | Fuel injector 1 (PDF p. 6) |
| 2 | BRN | INJ 5 (CE209) | Fuel injector 5 (PDF p. 6) |
| 3 | YEL/ORG | INJ 4 (CE208) | Fuel injector 4 (PDF p. 6) |
| 4 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 6) |
| 5 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 6) |
| 6 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 6) |
| 7 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 6) |
| 8 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 6) |
| 9 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 6) |
| 10 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 6) |
| 14 | BLU/GRY | TCC (CET10) | Transmission torque converter clutch circuit (PDF p. 6) |
| 15 | YEL/VIO | LPC (CET09) | Transmission line pressure control circuit (PDF p. 6) |
| 16 | VIO/ORG | INJ 8 (CE212) | Fuel injector 8 (PDF p. 6) |
| 17 | VIO/GRN | VPWR (LE111) | Transmission sensor supply (PDF p. 6) |
| 20 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 6) |
| 21 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 6) |
| 22 | BRN/BLU | TR GND (OR VBPWR) (RET24) | Transmission sensor ground (PDF p. 6) |
| 23 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 6) |
| 24 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 6) |
| 25 | WHT/VIO | TSS (RET33) | Transmission turbine shaft speed sensor (PDF p. 6) |
| 26 | YEL/ORG | OSS (RET04) | Transmission output shaft speed sensor (PDF p. 6) |
| 27 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 6) |
| 30 | BLU/BRN | EOL (LE142) | Engine oil level switch (PDF p. 6) |
| 31 | GRN/WHT | INJ 6 (CE210) | Fuel injector 6 (PDF p. 6) |
| 34 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 35 | WHT | UO2SPC21 (LE450) | Oxygen sensor 21 (PDF p. 6) |
| 36 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 6) |
| 37 | VIO | TR-P (VET32) | Transmission range circuit (PDF p. 6) |
| 39 | BLK | SHDRTN (DE135) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 40 | GRY/ORG | VRSRTN2 (RE429) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 41 | GRN/VIO | CMP22 (VE707) | Camshaft position 22 sensor (PDF p. 6) |
| 42 | YEL/BLU | CMP21 (VE738) | Camshaft position 21 sensor (PDF p. 6) |
| 44 | YEL/ORG | IMRC2M (VE741) | Intake manifold runner control assembly (PDF p. 6) |
| 45 | BLU/WHT | IMRC1M (VE742) | Intake manifold runner control assembly (PDF p. 6) |
| 46 | VIO/GRY | INJ 3 (CE207) | Fuel injector 3 (PDF p. 6) |
| 47 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 6) |
| 49 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 50 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 6) |
| 51 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 6) |
| 52 | WHT/BRN | KS1 - (RE323) | Knock sensor 1 (PDF p. 6) |
| 53 | VIO/ORG | KS1 + (VE801) | Knock sensor 1 (PDF p. 6) |
| 54 | GRY/ORG | SIGRTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 55 | BRN/BLU | CMP12 (VE706) | Camshaft position 12 sensor (PDF p. 6) |
| 56 | WHT/GRN | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 6) |
| 57 | GRY | EOP (CMC24) | Engine oil pressure sensor (PDF p. 6) |
| 60 | BLU | IMRC (CE316) | Intake manifold runner control assembly (PDF p. 6) |
| 61 | GRY/BRN | INJ 7 (CE211) | Fuel injector 7 (PDF p. 6) |
| 62 | GRY/YEL | INJ 2 (CE206) | Fuel injector 2 (PDF p. 6) |
| 67 | BRN/GRN | KS2 - (RE324) | Knock sensor 2 (PDF p. 6) |
| 68 | BRN/BLU | KS2 + (VE802) | Knock sensor 2 (PDF p. 6) |
| 69 | GRN/BRN | CKP - (RE135) | Crankshaft position sensor (PDF p. 6) |
| 70 | YEL/VIO | CKP + (VE711) | Crankshaft position sensor (PDF p. 6) |
| 71 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 3) |
| 72 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 3) |
| 73 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 3) |
| 74 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 3) |
| 75 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 3) |
| 77 | WHT/BLU | SSE (CET16) | Transmission solenoid assembly (PDF p. 3) |
| 78 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 3) |
| 79 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 3) |
| 81 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 3) |
| 82 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 3) |
| 83 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 3) |
| 84 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 3) |
| 87 | YEL/GRY | COP7G (CE309) | Coil on plug 7 (PDF p. 3) |
| 88 | VIO/BRN | COP6E (CE308) | Coil on plug 6 (PDF p. 3) |
| 89 | WHT/BRN | COP5B (CE307) | Coil on plug 5 (PDF p. 3) |
| 90 | BLU/BRN | COP8D (CE310) | Coil on plug 8 (PDF p. 3) |
| 91 | BLU/GRN | TSPC (CET25) | Transmission circuit (PDF p. 3) |
| 92 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 3) |
| 93 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 3) |
| 94 | BLU/ORG | COP3F (CE305) | Coil on plug 3 (PDF p. 3) |
| 95 | YEL/BLU | COP2H (CE304) | Coil on plug 2 (PDF p. 3) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 38 (20A), BLU CBK01, then C175B-97, C175B-99, C175E-17 through splice S103.

PCM relay control: C175B-20, YEL/BLU CE302. The relay coil supply is fuse 22 (10A).

RUN/START fuse 60 (5A), YEL/VIO CBB60, feeds C175B-64.

PCM ground circuits C175B-5, C175B-100, C175B-102, C175B-103, GD113, terminate at G101. The supply/ground network uses S103 and S130; case-ground branches, where shown, use S120.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
