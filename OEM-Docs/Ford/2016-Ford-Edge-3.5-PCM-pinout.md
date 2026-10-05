# 2016 Ford Edge V6-3.5L — PCM pinout

Transcribed from [Ford-Edge-2016.pdf](Ford-Edge-2016.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 17–23 (3.5L diagrams); page 24 is blank). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C175B | 103 | Vehicle/body harness |
| C175E | 95 | Engine harness |

## C175B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 17) |
| 2 | WHT/BRN | VACC (VE462) | Air conditioning system (PDF p. 17) |
| 5 | BLK/YEL | CASE GND (GD113) | PCM case ground (PDF p. 17) |
| 8 | YEL | TR-2 (VET30) | Transmission range circuit (PDF p. 17) |
| 9 | VIO/WHT | TR-1 (VET29) | Transmission range circuit (PDF p. 17) |
| 10 | WHT/BLU | HFC/FCV (CEC01) | Cooling fans system (PDF p. 17) |
| 11 | BRN/YEL | TCFT (VET27) | Transmission fluid temperature sensor (PDF p. 17) |
| 13 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 17) |
| 14 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 17) |
| 15 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 17) |
| 17 | GRN/BLU | LFC (CEC02) | Cooling fans system (PDF p. 17) |
| 20 | BRN/WHT | PCMRC (CE237) | PCM power relay (PDF p. 17) |
| 22 | GRN/VIO | SHIFT DN (CET42) | Shift controls / paddle shifters (PDF p. 17) |
| 23 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 17) |
| 24 | WHT | AWDM (VCF34) | Destination unresolved; follow printed circuit in source (PDF p. 17) |
| 26 | VIO | GENLI (CDC15) | Starting/charging system (PDF p. 17) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 17) |
| 29 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 17) |
| 30 | WHT/VIO | SIGRTN (RE230) | Return circuit; branch destinations unresolved (PDF p. 17) |
| 32 | BLU/ORG | TR-4 (VET31) | Transmission range circuit (PDF p. 17) |
| 33 | VIO/ORG | ACPT (VH443) | A/C pressure transducer (PDF p. 17) |
| 35 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 17) |
| 36 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 17) |
| 39 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 17) |
| 40 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 17) |
| 42 | BLU/WHT | START (CDC35) | Starting/charging system (PDF p. 17) |
| 46 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 17) |
| 47 | GRN/BLU | AAT (VE750) | Ambient air temperature sensor (PDF p. 17) |
| 49 | BRN | IES (CR115) | Body control module (PDF p. 17) |
| 51 | YEL/VIO | SIG RTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 17) |
| 52 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 17) |
| 53 | VIO/GRN | BATT MONITOR (VDC61) | Battery monitor / starting/charging system (PDF p. 17) |
| 58 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 17) |
| 59 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 17) |
| 60 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 17) |
| 61 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 17) |
| 63 | GRN | AWDC (VCF35) | Destination unresolved; follow printed circuit in source (PDF p. 17) |
| 64 | BLU/WHT | ISP-R (CBB26) | Ignition supply (PDF p. 17) |
| 65 | VIO/ORG | WAKE UP (CE436) | Body control module (PDF p. 17) |
| 66 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 17) |
| 67 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 17) |
| 71 | WHT/ORG | SIG RTN (RE731) | Return circuit; branch destinations unresolved (PDF p. 19) |
| 72 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 19) |
| 75 | WHT/BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 19) |
| 76 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 19) |
| 78 | GRY/BLU | CPC (CE307) | Air conditioning system (PDF p. 19) |
| 90 | GRN | SIG RTN (RE733) | Return circuit; branch destinations unresolved (PDF p. 19) |
| 91 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 19) |
| 97 | GRN/BLU | VPWR (CBB07) | PCM power supply (PDF p. 19) |
| 99 | GRN/BLU | VPWR (CBB07) | PCM power supply (PDF p. 19) |
| 100 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 19) |
| 102 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 19) |
| 103 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 19) |

