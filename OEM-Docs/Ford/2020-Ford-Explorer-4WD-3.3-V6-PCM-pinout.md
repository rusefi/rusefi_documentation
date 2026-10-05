# 2020 Ford Explorer 4WD V6-3.3L — PCM pinout

Transcribed from [2020 Ford Truck Explorer 4WD ECU.pdf](2020%20Ford%20Truck%20Explorer%204WD%20ECU.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1-18). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C175B | 91 | Vehicle/body harness |
| C175T | 91 | Transmission harness |
| C175E | 127 | Engine harness |

## C175B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/BLU | PWR (CBB06) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 2 | WHT/BLU | PWR (CBB06) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 3 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 2) |
| 4 | GRY/ORG | VMV-CC (CE420) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 5 | BLU/GRY | SST-U (CPLB5) | Shift controls (PDF p. 2) |
| 7 | VIO/RED | WAKEUP (CE436) | Body control module (PDF p. 2) |
| 8 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 2) |
| 11 | WHT/GRN | LIN (VE181) | LIN circuit; routing in source (PDF p. 2) |
| 12 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 2) |
| 13 | VIO/GRN | PWR (SBB24) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 14 | GRY/RED | FPRP (CE226) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 16 | WHT/BLU | PWR (CBB06) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 17 | GRY/ORG | PWR (SBB05) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 19 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 2) |
| 22 | GRN/ORG | START (CPK34) | Starting/charging system (PDF p. 2) |
| 23 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 2) |
| 24 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 2) |
| 25 | GRN/BRN | ECT2 (VE759) | Engine coolant temperature sensor (PDF p. 2) |
| 26 | YEL/GRY | SIG RTN C (RE407) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 27 | BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 2) |
| 28 | YEL/RED | SIG RTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 29 | GRN/WHT | FPRC (RE226) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 34 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 2) |
| 37 | YEL/VIO | ENS (CR167) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 38 | BRN/GRN | GENRC (CET34) | Starting/charging system (PDF p. 2) |
| 43 | YEL | SIG RTN C (RE407) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 44 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 2) |
| 45 | BLU/BRN | TPCV (VE274) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 46 | BLK/VIO | GND (GD124) | PCM ground (PDF p. 2) |
| 47 | BLK/VIO | GND (GD124) | PCM ground (PDF p. 2) |
| 48 | BLU/RED | REFUELING CTRL (CE622) | LIN circuit; routing in source (PDF p. 2) |
| 50 | WHT/BLU | FTPT REF (CE204) | Fuel tank pressure sensor (PDF p. 2) |
| 52 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 5) |
| 53 | GRY | SST-U (CET43) | Shift controls (PDF p. 5) |
| 54 | YEL/BLU | SST D (CPL24) | Shift controls (PDF p. 5) |
| 55 | VIO/BRN | BCS2 ALT (VDC61) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 56 | BRN/BLU | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 5) |
| 57 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 5) |
| 59 | WHT/RED | FC1 (VEC03) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 60 | BRN/RED | PCMPR (CE237) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 61 | BLK/VIO | GND (GD124) | PCM ground (PDF p. 5) |
| 62 | BLK/VIO | GND (GD124) | PCM ground (PDF p. 5) |
| 64 | VIO/BRN | ODB PMP (CE464) | Destination unresolved; follow printed circuit in source (PDF p. 5) |
| 65 | GRN/VIO | SST-D (CET42) | Shift controls (PDF p. 5) |
| 68 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 5) |
| 69 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 5) |
| 70 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 5) |
| 71 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 5) |
| 72 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 5) |
| 73 | YEL/VIO | SIGRTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 5) |
| 76 | BLK/VIO | GND (GD124) | PCM ground (PDF p. 5) |
| 77 | BLK/VIO | GND (GD124) | PCM ground (PDF p. 5) |
| 78 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 5) |
| 79 | WHT/BRN | VACCV (VE462) | Air conditioning system (PDF p. 5) |
| 82 | YEL/GRN | VREF (LE424) | Reference supply; branch destinations unresolved (PDF p. 5) |
| 84 | GRN/RED | AAT (VE750) | Ambient air temperature sensor (PDF p. 5) |
| 85 | BRN | C-VREF (LE424) | Reference supply; branch destinations unresolved (PDF p. 5) |
| 86 | GRN/BRN | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 5) |
| 87 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 5) |

