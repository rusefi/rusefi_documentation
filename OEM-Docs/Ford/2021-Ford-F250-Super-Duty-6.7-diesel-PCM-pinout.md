# 2021 Ford F-250 4WD Super Duty V8-6.7L diesel turbo — PCM pinout

Transcribed from [2021 Ford Truck F 250 4WD Super Duty 6.7TD.pdf](2021%20Ford%20Truck%20F%20250%204WD%20Super%20Duty%206.7TD.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1-15). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1232B | 91 | Vehicle/body harness |
| C1232T | 91 | Transmission harness |
| C1232E | 127 | Engine harness |

## C1232B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 2) |
| 2 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 2) |
| 4 | YEL/VIO | INJPWRM (CE226) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 5 | BRN/GRN | SMRC (CDC25) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 6 | GRN/WHT | ENGINE BRAKE (CCB12) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 7 | VIO/RED | PCM WAKE (CE436) | Body control module (PDF p. 2) |
| 9 | GRN/RED | VREF (CE378) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 10 | YEL/VIO | MAF (VE807) | Mass air flow sensor (PDF p. 2) |
| 11 | BLU | SIG RTN (RE320) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 12 | WHT | HS 1 CAN - (VDB05) | Computer data lines system (PDF p. 2) |
| 13 | BLU | HS 1 CAN + (VDB04) | Computer data lines system (PDF p. 2) |
| 14 | GRN/ORG | CAN 2 + (VE348) | Computer data lines system (PDF p. 2) |
| 15 | BRN/YEL | CAN 2 - (VE349) | Computer data lines system (PDF p. 2) |
| 16 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 2) |
| 17 | BLU | VPWR (CBK01) | PCM power supply (PDF p. 2) |
| 19 | GRN/VIO | IES (RE226) | Body control module (PDF p. 2) |
| 20 | GRY/ORG | SMC (CDC26) | Starting/charging system (PDF p. 2) |
| 21 | YEL/ORG | ISP R (CBB50) | Ignition supply (PDF p. 2) |
| 22 | BLU/GRY | START (CDC35) | Starting/charging system (PDF p. 2) |
| 24 | WHT/BLU | APPVREF 2 (LE137) | Accelerator pedal position sensor (PDF p. 2) |
| 25 | BLU/WHT | APP 2 (VE702) | Accelerator pedal position sensor (PDF p. 2) |
| 26 | YEL/RED | APPRTN 2 (RE137) | Accelerator pedal position sensor (PDF p. 2) |
| 27 | GRY/YEL | SIG RTN (RE823) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 33 | WHT/VIO | GEN LI (CDC47) | Starting/charging system (PDF p. 2) |
| 34 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 2) |
| 35 | VIO/WHT | BPP (CCB08) | Brake pedal position switch (PDF p. 2) |
| 37 | GRY/BRN | FSS (VEC10) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 38 | YEL/GRN | VBPWR (LE424) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 42 | BLU/BRN | WIF (VE823) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 47 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 2) |
| 49 | GRN | GEN LI (CDC15) | Starting/charging system (PDF p. 2) |
| 50 | VIO/GRY | PCMRC (CE937) | PCM power relay (PDF p. 2) |
| 51 | YEL/VIO | ENS (CR167) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 52 | VIO/GRY | BPS (CES09) | Brake pedal position switch (PDF p. 2) |
| 53 | GRN/BRN | APPVREF 1 (LE136) | Accelerator pedal position sensor (PDF p. 2) |
| 54 | YEL/ORG | APP 1 (VE701) | Accelerator pedal position sensor (PDF p. 2) |
| 55 | VIO/BRN | APPRTN 1 (RE136) | Accelerator pedal position sensor (PDF p. 2) |
| 60 | GRY/BLU | SIG RTN (RH433) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 61 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 2) |
| 62 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 2) |
| 65 | WHT/BRN | VACC (VE462) | Air conditioning system (PDF p. 2) |
| 68 | BLU/BRN | GEN RC (CDC10) | Starting/charging system (PDF p. 2) |
| 70 | VIO/GRN | SIG RTN (RE204) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 75 | WHT/GRN | ACPT (LH315) | A/C pressure transducer (PDF p. 4, 12) |
| 76 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 4, 12) |
| 77 | BLK/YEL | PWR GND (GD113) | PCM ground (PDF p. 4, 12) |
| 78 | YEL | FPC (VE225) | Fuel pump control module (PDF p. 4, 12) |
| 80 | YEL/GRY | FCV (VE203) | Cooling fans system (PDF p. 4, 12) |
| 82 | WHT/ORG | ACCR (CH302) | Air conditioning system (PDF p. 4, 12) |
| 83 | YEL/GRY | GENRC (CDC49) | Starting/charging system (PDF p. 4, 12) |
| 85 | YEL/VIO | SIG RTN (RE407) | Return circuit; branch destinations unresolved (PDF p. 4, 12) |
| 86 | GRN/BLU | AAT (VE750) | Ambient air temperature sensor (PDF p. 4, 12) |
| 90 | VIO/ORG | VREF (VH433) | Reference supply; branch destinations unresolved (PDF p. 4, 12) |

