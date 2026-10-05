# 2014 Ford Fiesta L4-1.6L Turbo — PCM pinout

Transcribed from [2014 Ford Fiesta ECU Pinout.pdf](2014%20Ford%20Fiesta%20ECU%20Pinout.pdf) ("Engine Controls" / "Engine Performance" wiring diagrams; PDF pages 1–6, diagrams 437571–437576). Page references below use physical PDF page numbers, including cover pages.

Powertrain control module (PCM). This is circuit-diagram coverage, not a connector-face drawing. Connector pin counts follow the terminal numbering shown in the source. Unlisted terminals are not connected **in this diagram**; this does not establish whether they are physically unused.

The source prints ETC at C1915E-23 on the engine coolant temperature circuit, and prints injector labels on RE20x with INJxRTN on CE20x. These labels are preserved; do not substitute a different Ford pinout.

Wire abbreviations: BLK black, WHT white, GRN green, GRY grey, RED red, ORG orange, VIO violet, YEL yellow, PNK pink, BRN brown, BLU blue. A slash gives the base/stripe colours. Parenthesized codes in the Function column are Ford circuit identifiers. Printed function labels are retained, including source inconsistencies. NCA means no circuit assigned. Destination descriptions do not imply a component terminal number; unresolved branches are marked explicitly.

| Connector | Pins shown in numbering | Scope |
|---|---|---|
| C1915B | 103 | Vehicle/body harness |
| C1915E | 95 | Engine harness |

## C1915B — vehicle/body harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | WHT/ORG | HTR12 (CE233) | Oxygen sensor 12 (PDF p. 1) |
| 2 | WHT/BRN | ACCR (CH302) | Air conditioning system (PDF p. 1) |
| 5 | VIO | PWM (VE230) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 8 | YEL/VIO | MAF (VE807) | Mass air flow sensor (PDF p. 1) |
| 9 | BLU | RTN (RE320) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 13 | BRN/BLU | VREF (LE230) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 14 | GRN/VIO | VREF (LE423) | Reference supply; branch destinations unresolved (PDF p. 1) |
| 16 | WHT/VIO | SIGRTN (RE230) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 17 | BRN | SIGRTN (RH108) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 19 | GRN/BLU | SIGRTN (RE150) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 20 | GRN/BLU | EVAPCV (CE114) | EVAP canister vent valve (PDF p. 1) |
| 22 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (PDF p. 1) |
| 27 | BRN/WHT | FPDM (VE518) | Fuel pump driver module (PDF p. 1) |
| 28 | VIO/ORG | PCM WU (CE436) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 30 | BLU/ORG | P/N SW CLUTCH 2 (CE903) | Clutch pedal switch / cruise control (PDF p. 1) |
| 32 | YEL/VIO | IAT (VE755) | Intake air temperature sensor (PDF p. 1) |
| 37 | GRN | SIGRTN (RE242) | Return circuit; branch destinations unresolved (PDF p. 1) |
| 39 | YEL/VIO | FPC (CE226) | Fuel pump control module (PDF p. 1) |
| 43 | YEL | S1LSD (CDC12) | Destination unresolved; follow printed circuit in source (PDF p. 1) |
| 45 | YEL/ORG | APP PWM (VE701) | Accelerator pedal position sensor (PDF p. 1) |
| 47 | BLU/WHT | S1HSD (CDC35) | Computer data lines system (PDF p. 1) |
| 48 | GRN/ORG | ISP-R (CBP22) | Ignition supply (PDF p. 1) |
| 50 | VIO | LIN1 (BMS) (CDC15) | LIN circuit; routing in source (PDF p. 1) |
| 52 | GRN/BRN | ACPT (VH442) | A/C pressure transducer (PDF p. 3) |
| 57 | YEL/GRN | HO2S12 (VE731) | Oxygen sensor 12 (PDF p. 3) |
| 58 | YEL/BLU | PCMRC (CE302) | PCM power relay (PDF p. 3) |
| 62 | WHT/GRN | START ENABLE (CDC54) | Starting/charging system (PDF p. 3) |
| 66 | BLU/GRY | BPP (CCA26) | Brake pedal position switch (PDF p. 3) |
| 68 | WHT | HS CAN- (VDB05) | Computer data lines system (PDF p. 3) |
| 69 | WHT/BLU | HS CAN+ (VDB04) | Computer data lines system (PDF p. 3) |
| 71 | BRN/BLU | FRP (VE761) | Fuel rail pressure sensor (PDF p. 3) |
| 73 | VIO/GRN | FTPT (VE922) | Fuel tank pressure sensor (PDF p. 3) |
| 74 | YEL/GRN | TCBP (VE824) | Turbocharger boost pressure sensor (PDF p. 3) |
| 75 | VIO/GRY | IAT (VE740) | Intake air temperature sensor (PDF p. 3) |
| 96 | BLK/GRN | PWRGND (GD187) | PCM power ground (PDF p. 3) |
| 97 | BLK/GRN | PWRGND (GD187) | PCM power ground (PDF p. 3) |
| 99 | BLK/GRN | PWRGND (GD187) | PCM power ground (PDF p. 3) |
| 101 | GRY/ORG | VPWR (CBB18) | PCM power supply (PDF p. 3) |
| 102 | GRY/ORG | VPWR (CBB18) | PCM power supply (PDF p. 3) |
| 103 | GRY/ORG | VPWR (CBB18) | PCM power supply (PDF p. 3) |

## C1915E — engine harness

