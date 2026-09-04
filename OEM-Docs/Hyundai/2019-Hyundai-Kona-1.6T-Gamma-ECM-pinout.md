# 2019 Hyundai Kona Limited 1.6L Turbo (Gamma T-GDI) — ECM pinout

Transcribed from [2019-kona-1.6T.pdf](2019-kona-1.6T.pdf) (Mitchell ProDemand "Engine Performance > 1.6L Turbo" wiring diagram, Fig 1-6, printed via P-Town Auto & Offroad; diagram ids 675886-675891).

Engine Control Module (ECM), located left rear of engine compartment. The ECM uses a Bosch 154-pin connector split into two housings, C100-A (60-pin) and C100-K (94-pin).

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| C100-A | 60 | Engine harness: ignition coils, injectors, electronic throttle, electric wastegate, fuel pressure control valve, crank/cam sensors, ECT, downstream O2, brake switches |
| C100-K | 94 | Power/grounds, relay controls, 5 V supplies, MAP/IAT, knock, APS, boost/rail/brake-booster pressure sensors, upstream wideband O2, CAN, immobilizer |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, YEL yellow, BLU blue, WHT white, GRY grey, ORG orange, PNK pink; NCA = no color available). Unlisted pins are not connected in this diagram. Circled 1/2 options in the source: (1) = with smart key & immobilizer, (2) = without smart key & immobilizer. Pins 1-49 of C100-K are drawn on Fig 6, pins 50-94 on Fig 4; C100-A is on Fig 1.

## C100-A — engine harness connector (60-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | GRN | IGN COIL CTRL CYL 4 | Ignition coil 4 pin 2 |
| 2 | WHT | IGN COIL CTRL CYL 3 | Ignition coil 3 pin 2 |
| 4 | RED | MOTOR (+) | Electric wastegate actuator pin 1 |
| 5 | WHT | INJECTOR 3 CTRL (-) | Injector 3 pin 1 (via CC11 pin 5) |
| 7 | ORG | ECTS SIG | Engine coolant temperature sensor pin 3 |
| 9 | BRN | BPS SIG | Boost pressure sensor pin 1 (via EC11 pin 66) |
| 12 | GRN | EWGA SIG | Electric wastegate actuator pin 4 (position sensor) |
| 13 | GRY | TPS 1 SIG | ETC motor & throttle position sensor pin 6 |
| 14 | PNK | APS 1 SIG | Accelerator pedal position sensor pin 3 (via EC11 pin 49) |
| 15 | BRN | DPS SIG | Brake booster vacuum pressure sensor pin 1 (via EC11 pin 5); also vacuum pump pin 4 (VACUUM SIG) |
| 16 | BLK | IGN COIL CTRL CYL 2 | Ignition coil 2 pin 2 |
| 17 | RED | IGN COIL CTRL CYL 1 | Ignition coil 1 pin 2 |
| 18 | RED | ETC OUTPUT (+) | ETC motor & throttle position sensor pin 2 (motor) |
| 19 | BLK | MOTOR (-) | Electric wastegate actuator pin 3 |
| 20 | BLK | INJECTOR 2 CTRL (-) | Injector 2 pin 1 (via CC11 pin 3) |
| 24 | GRY | CMPS (EXHAUST) SIG | Camshaft position sensor 2 pin 2 |
| 26 | WHT | VEHICLE SPEED INPUT | Cruise control system |
| 27 | WHT/BLK | ENGINE START SWITCH | Starting/charging system |
| 28 | BLU/ORG | BRAKE TEST SWITCH | Stop lamp switch pin 2 (via EC11 pin 43) |
| 29 | GRN | BRAKE LIGHT SWITCH | Stop lamp switch pin 5 (via EC11 pin 42); also exterior lights system |
| 31 | RED | INJECTOR 2 CTRL (+) | Injector 2 pin 2 (via CC11 pin 4) |
| 32 | GRN | INJECTOR 3 CTRL (+) | Injector 3 pin 2 (via CC11 pin 6) |
| 34 | BLU | INJECTOR 1 CTRL (-) | Injector 1 pin 1 (via CC11 pin 1) |
| 35 | RED | FPCV (+) | Fuel pressure control valve pin 2 |
| 36 | BLU/ORG | CMPS (INTAKE) GND | Camshaft position sensor 1 pin 3 |
| 37 | BLK/ORG | CMPS (EXHAUST) GND | Camshaft position sensor 2 pin 3 |
| 38 | BLU/ORG | ALT FR | Starting/charging system |
| 41 | ORG | SENSOR SIG | Oxygen sensor (down) pin 1 |
| 45 | BLU | DEFROST (ACTIVE HIGH) | Defogger system |
| 46 | GRN | INJECTOR 4 CTRL (+) | Injector 4 pin 2 (via CC11 pin 8) |
| 47 | RED | INJECTOR 1 CTRL (+) | Injector 1 pin 2 (via CC11 pin 2) |
| 48 | BLK | ETC OUTPUT (-) | ETC motor & throttle position sensor pin 1 (motor) |
| 49 | RED | INJECTOR 4 CTRL (-) | Injector 4 pin 1 (via CC11 pin 7) |
| 50 | WHT | FPCV (-) | Fuel pressure control valve pin 1 |
| 53 | BLK | CKPS GND | Crankshaft position sensor pin 1 |
| 54 | GRY | CKPS SIG | Crankshaft position sensor pin 2 |
| 56 | GRN | CMPS (INTAKE) SIG | Camshaft position sensor 1 pin 2 |
| 57 | GRY | SENSOR GND | Oxygen sensor (down) pin 2 |

