# 2016 Ford Edge V6-2.7L Turbo — PCM pinout

Transcribed from [Ford-Edge-2016.pdf](Ford-Edge-2016.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 8–16 (2.7L turbo diagrams)). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The export header selects a 3.5L Edge; these diagram captions identify 2.7L turbo. Oxygen-sensor function labels and their circuit identifiers are retained exactly even where their bank numbering differs across control/reference/heater rows.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1551B | 103 | Vehicle/body harness |
| C1551E | 95 | Engine harness |

## C1551B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 8) |
| 2 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 8) |
| 4 | WHT/BLU | HFC/FCV (CEC01) | Cooling fans system (PDF p. 8) |
| 5 | GRY/BLU | CPC (CE307) | Air conditioning system (PDF p. 8) |
| 7 | YEL/GRN | SIG RTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 10 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 8) |
| 11 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 12 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 8) |
| 13 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 16 | WHT/VIO | SIGRTN (RE230) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 18 | YEL/VIO | SIGRTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 20 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 8) |
| 22 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 8) |
| 23 | GRN/BLU | LFC (CEC02) | Cooling fans system (PDF p. 8) |
| 26 | VIO | GENLI (CDC15) | Starting/charging system (PDF p. 8) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 8) |
| 28 | VIO/ORG | WAKE UP (CE436) | Body control module (PDF p. 8) |
| 29 | BRN | IES (CR115) | Body control module (PDF p. 8) |
| 32 | YEL/GRN | CACT (LE424) | Charge air temperature sensor (PDF p. 8) |
| 33 | WHT/VIO | WVS (VE850) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 35 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 8) |
| 36 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 8) |
| 37 | GRN | SIGRTN (RE733) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 38 | GRN | SIGRTN (RE242) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 39 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 8) |
| 41 | WHT/BRN | VACC (VE462) | Air conditioning system (PDF p. 8) |
| 43 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 8) |
| 46 | WHT | AWD M (VCF34) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 47 | BLU/WHT | START (CDC35) | Starting/charging system (PDF p. 8) |
| 48 | BLU/WHT | ISP-R (CBB26) | Ignition supply (PDF p. 8) |
| 50 | WHT/GRN | LIN (VDN06) | LIN circuit; routing in source (PDF p. 8) |
| 51 | GRN/BLU | AAT (VE750) | Ambient air temperature sensor (PDF p. 10) |
| 52 | VIO/ORG | ACPT (VH443) | A/C pressure transducer (PDF p. 10) |
| 54 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 10) |
| 55 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 10) |
| 56 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 10) |
| 57 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 10) |
| 58 | BRN/WHT | PCMRC (CE237) | PCM power relay (PDF p. 10) |
| 59 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 10) |
| 60 | GRN | AWD C (VCF35) | Destination unresolved; follow printed circuit in source (PDF p. 10) |
| 61 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 10) |
| 62 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 10) |
| 65 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 10) |
| 66 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 10) |
| 68 | WHT | HS CAN - (VDB05) | Computer data lines system (PDF p. 10) |
| 69 | WHT/BLU | HS CAN + (VDB04) | Computer data lines system (PDF p. 10) |
| 70 | YEL/GRN | EOP (VE774) | Engine oil pressure sensor (PDF p. 10) |
| 71 | BLU/BRN | FLP (VE727) | Fuel pressure sensor (PDF p. 10) |
| 72 | YEL/GRN | CKCP (VE779) | Destination unresolved; follow printed circuit in source (PDF p. 10) |
| 73 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 10) |
| 74 | GRY/ORG | TCBP (VE805) | Turbocharger boost pressure sensor (PDF p. 10) |
| 75 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 10) |
| 76 | BRN/YEL | TCFT (VET27) | Transmission fluid temperature sensor (PDF p. 10) |
| 78 | GRY/VIO | OPS (VE179) | Oil pressure switch (PDF p. 10) |
| 88 | GRN/VIO | SHIFT DOWN (CET42) | Shift controls / paddle shifters (PDF p. 10) |
| 89 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 10) |
| 94 | VIO/GRN | BATT MONITOR (VDC61) | Battery monitor / starting/charging system (PDF p. 10) |
| 96 | BLK/YEL | CASEGND (GD113) | PCM case ground (PDF p. 10) |
| 97 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 10) |
| 98 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 10) |
| 99 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 10) |
| 101 | GRN/BLU | VPWR (CBB07) | PCM power supply (PDF p. 10) |
| 102 | GRN/BLU | VPWR (CBB07) | PCM power supply (PDF p. 10) |
| 103 | GRN/BLU | VPWR (CBB07) | PCM power supply (PDF p. 10) |

