# 2014 Ford Fusion FWD L4-2.0L Turbo (EcoBoost) — PCM pinout

Transcribed from [2014 Ford Fusion FWD L4-2.0L Turbo.pdf](2014%20Ford%20Fusion%20FWD%20L4-2.0L%20Turbo.pdf) (ALLDATA "Engine Controls" wiring diagram, pages 1-6, diagram numbers 437584-437589).

Powertrain Control Module (PCM), located right front of engine. Ford 198-pin PCM with two harness connectors; the rusEFI adapter for this unit is `Ford-fusion-2.0T`.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C1381B | 103 | Vehicle side: power, grounds, HS1 CAN, APP, brake, fuel pump module, A/C, fans, starting/charging, EVAP, HO2S12, FTP, IAT, TCBP/CACT |
| C1381E | 95 | Engine side: injectors, coils, VCT, throttle, CKP/CMP, MAP, ECT, CHT, FRP, HO2S11, knock, transmission solenoids/sensors |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, VIO violet, WHT white, GRY grey, ORG orange, PNK pink). Ford circuit codes printed next to the wire color are given in parentheses in the Function column. Unlisted pins are not connected in this diagram. "NCA" in the source means no circuit assigned.

## C1381B — vehicle harness connector (103-pin)

Pins 1-50 are on page 2, pins 51-103 on page 4.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT/ORG | HTR12 (CE233) | HO2S12 (downstream O2) pin 2, heater, via C1026 pin 12 |
| 2 | WHT/BRN | ACCR (CH302) | Air conditioning system |
| 4 | WHT/BLU | HFC (CEC01) | Cooling fans system |
| 7 | GRY/VIO | SIGRTN (RE406) | C219 pin 45 (becomes YEL/VIO RE407) -> S205 -> steering column control module C2414A pin 11; selector lever assembly pin 4 (SST RTN) |
| 10 | BLU/GRY | APPVREF2 (LE137) | Accelerator pedal position (APP) sensor pin 6 |
| 11 | GRN/VIO | VREF (LE423) | S133 -> TCBP/CACT sensor pin 3 (VREF, via C145 pin 8); A/C pressure transducer pin 3 (via C145 pin 7); generator current sensor pin 1 (via C146 pin 9) |
| 12 | GRN/ORG | APPVREF1 (LE136) | APP sensor pin 1 |
| 13 | BRN/BLU | VREF (LE230) | S134 -> fuel pressure sensor pin 3; fuel tank pressure (FTP) sensor pin 3 (via C315 pin 11) |
| 16 | WHT/VIO | SIGRTN (RE230) | S131 -> fuel pressure sensor pin 2; FTP sensor pin 2 (via C1010 pin 22, C315 pin 7) |
| 17 | YEL/VIO | SIGRTN (RE407) | Starting/charging system |
| 18 | YEL/VIO | SIGRTN (RE407) | S126 -> AAT sensor pin 2 (via C134 pin 12); generator current sensor pin 2 (via C146 pin 11); A/C pressure transducer pin 1 (via C145 pin 5) |
| 19 | YEL/BLU | SIGRTN (RE332) | S119 -> IAT sensor pin 2; TCBP/CACT sensor pin 1 (SIGRTN, via C145 pin 6) |
| 20 | GRN/BLU | CAN V (CE114) | EVAP canister purge valve pin 1 (via C1010 pin 17) |
| 22 | WHT/BRN | EVAPCP (CE113) | EVAP purge valve (rear of engine) pin 1 (via C1026 pin 4) |
| 23 | GRN/BLU | LFC (CEC02) | Cooling fans system |
| 26 | VIO | GENMON (CDC15) | Starting/charging system |
| 27 | BRN/WHT | FPM (VE518) | Fuel pump control module pin 7 (FPM), via C1010 pin 19 |
| 28 | VIO/ORG | PCM WAKE (CE436) | Body control module C2280C pin 18 (PCM wake up FET) |
| 29 | BRN | IES (CR115) | Body control module C2280C pin 29 |
| 32 | YEL/GRN | CACT (LE424) | TCBP/CACT sensor pin 2 (CACT, via C145 pin 4) |
| 35 | YEL/GRN | APPRTN2 (RE137) | APP sensor pin 4 |
| 36 | VIO/GRN | APPRTN1 (RE136) | APP sensor pin 3 |
| 38 | GRN | SIGRTN (RE242) | HO2S12 pin 3 (WHT), via C1026 pin 14 |
| 39 | YEL/ORG | FPC (VE225) | Fuel pump control module pin 3 (FPC), via C215 pin 18 |
| 41 | WHT/BRN | VACC (VE462) | Air conditioning system |
| 43 | YEL | SMC (CDC12) | Starting/charging system |
| 46 | WHT | AWD-M (VCF34) | Transmissions system |
| 47 | BLU/WHT | SMR (CDC35) | Starting/charging system |
| 48 | BLU/WHT | ISP-R (CBB26) | BJB fuse 26 (10 A, hot in start or run) |
| 50 | WHT/GRN | LIN (VDN06) | Cooling fans system |
| 51 | GRN/BLU | AAT (VE750) | Ambient air temperature (AAT) sensor pin 1 (via C134 pin 13) |
| 52 | VIO/ORG | ACPT (VH433) | A/C pressure transducer pin 2 (via C145 pin 9) |
| 54 | BLU/WHT | APP2 (VE702) | APP sensor pin 5 |
| 55 | YEL/ORG | APP1 (VE701) | APP sensor pin 2 |
| 57 | YEL/GRN | HO2S12 (VE731) | HO2S12 pin 4 (via C1026 pin 13) |
| 58 | BRN/WHT | PCM RC (CE237) | PCM power relay pin 1 (coil), BJB |
| 59 | BLU/ORG | GENCOM (CDC10) | Starting/charging system |
| 60 | GRN | AWD-C (VCF35) | Transmissions system |
| 62 | WHT/GRN | SMCS (CDC54) | Starting/charging system |
| 63 | GRY/YEL | PWR 2 (VET77) | Gear shift module (GSM) pin 10, via C219 pin 19 |
| 65 | VIO/ORG | BPS (CES09) | Stop lamp switch pin 2 |
| 66 | VIO/WHT | BPP (CCB08) | Stop lamp switch pin 4 (S204; same circuit also feeds BCM C2280H pin 1 via C219 pin 37) |
| 68 | WHT | HS1 CAN- (VDB05) | Computer data lines system |
| 69 | WHT/BLU | HS1 CAN+ (VDB04) | Computer data lines system |
| 71 | BLU/BRN | FLP (VE727) | Fuel pressure sensor pin 1 |
| 73 | VIO/GRN | FTP (VE922) | FTP sensor pin 1 (via C1010 pin 40, C315 pin 10) |
| 74 | GRY/ORG | TCBP (VE805) | TCBP/CACT sensor pin 4 (TCBP, via C145 pin 10) |
| 75 | VIO/GRY | IAT (VE740) | IAT sensor pin 1 |
| 80 | GRY/VIO | EVAP (CE420) | EVAP purge valve pin 1 (via C1010 pin 16) |
| 88 | GRN/VIO | SST- (CET42) | C219 pin 9 -> S216 -> steering column control module C2414A pin 9; selector lever assembly pin 6 (SST-) |
| 89 | GRY | SST+ (CET43) | C219 pin 10 -> S214 -> steering column control module C2414A pin 10; selector lever assembly pin 5 (SST+) |
| 94 | VIO/GRN | BCS2 ALT (VDC61) | Generator current sensor pin 3 (via C146 pin 6) |
| 96 | BLK/YEL | PWR GND (GD113) | G104 (right side of engine compartment) |
| 97 | BLK/YEL | PWR GND (GD113) | G104 |
| 98 | BLK/YEL | PWR GND (GD113) | G104 |
| 99 | BLK/YEL | PWR GND (GD113) | G104 |
| 101 | GRN/BLU | VPWR (CBB07) | S112 <- BJB fuse 7 (20 A, PCM power relay output) |
| 102 | GRN/BLU | VPWR (CBB07) | S112 <- BJB fuse 7 |
| 103 | GRN/BLU | VPWR (CBB07) | S112 <- BJB fuse 7 |