Component locations (Fig 1, 2): crankshaft position sensor — left rear of engine; camshaft position sensor 1 (intake) — left rear of engine; camshaft position sensor 2 (exhaust) — right rear of engine; ETC motor & throttle position sensor — throttle body; engine coolant temperature sensor — rear of engine; electric wastegate actuator — right rear of engine; fuel pressure control valve — back of cylinder head; injectors 1-4 — under intake manifold; ignition coils 1-4 — top of cylinder head; oxygen sensor (down) — downstream.

Other connections of the components on this connector:

- Ignition coils (with IC igniter): pin 4 BLU — IGN COIL fuse 20 A (PCB block, engine room junction block); pin 1 BLK — ground GC103 (rear of engine); shield BLK/ORG — ground GC101 (left rear of engine compartment).
- Injectors: pin 1 BLU / pin 2 PNK on the injector side of CC11; injector 4 is wired through CC11 pins 7/8 directly.
- ETC motor & throttle position sensor: pin 3 ORG — C100-K 52 (TPS GND); pin 4 YEL — C100-K 74 (TPS 2 SIG); pin 5 BLU/ORG — C100-K 88 (TPS PWR).
- Electric wastegate actuator: pin 5 BRN — C100-K 12 (EWGA GND); pin 6 BLU — C100-K 86 (MAP/FTP/EWGA PWR).
- Engine coolant temperature sensor: pin 1 YEL — C100-K 16 (ECTS GND).
- Camshaft position sensors 1 and 2: pin 1 BRN — C100-K 44 (CMPS PWR).
- Oxygen sensor (down), 4-wire (harness colors 1 ORG, 2 GRY, 3 RED, 4 BLU; sensor side NCA): pin 3 RED — SENSOR 1 fuse 15 A (heater supply); pin 4 BLU — C100-K 91 (SENSOR HEATER).
- Stop lamp switch (top of brake pedal assembly): pin 6 BLK — ground GE01 (behind left side of front bumper); pin 4 PNK — brake switch fuse 7.5 A (IGPM, hot at all times); pin 1 RED/BLK — module 3 fuse 7.5 A (IGPM, hot in ON or START) via EF11 pin 6.

