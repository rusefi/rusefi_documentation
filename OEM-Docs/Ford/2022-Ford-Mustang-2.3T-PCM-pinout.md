# 2022 Ford Mustang 2.3L Turbo — PCM pinout

Transcribed from [2022-mustang-2.3.pdf](2022-mustang-2.3.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1-9). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1551B | 103 | Vehicle/body harness |
| C1551E | 95 | Engine harness |

## C1551B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/BRN | CPP-BT (CE113) | EVAP purge valve (PDF p. 1) |
| 4 | BLU | SST-SIGRTN (RE472) | Shift controls (PDF p. 1) |
| 5 | GRN/VIO | SHIFT DN (CET42) | Shift controls / paddle shifters (PDF p. 1) |
| 6 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 1) |
| 7 | BLU/ORG | CPP (CE903) | Clutch pedal position circuit (PDF p. 1) |
| 8 | BLU | REVERSE SW (CET47) | Reversing lamp switch / exterior lights (PDF p. 1) |
| 9 | BRN/GRN | EVM LEFT (VE915) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 10 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 1) |
| 11 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 1) |
| 13 | YEL/GRN | C-VREF (LE424) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 14 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 16 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 17 | YEL/GRN | TCBP (VE824) | Turbocharger boost pressure sensor (PDF p. 1) |
| 18 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 1) |
| 19 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 1) |
| 20 | WHT/BLU (or GRY) | EVC RIGHT (CE196) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 21 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 1) |
| 22 | GRN/BLU | EVAPCP (CE114) | EVAP canister vent valve (PDF p. 1) |
| 23 | GRN/VIO | FPM (RE226) | Fuel pump control module (PDF p. 1) |
| 24 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 1) |
| 25 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 1) |
| 26 | YEL/VIO | SIGRTN-C (RE407) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 28 | YEL/VIO | SIG RTN (RET47) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 29 | BRN | EGT11 (VE722) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 30 | VIO/ORG | ACTP (VH443) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 31 | YEL | AAT (VH407) | Ambient air temperature sensor (PDF p. 1) |
| 33 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 1) |
| 34 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 1) |
| 36 | GRY/VIO | SIGRTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 37 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 1) |
| 38 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 1) |
| 39 | WHT/BLU | HFC (CEC01) | Cooling fans system (PDF p. 1) |
| 42 | YEL/VIO | FPC (CE226) | Fuel pump control module (PDF p. 1) |
| 43 | GRN/BLU | LFC (CEC02) | Cooling fans system (PDF p. 1) |
| 44 | WHT/BLU | EVM RIGHT (VE939) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 45 | GRN/WHT | START 1 (CPK34) | Starting/charging system (PDF p. 1) |
| 47 | VIO/BRN | LIN (VE376) | LIN circuit; routing in source (PDF p. 1) |
| 49 | GRN | RDFT (VET66) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 52 | VIO/ORG | WAKEUP (CE436) | Body control module (PDF p. 2) |
| 53 | WHT/BRN | ENS (VMT23) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 54 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 2) |
| 56 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 2) |
| 58 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 2) |
| 59 | WHT/BRN | VACC (VE462) | Air conditioning system (PDF p. 2) |
| 60 | BLU/GRN | EVC LEFT (CE162) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 62 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 2) |
| 64 | YEL/VIO | ISP-R (CBB60) | Ignition supply (PDF p. 2) |
| 66 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 2) |
| 67 | BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 2) |
| 69 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 2) |
| 71 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 2) |
| 72 | YEL/GRN | PCV (VE779) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 73 | BRN/BLU | FLP (VE761) | Fuel pressure sensor (PDF p. 2) |
| 75 | GRN/VIO | CLUTCH DEACT SW MAN TRNS (CE904) | Clutch pedal switch / cruise control (PDF p. 2) |
| 83 | VIO/GRN | BATT MONITOR (VDC61) | Battery monitor / starting/charging system (PDF p. 2) |
| 92 | GRN | GENLI (CDC15) | Starting/charging system (PDF p. 2) |
| 93 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 2) |
| 96 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 2) |
| 97 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 2) |
| 98 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 2) |
| 99 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 2) |
| 100 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 2) |
| 101 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 2) |
| 102 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 2) |

