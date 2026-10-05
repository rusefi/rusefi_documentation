# 2016 Ford Taurus V6-3.5L Twin Turbo — PCM pinout

Transcribed from [Ford-Taurus-2016.pdf](Ford-Taurus-2016.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 13–18 (3.5L twin turbo diagrams)). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The source prints CD114 for CANV and VCT21 on CE422; retained as printed.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1381B | 103 | Vehicle/body harness |
| C1381E | 95 | Engine harness |

## C1381B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 13) |
| 2 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 13) |
| 4 | BRN | HFC (CEC07) | Cooling fans system (PDF p. 13) |
| 10 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 13) |
| 11 | YEL/GRN | VREF (LE424) | Reference supply; branch destinations unresolved (PDF p. 13) |
| 12 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 13) |
| 13 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 13) |
| 16 | WHT/VIO | SIGRTN (RE230) | Return circuit; branch destinations unresolved (PDF p. 13) |
| 18 | YEL/VIO | SIGRTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 13) |
| 20 | GRN/BLU | CANV (CD114) | EVAP canister vent valve (PDF p. 13) |
| 22 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 13) |
| 23 | GRN/WHT | LFC (CEC08) | Cooling fans system (PDF p. 13) |
| 26 | VIO | GENMON (CDC15) | Starting/charging system (PDF p. 13) |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 13) |
| 28 | VIO/ORG | PCM WAKE (CE436) | Body control module (PDF p. 13) |
| 32 | BRN/VIO | CACT (VE751) | Charge air temperature sensor (PDF p. 13) |
| 35 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 13) |
| 36 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 13) |
| 37 | WHT/GRN | HO2S22RTN (RE249) | Oxygen sensor 22 (PDF p. 13) |
| 38 | GRN | HO2S12RTN (RE242) | Oxygen sensor 12 (PDF p. 13) |
| 39 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 13) |
| 41 | WHT/BRN | VACC (VE462) | Air conditioning system (PDF p. 13) |
| 43 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 13) |
| 46 | WHT | AWDM (VCF34) | Destination unresolved; follow printed circuit in source (PDF p. 13) |
| 47 | BLU/WHT | START (CDC35) | Starting/charging system (PDF p. 13) |
| 48 | YEL/ORG | ISPR (CBB90) | Ignition supply (PDF p. 13) |
| 50 | WHT/GRN | LIN (VDN06) | LIN circuit; routing in source (PDF p. 13) |
| 51 | BRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 13) |
| 52 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 13) |
| 54 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 13) |
| 55 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 13) |
| 56 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 13) |
| 57 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 13) |
| 58 | BRN/WHT | PCMRC (CE237) | PCM power relay (PDF p. 13) |
| 59 | BLU/ORG | GENCOM (CDC10) | Starting/charging system (PDF p. 13) |
| 60 | GRN | AWDC (VCF35) | Destination unresolved; follow printed circuit in source (PDF p. 13) |
| 61 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 13) |
| 62 | GRN/WHT | SMCS (CE336) | Starting/charging system (PDF p. 13) |
| 65 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 13) |
| 66 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 13) |
| 68 | WHT | HS CAN - (VDB05) | Computer data lines system (PDF p. 13) |
| 69 | WHT/BLU | HS CAN + (VDB04) | Computer data lines system (PDF p. 13) |
| 71 | BRN/BLU | FLP (VE727) | Fuel pressure sensor (PDF p. 15) |
| 72 | GRY/ORG | GND (VE805) | PCM ground (PDF p. 15) |
| 73 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 15) |
| 74 | GRN/BRN | TCBP (VE804) | Turbocharger boost pressure sensor (PDF p. 15) |
| 75 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 15) |
| 83 | VIO/ORG | VSOUT (VMC05) | Destination unresolved; follow printed circuit in source (PDF p. 15) |
| 88 | GRN/VIO | SHIFT DOWN (CET42) | Shift controls / paddle shifters (PDF p. 15) |
| 89 | GRY | SHIFT UP (CET43) | Shift controls / paddle shifters (PDF p. 15) |
| 94 | VIO/GRN | BCS2 ALT (VDC61) | Destination unresolved; follow printed circuit in source (PDF p. 15) |
| 95 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 15) |
| 96 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 15) |
| 97 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 15) |
| 98 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 15) |
| 99 | BLK/YEL | PWRGND (GD113) | PCM power ground (PDF p. 15) |
| 101 | WHT/VIO | VPWR (CBB69) | PCM power supply (PDF p. 15) |
| 102 | WHT/VIO | VPWR (CBB69) | PCM power supply (PDF p. 15) |
| 103 | WHT/VIO | VPWR (CBB69) | PCM power supply (PDF p. 15) |