## C100-K — vehicle/sensor harness connector (94-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK | GND | Ground GC102 (left rear of engine compt) |
| 2 | BLK | GND | Ground GC102 |
| 3 | BLK | GND | Ground GC102 |
| 4 | RED | MEMORY PWR | ECU 3 fuse 15 A (PCB block, hot at all times) |
| 5 | ORG | ON INPUT | ECU 2 fuse 10 A (PCB block, engine control relay output) |
| 6 | RED | ON INPUT | ECU 1 fuse 20 A (PCB block, engine control relay output) |
| 7 | RED | MEMORY PWR | ECU 4 fuse 15 A (PCB block, hot at all times), via EC11 pin 51 |
| 8 | WHT | APS 1 GND | Accelerator pedal position sensor pin 2 (via EC11 pin 47) |
| 9 | BLK/ORG | SENS GND | MAP sensor pin 4 |
| 10 | BLK | BPS GND | Boost pressure sensor pin 4 (via EC11 pin 67) |
| 12 | BRN | EWGA GND | Electric wastegate actuator pin 5 |
| 16 | YEL | ECTS GND | Engine coolant temperature sensor pin 1 |
| 20 | GRN | A/CON RLY CTRL | Air conditioning system |
| 22 | GRN | CVVT INTAKE | Oil control valve 1 pin 1 |
| 24 | BLU | FAN PWM | Cooling fans system |
| 27 | GRY (or GRY/BLK) | FUEL PUMP RLY CTRL (1) / CCV CTRL (2) | (1) fuel pump relay pin 3 (coil), via EC11 pin 64; (2) canister close valve pin 2, via EC11 pin 40 / EF61 pin 12. Only one wire is drawn (at pin 27); the source prints "CCV CTRL (2)" on the row of pin 28 |
| 29 | PNK | ON/START INPUT | ECU 5 fuse 10 A (PCB block, hot in ON or START), E/R-A pin 13 |
| 30 | YEL | APS 2 GND | Accelerator pedal position sensor pin 1 (via EC11 pin 50) |
| 31 | BRN | FTP GND | Fuel tank pressure sensor pin 2 (via EC11 pin 71, EF11 pin 15) |
| 35 | BLK | DPS GND | Brake booster vacuum pressure sensor pin 2 (via EC11 pin 6) |
| 36 | BLU | RPS GND | Rail pressure sensor pin 3 (via CC11 pin 11) |
| 37 | BRN | APT GND | A/C pressure transducer pin 1 (via CC11 pin 33) |
| 39 | BRN | ALT COM | Starting/charging system |
| 41 | GRY | START RLY 1 | Starting/charging system |
| 43 | ORG | APS 2 SPLY | Accelerator pedal position sensor pin 5 (via EC11 pin 41) |
| 44 | BRN | CMPS PWR | Camshaft position sensor 1 pin 1 and camshaft position sensor 2 pin 1 |
| 50 | BLK | CVVT EXHAUST | Oil control valve 2 pin 1 |
| 51 | WHT | ENG CTRL RLY CTRL | Engine control relay coil (PCB block pin 5) |
| 52 | ORG | TPS GND | ETC motor & throttle position sensor pin 3 |
| 54 | GRY | APT SIG | A/C pressure transducer pin 2 (via CC11 pin 34) |
| 56 | GRY | IAT SIG | MAP sensor pin 3 |
| 57 | BRN | SENS SIG | MAP sensor pin 1 |
| 58 | GRN | KNOCK SENSOR GND | Knock sensor pin 1 |
| 59 | BLU | NERNST VOLTAGE | Oxygen sensor (up) pin 2 |
| 60 | BRN | TRIM RESISTOR | Oxygen sensor (up) pin 6 |
| 61 | GRN | BATT SENS | Battery sensor pin 1 (LIN LINE) |
| 62 | BLU | CCP-CAN LOW | Computer data lines system |
| 63 | BRN | P-CAN LOW | Computer data lines system |
| 65 | GRY | DPS PWR | Brake booster vacuum pressure sensor pin 3 (via EC11 pin 4) |
| 66 | GRN | APS 1 SPLY | Accelerator pedal position sensor pin 4 (via EC11 pin 48) |
| 68 | YEL | RCV CTRL | RCV control solenoid valve pin 2 (via EC11 pin 20) |
| 71 | GRN | FUEL PUMP RLY CTRL | (2) fuel pump relay pin 3 (coil), via EC11 pin 64 |
| 72 | GRY/BLK | CCV CTRL | (1) canister close valve pin 2, via EC11 pin 40 / EF61 pin 12 |
| 73 | BLU/BLK | FTP SIG | Fuel tank pressure sensor pin 3 (via EC11 pin 72, EF11 pin 11) |
| 74 | YEL | TPS 2 SIG | ETC motor & throttle position sensor pin 4 |
| 76 | BRN | FUEL TANK LEVEL SENDER | Fuel pump control module pin 6 (FUEL SENDER (+)), via EC11 pin 35 / EM11 pin 34 / MF11 pin 22; also instrument cluster pin 14 |
| 77 | BLU | APS 2 SIG | Accelerator pedal position sensor pin 6 (via EC11 pin 46) |
| 78 | ORG | RPS SIG | Rail pressure sensor pin 2 (via CC11 pin 10) |
| 79 | BLU | KNOCK SENSOR SIG | Knock sensor pin 2 |
| 80 | BLK | VIRTUAL GND | Oxygen sensor (up) pin 1 |
| 81 | GRY | PUMPING CURRENT | Oxygen sensor (up) pin 3 |
| 82 | GRY/ORG | ENGINE RPM | Smart key control module pin 12 (M14-C), via EC11 pin 68 / EM61 pin 57 |
| 83 | BRN/ORG | IMMO DATA LINE | Anti-theft system |
| 84 | RED | CCP-CAN HIGH | Computer data lines system |
| 85 | WHT | P-CAN HIGH | Computer data lines system |
| 86 | BLU | MAP/FTP/EWGA PWR | MAP sensor pin 2; fuel tank pressure sensor pin 1 (via EC11 pin 73, EF11 pin 14); electric wastegate actuator pin 6 |
| 87 | WHT | APT/RPS/BPS PWR | A/C pressure transducer pin 3 (via CC11 pin 44); rail pressure sensor pin 1 (via CC11 pin 9); boost pressure sensor pin 2 (via EC11 pin 3) |
| 88 | BLU/ORG | TPS PWR | ETC motor & throttle position sensor pin 5 |
| 89 | BLK | SENSOR HEATER | Oxygen sensor (up) pin 5 |
| 91 | BLU | SENSOR HEATER | Oxygen sensor (down) pin 4 |
| 94 | GRY | PCSV CTRL | Purge control solenoid valve pin 2 |

