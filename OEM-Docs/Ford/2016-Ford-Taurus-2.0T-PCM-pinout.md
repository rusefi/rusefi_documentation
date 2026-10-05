# 2016 Ford Taurus L4-2.0L Turbo — PCM pinout

Transcribed from [Ford-Taurus-2016.pdf](Ford-Taurus-2016.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1–6 (2.0L turbo diagrams)). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1381B | 103 | Vehicle/body harness |
| C1381E | 95 | Engine harness |

## C1381B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 1) |
| 2 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 1) |
| 4 | BRN | HFC (CEC07) | Cooling fans system (PDF p. 1) |
| 7 | WHT/BRN | SIGRTN (RET42) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 10 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 1) |
| 11 | YEL/GRN | VREF (LE424) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 12 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 1) |
| 13 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 16 | WHT/VIO | SIGRTN (RE230) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 18 | YEL/VIO | SIGRTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 20 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 1) |
| 22 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 1) |
| 23 | GRN/WHT | LFC (CEC08) | Cooling fans system (PDF p. 1) |
| 26 | VIO | GENMON (CDC15) | Starting/charging system (PDF p. 1) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 1) |
| 28 | VIO/ORG | PCM WAKE (CE436) | Body control module (PDF p. 1) |
| 32 | BRN/VIO | CACT (VE751) | Charge air temperature sensor (PDF p. 1) |
| 35 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 1) |
| 36 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 1) |
| 38 | GRN | SIGRTN12 (RE242) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 39 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 1) |
| 41 | WHT/BRN | VACC (VE462) | Air conditioning system (PDF p. 1) |
| 43 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 1) |
| 46 | WHT | AWDM (VCF34) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 47 | BLU/WHT | START (CDC35) | Starting/charging system (PDF p. 1) |
| 48 | YEL/ORG | ISPR (CBB90) | Ignition supply (PDF p. 1) |
| 51 | BRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 1) |
| 52 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 1) |
| 54 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 1) |
| 55 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 1) |
| 57 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 1) |
| 58 | BRN/WHT | PCMRC (CE237) | PCM power relay (PDF p. 1) |
| 59 | BLU/ORG | GENCOM (CDC10) | Starting/charging system (PDF p. 1) |
| 60 | GRN | AWDC (VCF35) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 62 | GRN/WHT | SMCS (CE336) | Starting/charging system (PDF p. 1) |
| 65 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 1) |
| 66 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 1) |
| 68 | WHT | HS CAN - (VDB05) | Computer data lines system (PDF p. 1) |
| 69 | WHT/BLU | HS CAN + (VDB04) | Computer data lines system (PDF p. 1) |
| 71 | BLU/BRN | FLP (VE727) | Fuel pressure sensor (PDF p. 3) |
| 73 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 3) |
| 74 | GRN/BRN | TCBP (VE804) | Turbocharger boost pressure sensor (PDF p. 3) |
| 75 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 3) |
| 81 | YEL/VIO | ATWU1 (CE171) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 88 | GRN/VIO | SHIFT DOWN (CET42) | Shift controls / paddle shifters (PDF p. 3) |
| 89 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 3) |
| 90 | BRN | TCS (CET35) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 94 | VIO/GRN | BCS2 ALT (VDC61) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 95 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 3) |
| 96 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 97 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 98 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 99 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 3) |
| 101 | WHT/VIO | VPWR (CBB69) | PCM power supply (PDF p. 3) |
| 102 | WHT/VIO | VPWR (CBB69) | PCM power supply (PDF p. 3) |
| 103 | WHT/VIO | VPWR (CBB69) | PCM power supply (PDF p. 3) |