## C1551E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 8) |
| 2 | WHT/VIO | TCWRVS (VE850) | Turbocharger wastegate regulating valve solenoid (PDF p. 8) |
| 5 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 8) |
| 6 | YEL/GRY | TCBY (CE148) | Turbocharger bypass valve (PDF p. 8) |
| 10 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 8) |
| 11 | VIO/ORG | KS1+ (VE801) | Knock sensor 1 (PDF p. 8) |
| 12 | WHT/BRN | KS1- (RE323) | Knock sensor 1 (PDF p. 8) |
| 13 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 14 | GRY/ORG | SIGRTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 16 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 8) |
| 17 | GRY | OPS (CMC24) | Oil pressure switch (PDF p. 8) |
| 19 | BLU/WHT | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 21 | BRN/YEL | EOP (CMC14) | Engine oil pressure sensor (PDF p. 8) |
| 23 | YEL/VIO | CKPP+ (VE711) | Crankshaft position sensor (PDF p. 8) |
| 24 | BLU | ISSB (VET74) | Transmission solenoid assembly (PDF p. 8) |
| 25 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 26 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 8) |
| 27 | BRN/BLU | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 8) |
| 28 | GRN/VIO | CMP12 (VE707) | Camshaft position 12 sensor (PDF p. 8) |
| 29 | BRN/VIO | TRP1 (VET84) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 30 | GRY/VIO | VREF (LE135) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 31 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 8) |
| 32 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 8) |
| 33 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 8) |
| 34 | GRN | UO2SPCT11 (LE452) | Oxygen sensor 11 (PDF p. 8) |
| 38 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 8) |
| 40 | BLU/GRY | CHT2 (VE712) | Cylinder head temperature sensor (PDF p. 8) |
| 41 | GRN/WHT | FRP (RE405) | Return circuit RE405; printed FRP label retained, branch destinations unresolved (PDF p. 8) |
| 42 | BRN/BLU | KS2+ (VE802) | Knock sensor 2 (PDF p. 8) |
| 43 | BRN/GRN | KS2- (RE324) | Knock sensor 2 (PDF p. 8) |
| 45 | YEL/BLU | COP2D (CE304) | Coil on plug 2 (PDF p. 8) |
| 50 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 8) |
| 51 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 8) |
| 52 | GRY/VIO | IAT2 (VE751) | Intake air temperature sensor (PDF p. 5) |
| 53 | GRN/BRN | MAP (VE804) | Manifold absolute pressure sensor (PDF p. 5) |
| 54 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 5) |
| 55 | GRY | RAIL PRESS SENS (LE238) | Fuel rail pressure sensor (PDF p. 5) |
| 57 | GRN/BRN | CKPN- (RE135) | Crankshaft position sensor (PDF p. 5) |
| 58 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 5) |
| 59 | BLU/ORG | COP3B (CE305) | Coil on plug 3 (PDF p. 5) |
| 60 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 5) |
| 61 | GRN/BRN | ISSA (VET73) | Transmission solenoid assembly (PDF p. 5) |
| 62 | BRN/BLU | SIGRTN (RET24) | Return circuit; branch destinations unresolved (PDF p. 5) |
| 64 | BLU/GRY | SSF (CET10) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 65 | YEL/VIO | SSE (CET09) | Transmission solenoid assembly (PDF p. 5) |
| 66 | WHT | TCC (CET51) | Transmission torque converter clutch circuit (PDF p. 5) |
| 67 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 5) |
| 68 | BRN/GRN | OSS (VET26) | Transmission output shaft speed sensor (PDF p. 5) |
| 70 | VIO/GRN (or BLU/BRN) | VBPWR (LE111 (or LE425)) | Transmission sensor supply (PDF p. 5) |
| 71 | GRY/BRN | 9V REF2 (LE461) | Transmission reference supply (PDF p. 5) |
| 72 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 5) |
| 73 | WHT/ORG | LPC (CET50) | Transmission line pressure control circuit (PDF p. 5) |
| 74 | BLU/BLK | SSB (CET06) | Transmission solenoid assembly (PDF p. 5) |
| 75 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 5) |
| 76 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 5) |
| 77 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 (PDF p. 5) |
| 78 | YEL/BLU | INJ1RTN (RE205) | Fuel injector 1 (PDF p. 5) |
| 79 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 5) |
| 80 | YEL/GRY | TRP2 (VET81) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 81 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 5) |
| 82 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 5) |
| 83 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 5) |
| 84 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump (PDF p. 5) |
| 88 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 (PDF p. 5) |
| 89 | BLU | INJ4RTN (RE208) | Fuel injector 4 (PDF p. 5) |
| 90 | WHT/ORG | TSS (VET33) | Transmission turbine shaft speed sensor (PDF p. 5) |
| 91 | BRN | TSPC2 (CET49) | Transmission circuit (PDF p. 5) |
| 92 | GRN | TSPC1 (CET25) | Transmission circuit (PDF p. 5) |
| 93 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 5) |
| 94 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 5) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 38 (20A), BLU CBK01, then C1551B-100, C1551B-101, C1551B-102 through splice S103.

PCM relay control: C1551B-25, YEL/BLU CE302. The relay coil supply is fuse 22 (10A).

RUN/START fuse 60 (5A), YEL/VIO CBB60, feeds C1551B-64.

PCM ground circuits C1551B-96, C1551B-97, C1551B-98, C1551B-99, GD113, terminate at G101. The supply/ground network uses S103 and S130; case-ground branches, where shown, use S120.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