## C1232T — transmission harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 2 | BLU | CTO (CE913) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 5 | GRN/ORG (or GRN/VIO) | TRSW PN (CET40) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 11 | BRN/YEL | EGT 11 (VE722) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 12 | GRN/VIO | EGT 12 (VE723) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 13 | WHT/VIO | EGT 13 (VE771) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 17 | BRN/BLU | RDPC (CE354) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 18 | BLU/GRY (or BLU/GRN) | PTO 2 (CE933) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 19 | YEL/GRN (or YEL) | PTO 1 (LE461) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 20 | GRN/BRN | RDPM (VE529) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 26 | BLU/RED | Not labelled (RE722) | Exhaust gas temperature sensor return (11) (PDF p. 5, 13) |
| 27 | WHT/BLU | Not labelled (RE723) | Exhaust gas temperature sensor return (12) (PDF p. 5, 13) |
| 28 | GRY/ORG | Not labelled (RE771) | Exhaust gas temperature sensor return (13) (PDF p. 5, 13) |
| 30 | BLU/GRN (or BLU/WHT) | PTOIL (CE326) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 32 | VIO/WHT (or VIO/ORG) | VSOUT (VMC05) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 33 | VIO/BRN | BCP SW (CE926) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 36 | GRY/BLU | SIGRTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 5, 13) |
| 37 | VIO/GRN | DPF 11 (VE747) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 38 | BLU/BRN | VREF (LE425) | Reference supply; branch destinations unresolved (PDF p. 5, 13) |
| 40 | BLU/WHT | RDP (VE833) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 41 | BRN/WHT | EGT 14 (VE776) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 45 | GRY/BRN | TRO P (CET22) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 55 | GRN/RED | SIG RTN (RE353) | Return circuit; branch destinations unresolved (PDF p. 5, 13) |
| 56 | GRN/BLU | Not labelled (RE776) | Exhaust gas temperature sensor return (14) (PDF p. 5, 13) |
| 60 | GRN/WHT | TRO N (CET21) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 61 | VIO/ORG | RD INJ PWR (VE351) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 62 | GRY | RD INJ GND (VE350) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 68 | GRY/YEL | VREF (LE461) | Reference supply; branch destinations unresolved (PDF p. 5, 13) |
| 69 | VIO/GRY | RDT (VE838) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 70 | BLU/ORG | SIGRTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 5, 13) |
| 73 | GRN/BRN (or GRN) | PTO RPM (CE914) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 75 | BRN | BCP LAMP (CE140) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 83 | WHT/BRN | PTO REF (LE434) | Destination unresolved; follow printed circuit in source (PDF p. 5, 13) |
| 88 | GRY/VIO | PTO RTN (RE327) | Return circuit; branch destinations unresolved (PDF p. 5, 13) |

