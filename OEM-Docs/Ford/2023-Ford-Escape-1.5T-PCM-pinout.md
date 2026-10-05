# 2023 Ford Escape 1.5L Turbo — PCM pinout

Transcribed from [2023-escape-1.5.pdf](2023-escape-1.5.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1-10). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C175B | 103 | Vehicle/body harness |
| C175E | 95 | Engine harness |

## C175B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 4 | WHT/ORG | HTR 12 (CE233) | Oxygen sensor 12 (PDF p. 2) |
| 5 | VIO/ORG | PCM WAKE (CE436) | Body control module (PDF p. 2) |
| 6 | GRN/BLU | AAT (VE750) | Ambient air temperature sensor (PDF p. 2) |
| 7 | BLU/BRN | TCBP (VE824) | Turbocharger boost pressure sensor (PDF p. 2) |
| 9 | GRY/VIO | SIG RTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 10 | BLU/GRY | APPVREF 2 (LE137) | Accelerator pedal position sensor (PDF p. 2) |
| 12 | WHT/ORG | VREF (LE318) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 15 | GRN/ORG | APPVREF 1 (LE136) | Accelerator pedal position sensor (PDF p. 2) |
| 16 | BLU/WHT | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 2) |
| 17 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 2) |
| 19 | YEL/GRY | FC-V (VE203) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 20 | YEL/GRY | ECBY (CE148) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 22 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 2) |
| 26 | VIO/ORG | ACPT (VH433) | A/C pressure transducer (PDF p. 2) |
| 27 | GRY/VIO | SIG RTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 28 | YEL/VIO | MAF (VE807) | Mass air flow sensor (PDF p. 2) |
| 29 | BLU/WHT | APP 2 (VE702) | Accelerator pedal position sensor (PDF p. 2) |
| 30 | YEL/GRN | APPRTN 2 (RE137) | Accelerator pedal position sensor (PDF p. 2) |
| 32 | WHT/GRN | SIG RTN (RE318) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 33 | YEL/ORG | APP 1 (VE701) | Accelerator pedal position sensor (PDF p. 2) |
| 34 | VIO/GRN | APPRTN 1 (RE136) | Accelerator pedal position sensor (PDF p. 2) |
| 35 | GRN/WHT | SMR (CPK34) | Destination unresolved; follow printed circuit in source (PDF p. 2) |
| 36 | GRN | SIG RTN (RE242) | Return circuit; branch destinations unresolved (PDF p. 2) |
| 38 | YEL/ORG | FPC (VE225) | Fuel pump control module (PDF p. 2) |
| 39 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 2) |
| 41 | VIO/GRN | ISP-R (CBB24) | Ignition supply (PDF p. 2) |
| 42 | VIO/WHT | ACCR (CH401) | Air conditioning system (PDF p. 2) |
| 44 | VIO/GRN | FTP (VE922) | Fuel tank pressure sensor (PDF p. 2) |
| 48 | BRN/WHT | FPM (VE518) | Fuel pump control module (PDF p. 2) |
| 49 | WHT/BRN | BPS (CCB60) | Brake pedal position switch (PDF p. 2) |
| 51 | GRY/ORG | BPP (CCB61) | Brake pedal position switch (PDF p. 2) |
| 53 | WHT/VIO | TRANS CAN - (VE475) | Computer data lines system (PDF p. 3) |
| 54 | GRN/BRN | HS CAN FD - (BDB04) | Computer data lines system (PDF p. 3) |
| 57 | WHT/GRN | SMCS (CDC54) | Starting/charging system (PDF p. 3) |
| 58 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 3) |
| 59 | GRN/WHT | CANV (CE114) | EVAP canister vent valve (PDF p. 3) |
| 60 | WHT/BRN | ACCC (VE462) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 61 | VIO/BRN | LIN (VE376) | LIN circuit; routing in source (PDF p. 3) |
| 62 | GRN/WHT | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 3) |
| 71 | YEL/VIO | ENS (CR167) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 72 | BLU/GRN | TRANS CAN + (VE474) | Computer data lines system (PDF p. 3) |
| 73 | YEL/VIO | HS CAN FD + (BDB03) | Computer data lines system (PDF p. 3) |
| 74 | GRN/VIO | FPRC (RE226) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 75 | YEL/VIO | FPRP (CE226) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 76 | YEL | SMC (CDC12) | Starting/charging system (PDF p. 3) |
| 77 | BLU/BRN | VREF2 (LE425) | Reference supply; branch destinations unresolved (PDF p. 3) |
| 78 | GRY/YEL | T VREF2 (LE461) | Reference supply; branch destinations unresolved (PDF p. 3) |
| 82 | BRN/GRN | TRP1 (VET84) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 86 | YEL/GRY | TRP2 (VET81) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 87 | BRN/BLU | TRGND (RET24) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 90 | YEL/ORG | OSS (RET04) | Transmission output shaft speed sensor (PDF p. 3) |
| 91 | VIO/GRN | ISS (RET73) | Destination unresolved; follow printed circuit in source (PDF p. 3) |
| 92 | WHT/VIO | TSS + (RET33) | Transmission turbine shaft speed sensor (PDF p. 3) |
| 96 | BLK/GRN | GND (GD191) | PCM ground (PDF p. 3) |
| 97 | BLK/GRN | GND (GD191) | PCM ground (PDF p. 3) |
| 98 | BLK/GRN | GND (GD191) | PCM ground (PDF p. 3) |
| 99 | BLK/GRN | GND (GD191) | PCM ground (PDF p. 3) |
| 100 | WHT/BLU | VPWR (CBB06) | PCM power supply (PDF p. 3) |
| 102 | WHT/BLU | VPWR (CBB06) | PCM power supply (PDF p. 3) |
| 103 | WHT/BLU | VPWR (CBB06) | PCM power supply (PDF p. 3) |