## C175T — transmission harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | BRN | TSPC2 (CET49) | Transmission circuit (PDF p. 8) |
| 2 | BLU/GRN | TSPC1 (CET25) | Transmission circuit (PDF p. 8) |
| 4 | BLU/GRY | SSF (CET10) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 5 | YEL/VIO | SSE (CET09) | Transmission solenoid assembly (PDF p. 8) |
| 6 | GRY/ORG | ATFPC (CET85) | Fuel pump control module (PDF p. 8) |
| 7 | BRN/BLU | TR GND (RET24) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 10 | YEL/RED | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 8) |
| 11 | VIO/GRN | FTPT (VE922) | Fuel tank pressure sensor (PDF p. 8) |
| 16 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 8) |
| 17 | YEL/ORG | TASV (CET91) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 19 | BLU | SSA (CET05) | Transmission solenoid assembly (PDF p. 8) |
| 20 | YEL/BLU | EDC (CETB5) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 26 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 8) |
| 27 | VIO/ORG | EDCP (VET97) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 29 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 8) |
| 30 | WHT | UO2SPC21 (LE450) | Oxygen sensor 21 (PDF p. 8) |
| 33 | YEL/BLU | ATWU1 (CE171) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 34 | GRY/ORG | SSC (CET07) | Transmission circuit (PDF p. 8) |
| 35 | GRY/YEL | 9VREF2 (LE461) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 36 | BRN/GRN | TRP1 (VET84) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 37 | YEL/VIO | ISSA (VETB0) | Transmission solenoid assembly (PDF p. 8) |
| 38 | WHT/ORG | TSS (VET33) | Transmission turbine shaft speed sensor (PDF p. 8) |
| 39 | YEL/GRY | ATFPM (VET86) | Fuel pump control module (PDF p. 8) |
| 42 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 8) |
| 44 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 8) |
| 45 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 8) |
| 46 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 8) |
| 49 | GRN/BRN | SSB (CET06) | Transmission solenoid assembly (PDF p. 8) |
| 50 | BLU/BRN | 9VREF1 (LE425) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 51 | BRN/GRN | OSS (VET26) | Transmission output shaft speed sensor (PDF p. 8) |
| 52 | GRY/ORG | ACT EXH SOL RT (VE939) | Computer data lines system (PDF p. 9) |
| 54 | BRN/WHT | ISSB (VETB1) | Transmission solenoid assembly (PDF p. 9) |
| 55 | YEL/GRY | TRP2 (VET81) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 57 | GRY/VIO | SIG RTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 59 | YEL/GRN | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 9) |
| 60 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 9) |
| 63 | WHT/ORG | LPC (CET50) | Transmission line pressure control circuit (PDF p. 9) |
| 64 | BRN/WHT | SSD (CET08) | Transmission solenoid assembly (PDF p. 9) |
| 71 | GRY/VIO | SIG RTN B (RE406) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 75 | BLU/GRN | AESV SINGLE/LT (CE162) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 76 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 9) |
| 77 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 9) |
| 79 | WHT | TCC (CET51) | Transmission torque converter clutch circuit (PDF p. 9) |
| 84 | WHT/ORG | SIG RTN (RE731) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 85 | GRN | SIG RTN (RE733) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 87 | BLU/BRN | TPSC (CET44) | Destination unresolved; follow printed circuit in source (PDF p. 9) |

