# 2020 Ford Mustang Shelby GT500 V8-5.2L supercharged — PCM pinout

Transcribed from [Ford-Mustang-2020-2.3.pdf](Ford-Mustang-2020-2.3.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 27–33 (5.2L supercharged diagrams); page 34 is blank). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The file name names 2.3L and the export header selects 5.0L GT; these diagram captions identify the separate 5.2L supercharged variant. Printed unused ranges overlap wired T29 and T52/T53; the wired rows are retained. C1232E-117 prints ETCRTN on LE134. C1232E-121 has a wire/circuit ID but no adjacent PCM function label.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1232B | 91 | Vehicle/body harness |
| C1232T | 91 | Transmission harness |
| C1232E | 127 | Engine harness |

## C1232B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 27) |
| 2 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 27) |
| 3 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 27) |
| 4 | GRN/BLU | FCI (CEC02) | Destination unresolved; follow printed circuit in source (PDF p. 27) |
| 7 | VIO/ORG | WAKE UP (CE436) | Body control module (PDF p. 27) |
| 8 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 27) |
| 12 | WHT | HS1 CAN - (VDB05) | Computer data lines system (PDF p. 27) |
| 13 | YEL/VIO | ISP R (CBB60) | Ignition supply (PDF p. 27) |
| 14 | GRN/VIO | FPRP (RE226) | Destination unresolved; follow printed circuit in source (PDF p. 27) |
| 15 | BLU/ORG | GENRC (CDC10) | Starting/charging system (PDF p. 27) |
| 16 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 27) |
| 19 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 27) |
| 20 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 27) |
| 22 | BRN/VIO | START (CPK34) | Starting/charging system (PDF p. 27) |
| 23 | VIO/ORG | BPS (CES09) | Brake pedal position switch (PDF p. 27) |
| 24 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 27) |
| 25 | GRN | RDFT (VET66) | Destination unresolved; follow printed circuit in source (PDF p. 27) |
| 26 | GRY/VIO | SIGRTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 27) |
| 27 | BLU | HS1 CAN + (VDB04) | Computer data lines system (PDF p. 27) |
| 28 | BLU/GRY | SIGRTN (RH433) | Return circuit; branch destinations unresolved (PDF p. 27) |
| 29 | YEL | FPRC (CE226) | Destination unresolved; follow printed circuit in source (PDF p. 27) |
| 34 | GRN/BLU | CANV (CE114) | EVAP canister vent valve (PDF p. 27) |
| 35 | YEL/GRN | DIAG (VYT12) | Destination unresolved; follow printed circuit in source (PDF p. 27) |
| 43 | YEL/VIO | SIG RTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 27) |
| 44 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 27) |
| 46 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 27) |
| 47 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 27) |
| 50 | VIO | GENLI (CDC15) | Starting/charging system (PDF p. 27) |
| 52 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 27) |
| 55 | VIO/GRN | BATT MONITOR (VDC61) | Battery monitor / starting/charging system (PDF p. 27) |
| 56 | YEL/ORG | APP1 (VE701) | Accelerator pedal position sensor (PDF p. 27) |
| 57 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 27) |
| 61 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 27) |
| 62 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 27) |
| 63 | VIO/GRY | SPEED COMMAND (VYT11) | Destination unresolved; follow printed circuit in source (PDF p. 30) |
| 68 | BLU/WHT | APP2 (VE702) | Accelerator pedal position sensor (PDF p. 30) |
| 69 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 30) |
| 70 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 30) |
| 71 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position sensor (PDF p. 30) |
| 72 | YEL/GRN | APPRTN2 (RE137) | Accelerator pedal position sensor (PDF p. 30) |
| 76 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 30) |
| 77 | BLK/YEL | GND (GD113) | PCM ground (PDF p. 30) |
| 81 | GRN/VIO | VREF (LF423) | Reference supply; branch destinations unresolved (PDF p. 30) |
| 82 | GRN/VIO | VREF (LH315) | Reference supply; branch destinations unresolved (PDF p. 30) |
| 84 | YEL/GRN | AAT (VH407) | Ambient air temperature sensor (PDF p. 30) |
| 86 | GRN/ORG | APPVREF1 (LE136) | Accelerator pedal position sensor (PDF p. 30) |
| 87 | VIO/GRN | APPRTN1 (RE136) | Accelerator pedal position sensor (PDF p. 30) |