Component locations (Fig 3-6): oxygen sensor (up) — upstream, 6-wire (harness colors 1 BLK, 2 BLU, 3 GRY, 4 BRN, 5 BLK, 6 BRN; sensor side NCA), pin 4 BRN fed from SENSOR 1 fuse 15 A; oil control valve 1 — front left side of cylinder head; oil control valve 2 — top front of cylinder head cover; purge control solenoid valve — rear of cylinder head cover; RCV control solenoid valve — left front of engine compartment; vacuum pump — left side of engine; MAP sensor — on intake manifold; fuel tank pressure sensor — under left rear seat; brake booster vacuum pressure sensor — on brake vacuum booster; canister close valve — above right rear suspension; fuel pressure sensor and fuel pump control module — under left rear seat; knock sensor — left side of engine; battery sensor — left rear of engine compartment; rail pressure sensor — on fuel rail; A/C pressure transducer — right front of engine compartment; boost pressure sensor — left front of engine compartment; accelerator pedal position sensor — on accelerator pedal assembly; smart key control module — right side of dash.

Accelerator pedal position sensor (6-pin, via EC11): 1 YEL — K30 (APS 2 GND), 2 WHT — K8 (APS 1 GND), 3 PNK — A14 (APS 1 SIG), 4 GRN — K66 (APS 1 SPLY), 5 ORG — K43 (APS 2 SPLY), 6 BLU/ORG — K77 (APS 2 SIG).

## Fuel pump control module — under left rear seat