## C1232E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | BLU/ORG | FVCV (CE256) | Destination unresolved; follow printed circuit in source (PDF p. 10) |
| 2 | YEL/GRN | TACM + (CE412) | Electronic throttle motor (PDF p. 10) |
| 3 | BLU/GRN | TACM - (CE426) | Electronic throttle motor (PDF p. 10) |
| 9 | BLU/GRY | SIG RTN (RE938) | Return circuit; branch destinations unresolved (PDF p. 10) |
| 10 | WHT/ORG | EOP (VE938) | Engine oil pressure sensor (PDF p. 10) |
| 11 | VIO/BRN | VREF (LE182) | Reference supply; branch destinations unresolved (PDF p. 10) |
| 13 | YEL/RED | CACT (VE755) | Charge air temperature sensor (PDF p. 10) |
| 19 | BRN | FUEL INJ, PWR (CE209) | Fuel injector 5 power terminal (PDF p. 10) |
| 20 | GRY/RED | FUEL INJ, PWR (CE211) | Fuel injector 7 power terminal (PDF p. 10) |
| 30 | GRN/VIO | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 10) |
| 31 | BLU/GRN | MAP (VE803) | Manifold absolute pressure sensor (PDF p. 10) |
| 32 | BLU | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 10) |
| 34 | YEL/BLU | ECT (VE716) | Engine coolant temperature sensor (PDF p. 10) |
| 35 | GRN/BRN | ECT2 (VE759) | Engine coolant temperature sensor (PDF p. 10) |
| 36 | GRN/BLU | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 10) |
| 37 | GRN/BRN | VREF (LE143) | Reference supply; branch destinations unresolved (PDF p. 10) |
| 38 | WHT/VIO | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 10) |
| 39 | BRN/BLU | SIG RTN (RE143) | Return circuit; branch destinations unresolved (PDF p. 10) |
| 40 | WHT/RED | FUEL INJ, GND (RE209) | Fuel injector 5 return terminal (PDF p. 10) |
| 41 | BLU/WHT | FUEL INJ, GND (RE211) | Fuel injector 7 return terminal (PDF p. 10) |
| 43 | GRY/ORG | FPCV (CE257) | Fuel pump control module (PDF p. 10) |
| 44 | GRY/VIO | VOPC (CE258) | Destination unresolved; follow printed circuit in source (PDF p. 10) |
| 54 | YEL | VGTP (LE437) | Destination unresolved; follow printed circuit in source (PDF p. 10) |
| 55 | GRN/ORG | SIG RTN (RE476) | Return circuit; branch destinations unresolved (PDF p. 10) |
| 56 | GRN/WHT | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 10) |
| 57 | WHT/ORG | EGR (VE721) | Destination unresolved; follow printed circuit in source (PDF p. 10) |
| 60 | VIO/WHT | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 10) |
| 61 | VIO/ORG | FUEL INJ, PWR (CE212) | Fuel injector 8 power terminal (PDF p. 10) |
| 62 | GRN/RED | FUEL INJ, PWR (CE210) | Fuel injector 6 power terminal (PDF p. 10) |
| 63 | VIO/GRY | FUEL INJ, PWR (CE207) | Fuel injector 3 power terminal (PDF p. 10) |
| 64 | BRN/YEL | EGRCBV (VE917) | Destination unresolved; follow printed circuit in source (PDF p. 10) |
| 72 | BLU/BRN | SIGRTN (RE238) | Return circuit; branch destinations unresolved (PDF p. 10) |
| 73 | BLU/RED | FRP (VE727) | Fuel rail pressure sensor (PDF p. 10) |
| 74 | GRY/ORG | VREF (LE238) | Reference supply; branch destinations unresolved (PDF p. 10) |
| 78 | GRY/BRN | EGRT 12 (VE765) | Destination unresolved; follow printed circuit in source (PDF p. 10) |
| 79 | VIO/GRN | SIG RTN (RE135) | Return circuit; branch destinations unresolved (PDF p. 10) |
| 80 | YEL/GRN | CKP (VE711) | Crankshaft position sensor (PDF p. 10) |
| 81 | GRY/VIO | VREF (LE135) | Reference supply; branch destinations unresolved (PDF p. 10) |
| 82 | WHT/ORG | FUEL INJ, GND (RE212) | Fuel injector 8 return terminal (PDF p. 10) |
| 83 | GRY/BRN | FUEL INJ, GND (RE210) | Fuel injector 6 return terminal (PDF p. 10) |
| 84 | GRN/VIO | FUEL INJ, GND (RE207) | Fuel injector 3 return terminal (PDF p. 10) |
| 86 | WHT/VIO | EGRVCL (CE101) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 87 | WHT | VGTC + (CE431) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 88 | GRY/YEL | ECVB TH (CETA7) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 92 | GRN | FRT (VE728) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 93 | WHT/GRN | SIG RTN (RE152) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 94 | GRY/BLU | EXP (VE921) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 95 | BLU/WHT | VREF (VE476) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 99 | BRN/BLU | SIG RTN (RE719) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 101 | BLU/ORG | EGRT 11 (VE764) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 103 | YEL/ORG | FUEL INJ PWR (CE208) | Fuel injector 4 power terminal (PDF p. 8) |
| 104 | GRN/BLU | FUEL INJ PWR (CE205) | Fuel injector 1 power terminal (PDF p. 8) |
| 105 | GRY/YEL | FUEL INJ PWR (CE206) | Fuel injector 2 power terminal (PDF p. 8) |
| 107 | YEL/BLU | EGRVCH (CE102) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 108 | BLU | VGTC - (CE432) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 113 | BRN/BLU | VREF (LE152) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 114 | GRY | VREF (LE238) | Reference supply; branch destinations unresolved (PDF p. 8) |
| 116 | BLU/BRN | SIGRTN (RE238) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 117 | YEL/ORG | FLP (CE932) | Fuel pressure sensor (PDF p. 8) |
| 121 | WHT/RED | TPREF (LE428) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 122 | GRY | TP (VE820) | Destination unresolved; follow printed circuit in source (PDF p. 8) |
| 123 | YEL/VIO | TP RTN (RE427) | Return circuit; branch destinations unresolved (PDF p. 8) |
| 124 | BLU/RED | FUEL INJ GND (RE208) | Fuel injector 4 return terminal (PDF p. 8) |
| 125 | YEL/VIO | FUEL INJ GND (RE205) | Fuel injector 1 return terminal (PDF p. 8) |
| 126 | BLU/GRY | FUEL INJ GND (RE206) | Fuel injector 2 return terminal (PDF p. 8) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 51 (20A), BLU CBK01, then C1232B-1, C1232B-2, C1232B-16, C1232B-17 through S110.

PCM relay control: C1232B-50, VIO/GRY CE937.

RUN/START fuse 16 (10A) feeds S120 and the YEL/ORG branch to C1232B-21, printed CBB50 at the PCM.

PCM grounds: C1232B-47, C1232B-61, C1232B-62, C1232B-76, C1232B-77, BLK/YEL GD113, through S113 to G113 at the right rear of the engine. See PDF pages 2, 4 and 7.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