Component locations (pages 2-4): APP sensor — top of accelerator pedal assembly; stop lamp switch — top of brake pedal assembly (pin 1 WHT/RED fed from BJB fuse 47 10 A hot at all times, pin 3 BLK/GRN to G101 left front of engine compartment); IAT sensor — left front of engine compartment; fuel pressure sensor — top of engine; FTP sensor and fuel level sensor — top of fuel tank; TCBP/CACT sensor and A/C pressure transducer — right front of engine compartment; AAT sensor — behind right end of front grille; generator current sensor — on generator; gear shift module — upper center of dash; steering column control module — on steering column; selector lever assembly (Fusion) — center console; BCM — left end of dash.

Splices: S119 and S120 — engine controls sensor harness near breakout to ABS module; S126 — near breakout to coil on plug 3; S131, S133, S134 — engine controls sensor harness near breakout to PCM; S204 — instrument panel wiring harness; S205 — main wiring harness in breakout to steering column control module; S214 — instrument panel harness near breakout to G202.

## C1381E — engine harness connector (95-pin)

Pins 1-51 are on page 7, pins 52-95 on page 5.

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | VIO | VCT11 (CE421) | Variable camshaft timing 11 (VCT11) solenoid pin 2 |
| 2 | GRY/YEL | SSE (CET18) | 6F35 transmission C1520A pin 7 (SSE) |
| 3 | YEL/GRY | TCBY (CE148) | Turbocharger bypass valve (TCBY) pin 1 |
| 6 | BLU/WHT | VREF (LE458) | S145 -> MAP sensor pin 1; CMP12 sensor pin 1; CMP11 sensor pin 1 |
| 7 | YEL | ETCREF (LE134) | Electronic throttle control (ETC) pin 5 |
| 8 | GRN/VIO | VREF (LE423) | S150 -> CKP sensor pin 1; FRP sensor pin 3 |
| 9 | GRY | OPS (CMC24) | Oil pressure switch pin 1 |
| 10 | VIO | TR-P (VET32) | Transmission C1520A pin 17 (TR-P) |
| 11 | YEL/VIO | CKP (VE711) | CKP sensor pin 2 |
| 12 | BRN/GRN | OSS (VET26) | Transmission C1520A pin 19 (OSS) |
| 14 | GRN/BRN | UO2SHTR11 (CE235) | HO2S11 (upstream O2) pin 3, heater |
| 15 | WHT/BRN | PM HTR (CE239) | C1026 pin 3 (not used) |
| 16 | VIO/WHT | TCWRVS (CE460) | Turbocharger wastegate regulating valve solenoid pin 1 |
| 20 | YEL/GRN | SIGRTN (RE454) | S149 -> MAP sensor pin 2; ECT sensor pin 2; FRP sensor pin 1; CHT sensor pin 2. Also transmission C1520A pin 1 (TFT SIG RTN) |
| 22 | VIO/GRN | TSS/OSS/TR VPWR (LE111) | S142 -> transmission C1520B pin 3 (TSS/VPWR); C1520A pin 18 (OSS/TR VPWR) |
| 27 | WHT/ORG | TSS (VET33) | Transmission C1520B pin 2 (TSS) |
| 28 | BRN/BLU | CMP11 (VE706) | CMP11 sensor pin 3 |
| 29 | WHT/ORG | VCT12 (CE422) | VCT12 solenoid pin 2 |
| 30 | BRN/WHT | SSD (CET08) | Transmission C1520A pin 10 (SSD) |
| 31 | BLU/ORG | ETCRTN (RE134) | ETC pin 4 |
| 32 | BRN/BLU | TSS/OSS/TR GND (RET24) | S143 -> transmission C1520B pin 1 (TSS/GND); C1520A pin 20 (OSS/TR GND) |
| 33 | BLU/GRN | MAP (VE803) | MAP sensor pin 3 |
| 36 | YEL | ECT (VE716) | ECT sensor pin 1 |
| 37 | GRY | FRP (LE238) | Fuel rail pressure (FRP) sensor pin 2 |
| 42 | WHT/VIO | COP1A (CE303) | Coil on plug 1 pin 1 |
| 43 | GRN/VIO | COP4C (CE306) | Coil on plug 4 pin 1 |
| 44 | BLU/GRY | TCC (CET10) | Transmission C1520A pin 6 (TCC) |
| 45 | GRN | SSB (CET06) | Transmission C1520A pin 9 (SSB) |
| 46 | BLU/GRY | CHT (VE712) | Cylinder head temperature (CHT) sensor pin 1 |
| 48 | GRN | UO2SPCT11 (LE452) | HO2S11 pin 5 |
| 49 | GRY/BLU | UO2SGREF11 (LE448) | HO2S11 pin 2 |
| 50 | BRN/BLU | KS2+ (VE802) | Knock sensor 2 pin 2 (BRN), via C1033 pin 8 |
| 51 | BRN/GRN | KS2- (RE324) | Knock sensor 2 pin 1 (BLK), via C1033 pin 7 |
| 52 | GRN/VIO | TP2 (VE819) | ETC pin 6 |
| 53 | GRN/WHT | SIGRTN (RE405) | S146 -> CKP sensor pin 3; CMP12 sensor pin 2; CMP11 sensor pin 2 |
| 54 | GRN/VIO | CMP12 (VE707) | CMP12 sensor pin 3 |
| 57 | YEL/BLU | COP2D (CE304) | Coil on plug 2 pin 1 |
| 59 | YEL/VIO | LPC (CET09) | Transmission C1520A pin 3 (LPC) |
| 60 | BLU/GRN | SSA (CET05) | Transmission C1520A pin 8 (SSA) |
| 63 | BRN/YEL | UO2SPC11 (LE451) | HO2S11 pin 1 |
| 64 | BRN/VIO | UO2S11 (VE826) | HO2S11 pin 6 |
| 65 | VIO/ORG | KS1+ (VE801) | Knock sensor 1 pin 2 (BRN), via C1033 pin 3 |
| 66 | WHT/BRN | KS1- (RE323) | Knock sensor 1 pin 1 (BLK), via C1033 pin 2 |
| 67 | BRN/YEL | TFT (VET27) | Transmission C1520A pin 2 (TFT) |
| 68 | BRN | TP1 (VE818) | ETC pin 3 |
| 72 | BLU/ORG | COP3B (CE305) | Coil on plug 3 pin 1 |
| 75 | GRY/ORG | SSC (CET07) | Transmission C1520A pin 4 (SSC) |
| 77 | GRN/VIO | FVRRTN (RE226) | Fuel injection pump pin 1 |
| 78 | YEL/VIO | FVR (CE226) | Fuel injection pump pin 2 |
| 79 | VIO/GRY | ATFPC (VYT11) | C1026 pin 10 (not used) |
| 80 | BRN | TSPC (CET49) | Transmission C1520A pin 5 (TSPC) |
| 81 | YEL/GRN | ATFPM (VYT12) | C1026 pin 11 (not used) |
| 82 | VIO/GRY | INJ3 (CE207) | Fuel injector 3 pin 1, via C1033 pin 5 |
| 83 | GRY/YEL | INJ2 (CE206) | Fuel injector 2 pin 1, via C1033 pin 4 |
| 84 | GRN/BLU | INJ1 (CE205) | Fuel injector 1 pin 1, via C1033 pin 1 |
| 85 | YEL/ORG | INJ4 (CE208) | Fuel injector 4 pin 1, via C1033 pin 6 |
| 86 | YEL/VIO | TACM+ (CE412) | ETC pin 1 (throttle motor) |
| 87 | YEL/BLU | INJ1RTN (RE205) | Fuel injector 1 pin 2, via C1033 pin 9 |
| 88 | BLU/ORG | INJ2RTN (RE206) | Fuel injector 2 pin 2, via C1033 pin 12 |
| 91 | BLU/GRN | TACM- (CE426) | ETC pin 2 (throttle motor) |
| 92 | BLU | INJ4RTN (RE208) | Fuel injector 4 pin 2, via C1033 pin 14 |
| 93 | GRN/VIO | INJ3RTN (RE207) | Fuel injector 3 pin 2, via C1033 pin 13 |

