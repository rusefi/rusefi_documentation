# 2020 Ford Mustang GT V8-5.0L — PCM pinout

Transcribed from [Ford-Mustang-2020-2.3.pdf](Ford-Mustang-2020-2.3.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 9–19 (5.0L diagrams)). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The file name names 2.3L; these diagram captions identify 5.0L. T connector EGTLT/EGTRT labels lead to exhaust-valve circuits; they are preserved as printed. C175E-120 prints CKPN+ on LE135. C175E-48 uses CBB41 in this export.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C175B | 91 | Vehicle/body harness |
| C175T | 91 | Transmission harness |
| C175E | 127 | Engine harness |

## C175B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 9) |
| 2 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 9) |
| 3 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 9) |
| 6 | BLU | REVERSE SW (CET47) | Reversing lamp switch / exterior lights (PDF p. 9) |
| 7 | VIO/ORG | WAKEUP (CE436) | Body control module (PDF p. 9) |
| 8 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 9) |
| 11 | VIO/BRN | LIN (VE376) | LIN circuit; routing in source (PDF p. 9) |
| 12 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 9) |
| 13 | YEL/VIO | ISP-R (CBB60) | Ignition supply (PDF p. 9) |
| 14 | GRN/VIO | FP- (RE226) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 15 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 9) |
| 16 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 9) |
| 19 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 9) |
| 22 | GRN/WHT | START (CPK34) | Starting/charging system (PDF p. 9) |
| 23 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 9) |
| 24 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 9) |
| 25 | GRN | RDFT (VET66) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 26 | GRY/VIO | SIG RTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 27 | BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 9) |
| 28 | BLU/GRY | ACPT- (RH433) | A/C pressure transducer (PDF p. 9) |
| 29 | YEL | FP+ (CE226) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 34 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 9) |
| 35 | VIO/BRN | OPS (LE182) | Oil pressure switch (PDF p. 9) |
| 36 | YEL/VIO | MAF (VE807) | Mass air flow sensor (PDF p. 9) |
| 37 | WHT/BRN | ENS (VMT23) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 43 | YEL/VIO | SIG RTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 44 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 9) |
| 46 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 9) |
| 47 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 9) |
| 50 | GRN | GENLI (CDC15) | Starting/charging system (PDF p. 9) |
| 52 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 11) |
| 53 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 11) |
| 55 | VIO/GRN | BATT MONITOR (VDC61) | Battery monitor / starting/charging system (PDF p. 11) |
| 56 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 11) |
| 57 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 11) |
| 58 | BLU | SIG RTN (RE320) | Return circuit; branch destinations unresolved (PDF p. 11) |
| 59 | GRN/BLU | LFC (CEC02) | Cooling fans system (PDF p. 11) |
| 60 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 11) |
| 61 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 11) |
| 62 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 11) |
| 65 | GRN/VIO | SHIFT DOWN (CET42) | Shift controls / paddle shifters (PDF p. 11) |
| 68 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 11) |
| 69 | VIO/ORG | ACPT+ (VH433) | A/C pressure transducer (PDF p. 11) |
| 70 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 11) |
| 71 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 11) |
| 72 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 11) |
| 73 | BLU | SIG RTN (RE472) | Return circuit; branch destinations unresolved (PDF p. 11) |
| 76 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 11) |
| 77 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 11) |
| 78 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 11) |
| 79 | WHT/BRN | VACC (VE462) | Air conditioning system (PDF p. 11) |
| 81 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 11) |
| 82 | WHT/GRN | VREF (LH315) | Reference supply; branch destinations unresolved (PDF p. 11) |
| 84 | YEL/GRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 11) |
| 86 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 11) |
| 87 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 11) |
| 89 | WHT/BLU | HFC (CEC01) | Cooling fans system (PDF p. 11) |