The fuel pump is not driven by the ECM directly; the fuel pump control module (with integrated fuel sender and fuel pressure sensor inputs) talks to the ECM over P-CAN. Its connector (via MF11 / EF11):

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | BLK | FUEL SENDER (-) | Instrument cluster pin 16 (FUEL SENDER (-)), via MF11 pin 33 |
| 2 | BLU | FPS SIG | Fuel pressure sensor pin 2 (SIG) |
| 3 | BLK | FPS GND | Fuel pressure sensor pin 3 (GND) |
| 4 | BLK | GND | Ground GF04 (left "C" pillar) |
| 5 | BRN | P-CAN LOW | Computer data lines system |
| 6 | BRN | FUEL SENDER (+) | C100-K 76 and instrument cluster pin 14, via MF11 pin 22 |
| 7 | — | (NOT USED) | |
| 8 | ORG | FPS PWR | Fuel pressure sensor pin 1 (+5V) |
| 9 | WHT | P-CAN HIGH | Computer data lines system |
| 10 | BLU | B+ | Fuel pump relay pin 2, via EF11 pin 1 |

Vacuum pump (left side of engine): 1 BLK GND — GC101; 2 WHT C-CAN HIGH and 3 BRN C-CAN LOW — computer data lines system; 4 BLU VACUUM SIG — brake booster vacuum pressure sensor pin 1 (shared with A15 DPS SIG); 5 GRY ON/START INPUT — SENSOR 4 fuse 15 A (PCB block, hot in ON or START, E/R-A pin 12); 6 RED MEMORY PWR — vacuum pump fuse 20 A (E/R junction block, hot at all times), via EC11 pin 27.

## Power supply / relays (Fig 3, 4, 6)

PCB block (engine room junction block):

- **Engine control relay** — fed from B+5 fuse 60 A (multi fuse 2, E/R junction block, hot at all times) on E/R-B pin 1 BLU; coil controlled by C100-K 51 (WHT, pin 5). Relay output feeds IGN COIL fuse 20 A (BLU, pin 2, ignition coils), ECU 1 fuse 20 A (RED, pin 3, K6), ECU 2 fuse 10 A (ORG, E/R-A pin 4, K5), SENSOR 2 fuse 10 A, SENSOR 3 fuse 10 A and SENSOR 1 fuse 15 A.
- **SENSOR 2 fuse 10 A** outputs: pin 12 GRN — RCV control solenoid valve pin 1 and oil control valve 2 pin 2 (via EC11 pin 55); pin 10 ORG — A/CON relay (E/R-C pin 3), cooling fan 1 relay pin 3 and purge control solenoid valve pin 1 (via EC11 pin 23); pin 11 ORG — oil control valve 1 pin 2 (via EC11 pin 37) and canister close valve pin 1 (via EF61 pin 15).
- **SENSOR 3 fuse 10 A** (BRN, E/R-D pin 2) — fuel pump relay pin 5 (coil supply).
- **SENSOR 1 fuse 15 A** — pin 9 BRN oxygen sensor (up) heater (pin 4) and pin 8 RED (E/R-A) oxygen sensor (down) heater (pin 3).
- **ECU 3 fuse 15 A** (RED, E/R-A pin 1) — K4 MEMORY PWR; **ECU 4 fuse 15 A** (RED, E/R-D pin 1) — K7 MEMORY PWR (both fed directly from battery bus, hot at all times).
- **ECU 5 fuse 10 A** (PNK, E/R-A pin 13, hot in ON or START) — K29 ON/START INPUT.
- **SENSOR 4 fuse 15 A** (GRY, E/R-A pin 12, hot in ON or START) — vacuum pump pin 5.

E/R junction block (left side of engine compartment): **fuel pump relay** — pin 1 WHT from fuel pump fuse 20 A (hot at all times), pin 5 coil from SENSOR 3 fuse, pin 3 GRN coil return to ECM (K71 without smart key, K27 with smart key, via EC11 pin 64), pin 2 BLU output to fuel pump control module B+; **vacuum pump fuse 20 A**; **B+5 fuse 60 A** (multi fuse 2); **AMS fuse 10 A** (battery junction block) — battery sensor pin 2 (SENS +) via EC21 pin 3.

IGPM (left side of dash): cluster fuse 7.5 A (I/P-E pin 31, PNK/BLK, hot in ON or START) — instrument cluster pin 39 and power distribution system; module 3 fuse 7.5 A and brake switch fuse 7.5 A — stop lamp switch.

Grounds: GC101 and GC102 — left rear of engine compartment; GC103 — rear of engine; GE01 — behind left side of front bumper; GF04 — left "C" pillar; GM02 — center of dash (instrument cluster).