Component locations (pages 5-7): ETC — on throttle body; VCT11 and VCT12 solenoids — top front of cylinder head; HO2S11 — rear of exhaust manifold; HO2S12 — in exhaust downstream of catalytic converter; fuel injection pump — top rear of engine; EVAP canister purge valve / EVAP purge valve — via C1010; EVAP purge valve — rear of engine; fuel injectors — top left side of engine; knock sensor 1 — left front of engine; knock sensor 2 — left rear of engine; coils on plug — top of engine above cylinders 1-4; TC wastegate regulating valve solenoid — lower right front of engine; TCBY — top center of engine; CHT sensor — upper right side of engine; MAP sensor — top left front of engine; ECT sensor — right rear of cylinder head; FRP sensor — top front of engine; CKP sensor — lower right front of engine block; CMP12 and CMP11 sensors — top left rear of cylinder head; oil pressure switch — oil filter housing; 6F35 transmission C1520A — left side of transmission, C1520B — rear of transmission.

Splices: S142 and S143 — engine controls harness near breakout to transmission; S145 — near breakout to coil on plug 4; S146 and S147 — engine controls harness near breakout to coil on plug 1; S149 — near breakout to MAP sensor; S150 — near breakout to VCT12 solenoid; S151 — near breakout to CKP sensor.