## C175T — transmission harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | BRN | TSPC2 (CET49) | Transmission circuit (PDF p. 13) |
| 2 | BLU/GRN | TSPC1 (CET25) | Transmission circuit (PDF p. 13) |
| 4 | BLU/GRY | SSF (CET10) | Destination unresolved; follow printed circuit in source (PDF p. 13) |
| 5 | YEL/VIO | SSE (CET09) | Transmission solenoid assembly (PDF p. 13) |
| 7 | BRN/BLU | TRGND (RET24) | Destination unresolved; follow printed circuit in source (PDF p. 13) |
| 10 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 13) |
| 16 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 13) |
| 19 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 13) |
| 26 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 13) |
| 29 | WHT | UO2SPC11 (LE450) | Oxygen sensor 11 (PDF p. 13) |
| 30 | BRN/YEL | UO2SIP 11 (LE451) | Destination unresolved; follow printed circuit in source (PDF p. 13) |
| 34 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 13) |
| 35 | GRY/YEL | 9V REF2 (LE461) | Reference supply; branch destinations unresolved (PDF p. 13) |
| 36 | BRN/GRN | TRP1 (VET84 (or LETB2)) | Destination unresolved; follow printed circuit in source (PDF p. 13) |
| 37 | YEL/VIO | ISSA (VET80) | Transmission solenoid assembly (PDF p. 13) |
| 38 | WHT/ORG (or GRY/BRN) | TSS (VET73 (or LETB3)) | Transmission turbine shaft speed sensor (PDF p. 13) |
| 39 | GRN/WHT | BDCPM (LETB4) | Destination unresolved; follow printed circuit in source (PDF p. 13) |
| 40 | YEL/BLU | CPP1 (VE722) | Clutch pedal position circuit (PDF p. 13) |
| 42 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 13) |
| 44 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 13) |
| 45 | VIO/GRN | UREF 21 (LE449) | Destination unresolved; follow printed circuit in source (PDF p. 13) |
| 46 | GRY/VIO | HTR21 (CE236) | Oxygen sensor 21 (PDF p. 14) |
| 49 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 14) |
| 50 | BLU/BRN | VREF (LE425) | Reference supply; branch destinations unresolved (PDF p. 14) |
| 51 | BRN/GRN | OSS (VET26) | Transmission output shaft speed sensor (PDF p. 14) |
| 52 | BRN/GRN | EGTLT (VE915) | Destination unresolved; follow printed circuit in source (PDF p. 14) |
| 53 | WHT/BLU | EGTRT (VE939) | Destination unresolved; follow printed circuit in source (PDF p. 14) |
| 54 | BRN/WHT | ISSB (VETB1) | Transmission solenoid assembly (PDF p. 14) |
| 55 | YEL/GRY (or WHT) | TRP2 (VET81 (or VE757)) | Destination unresolved; follow printed circuit in source (PDF p. 14) |
| 59 | YEL/GRN | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 14) |
| 60 | WHT/GRN | UO2SN 21 (VE827) | Destination unresolved; follow printed circuit in source (PDF p. 14) |
| 63 | WHT/ORG | LPC (CET50) | Transmission line pressure control circuit (PDF p. 14) |
| 64 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 14) |
| 76 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 14) |
| 77 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 14) |
| 79 | WHT | TCC (CET51) | Transmission torque converter clutch circuit (PDF p. 14) |
| 81 | YEL/GRN | VREF (LE424) | Reference supply; branch destinations unresolved (PDF p. 14) |
| 82 | VIO/WHT | VREF (LE456) | Reference supply; branch destinations unresolved (PDF p. 14) |
| 84 | WHT/GRN (or BLK) | SIG RTN (RE731) | Return circuit; branch destinations unresolved (PDF p. 14) |
| 85 | GRN | SIG RTN (RE733) | Return circuit; branch destinations unresolved (PDF p. 14) |
| 89 | BLU/GRN | EGTLT (CE162) | Destination unresolved; follow printed circuit in source (PDF p. 14) |
| 90 | WHT/BLU (or GRY) | EGTRT (CE196) | Destination unresolved; follow printed circuit in source (PDF p. 14) |