| Pin | Wire | Function (as printed) | Connects to |
|---|---|---|---|
| 1 | GRN/BRN | HTR11 (CE235) | Oxygen sensor 11 (PDF p. 6) |
| 2 | YEL/ORG | TBV (CE167) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 3 | GRY/VIO | VREF (LE135) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 5 | BLU/WHT | ETCREF (LE428) | Electronic throttle control assembly (PDF p. 6) |
| 7 | BLU/WHT | VREF (LE458) | Reference supply; branch destinations unresolved (PDF p. 6) |
| 10 | BRN/GRN | SIGRTN (RE141) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 16 | VIO | IVCTOCS (CE421) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 18 | YEL/VIO | ETCRTN (RE427) | Electronic throttle control assembly (PDF p. 6) |
| 19 | WHT/GRN | SIGRTN (RE329) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 20 | VIO | SIGRTN (RE143) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 22 | GRN/WHT | SIGRTN (RE405) | Return circuit; branch destinations unresolved (PDF p. 6) |
| 23 | YEL | ETC (VE716) | Electronic throttle control assembly (PDF p. 6) |
| 25 | GRY/BLU | UO2SREF11 (LE448) | Oxygen sensor 11 (PDF p. 6) |
| 26 | BRN/VIO | UO2S11 (VE826) | Oxygen sensor 11 (PDF p. 6) |
| 31 | WHT/ORG | EVCTOCS (CE422) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 33 | BRN/YEL | TPPS (CE415) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 34 | GRN/ORG | TPNG (CE414) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 35 | BLU/GRN | MAP (VE803) | Manifold absolute pressure sensor (PDF p. 6) |
| 36 | WHT/GRN | CMP11 (VE736) | Camshaft position 11 sensor (PDF p. 6) |
| 37 | YEL/BLU | CMP12 (VE738) | Camshaft position 12 sensor (PDF p. 6) |
| 38 | BLU/BRN | FRP (VE727) | Fuel rail pressure sensor (PDF p. 6) |
| 39 | BRN/YEL | UO2SPC11 (LE451) | Oxygen sensor 11 (PDF p. 6) |
| 40 | GRN | UO2SPCT11 (LE452) | Oxygen sensor 11 (PDF p. 6) |
| 42 | GRY | OPS (CMC24) | Oil pressure switch (PDF p. 6) |
| 46 | GRY/ORG | CDV (CE166) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 47 | VIO/WHT | WCS (CE460) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 48 | BRN/YEL | ECBV (VE917) | Destination unresolved; follow printed circuit in source (PDF p. 6) |
| 49 | YEL/VIO | CKP (VE711) | Crankshaft position sensor (PDF p. 6) |
| 50 | WHT/VIO | COP1 (CE303) | Coil on plug 1 (PDF p. 6) |
| 51 | YEL/BLU | COP2 (CE304) | Coil on plug 2 (PDF p. 6) |
| 52 | BLU/ORG | COP3 (CE305) | Coil on plug 3 (PDF p. 6) |
| 53 | BLU/ORG | COP4 (CE306) | Coil on plug 4 (PDF p. 6) |
| 54 | GRN/BRN | SIGRTN (RE135) | Return circuit; branch destinations unresolved (PDF p. 4) |
| 55 | VIO | LIN (CDC15) | LIN circuit; routing in source (PDF p. 4) |
| 57 | BRN/BLU | KS2+ (VE802) | Knock sensor 2 (PDF p. 4) |
| 58 | BRN/GRN | KS2- (RE324) | Knock sensor 2 (PDF p. 4) |
| 59 | VIO/ORG | KS1+ (VE801) | Knock sensor 1 (PDF p. 4) |
| 60 | WHT/BRN | KS1- (RE323) | Knock sensor 1 (PDF p. 4) |
| 78 | GRY/BLU | FVRC- (RE256) | Fuel injection pump (PDF p. 4) |
| 79 | BLU/ORG | FVRC+ (CE256) | Fuel injection pump (PDF p. 4) |
| 81 | BLU/ORG | INJ2 (RE206) | Fuel injector 2 (PDF p. 4) |
| 82 | GRN/VIO | INJ3 (RE207) | Fuel injector 3 (PDF p. 4) |
| 83 | BLU | INJ4 (RE208) | Fuel injector 4 (PDF p. 4) |
| 84 | YEL/BLU | INJ1 (RE205) | Fuel injector 1 (PDF p. 4) |
| 86 | YEL/ORG | INJ4RTN (CE208) | Fuel injector 4 (PDF p. 4) |
| 87 | GRY/YEL | INJ2RTN (CE206) | Fuel injector 2 (PDF p. 4) |
| 89 | BLU/ORG | TACM- (RE134) | Electronic throttle motor (PDF p. 4) |
| 91 | GRN/BLU | INJ1RTN (CE205) | Fuel injector 1 (PDF p. 4) |
| 92 | VIO/GRY | INJ3RTN (CE207) | Fuel injector 3 (PDF p. 4) |
| 94 | YEL | TACM+ (LE134) | Electronic throttle motor (PDF p. 4) |

## Power, grounds, and routing

Battery junction box PCM power relay: fuse 8 (60 A) supplies the relay contact through VIO/RED; relay output GRY/VIO feeds fuse 24 (10 A), whose GRY/ORG / CBB18 output supplies C1915B-101, -102, -103. Central junction box fuse 22 (7.5 A), hot in START or RUN, feeds GRN/ORG / CBP22 to C1915B-48. PCM grounds C1915B-96, -97, -99 use BLK/GRN / GD187 to G106 (left rear of engine compartment). PCM relay control is YEL/BLU / CE302 at C1915B-58 (pages 1–3).

Battery junction box fuse 11 (30 A) supplies the fuel pump relay; fuse 33 (7.5 A) supplies the fuel-level branch. The diagram distinguishes vehicles with and without a fuel pump driver module on page 2. C1915B-27 is FPDM feedback VE518; C1915B-39 is FPC CE226.
