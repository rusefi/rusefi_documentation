# 2022 Ford Mustang Shelby GT500 5.2L supercharged — PCM pinout

Transcribed from [2022-mustang-5.2.pdf](2022-mustang-5.2.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1-8). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Printed unused-terminal ranges overlap individually wired terminals in this export. Individually drawn circuits are retained; the ranges do not override those connections.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1232B | 91 | Vehicle/body harness |
| C1232T | 91 | Transmission harness |
| C1232E | 127 | Engine harness |

## C1232B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 1) |
| 2 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 1) |
| 3 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 1) |
| 4 | GRN/BLU | FCI (CEC02) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 7 | VIO/ORG | WAKE UP (CE436) | Body control module (PDF p. 1) |
| 8 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 1) |
| 12 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 1) |
| 13 | YEL/VIO | ISP R (CBB60) | Ignition supply (PDF p. 1) |
| 14 | GRN/VIO | FPRP (RE226) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 15 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 1) |
| 16 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 1) |
| 19 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 1) |
| 20 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 1) |
| 22 | BRN/VIO | START (CPK34) | Starting/charging system (PDF p. 1) |
| 23 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 1) |
| 24 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 1) |
| 25 | GRN | RDFT (VET66) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 26 | GRY/VIO | SIGRTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 27 | BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 1) |
| 28 | BLU/GRY | SIGRTN (RH433) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 29 | YEL | FPRC (CE226) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 34 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 1) |
| 35 | YEL/GRN | DIAG (VYT12) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 43 | YEL/VIO | SIG RTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 44 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 1) |
| 46 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 1) |
| 47 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 1) |
| 50 | VIO | GENLI (CDC15) | Starting/charging system (PDF p. 1) |
| 52 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 1) |
| 53 | BLU/BRN | FTP (CE908) | Fuel tank pressure sensor (PDF p. 1) |
| 55 | VIO/GRN | BATT MONITOR (VDC61) | Battery monitor / starting/charging system (PDF p. 1) |
| 56 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 1) |
| 57 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 1) |
| 61 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 1) |
| 62 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 1) |
| 63 | VIO/GRY | SPEED COMMAND (VYT11) | Destination unresolved; follow printed circuit in source (PDF p. 4) |
| 68 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 4) |
| 69 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 4) |
| 70 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 4) |
| 71 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 4) |
| 72 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 4) |
| 73 | BRN/BLU | SIGRTN (RE908) | Return circuit; branch destinations unresolved (PDF p. 4) |
| 76 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 4) |
| 77 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 4) |
| 78 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 4) |
| 81 | GRN/VIO | VREF (LF423) | Reference supply; branch destinations unresolved (PDF p. 4) |
| 82 | GRN/VIO | VREF (LH315) | Reference supply; branch destinations unresolved (PDF p. 4) |
| 84 | YEL/GRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 4) |
| 86 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 4) |
| 87 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 4) |

## C1232T — transmission harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 8 | BLU/WHT | TRANS CAN + (VDB35) | Computer data lines system (PDF p. 5) |
| 10 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 5) |
| 16 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 5) |
| 23 | BRN/YEL | TRANS CAN - (VDB36) | Computer data lines system (PDF p. 5) |
| 26 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 5) |
| 29 | WHT | UO2SPC11 (LE450) | Oxygen sensor 11 (PDF p. 5) |
| 30 | BRN/YEL | UO2SPC21 (LE451) | Oxygen sensor 21 (PDF p. 5) |
| 37 | WHT/GRN | FPM2 (VE521) | Fuel pump control module (PDF p. 5) |
| 44 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 5) |
| 45 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 5) |
| 46 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 5) |
| 48 | WHT | EVC RIGHT (CE196) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 52 | BRN/GRN | EVM LEFT (VE915) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 53 | WHT/BLU | EVM RIGHT (VE939) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 59 | YEL/GRN | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 5) |
| 60 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 5) |
| 74 | BLU/GRN | EVC LEFT (CE162) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 76 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 5) |
| 77 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 5) |
| 84 | WHT/ORG | SIGRTN (RE731) | Return circuit; branch destinations unresolved (PDF p. 5) |
| 85 | GRN | SIGRTN (RE733) | Return circuit; branch destinations unresolved (PDF p. 5) |