## C175E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 19) |
| 2 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 19) |
| 3 | GRN/VIO | INJ3 RTN (RE207) | Fuel injector 3 (PDF p. 19) |
| 4 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 19) |
| 5 | YEL/GRN | SIG RTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 19) |
| 7 | BLU/WHT | IMRC1M (VE742) | Intake manifold runner control assembly (PDF p. 19) |
| 8 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 19) |
| 9 | WHT/BRN | KS11- (RE323) | Knock sensor 11 (PDF p. 19) |
| 12 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 19) |
| 13 | WHT/BRN | SIG RTN (RE329) | Return circuit; branch destinations unresolved (PDF p. 19) |
| 15 | YEL/GRY | IMRC (CE923) | Intake manifold runner control assembly (PDF p. 19) |
| 17 | YEL/VIO | INJ 3 (CE264) | Fuel injector 3 (PDF p. 19) |
| 18 | BLU/GRY | INJ 6 (CE267) | Fuel injector 6 (PDF p. 19) |
| 20 | WHT/ORG | INJ8 RTN (RE212) | Fuel injector 8 (PDF p. 19) |
| 21 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 19) |
| 22 | BLU | INJ4 RTN (RE208) | Fuel injector 4 (PDF p. 19) |
| 23 | YEL/BLU | INJ1 RTN (RE205) | Fuel injector 1 (PDF p. 19) |
| 24 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 19) |
| 25 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 19) |
| 27 | YEL/ORG | IMRC2M (VE741) | Intake manifold runner control assembly (PDF p. 19) |
| 30 | VIO/ORG | KS11+ (VE801) | Knock sensor 11 (PDF p. 19) |
| 31 | GRN | FRT (VE728) | Destination unresolved; follow printed circuit in source (PDF p. 19) |
| 36 | BLU/GRN | INJ 2 (CE263) | Fuel injector 2 (PDF p. 19) |
| 38 | VIO/GRN | INJ 5 (CE266) | Fuel injector 5 (PDF p. 19) |
| 39 | GRN | INJ 1 (CE262) | Fuel injector 1 (PDF p. 19) |
| 41 | VIO/GRY | INJ8 (CE212) | Fuel injector 8 (PDF p. 19) |
| 42 | VIO/BRN | COP6E (CE308) | Coil on plug 6 (PDF p. 19) |
| 43 | GRN/WHT | INJ6 (CE210) | Fuel injector 6 (PDF p. 19) |
| 44 | GRY/BRN | INJ7 (CE211) | Fuel injector 7 (PDF p. 19) |
| 45 | WHT/GRN | INJ5 RTN (RE209) | Fuel injector 5 (PDF p. 19) |
| 46 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 19) |
| 47 | VIO | VRSRTN2 (RE143) | Return circuit; branch destinations unresolved (PDF p. 19) |
| 48 | BLU | VPWR (CBB41) | PCM power supply (PDF p. 19) |
| 51 | BRN/BLU | KS21+ (VE802) | Knock sensor 21 (PDF p. 19) |
| 53 | YEL/ORG | KS12+ (VE828) | Knock sensor 12 (PDF p. 19) |
| 54 | BRN/BLU | CMP12 (VE706) | Camshaft position 12 sensor (PDF p. 19) |
| 58 | GRN/BLU | KS22+ (VE829) | Knock sensor 22 (PDF p. 19) |
| 62 | WHT/BRN | COP5B (CE307) | Coil on plug 5 (PDF p. 19) |
| 63 | BLU/ORG | COP3F (CE305) | Coil on plug 3 (PDF p. 19) |
| 64 | BRN/VIO | INJ6 RTN (RE210) | Fuel injector 6 (PDF p. 19) |
| 65 | BLU/WHT | INJ7 RTN (RE211) | Fuel injector 7 (PDF p. 19) |
| 66 | BRN | INJ5 (CE209) | Fuel injector 5 (PDF p. 19) |
| 69 | GRY | EOP (CMC24) | Engine oil pressure sensor (PDF p. 19) |
| 70 | BRN/BLU | FRP (VE761) | Fuel rail pressure sensor (PDF p. 19) |
| 71 | BLU/BRN | FRP (VE727) | Fuel rail pressure sensor (PDF p. 16) |
| 72 | BRN/GRN | KS21- (RE324) | Knock sensor 21 (PDF p. 16) |
| 74 | GRN | KS12- (RE344) | Knock sensor 12 (PDF p. 16) |
| 75 | YEL/BLU | CMP21 (VE738) | Camshaft position 21 sensor (PDF p. 16) |
| 76 | WHT/GRN | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 16) |
| 77 | GRN/VIO | CMP22 (VE707) | Camshaft position 22 sensor (PDF p. 16) |
| 78 | YEL/VIO | CKPP+ (VE711) | Crankshaft position sensor (PDF p. 16) |
| 79 | VIO/GRY | KS22- (RE345) | Knock sensor 22 (PDF p. 16) |
| 81 | WHT | INJ 4 (CE265) | Fuel injector 4 (PDF p. 16) |
| 83 | YEL/GRY | COP7G (CE309) | Coil on plug 7 (PDF p. 16) |
| 84 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 16) |
| 85 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 16) |
| 86 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 16) |
| 89 | GRY/YEL | OPC (CE358) | Destination unresolved; follow printed circuit in source (PDF p. 16) |
| 91 | BRN | VRSRTN (RE144) | Return circuit; branch destinations unresolved (PDF p. 16) |
| 99 | BLU/GRN | CHTS (RE138) | Cylinder head temperature sensor (PDF p. 16) |
| 102 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 16) |
| 103 | BLU/ORG | INJ2 RTN (RE206) | Fuel injector 2 (PDF p. 16) |
| 105 | BLU/BRN | COP8D (CE310) | Coil on plug 8 (PDF p. 16) |
| 106 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 16) |
| 107 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump (PDF p. 16) |
| 110 | GRY/VIO | INJ 8 (CE269) | Fuel injector 8 (PDF p. 16) |
| 111 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 16) |
| 113 | GRN/BRN | CKPN- (RE135) | Crankshaft position sensor (PDF p. 16) |
| 114 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 16) |
| 115 | GRY | VREF (LE238) | Reference supply; branch destinations unresolved (PDF p. 16) |
| 116 | BLU | VREF (LE329) | Reference supply; branch destinations unresolved (PDF p. 16) |
| 117 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 16) |
| 118 | VIO/GRN | VBPWR (LE111) | Engine/transmission reference supply; branches unresolved (PDF p. 16) |
| 120 | GRY/VIO | CKPN+ (LE135) | Printed CKPN+ on reference circuit LE135; branch routing unresolved (PDF p. 16) |
| 123 | BRN/YEL | INJ 7 (CE268) | Fuel injector 7 (PDF p. 16) |
| 124 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 16) |
| 126 | YEL/BLU | COP2H (CE304) | Coil on plug 2 (PDF p. 16) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 38 (20A), BLU CBK01, then C175B-1, C175B-2, C175B-16, C175E-48 through splice S103.

PCM relay control: C175B-60, YEL/BLU CE302. The relay coil supply is fuse 22 (10A).

RUN/START fuse 60 (5A), YEL/VIO CBB60, feeds C175B-13.

PCM grounds: C175B-46, C175B-47, C175B-61, C175B-62, C175B-76, C175B-77, BLK/YEL GD113, to G101.

C175E-48 is BLU CBB41 in this source; the fuse 41 (15A) branch is shown on PDF page 10. It is not substituted with the later CBK01 label.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
