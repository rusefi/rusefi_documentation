# 2016 Ford Taurus V6-3.5L — PCM pinout

Transcribed from [Ford-Taurus-2016.pdf](Ford-Taurus-2016.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 7–12 (naturally aspirated 3.5L diagrams)). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

C175B-32 prints TR-4 with BLU/ORG (or VIO), VET31 (or VET32). These source alternatives are preserved; they are not combined into one assumed wire.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C175B | 103 | Vehicle/body harness |
| C175E | 95 | Engine harness |

## C175B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/WHT | SMCS (CE336) | Starting/charging system (PDF p. 7) |
| 2 | WHT/BRN | VACC (VE462) | Air conditioning system (PDF p. 7) |
| 5 | BLK/YEL | PWR GND (GD133) | PCM ground (PDF p. 7) |
| 8 | YEL | TR-2 (VET30) | Transmission range circuit (PDF p. 7) |
| 9 | VIO/WHT | TR-1 (VET29) | Transmission range circuit (PDF p. 7) |
| 10 | BRN | HFC (CEC07) | Cooling fans system (PDF p. 7) |
| 11 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 7) |
| 13 | BLU/ORG | GEN COM (CDC10) | Starting/charging system (PDF p. 7) |
| 14 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 7) |
| 15 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 7) |
| 17 | GRN/WHT | LFC (CEC08) | Cooling fans system (PDF p. 7) |
| 20 | BRN/WHT | PCMRC (CE237) | PCM power relay (PDF p. 7) |
| 22 | GRN/VIO | SHIFT DOWN (CET42) | Shift controls / paddle shifters (PDF p. 7) |
| 23 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 7) |
| 24 | WHT | AWDM (VCF34) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 26 | VIO | GEN MON (CDC15) | Starting/charging system (PDF p. 7) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 7) |
| 29 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 30 | WHT/VIO | INJPWRM (RE230) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 32 | BLU/ORG-or-VIO | TR-4 (VET31-or-VET32) | Transmission range circuit (PDF p. 7) |
| 33 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 7) |
| 35 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 7) |
| 36 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 7) |
| 39 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 7) |
| 40 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 7) |
| 42 | BLU/WHT | START (CDC35) | Starting/charging system (PDF p. 7) |
| 46 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 7) |
| 47 | BRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 7) |
| 51 | YEL/VIO | SIG RTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 7) |
| 52 | YEL/GRN | VREF (LE424) | Reference supply; branch destinations unresolved (PDF p. 7) |
| 53 | VIO/GRN | BCS2 ALT (VDC61) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 58 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 7) |
| 59 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 7) |
| 60 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 7) |
| 61 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 7) |
| 63 | GRN | AWDC (VCF35) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 64 | YEL/ORG | ISP-R (CBB90) | Ignition supply (PDF p. 7) |
| 65 | VIO/ORG | PCM WAKE (CE436) | Body control module (PDF p. 7) |
| 66 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 7) |
| 67 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 7) |
| 71 | GRN | HO2S12 (RE242) | Oxygen sensor 12 (PDF p. 9) |
| 72 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 9) |
| 74 | WHT/GRN | AGS (VDN06) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 75 | WHT/BLU | HS CAN+ (VDB04) | Computer data lines system (PDF p. 9) |
| 76 | WHT | HS CAN- (VDB05) | Computer data lines system (PDF p. 9) |
| 78 | VIO/ORG | VSOUT (VMC05) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 90 | WHT/GRN | HO2S22 (RE249) | Oxygen sensor 22 (PDF p. 9) |
| 91 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 9) |
| 93 | BRN | TCS (CET35) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 97 | WHT/VIO | VPWR (CBB69) | PCM power supply (PDF p. 9) |
| 99 | WHT/VIO | VPWR (CBB69) | PCM power supply (PDF p. 9) |
| 100 | BLK/YEL | PWR GND (GE113) | PCM ground (PDF p. 9) |
| 102 | BLK/YEL | PWR GND (GE113) | PCM ground (PDF p. 9) |
| 103 | BLK/YEL | PWR GND (GE113) | PCM ground (PDF p. 9) |