Sensor wiring summary (engine side):

- CKP sensor (3-wire hall): 1 GRN/VIO VREF, 2 YEL/VIO signal, 3 GRN/WHT SIGRTN.
- CMP12 sensor: 1 BLU/WHT VREF, 2 GRN/WHT SIGRTN, 3 GRN/VIO signal. CMP11 sensor: 1 BLU/WHT VREF, 2 GRN/WHT SIGRTN, 3 BRN/BLU signal.
- MAP sensor: 1 BLU/WHT VREF, 2 YEL/GRN SIGRTN, 3 BLU/GRN signal. FRP sensor: 1 YEL/GRN SIGRTN, 2 GRY signal, 3 GRN/VIO VREF.
- ECT sensor: 1 YEL signal, 2 YEL/GRN SIGRTN. CHT sensor: 1 BLU/GRY signal, 2 YEL/GRN SIGRTN.
- ETC: 1 YEL/VIO TACM+, 2 BLU/GRN TACM-, 3 BRN TP1, 4 BLU/ORG ETCRTN, 5 YEL ETCREF, 6 GRN/VIO TP2.
- HO2S11 (6-wire universal): 1 BRN/YEL, 6 BRN/VIO, 2 GRY/BLU, 5 GRN, 4 GRN (heater supply, S147), 3 GRN/BRN (heater control). HO2S12 (4-wire): 1 GRN (heater supply, S147), 2 WHT/ORG (heater control), 3 WHT (signal return, GRN at PCM), 4 YEL/GRN (signal).
- Fuel injectors (GDI, both sides driven by PCM): INJ1 1 GRN/BLU / 2 YEL/BLU; INJ2 1 GRY/YEL / 2 BLU/ORG; INJ3 1 VIO/GRY / 2 GRN/VIO; INJ4 1 YEL/ORG / 2 BLU. All through C1033.
- Coils on plug: pin 1 control (COP1 WHT/VIO, COP2 YEL/BLU, COP3 BLU/ORG, COP4 GRN/VIO), pin 2 BLK/VIO ground (S148 -> G110, right front of engine), pin 3 VIO supply (S144 <- BJB fuse 11).