## C1232T — transmission harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 10 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 31) |
| 16 | BLU/WHT | HTR22 (CE234) | Oxygen sensor 22 (PDF p. 31) |
| 26 | WHT | HO2S22 (VE733) | Oxygen sensor 22 (PDF p. 31) |
| 29 | WHT | UO2SPC11 (LE450) | Oxygen sensor 11 (PDF p. 31) |
| 30 | BRN/YEL | UO2SPC21 (LE451) | Oxygen sensor 21 (PDF p. 31) |
| 37 | WHT/GRN | FPM2 (VE521) | Fuel pump control module (PDF p. 31) |
| 44 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 31) |
| 45 | VIO/GRN | UO2SGREF21 (LE449) | Oxygen sensor 21 (PDF p. 31) |
| 46 | GRY/VIO | UO2SHTR21 (CE236) | Oxygen sensor 21 (PDF p. 31) |
| 48 | WHT/BLU | EVC RIGHT (CE196) | Destination unresolved; follow printed circuit in source (PDF p. 31) |
| 52 | BRN/GRN | EVM LEFT (VE915) | Destination unresolved; follow printed circuit in source (PDF p. 31) |
| 53 | WHT/BLU | EVM RIGHT (VE939) | Destination unresolved; follow printed circuit in source (PDF p. 31) |
| 59 | YEL/GRN | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 31) |
| 60 | WHT/GRN | UO2S21 (VE827) | Oxygen sensor 21 (PDF p. 31) |
| 74 | BLU/GRN | EVC LEFT (CE162) | Destination unresolved; follow printed circuit in source (PDF p. 31) |
| 76 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 31) |
| 77 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 31) |
| 84 | WHT/ORG | SIGRTN (RE731) | Return circuit; branch destinations unresolved (PDF p. 31) |
| 85 | GRN | SIGRTN (RE733) | Return circuit; branch destinations unresolved (PDF p. 31) |