## C175E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/BLU | INJ 1 (CE205) | Fuel injector 1 (PDF p. 23) |
| 2 | YEL/ORG | INJ 4 (CE208) | Fuel injector 4 (PDF p. 23) |
| 3 | GRY/YEL | INJ 2 (CE206) | Fuel injector 2 (PDF p. 23) |
| 4 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 23) |
| 5 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 23) |
| 6 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 23) |
| 7 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 23) |
| 8 | YEL | ETC REF (LE134) | Electronic throttle control assembly (PDF p. 23) |
| 9 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 23) |
| 10 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 23) |
| 14 | BLU/GRY | TCC (CET10) | Transmission torque converter clutch circuit (PDF p. 23) |
| 15 | YEL/VIO | LPC (CET09) | Transmission line pressure control circuit (PDF p. 23) |
| 16 | BRN | INJ 5 (CE209) | Fuel injector 5 (PDF p. 23) |
| 17 | VIO/GRN | VPWR (LE111) | PCM power supply (PDF p. 23) |
| 18 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 23) |
| 20 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 23) |
| 21 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 23) |
| 22 | BRN/BLU | TSS/OSS/TR GND (RET24) | Transmission turbine shaft speed sensor (PDF p. 23) |
| 23 | BLU/ORG | ETC RTN (RE134) | Electronic throttle control assembly (PDF p. 23) |
| 24 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 23) |
| 25 | WHT/VIO | TSS (RET33) | Transmission turbine shaft speed sensor (PDF p. 23) |
| 26 | YEL/ORG | OSS (RET04) | Transmission output shaft speed sensor (PDF p. 23) |
| 27 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 23) |
| 29 | GRN/WHT | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 23) |
| 30 | BLU/ORG | TR-3 (VET31) | Transmission range circuit (PDF p. 23) |
| 31 | VIO/GRY | INJ 3 (CE207) | Fuel injector 3 (PDF p. 23) |
| 32 | BLU/GRN | MAP (VE803) | Manifold absolute pressure sensor (PDF p. 23) |
| 34 | BLU/WHT | VREF2 (LE458) | Reference supply; branch destinations unresolved (PDF p. 23) |
| 35 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 23) |
| 36 | WHT | UO2SPC21 (LE450) | Oxygen sensor 21 (PDF p. 23) |
| 39 | BLK | SHD RTN (DE135) | Return circuit; branch destinations unresolved (PDF p. 23) |
| 40 | GRY/ORG | SIG RTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 23) |
| 41 | GRN/VIO | CMP22 (VE707) | Camshaft position 22 sensor (PDF p. 23) |
| 42 | YEL/BLU | CMP21 (VE738) | Camshaft position 21 sensor (PDF p. 23) |
| 46 | GRN/WHT | INJ 6 (CE210) | Fuel injector 6 (PDF p. 23) |
| 47 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 23) |
| 48 | GRY | EOP (CMC24) | Engine oil pressure sensor (PDF p. 23) |
| 49 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 23) |
| 50 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 23) |
| 51 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 23) |
| 52 | WHT/BRN | KS1 - (RE323) | Knock sensor 1 (PDF p. 23) |
| 53 | VIO/ORG | KS1 + (VE801) | Knock sensor 1 (PDF p. 23) |
| 54 | GRY/ORG | SIG RTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 23) |
| 55 | BRN/BLU | CMP12 (VE706) | Camshaft position 12 sensor (PDF p. 23) |
| 56 | WHT/GRN | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 23) |
| 67 | BRN/GRN | KS2 - (RE324) | Knock sensor 2 (PDF p. 23) |
| 68 | BRN/BLU | KS2 + (VE802) | Knock sensor 2 (PDF p. 23) |
| 69 | GRN/BRN | CKP- (RE135) | Crankshaft position sensor (PDF p. 23) |
| 70 | YEL/VIO | CKP+ (VE711) | Crankshaft position sensor (PDF p. 23) |
| 71 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 19) |
| 72 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 19) |
| 73 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 19) |
| 74 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 19) |
| 75 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 19) |
| 77 | VIO/GRY | SSE (CET19) | Transmission solenoid assembly (PDF p. 19) |
| 78 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 19) |
| 79 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 19) |
| 81 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 19) |
| 82 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 19) |
| 83 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 19) |
| 84 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 19) |
| 88 | BLU/ORG | COP3E (CE305) | Coil on plug 3 (PDF p. 19) |
| 89 | GRN/VIO | COP4B (CE306) | Coil on plug 4 (PDF p. 19) |
| 90 | WHT/BRN | COP5D (CE307) | Coil on plug 5 (PDF p. 19) |
| 91 | BLU/GRN | TSPC (CET25) | Transmission circuit (PDF p. 19) |
| 92 | YEL/BLU | COP2C (CE304) | Coil on plug 2 (PDF p. 19) |
| 93 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 19) |
| 94 | VIO/BRN | COP6F (CE308) | Coil on plug 6 (PDF p. 19) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 7 (20A), GRN/BLU CBB07, then C175B-97, C175B-99, C175E-17, C175E-18 through splice S130.

PCM relay control: C175B-20, BRN/WHT CE237.

RUN/START fuse 26 (10A), BLU/WHT CBB26, feeds C175B-64.

PCM grounds: C175B-100, C175B-102, C175B-103, GD113, terminate at G110 in the right engine compartment.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