## C175E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 2 | YEL/GRN | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 9) |
| 3 | GRY/BLU | UO2SGREF11 (LE448) | Oxygen sensor 11 (PDF p. 9) |
| 4 | GRY | VREF (LE459) | Reference supply; branch destinations unresolved (PDF p. 9) |
| 5 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 9) |
| 6 | GRY | VREF (LE135) | Reference supply; branch destinations unresolved (PDF p. 9) |
| 7 | GRN/WHT | SIG RTN (RE135) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 8 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 9) |
| 9 | BLU/WHT | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 9) |
| 12 | YEL | ETCREF (LE134) | Electronic throttle control assembly (PDF p. 9) |
| 13 | BLU/ORG | ETCRTN (RE134) | Electronic throttle control assembly (PDF p. 9) |
| 14 | BRN/BLU | EP (LE152) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 16 | YEL/ORG | VCT 11 (CE421) | Variable camshaft timing 11 solenoid (PDF p. 9) |
| 18 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 9) |
| 19 | GRN/WHT | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 20 | BLU/GRY | CHT (VE712) | Cylinder head temperature sensor (PDF p. 9) |
| 21 | GRN/WHT | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 23 | WHT/GRN | SIG RTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 24 | VIO/ORG | KS11 (VE801) | Knock sensor 11 (PDF p. 9) |
| 25 | WHT/VIO | COP1A (CE303) | Coil on plug 1 (PDF p. 9) |
| 26 | YEL/BLU | COP2D (CE304) | Coil on plug 2 (PDF p. 9) |
| 27 | BLU/ORG | COP3B (CE305) | Coil on plug 3 (PDF p. 9) |
| 29 | GRY/VIO | EGRT (VE719) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 30 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 9) |
| 31 | WHT/ORG | VCT 12 (CE422) | Variable camshaft timing 12 solenoid (PDF p. 9) |
| 32 | VIO/GRN | TCWGP (VE836) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 33 | YEL/GRN | SIG RTN (RE454) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 34 | GRN | CMP12 (VE707) | Camshaft position 12 sensor (PDF p. 9) |
| 35 | YEL/GRN | VPWR FUEL (CBBC0) | PCM power supply (PDF p. 9) |
| 36 | GRY | FRP (LE238) | Fuel rail pressure sensor (PDF p. 9) |
| 38 | GRY/VIO | SIG RTN (RE406) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 39 | WHT/BRN | KS11RTN (RE323) | Knock sensor 11 (PDF p. 9) |
| 40 | GRN/BRN | MAP (VE804) | Manifold absolute pressure sensor (PDF p. 9) |
| 41 | BRN/YEL | TFP2 (VET98) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 42 | YEL | ECT (VE716) | Engine coolant temperature sensor (PDF p. 9) |
| 43 | VIO/BRN | EOP (LE182) | Engine oil pressure sensor (PDF p. 9) |
| 44 | GRY/ORG | SIG RTN (RE429) | Return circuit; branch destinations unresolved (PDF p. 9) |
| 46 | GRY/YEL | VOP (CE358) | Destination unresolved; follow printed circuit in source (PDF p. 9) |
| 48 | YEL/VIO | CKP (VE711) | Crankshaft position sensor (PDF p. 9) |
| 49 | BRN | CMP11 (VE706) | Camshaft position 11 sensor (PDF p. 9) |
| 50 | WHT/ORG | EGRVP (VE721) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 51 | VIO/ORG | TFP1 (VET97) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 52 | BRN | TP (VE818) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 53 | GRN/ORG | DPFE (VE713) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 54 | YEL/GRN | CPS (VE779) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 55 | GRY | FRP (LE238) | Fuel rail pressure sensor (PDF p. 7) |
| 56 | BLU/WHT | INJ3 (RE211) | Fuel injector 3 (PDF p. 7) |
| 58 | GRY/BRN | INJ2 (RE210) | Fuel injector 2 (PDF p. 7) |
| 59 | GRN/BRN | UO2SHTR11 (CE235) | Oxygen sensor 11 (PDF p. 7) |
| 60 | WHT/GRN | INJ1 (RE209) | Fuel injector 1 (PDF p. 7) |
| 61 | BRN/YEL | TFT (VET27) | Transmission fluid temperature sensor (PDF p. 7) |
| 62 | BLU/GRY | THASC (CET99) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 64 | YEL/VIO | SSF (WET01) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 67 | BRN/WHT | LPC (WE520) | Transmission line pressure control circuit (PDF p. 7) |
| 68 | WHT | TCC (CET51) | Transmission torque converter clutch circuit (PDF p. 7) |
| 69 | YEL | SSE (WET04) | Transmission solenoid assembly (PDF p. 7) |
| 70 | WHT/ORG | SSD (CET94) | Transmission solenoid assembly (PDF p. 7) |
| 71 | VIO/WHT | SSC (WET02) | Transmission circuit (PDF p. 7) |
| 72 | GRN/ORG | SSA (CET11) | Transmission solenoid assembly (PDF p. 7) |
| 73 | GRY/ORG | SSB (WET03) | Transmission solenoid assembly (PDF p. 7) |
| 74 | BLU/BRN | SS3 (CET44) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 76 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 (PDF p. 7) |
| 77 | YEL/BLU | INJ1RTN (RE205) | Fuel injector 1 (PDF p. 7) |
| 79 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 (PDF p. 7) |
| 81 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 (PDF p. 7) |
| 82 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 (PDF p. 7) |
| 84 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 (PDF p. 7) |
| 85 | YEL/ORG | TASV (CET91) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 86 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump (PDF p. 7) |
| 87 | BRN/WHT | EGRVCH (LE139) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 88 | GRN/BLU | TCWGM - (RE460) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 89 | YEL/VIO | TACM + (CE412) | Electronic throttle motor (PDF p. 7) |
| 90 | BLU/GRN | TSPC1 (CET25) | Transmission circuit (PDF p. 7) |
| 91 | YEL/VIO | FVR (CE226) | Fuel injection pump (PDF p. 7) |
| 92 | GRY/ORG | EGRVCL (RE139) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 93 | WHT/VIO | TCWGM + (VE850) | Destination unresolved; follow printed circuit in source (PDF p. 7) |
| 94 | BLU/GRN | TACM - (CE426) | Electronic throttle motor (PDF p. 7) |
| 95 | BRN | TSPC2 (CET49) | Transmission circuit (PDF p. 7) |

## Power, grounds, and routing

Battery junction box PCM power relay output supplies fuse 6 (15A), WHT/BLU CBB06, then C175B-100, C175B-102, C175B-103 through S116.

PCM relay control: C175B-22, YEL/BLU CE302.

RUN/START fuse 24 (10A), VIO/GRN CBB24, feeds C175B-41.

PCM grounds: C175B-96, C175B-97, C175B-98, C175B-99, BLK/GRN GD191, through S114 to G102 in the left engine compartment. See PDF page 3.

Reference supplies and signal returns can branch through splices. Branch destinations or intermediate terminals not resolved in the tables must be checked in the linked source.