## C1232E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 4 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 4) |
| 5 | BLU/BRN | SIGRTN (RE238) | Return circuit; branch destinations unresolved (PDF p. 4) |
| 8 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 4) |
| 9 | WHT/BRN | KS11- (RE323) | Knock sensor 11 (PDF p. 4) |
| 12 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 4) |
| 13 | BLU | RTN TCIP (RE320) | Return circuit; branch destinations unresolved (PDF p. 4) |
| 17 | YEL/VIO | INJ 3 (CE264) | Fuel injector 3 (PDF p. 4) |
| 18 | BLU/GRY | INJ 6 (CE267) | Fuel injector 6 (PDF p. 4) |
| 21 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 4) |
| 25 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 4) |
| 28 | YEL/BLU | CACT (VE792) | Charge air temperature sensor (PDF p. 4) |
| 29 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 4) |
| 30 | VIO/ORG | KS11+ (VE801) | Knock sensor 11 (PDF p. 4) |
| 31 | GRN | FRT (VE728) | Destination unresolved; follow printed circuit in source (PDF p. 4) |
| 36 | BLU/GRN | INJ 2 (CE263) | Fuel injector 2 (PDF p. 4) |
| 38 | VIO/GRN | INJ 5 (CE266) | Fuel injector 5 (PDF p. 7) |
| 39 | GRN | INJ 1 (CE262) | Fuel injector 1 (PDF p. 7) |
| 42 | VIO/BRN | COP6E (CE308) | Coil on plug 6 (PDF p. 7) |
| 46 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 7) |
| 47 | VIO | VRSRTN (RE143) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 48 | BLU | INJPWRM (CBK01) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 50 | BLU/GRN | TCIP+ (VE803) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 51 | BRN/BLU | KS21+ (VE802) | Knock sensor 21 (PDF p. 7) |
| 53 | YEL/ORG | KS12+ (VE828) | Knock sensor 12 (PDF p. 7) |
| 54 | GRN/VIO | CMP12 (VE706) | Camshaft position 12 sensor (PDF p. 7) |
| 58 | GRN/BRN | KS22+ (VE829) | Knock sensor 22 (PDF p. 7) |
| 60 | GRY/BLU | CACCPC (CH307) | Air conditioning system (PDF p. 7) |
| 62 | WHT/BRN | COP5B (CE307) | Coil on plug 5 (PDF p. 7) |
| 63 | BLU/ORG | COP3F (CE305) | Coil on plug 3 (PDF p. 7) |
| 69 | GRY | EOP (CMC24) | Engine oil pressure sensor (PDF p. 7) |
| 70 | BRN/BLU | LPFSP (VE761) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 72 | BRN/GRN | KS21- (RE324) | Knock sensor 21 (PDF p. 7) |
| 73 | YEL | CKCP (VE763) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 74 | GRN | KS12- (RE344) | Knock sensor 12 (PDF p. 7) |
| 75 | YEL/BLU | CMP21 (VE738) | Camshaft position 21 sensor (PDF p. 7) |
| 76 | WHT/GRN | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 7) |
| 77 | GRN/VIO | CMP22 (VE707) | Camshaft position 22 sensor (PDF p. 7) |
| 78 | VIO/GRN | SHDRTN (LE135) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 79 | VIO/GRY | KS22- (RE345) | Knock sensor 22 (PDF p. 7) |
| 81 | WHT | INJ 4 (CE265) | Fuel injector 4 (PDF p. 7) |
| 83 | YEL/GRY | COP7G (CE309) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 84 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 7) |
| 85 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 7) |
| 91 | BRN | SIG RTN (RE144) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 92 | GRN | SIG RTN (RE402) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 94 | BLU | TCBP (LE239) | Turbocharger boost pressure sensor (PDF p. 7) |
| 98 | GRY | CACCT (CE193) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 99 | BLU/GRN | SIGRTN (RE138) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 102 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 7) |
| 105 | BLU/BRN | COP8D (CE310) | Coil on plug 8 (PDF p. 7) |
| 106 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 7) |
| 110 | GRY/VIO | INJ-8 (CE269) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 111 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 7) |
| 113 | GRN/WHT | CKP- (RE135) | Crankshaft position sensor (PDF p. 7) |
| 114 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 7) |
| 115 | GRY | FRP (LE238) | Fuel rail pressure sensor (PDF p. 7) |
| 116 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 5) |
| 117 | YEL | ETCRTN (LE134) | Throttle reference supply; source prints ETCRTN for LE134 (PDF p. 5) |
| 118 | VIO/GRN | VREF (LE111) | Reference supply; branch destinations unresolved (PDF p. 5) |
| 120 | GRN/VIO | CKP+ (VE711) | Crankshaft position sensor (PDF p. 5) |
| 121 | WHT/VIO | Not labelled (RE468) | Return circuit RE468; destination unresolved (PDF p. 5) |
| 123 | BRN/YEL | INJ 7 (CE268) | Fuel injector 7 (PDF p. 5) |
| 126 | YEL/BLU | COP2H (CE304) | Destination unresolved; follow printed circuit in source (PDF p. 5) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 38 (20A), BLU CBK01, then C1232B-1, C1232B-2, C1232B-16 through splice S103.

PCM relay control: C1232B-20, YEL/BLU CE302. The relay coil supply is fuse 22 (10A).

RUN/START fuse 60 (5A), YEL/VIO CBB60, feeds C1232B-13.

PCM grounds: C1232B-46, C1232B-47, C1232B-61, C1232B-62, C1232B-76, C1232B-77, BLK/YEL GD113, to G101.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