## C175E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 (PDF p. 18) |
| 2 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 18) |
| 4 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 18) |
| 5 | BLU/BRN | SIG RTN (RE238) | Return circuit; branch destinations unresolved (PDF p. 18) |
| 8 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 18) |
| 9 | WHT/BRN | KS1- (RE323) | Knock sensor 1 (PDF p. 18) |
| 12 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 18) |
| 13 | YEL/GRN | SIG RTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 18) |
| 17 | BLU/GRY | FICF 6 (CE267) | Fuel injector 6 (direct injection) (PDF p. 18) |
| 18 | YEL/VIO | FICF 3 (CE264) | Fuel injector 3 (direct injection) (PDF p. 18) |
| 19 | BRN/YEL | EGR VCL (RE164) | Destination unresolved; follow printed circuit in source (PDF p. 18) |
| 20 | BRN/VIO | INJ6 RTN (RE210) | Fuel injector 6 (PDF p. 18) |
| 21 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 18) |
| 22 | BLU | INJ4 RTN (RE208) | Fuel injector 4 (PDF p. 18) |
| 23 | YEL/BLU | INJ1 RTN (RE205) | Fuel injector 1 (PDF p. 18) |
| 25 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 18) |
| 29 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 18) |
| 30 | VIO/ORG | KS1+ (VE801) | Knock sensor 1 (PDF p. 18) |
| 31 | GRN | FRT (VE728) | Destination unresolved; follow printed circuit in source (PDF p. 18) |
| 32 | GRN/ORG | DPF (VE713) | Destination unresolved; follow printed circuit in source (PDF p. 18) |
| 38 | WHT | FICF 4 (CE265) | Fuel injector 4 (direct injection) (PDF p. 18) |
| 39 | GRN | FICF 1 (CE262) | Fuel injector 1 (direct injection) (PDF p. 18) |
| 40 | BLU/GRN | EGR VCH+ (LE164) | Destination unresolved; follow printed circuit in source (PDF p. 18) |
| 41 | GRN/WHT | INJ6 (CE210) | Fuel injector 6 (PDF p. 18) |
| 42 | BLU/ORG | COP3E (CE305) | Coil on plug 3 (PDF p. 18) |
| 43 | BRN | INJ5 (CE209) | Fuel injector 5 (PDF p. 18) |
| 44 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 18) |
| 45 | BLU/ORG | INJ2 RTN (RE206) | Fuel injector 2 (PDF p. 18) |
| 46 | WHT/BRN | EVAP CP (CE113) | EVAP purge valve (PDF p. 18) |
| 47 | VIO | SIG RTN (RE143) | Return circuit; branch destinations unresolved (PDF p. 18) |
| 48 | BLU | INJPWRM (CBK01) | Destination unresolved; follow printed circuit in source (PDF p. 18) |
| 49 | WHT/VIO | EGRVP (VE850) | Destination unresolved; follow printed circuit in source (PDF p. 18) |
| 50 | VIO/GRY | MAP (VE740) | Manifold absolute pressure sensor (PDF p. 18) |
| 51 | BRN/BLU | KS2+ (VE802) | Knock sensor 2 (PDF p. 18) |
| 52 | GRN/BRN | IAT (VE804) | Intake air temperature sensor (PDF p. 16) |
| 54 | GRN/BRN | CMP12 (LE143) | Camshaft position 12 sensor (PDF p. 16) |
| 60 | GRY/BLU | HCP (CH307) | Destination unresolved; follow printed circuit in source (PDF p. 16) |
| 62 | GRN/VIO | COP4B (CE306) | Coil on plug 4 (PDF p. 16) |
| 63 | VIO/BRN | COP6F (CE308) | Coil on plug 6 (PDF p. 16) |
| 64 | WHT/GRN | INJ5 RTN (RE209) | Fuel injector 5 (PDF p. 16) |
| 65 | GRN/VIO | INJ3 RTN (RE207) | Fuel injector 3 (PDF p. 16) |
| 66 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 16) |
| 69 | GRY | EOP (CMC24) | Engine oil pressure sensor (PDF p. 16) |
| 70 | BRN/BLU | FRPS (VE761) | Fuel rail pressure sensor (PDF p. 16) |
| 71 | BLU/BRN | FRP (VE727) | Fuel rail pressure sensor (PDF p. 16) |
| 72 | BRN/GRN | KS2- (RE324) | Knock sensor 2 (PDF p. 16) |
| 75 | GRN/VIO | CMP21 (VE707) | Camshaft position 21 sensor (PDF p. 16) |
| 76 | BRN/BLU | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 16) |
| 77 | YEL/VIO | CMP22 (LE144) | Camshaft position 22 sensor (PDF p. 16) |
| 78 | YEL/VIO | CKP (VE711) | Crankshaft position sensor (PDF p. 16) |
| 80 | YEL/GRY | ECBV (CE148) | C105 pin 15, explicitly marked not used in source (PDF p. 16) |
| 81 | BLU/GRN | FICF 2 (CE263) | Fuel injector 2 (direct injection) (PDF p. 16) |
| 84 | YEL/BLU | COP2C (CE304) | Coil on plug 2 (PDF p. 16) |
| 85 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 16) |
| 86 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 16) |
| 89 | WHT/VIO | OPC (VE821) | Destination unresolved; follow printed circuit in source (PDF p. 16) |
| 91 | BRN | SIG RTN (RE144) | Return circuit; branch destinations unresolved (PDF p. 16) |
| 98 | GRN/BRN | ECT2 (VE759) | C105 pin 14, explicitly marked not used in source (PDF p. 16) |
| 99 | GRN/WHT | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 16) |
| 102 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 16) |
| 105 | WHT/BRN | COP5D (CE307) | Coil on plug 5 (PDF p. 16) |
| 106 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 15) |
| 107 | GRN/VIO | FVR RTN (RE226) | Fuel injection pump (PDF p. 15) |
| 110 | VIO/GRN | FICF 5 (CE266) | Fuel injector 5 (direct injection) (PDF p. 15) |
| 111 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 15) |
| 113 | GRN/BRN | SIG RTN (RE135) | Return circuit; branch destinations unresolved (PDF p. 15) |
| 114 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 15) |
| 115 | GRY | VREF (LE238) | Reference supply; branch destinations unresolved (PDF p. 15) |
| 116 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 15) |
| 117 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 15) |
| 118 | VIO/GRN | VREF (LE111) | Reference supply; branch destinations unresolved (PDF p. 15) |
| 120 | GRY/VIO | VREF (LE235) | Reference supply; branch destinations unresolved (PDF p. 15) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 6 (20A), WHT/BLU CBB06, then  through S170.

RUN/START 2 fuse 24 (10A), VIO/GRN SBB24, feeds . Fuse 5 (5A), GRY/ORG SBB05, supplies C175B-17 through joint connector 5.

PCM grounds: C175B-46, C175B-47, C175B-61, C175B-62, C175B-76, C175B-77, BLK/VIO GD124, through S165 to G115 at the front right of the engine. See PDF pages 2, 4 and 5.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