## C1551E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 16) |
| 2 | VIO/GRY | SSE (CET19) | Transmission solenoid assembly (PDF p. 16) |
| 3 | BRN/WHT | TCBY (VE175) | Turbocharger bypass valve (PDF p. 16) |
| 6 | GRY | VREF (LE459) | Reference supply; branch destinations unresolved (PDF p. 16) |
| 7 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 16) |
| 8 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 16) |
| 11 | YEL/VIO | CKP (VE711) | Crankshaft position sensor (PDF p. 16) |
| 12 | YEL/ORG | OSS (RET04) | Transmission output shaft speed sensor (PDF p. 16) |
| 14 | GRY/VIO | UO2SHTR11 (CE236) | Oxygen sensor 11 (PDF p. 16) |
| 15 | GRN/BRN | UO2SHTR21 (CE235) | Oxygen sensor 21 (PDF p. 16) |
| 16 | YEL/GRN | TCWRVS (VE824) | Turbocharger wastegate regulating valve solenoid (PDF p. 16) |
| 17 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 16) |
| 18 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 16) |
| 20 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 16) |
| 22 | VIO/GRN | VREF (LE111) | Reference supply; branch destinations unresolved (PDF p. 16) |
| 26 | GRN/VIO | CMP21 (VE707) | Camshaft position 21 sensor (PDF p. 16) |
| 27 | WHT/VIO | TSS (RET33) | Transmission turbine shaft speed sensor (PDF p. 16) |
| 28 | BRN/BLU | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 16) |
| 29 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 16) |
| 30 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 16) |
| 31 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 16) |
| 32 | BRN/BLU | TSS/OSS/TR GND (RET24) | Transmission turbine shaft speed sensor (PDF p. 16) |
| 33 | VIO/GRY | IAT2 (VE740) | Intake air temperature sensor (PDF p. 16) |
| 34 | GRN/BRN | MAP (VE804) | Manifold absolute pressure sensor (PDF p. 16) |
| 35 | BLU/BRN | FRP (VE727) | Fuel rail pressure sensor (PDF p. 16) |
| 36 | BLU/GRY | CHT2 (VE712) | Cylinder head temperature sensor (PDF p. 16) |
| 37 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 16) |
| 38 | VIO | TR-4 (VET32) | Transmission range circuit (PDF p. 16) |
| 39 | YEL | TR-2 (VET30) | Transmission range circuit (PDF p. 16) |
| 40 | BLU/ORG | TR-3 (VET31) | Transmission range circuit (PDF p. 16) |
| 41 | VIO/WHT | TR-1 (VET29) | Transmission range circuit (PDF p. 16) |
| 42 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 16) |
| 43 | GRN/VIO | COP4B (CE306) | Coil on plug 4 (PDF p. 16) |
| 44 | BLU/GRY | TCC (CET10) | Transmission torque converter clutch circuit (PDF p. 16) |
| 45 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 16) |
| 46 | GRN | UO2SPC21 (LE452) | Oxygen sensor 21 (PDF p. 16) |
| 47 | GRY/BLU | UO2SGREF21 (LE448) | Oxygen sensor 21 (PDF p. 16) |
| 48 | BRN/BLU | UO2SPCT11 (LE453) | Oxygen sensor 11 (PDF p. 16) |
| 49 | VIO/GRN | UO2SGREF11 (LE449) | Oxygen sensor 11 (PDF p. 16) |
| 50 | BRN/BLU | KS2+ (VE802) | Knock sensor 2 (PDF p. 16) |
| 51 | BRN/GRN | KS2- (RE324) | Knock sensor 2 (PDF p. 16) |
| 52 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 13) |
| 53 | GRN/WHT | SIGRTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 13) |
| 54 | GRN/BRN | CMP12 (LE143) | Camshaft position 12 sensor (PDF p. 13) |
| 57 | YEL/BLU | COP2C (CE304) | Coil on plug 2 (PDF p. 13) |
| 58 | WHT/BRN | COP5D (CE307) | Coil on plug 5 (PDF p. 13) |
| 59 | YEL/VIO | LPC (CET09) | Transmission line pressure control circuit (PDF p. 13) |
| 60 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 13) |
| 61 | BRN/YEL | UO2SPC21 (LE451) | Oxygen sensor 21 (PDF p. 13) |
| 62 | BRN/VIO | UO2S21 (VE826) | Oxygen sensor 21 (PDF p. 13) |
| 63 | WHT | UO2SPC11 (LE450) | Oxygen sensor 11 (PDF p. 13) |
| 64 | WHT/GRN | UO2S11 (VE827) | Oxygen sensor 11 (PDF p. 13) |
| 65 | VIO/ORG | KS1+ (VE801) | Knock sensor 1 (PDF p. 13) |
| 66 | WHT/BRN | KS1- (RE323) | Knock sensor 1 (PDF p. 13) |
| 67 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 13) |
| 68 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 13) |
| 70 | YEL/VIO | CMP22 (LE144) | Camshaft position 22 sensor (PDF p. 13) |
| 72 | BLU/ORG | COP3E (CE305) | Coil on plug 3 (PDF p. 13) |
| 73 | VIO/BRN | COP6F (CE308) | Coil on plug 6 (PDF p. 13) |
| 75 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 13) |
| 77 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump (PDF p. 13) |
| 78 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 13) |
| 80 | BLU/GRN | TSPC (CET25) | Transmission circuit (PDF p. 13) |
| 82 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 13) |
| 83 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 13) |
| 84 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 13) |
| 85 | BRN | INJ5 (CE209) | Fuel injector 5 (PDF p. 13) |
| 86 | YEL/VIO | TACM + (CE412) | Electronic throttle motor (PDF p. 13) |
| 87 | YEL/BLU | INJ1RTN (RE205) | Fuel injector 1 (PDF p. 13) |
| 88 | BLU | INJ4RTN (RE208) | Fuel injector 4 (PDF p. 13) |
| 89 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 (PDF p. 13) |
| 90 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 13) |
| 91 | BLU/GRN | TACM - (CE426) | Electronic throttle motor (PDF p. 13) |
| 92 | WHT/GRN | INJ5RTN (RE209) | Fuel injector 5 (PDF p. 13) |
| 93 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 (PDF p. 13) |
| 94 | BRN/VIO | INJ6RTN (RE210) | Fuel injector 6 (PDF p. 13) |
| 95 | GRN/WHT | INJ6 (CE210) | Fuel injector 6 (PDF p. 13) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 7 (20A), GRN/BLU CBB07, then C1551B-101, C1551B-102, C1551B-103 through splice S130.

PCM relay control: C1551B-58, BRN/WHT CE237.

RUN/START fuse 26 (10A), BLU/WHT CBB26, feeds C1551B-48.

PCM grounds: C1551B-96, C1551B-97, C1551B-98, C1551B-99, GD113, terminate at G110 in the right engine compartment.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