## C1381E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 18) |
| 2 | VIO/GRY | SSE (CET19) | Transmission solenoid assembly (PDF p. 18) |
| 3 | YEL/BLU | TCBY (CE435) | Turbocharger bypass valve (PDF p. 18) |
| 7 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 18) |
| 8 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 18) |
| 9 | GRY | OPS (CMC24) | Oil pressure switch (PDF p. 18) |
| 11 | YEL/VIO | CKP (VE711) | Crankshaft position sensor (PDF p. 18) |
| 12 | YEL/ORG | OSS (RET04) | Transmission output shaft speed sensor (PDF p. 18) |
| 14 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 18) |
| 15 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 18) |
| 16 | YEL/GRN | TCWRVS (VE824) | Turbocharger wastegate regulating valve solenoid (PDF p. 18) |
| 18 | WHT/ORG | VCT21 (CE422) | Variable camshaft timing 21 solenoid (PDF p. 18) |
| 19 | YEL/BLU | TCBY2 (CE435) | Turbocharger bypass valve (PDF p. 18) |
| 20 | GRN/WHT | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 18) |
| 22 | VIO/GRN | VREF (LE111) | Reference supply; branch destinations unresolved (PDF p. 18) |
| 26 | GRN/VIO | CMP21 (VE707) | Camshaft position 21 sensor (PDF p. 18) |
| 27 | WHT/VIO | TSS (RET33) | Transmission turbine shaft speed sensor (PDF p. 18) |
| 28 | BRN/BLU | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 18) |
| 30 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 18) |
| 31 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 18) |
| 32 | BRN/BLU | TR GND (RET24) | Destination unresolved; follow printed circuit in source (PDF p. 18) |
| 33 | GRN/BRN | MAP (VE804) | Manifold absolute pressure sensor (PDF p. 18) |
| 34 | VIO/GRY | IAT2 (VE740) | Intake air temperature sensor (PDF p. 18) |
| 36 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 18) |
| 37 | BLU/BRN | FRP (VE727) | Fuel rail pressure sensor (PDF p. 18) |
| 38 | VIO | TR-4 (VET32) | Transmission range circuit (PDF p. 18) |
| 39 | YEL | TR-2 (VET30) | Transmission range circuit (PDF p. 18) |
| 40 | BLU/ORG | TR-3 (VET31) | Transmission range circuit (PDF p. 18) |
| 41 | VIO/WHT | TR-1 (VET29) | Transmission range circuit (PDF p. 18) |
| 42 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 18) |
| 43 | GRN/VIO | COP4B (CE306) | Coil on plug 4 (PDF p. 18) |
| 44 | BLU/GRY | TCC (CET10) | Transmission torque converter clutch circuit (PDF p. 18) |
| 45 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 18) |
| 46 | BRN/BLU | UO2SPCT21 (LE453) | Oxygen sensor 21 (PDF p. 18) |
| 47 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 18) |
| 48 | GRN | UO2SPCT11 (LE452) | Oxygen sensor 11 (PDF p. 18) |
| 49 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 18) |
| 50 | BRN/BLU | KS2 + (VE802) | Knock sensor 2 (PDF p. 18) |
| 51 | BRN/GRN | KS2 - (RE324) | Knock sensor 2 (PDF p. 18) |
| 52 | GRN/VIO | TP2 (VE819) | Throttle position sensor (PDF p. 18) |
| 53 | GRY/VIO | SIG RTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 18) |
| 57 | YEL/BLU | COP2C (CE304) | Coil on plug 2 (PDF p. 18) |
| 58 | WHT/BRN | COP5D (CE307) | Coil on plug 5 (PDF p. 18) |
| 59 | YEL/VIO | LPC (CET09) | Transmission line pressure control circuit (PDF p. 18) |
| 60 | BLU/GRN | SSA (CET05) | Transmission solenoid assembly (PDF p. 18) |
| 61 | WHT | UO2SPC21 (LE450) | Oxygen sensor 21 (PDF p. 18) |
| 62 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 18) |
| 63 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 18) |
| 64 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 18) |
| 65 | VIO/ORG | KS1 + (VE801) | Knock sensor 1 (PDF p. 18) |
| 66 | WHT/BRN | KS1 - (RE323) | Knock sensor 1 (PDF p. 18) |
| 67 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 18) |
| 68 | BRN | TP 1 (VE818) | Throttle position sensor (PDF p. 18) |
| 72 | BLU/ORG | COP3E (CE305) | Coil on plug 3 (PDF p. 15) |
| 73 | VIO/BRN | COP6F (CE308) | Coil on plug 6 (PDF p. 15) |
| 75 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 15) |
| 77 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump (PDF p. 15) |
| 78 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 15) |
| 80 | BLU/GRN | TSPC (CET25) | Transmission circuit (PDF p. 15) |
| 82 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 15) |
| 83 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 15) |
| 84 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 15) |
| 85 | BRN | INJ5 (CE209) | Fuel injector 5 (PDF p. 15) |
| 86 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 15) |
| 87 | YEL/BLU | INJ1RTN (RE205) | Fuel injector 1 (PDF p. 15) |
| 88 | BLU | INJ4RTN (RE208) | Fuel injector 4 (PDF p. 15) |
| 89 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 (PDF p. 15) |
| 90 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 15) |
| 91 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 15) |
| 92 | WHT/GRN | INJ5RTN (RE209) | Fuel injector 5 (PDF p. 15) |
| 93 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 (PDF p. 15) |
| 94 | BRN/VIO | INJ6RTN (RE210) | Fuel injector 6 (PDF p. 15) |
| 95 | GRN/WHT | INJ6 (CE210) | Fuel injector 6 (PDF p. 15) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 69 (20A), WHT/VIO CBB69, then C1381B-101, C1381B-102, C1381B-103 through splice S157.

PCM relay control: C1381B-58, BRN/WHT CE237. The relay coil feed is fuse 66 (7.5A).

RUN/START fuse 90 (10A), YEL/ORG CBB90, feeds C1381B-48.

C1381B-96, -97, -98 and -99, BLK/YEL GD113, terminate at G105 through S116.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