## C175E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/BLU | INJ-1 (CE205) | Destination unresolved; follow printed circuit in source (PDF p. 12) |
| 2 | YEL/ORG | INJ-4 (CE208) | Destination unresolved; follow printed circuit in source (PDF p. 12) |
| 3 | GRY/YEL | INJ-2 (CE206) | Destination unresolved; follow printed circuit in source (PDF p. 12) |
| 4 | WHT/ORG | VCT 12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 12) |
| 5 | VIO | VCT 11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 12) |
| 6 | BRN/VIO | VCT 22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 12) |
| 7 | YEL/GRY | VCT 21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 12) |
| 8 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 12) |
| 9 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 12) |
| 10 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 12) |
| 14 | BLU/GRY | TCC (CET10) | Transmission torque converter clutch circuit (PDF p. 12) |
| 15 | YEL/VIO | LPC (CET09) | Transmission line pressure control circuit (PDF p. 12) |
| 16 | BRN | INJ-5 (CE209) | Destination unresolved; follow printed circuit in source (PDF p. 12) |
| 17 | VIO/GRN | VRSRTN (LE111) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 18 | BLU | VPWRF (INJ) (CBK01) | PCM power supply (PDF p. 12) |
| 20 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 12) |
| 21 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 12) |
| 22 | BRN/BLU | TSS/OSS/TR GND (RET24) | Transmission turbine shaft speed sensor (PDF p. 12) |
| 23 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 12) |
| 24 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 12) |
| 25 | WHT/VIO | TSS (RET33) | Transmission turbine shaft speed sensor (PDF p. 12) |
| 26 | YEL/ORG | OSS (RET04) | Transmission output shaft speed sensor (PDF p. 12) |
| 27 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 12) |
| 29 | GRN/WHT | SIGRTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 30 | BLU/ORG | TR-3 (VET31) | Transmission range circuit (PDF p. 12) |
| 31 | VIO/GRY | INJ-3 (CE207) | Destination unresolved; follow printed circuit in source (PDF p. 12) |
| 32 | BLU/GRN | MAP (VE803) | Manifold absolute pressure sensor (PDF p. 12) |
| 34 | BLU/WHT | VREF2 (LE458) | Reference supply; branch destinations unresolved (PDF p. 12) |
| 35 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 12) |
| 36 | WHT | UO2SPC21 (LE450) | Oxygen sensor 21 (PDF p. 12) |
| 39 | BLK | SHDRTN (DE135) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 40 | GRY/ORG | VRSRTN2 (RE429) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 41 | GRN/VIO | CMP22 (VE707) | Camshaft position 22 sensor (PDF p. 12) |
| 42 | YEL/BLU | CMP21 (VE738) | Camshaft position 21 sensor (PDF p. 12) |
| 46 | GRN/WHT | INJ-6 (CE210) | Destination unresolved; follow printed circuit in source (PDF p. 12) |
| 47 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 12) |
| 48 | GRY | OPS (CMC24) | Oil pressure switch (PDF p. 12) |
| 49 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 50 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 12) |
| 51 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 12) |
| 52 | WHT/BRN | KS1 - (RE323) | Knock sensor 1 (PDF p. 12) |
| 53 | VIO/ORG | KS1 + (VE801) | Knock sensor 1 (PDF p. 12) |
| 54 | GRY/ORG | VRSRTN2 (RE429) | Return circuit; branch destinations unresolved (PDF p. 12) |
| 55 | BRN/BLU | CMP12 (VE706) | Camshaft position 12 sensor (PDF p. 12) |
| 56 | WHT/GRN | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 12) |
| 67 | BRN/GRN | KS2 - (RE324) | Knock sensor 2 (PDF p. 12) |
| 68 | BRN/BLU | KS2 + (VE802) | Knock sensor 2 (PDF p. 12) |
| 69 | GRN/BRN | CKP- (RE135) | Crankshaft position sensor (PDF p. 12) |
| 70 | YEL/VIO | CKP+ (VE711) | Crankshaft position sensor (PDF p. 12) |
| 71 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 11) |
| 72 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 11) |
| 73 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 11) |
| 74 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 11) |
| 75 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 11) |
| 77 | VIO/GRY | SSE (CET19) | Transmission solenoid assembly (PDF p. 11) |
| 78 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 11) |
| 79 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 11) |
| 81 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 11) |
| 82 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 11) |
| 83 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 11) |
| 84 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 11) |
| 88 | BLU/ORG | COP3E (CE305) | Coil on plug 3 (PDF p. 11) |
| 89 | GRN/VIO | COP4B (CE306) | Coil on plug 4 (PDF p. 11) |
| 90 | WHT/BRN | COP5D (CE307) | Coil on plug 5 (PDF p. 11) |
| 91 | BLU/GRN | TSPC (CET25) | Transmission circuit (PDF p. 11) |
| 92 | YEL/BLU | COP2C (CE304) | Coil on plug 2 (PDF p. 11) |
| 93 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 11) |
| 94 | VIO/BRN | COP6F (CE308) | Coil on plug 6 (PDF p. 11) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 69 (20A), WHT/VIO CBB69, then C175B-97, C175B-99 through splice S157.

PCM relay control: C175B-20, BRN/WHT CE237. The relay coil feed is fuse 86 (7.5A).

RUN/START fuse 90 (10A), YEL/ORG CBB90, feeds C175B-64.

C175B-100, -102 and -103 power grounds terminate at G105 through S116; the source prints GE113 on this branch. C175B-5 is the separate GD133 case-ground branch to G102.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