## C1381E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 6) |
| 2 | GRY/YEL | SSE (CET18) | Transmission solenoid assembly (PDF p. 6) |
| 3 | VIO/GRN | TCBY (VE836) | Turbocharger bypass valve (PDF p. 6) |
| 6 | BLU/WHT | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 7 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 6) |
| 8 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 9 | GRY | OPS (CMC24) | Oil pressure switch (PDF p. 6) |
| 10 | VIO | TR P (VET32) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 11 | YEL/VIO | CKP (VE711) | Crankshaft position sensor (PDF p. 6) |
| 12 | BRN/GRN | OSS (VET26) | Transmission output shaft speed sensor (PDF p. 6) |
| 14 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 6) |
| 16 | YEL/GRN | TCWRVS (VE824) | Turbocharger wastegate regulating valve solenoid (PDF p. 6) |
| 20 | YEL/GRN | SIGRTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 22 | VIO/GRN | TSS/OSS VPWR (LE111) | Transmission turbine shaft speed sensor (PDF p. 6) |
| 27 | WHT/ORG | TSS (VET33) | Transmission turbine shaft speed sensor (PDF p. 6) |
| 28 | BRN/BLU | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 6) |
| 29 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 6) |
| 30 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 6) |
| 31 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 6) |
| 32 | BRN/BLU | TR GND (RET24) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 33 | BLU | MAP (LE329) | Manifold absolute pressure sensor (PDF p. 6) |
| 36 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 6) |
| 37 | GRY | FRP (LE238) | Fuel rail pressure sensor (PDF p. 6) |
| 42 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 6) |
| 43 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 6) |
| 44 | BLU/GRY | TCC (CET10) | Transmission torque converter clutch circuit (PDF p. 6) |
| 45 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 6) |
| 46 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 6) |
| 48 | BRN/YEL | UO2SPCT11 (LE451) | Oxygen sensor 11 (PDF p. 6) |
| 49 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 6) |
| 50 | BRN/BLU | KS2 + (VE802) | Knock sensor 2 (PDF p. 6) |
| 51 | BRN/GRN | KS2 - (RE324) | Knock sensor 2 (PDF p. 6) |
| 52 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 6) |
| 53 | GRN/WHT | SIGRTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 54 | GRN/VIO | CMP12 (VE707) | Camshaft position 12 sensor (PDF p. 6) |
| 57 | YEL/BLU | COP2D (CE304) | Coil on plug 2 (PDF p. 6) |
| 59 | YEL/VIO | LPC (CET09) | Transmission line pressure control circuit (PDF p. 6) |
| 60 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 6) |
| 63 | GRN | UO2SPC11 (LE452) | Oxygen sensor 11 (PDF p. 6) |
| 64 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 6) |
| 65 | VIO/ORG | KS1 + (VE801) | Knock sensor 1 (PDF p. 6) |
| 66 | WHT/BRN | KS1 - (RE323) | Knock sensor 1 (PDF p. 6) |
| 67 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 6) |
| 68 | BRN | TP 1 (VE818) | Throttle position sensor (PDF p. 6) |
| 72 | BLU/ORG | COP3B (CE305) | Coil on plug 3 (PDF p. 3) |
| 75 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 3) |
| 77 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump (PDF p. 3) |
| 78 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 3) |
| 80 | BLU/GRN | TSPC (CET25) | Transmission circuit (PDF p. 3) |
| 82 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 3) |
| 83 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 3) |
| 84 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 3) |
| 85 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 3) |
| 86 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 3) |
| 87 | YEL/BLU | INJ1RTN (RE205) | Fuel injector 1 (PDF p. 3) |
| 88 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 (PDF p. 3) |
| 91 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 3) |
| 92 | BLU | INJ4RTN (RE208) | Fuel injector 4 (PDF p. 3) |
| 93 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 (PDF p. 3) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 69 (20A), WHT/VIO CBB69, then C1381B-101, C1381B-102, C1381B-103 through splice S157.

PCM relay control: C1381B-58, BRN/WHT CE237. The relay coil feed is fuse 66 (7.5A).

RUN/START fuse 90 (10A), YEL/ORG CBB90, feeds C1381B-48.

C1381B-96, -97, -98 and -99, BLK/YEL GD113, terminate at G105 through S116.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