## Fuel pump control module (FPCM) — left front of luggage compartment

The fuel pump is not driven by the PCM directly; the PCM commands the FPCM over FPC / FPM.

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | VIO/GRN | VPWR (CE608) | C215 pin 36 <- S120 <- C1035A <- BJB fuse 56 (30 A), fed by fuel pump relay |
| 3 | YEL/ORG | FPC (VE225) | C215 pin 18 -> PCM C1381B pin 39 |
| 4 | BLK/YEL | GND (GD304) | S415 -> G304 (left "C" pillar) |
| 5 | YEL/GRY | FP PWR (CE515) | Fuel pump assembly pin 5 (top of fuel tank) |
| 7 | BRN/WHT | FPM (VE518) | C1010 pin 19 -> PCM C1381B pin 27 |
| 8 | WHT/BRN | FP RTN (RE515) | Fuel pump assembly pin 4 |

Fuel level senders (fuel pump assembly pins 1 GRN/BLU and 2 YEL/VIO, and the separate fuel level sensor on top of the tank, pins 1 WHT/VIO and 2 GRN/ORG) go to the instrument panel cluster C248, not to the PCM.

## Power supply / relays (page 2, page 4)

Battery junction box (BJB), left side of engine compartment:

- **Fuse 26** (10 A, hot in start or run) — BLU/WHT to PCM C1381B pin 48 ISP-R
- **Fuse 47** (10 A, hot at all times) — WHT/RED to stop lamp switch pin 1
- **PCM power relay** — coil pin 2 hot at all times, coil pin 1 BRN/WHT to PCM C1381B pin 58 PCM RC; contact pin 3 hot at all times, contact pin 5 feeds fuses 8, 7, 11, 12:
  - **Fuse 8** (20 A) — GRN, via S113 / C1026 pin 16 / S147: EVAP canister purge valve pin 2, EVAP purge valve pin 2 (via C1010 pin 8), EVAP purge valve (rear of engine) pin 2, VCT11 pin 1, VCT12 pin 1, HO2S11 pin 4, HO2S12 pin 1 (heater supplies)
  - **Fuse 7** (20 A) — GRN/BLU to S112 -> PCM C1381B pins 101, 102, 103 VPWR
  - **Fuse 11** (15 A) — VIO, via C1026 pin 1 / S144: coil on plug 1-4 pin 3
  - **Fuse 12** (15 A) — GRY, via S110: active grille shutter pin 3 and power distribution system (C134 pin 15); via C1026 pin 2 / S151: TC wastegate regulating valve solenoid pin 2, TCBY pin 2
- **Fuel pump relay** — coil pin 2 hot at all times, coil pin 1 YEL/VIO to BCM C2280C pin 26 (fuel pump FET); contact pin 3 hot at all times, contact pin 5 through **fuse 56** (30 A) to VIO/GRN C1035A -> S120 -> FPCM pin 1 VPWR

BCM (left end of dash) is fed from the high current BJB **mega fuse 2** (125 A) via C1716F, YEL/RED to C2280A pin 1. BCM HS1 CAN+ (C2280B pin 10 WHT/BLU VDB04) and HS1 CAN- (C2280B pin 9 WHT VDB05) share the PCM's HS1 CAN circuits.

PCM power grounds at G104 (right side of engine compartment); coil on plug grounds at G110 (right front of engine); FPCM ground at G304 (left "C" pillar); stop lamp switch ground at G101 (left front of engine compartment).