## C1232E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 4 | VIO | VCT11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 30) |
| 5 | BLU/GRN | SIGRTN (RE238) | Return circuit; branch destinations unresolved (PDF p. 30) |
| 8 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 30) |
| 9 | WHT/BRN | KS11- (RE323) | Knock sensor 11 (PDF p. 30) |
| 12 | BRN | TP1 (VE818) | Throttle position sensor (PDF p. 30) |
| 13 | BLU | RTN TCIP (RE320) | Return circuit; branch destinations unresolved (PDF p. 30) |
| 17 | YEL/VIO | INJ 3 (CE264) | Fuel injector 3 (PDF p. 30) |
| 18 | BLU/GRY | INJ 6 (CE267) | Fuel injector 6 (PDF p. 30) |
| 21 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 30) |
| 25 | YEL/GRY | VCT21 (CE442) | Variable camshaft timing 21 solenoid (PDF p. 30) |
| 28 | YEL/BLU | CACT (VE792) | Charge air temperature sensor (PDF p. 30) |
| 29 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 30) |
| 30 | VIO/ORG | KS11+ (VE801) | Knock sensor 11 (PDF p. 30) |
| 31 | GRN | FRT (VE728) | Destination unresolved; follow printed circuit in source (PDF p. 30) |
| 36 | BLU/GRN | INJ 2 (CE263) | Fuel injector 2 (PDF p. 30) |
| 38 | VIO/GRN | INJ 5 (CE266) | Fuel injector 5 (PDF p. 33) |
| 39 | GRN | INJ 1 (CE262) | Fuel injector 1 (PDF p. 33) |
| 42 | VIO/BRN | COP6E (CE308) | Coil on plug 6 (PDF p. 33) |
| 46 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 33) |
| 47 | VIO | VRSRTN (RE143) | Return circuit; branch destinations unresolved (PDF p. 33) |
| 48 | BLU | INJPWRM (CBK01) | Destination unresolved; follow printed circuit in source (PDF p. 33) |
| 50 | BLU/GRN | TCIP+ (VE803) | Destination unresolved; follow printed circuit in source (PDF p. 33) |
| 51 | BRN/BLU | KS21+ (VE802) | Knock sensor 21 (PDF p. 33) |
| 53 | YEL/ORG | KS12+ (VE828) | Knock sensor 12 (PDF p. 33) |
| 54 | BRN/BLU | CMP12 (VE706) | Camshaft position 12 sensor (PDF p. 33) |
| 58 | GRN/BRN | KS22+ (VE829) | Knock sensor 22 (PDF p. 33) |
| 60 | GRY/BLU | CACCPC (CH307) | Air conditioning system (PDF p. 33) |
| 62 | WHT/BRN | COP5B (CE307) | Coil on plug 5 (PDF p. 33) |
| 63 | BLU/ORG | COP3F (CE305) | Coil on plug 3 (PDF p. 33) |
| 69 | GRY | EOP (CMC24) | Engine oil pressure sensor (PDF p. 33) |
| 70 | BRN/BLU | LPFSP (VE761) | Destination unresolved; follow printed circuit in source (PDF p. 33) |
| 72 | BRN/GRN | KS21- (RE324) | Knock sensor 21 (PDF p. 33) |
| 73 | YEL | CKCP (VE763) | Destination unresolved; follow printed circuit in source (PDF p. 33) |
| 74 | GRN | KS12- (RE344) | Knock sensor 12 (PDF p. 33) |
| 75 | YEL/BLU | CMP21 (VE738) | Camshaft position 21 sensor (PDF p. 33) |
| 76 | WHT/GRN | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 33) |
| 77 | GRN/VIO | CMP22 (VE707) | Camshaft position 22 sensor (PDF p. 33) |
| 78 | VIO/GRN | SHDRTN (LE135) | Return circuit; branch destinations unresolved (PDF p. 33) |
| 79 | VIO/GRY | KS22- (RE345) | Knock sensor 22 (PDF p. 33) |
| 81 | WHT | INJ 4 (CE265) | Fuel injector 4 (PDF p. 33) |
| 83 | YEL/GRY | COP7G (CE309) | Destination unresolved; follow printed circuit in source (PDF p. 33) |
| 84 | GRN/VIO | COP4C (CE306) | Coil on plug 4 (PDF p. 33) |
| 85 | BLU/GRN | TACM- (CE426) | Electronic throttle motor (PDF p. 33) |
| 91 | BRN | SIG RTN (RE144) | Return circuit; branch destinations unresolved (PDF p. 33) |
| 92 | GRN | SIG RTN (RE402) | Return circuit; branch destinations unresolved (PDF p. 33) |
| 94 | BLU | TCBP (LE239) | Turbocharger boost pressure sensor (PDF p. 33) |
| 98 | GRY | CACCT (CE193) | Destination unresolved; follow printed circuit in source (PDF p. 33) |
| 99 | BLU/GRN | SIGRTN (RE138) | Return circuit; branch destinations unresolved (PDF p. 33) |
| 102 | WHT/ORG | VCT12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 33) |
| 105 | BLU/BRN | COP8D (CE310) | Coil on plug 8 (PDF p. 33) |
| 106 | YEL/VIO | TACM+ (CE412) | Electronic throttle motor (PDF p. 33) |
| 110 | GRY/VIO | INJ-8 (CE269) | Destination unresolved; follow printed circuit in source (PDF p. 33) |
| 111 | BRN/VIO | VCT22 (CE443) | Variable camshaft timing 22 solenoid (PDF p. 33) |
| 113 | GRN/WHT | CKP- (RE135) | Crankshaft position sensor (PDF p. 33) |
| 114 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 33) |
| 115 | GRY | FRP (LE238) | Fuel rail pressure sensor (PDF p. 33) |
| 116 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 31) |
| 117 | YEL | ETCRTN (LE134) | Throttle reference supply; source prints ETCRTN for LE134 (PDF p. 31) |
| 118 | VIO/GRN | VREF (LE111) | Reference supply; branch destinations unresolved (PDF p. 31) |
| 120 | GRN/VIO | CKP+ (VE711) | Crankshaft position sensor (PDF p. 31) |
| 121 | WHT/VIO | Not labelled (RE468) | Return circuit RE468; destination unresolved (PDF p. 31) |
| 123 | BRN/YEL | INJ 7 (CE268) | Fuel injector 7 (PDF p. 31) |
| 126 | YEL/BLU | COP2H (CE304) | Destination unresolved; follow printed circuit in source (PDF p. 31) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 38 (20A), BLU CBK01, then C1232B-1, C1232B-2, C1232B-16 through splice S103.

PCM relay control: C1232B-20, YEL/BLU CE302. The relay coil supply is fuse 22 (10A).

RUN/START fuse 60 (5A), YEL/VIO CBB60, feeds C1232B-13.

PCM grounds: C1232B-46, C1232B-47, C1232B-61, C1232B-62, C1232B-76, C1232B-77, BLK/YEL GD113, to G101.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
