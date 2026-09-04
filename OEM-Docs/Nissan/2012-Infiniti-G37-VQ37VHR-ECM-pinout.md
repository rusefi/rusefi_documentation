# 2012 Infiniti G37 (Sport) V6-3.7L (VQ37VHR) — ECM pinout

Transcribed from [2012-g37.pdf](2012-g37.pdf) (Mitchell ProDemand "Engine Performance > 3.7L" wiring diagram, Fig 1-5 of 5, diagram IDs 376876-376880).

Engine Control Module (ECM), located under the right end of the dash. The ECM has three harness connectors: F101 (terminals 1-48), F102 (terminals 49-96) and M107 (terminals 97-128). The VVEL (variable valve event and lift) control module (right rear of engine compartment) is a separate unit talking to the ECM over CAN; its pins are not listed here except where they meet an ECM wire.

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| F101 | 48 | Ignition coils, A/F sensor heaters, throttle actuators, crank sensor, brake booster pressure, relays |
| F102 | 48 | Throttle body B2, CAN, A/F sensors, cam sensors, knock, coolant/oil temp, MAF, injectors, grounds |
| M107 | 32 | Accelerator pedal, cruise, pressure sensors, PNP, CAN, stop lamp, power supply, grounds |

Wire colors are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink, TAN; NCA = no color available). "(OR xxx)" is an alternative color printed in the source for another body style (the diagram covers coupe, sedan and convertible, 2WD and AWD). Unlisted pins are not connected in this diagram. "B1"/"B2" = bank 1 (right cylinder bank) / bank 2 (left cylinder bank). Fx/Ex/Mx/Bx names are harness-to-harness connectors; where the diagram gives several alternatives for the same wire (e.g. F104/F105, F106/F107 or F109/F110 depending on model, or E3/F1 vs. E40/F39 on the sedan) only one is written out.

## F101 — ECM connector (48-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | WHT | AFH1 | Air fuel ratio (A/F) sensor 1 bank 1 pin 3 (heater) |
| 2 | GRN | MOTOR1-B1 | Electric throttle control actuator bank 1 pin 1 (throttle control motor, CLOSE) |
| 3 | RED | VMOT1-B1 | Throttle control motor relay output (IPDM E/R pin 54, PNK) via F1/E3 pin 11; tied to pin 52 |
| 4 | BRN | MOTOR2-B1 | Electric throttle control actuator bank 1 pin 2 (throttle control motor, OPEN) |
| 5 | WHT (OR LT BLU) | AFH2 | A/F sensor 1 bank 2 pin 3 (heater) |
| 8 | BLK | GND | Ground M95 (behind right side of dash); the NCA shield of the bank 1/2 throttle position sensor wiring drains to the same node |
| 11 | GRY | IGN 4 | Ignition coil 4 pin 1 |
| 12 | BLU | IGN 3 | Ignition coil 3 pin 1, via F105/F104 pin 3 (F106/F107 pin 2 or F109/F110 pin 2 on other models) |
| 15 | PPL | IGN 5 | Ignition coil 5 pin 1, via F105/F104 pin 2 (F106/F107 pin 3, F109/F110 pin 3) |
| 16 | GRN | IGN 2 | Ignition coil 2 pin 1 |
| 17 | PNK | O2HR1 | Heated oxygen sensor 2 bank 1 pin 3 (heater) |
| 18 | WHT | CVTC 1 | Intake valve timing control solenoid valve bank 1 pin 1 |
| 19 | LT BLU | IGN 6 | Ignition coil 6 pin 1 |
| 20 | YEL | IGN 1 | Ignition coil 1 pin 1, via F105/F104 pin 4 (F106/F107 pin 1, F109/F110 pin 1) |
| 21 | GRY | EVAP | EVAP canister purge volume control solenoid valve pin 2, via F105/F104 pin 6 (F106/F107 pin 9, F109/F110 pin 9) |
| 22 | RED | FPR | Fuel pump relay coil (IPDM E/R pin 77), via F104/F105 pin 7 (F107/F106 pin 8, F110/F109 pin 8) and F1/E3 pin 30 |
| 24 | PNK | SSOFF | ECM relay coil (IPDM E/R pin 69, BRN), via F104/F105 pin 1 (F107/F106 pin 4, F110/F109 pin 4) and F1/E3 pin 31 |
| 25 | ORG (OR BRN) | MOTARLY1 | Throttle control motor relay coil (IPDM E/R pin 70, TAN), via F104/F105 pin 8 (F107/F106 pin 7, F110/F109 pin 7; becomes BRN) and F1/E3 pin 34 |
| 28 | BRN | ABORT | VVEL control module pin 21 (ABORT, PPL), via F106/F107 pin 5 (AWD) and F1/E3 pin 28 |
| 29 | GRN | CVT 2 | Intake valve timing control solenoid valve bank 2 pin 1 |
| 30 | YEL | TPS1-B1 | Electric throttle control actuator bank 1 pin 4 (TP sensor 1) |
| 31 | RED | TPS1-B2 | Electric throttle control actuator bank 2 pin 2 (TP sensor 1) |
| 33 | LT BLU | O2HR2 | Heated oxygen sensor 2 bank 2 pin 3 (heater) |
| 34 | BLK | TPS 2-B1 | Electric throttle control actuator bank 1 pin 5 (TP sensor 2) |
| 35 | WHT | TPS 2-B2 | Electric throttle control actuator bank 2 pin 3 (TP sensor 2) |
| 36 | ORG | GNDA/INTPRES/MVPRES | Brake booster pressure sensor pin 3 (BLK), via F1/E3 pin 20 (coupe AWD: via F107/F106 pin 11 first) |
| 37 | WHT | POS | Crankshaft position sensor (POS) pin 3 |
| 38 | ORG | INTPRES 1 | Manifold absolute pressure (MAP) sensor pin 2 |
| 39 | PNK (OR LT BLU) | MVREES | Brake booster pressure sensor pin 2 (TAN), via F1/E3 pin 19 (coupe AWD: via F107/F106 pin 12, LT BLU) |
| 40 | RED | GNDA-TPS-B1 | Electric throttle control actuator bank 1 pin 3 (TP sensor ground) |
| 43 | GRN | AVCC-TPS-B2 | Electric throttle control actuator bank 2 pin 1 (TP sensor supply) |
| 44 | BLU | AVCC-TPS-B1 | Electric throttle control actuator bank 1 pin 6 (TP sensor supply) |
| 45 | LT GRN | AVCC2/MVPRES | Brake booster pressure sensor pin 1 (YEL), via F1/E3 pin 18 (coupe AWD: via F107/F106 pin 10) |
| 46 | RED | AVCC-POS | Crankshaft position sensor (POS) pin 1 |
| 47 | YEL | GND-POS | Crankshaft position sensor (POS) pin 2 |
| 48 | BLK | GNDA-TPS-B2 | Electric throttle control actuator bank 2 pin 4 (TP sensor ground) |

Component locations (Fig 1): ignition coils 1, 3, 5 top of cylinder bank 1, 2, 4, 6 top of cylinder bank 2; coil pin 2 (BLK) grounds at F34 (right front of engine), pin 3 (WHT) is fed from the ECM relay (IPDM E/R pin 53, via E3/F1 pin 9) together with the condenser (body, in left "C" pillar; its pin 2 BLK also goes to F34) and the intake valve timing control solenoid valves pin 2 (RED); electric throttle control actuator bank 2 on the throttle body assembly; crankshaft position sensor right rear of engine; intake valve timing control solenoid valves bank 2 / bank 1 front of cylinder bank 2 / 1; brake booster pressure sensor on the brake fluid reservoir.

## F102 — ECM connector (48-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 49 | GRY | MOTOR2-B2 | Electric throttle control actuator bank 2 pin 5 (throttle control motor, OPEN) |
| 50 | PPL | MOTOR1-B2 | Electric throttle control actuator bank 2 pin 6 (throttle control motor, CLOSE) |
| 52 | RED | VMOT-B2 | Throttle control motor relay output (IPDM E/R pin 54); tied to pin 3 |
| 53 | WHT | IGNSW | IPDM E/R pin 51 (fuse 44, 10 A, ignition relay; YEL (OR LT BLU)) via F1/E3 pin 10 (GRN); same node feeds fuel injector pin 1 supply via F10/F120 pin 1 |
| 54 | YEL | ENG CAN-L1 | Computer data lines system (engine CAN) |
| 55 | LT GRN | ENG CAN-H1 | Computer data lines system (engine CAN) |
| 57 | BLU | AF+1 | A/F sensor 1 bank 1 pin 1 |
| 59 | ORG (OR BLU) | PHASE 1 | Camshaft position sensor (PHASE) bank 1 pin 3 |
| 60 | GRN | AVCC-PHASE 1 | Camshaft position sensor bank 1 pin 1; also MAP sensor pin 1 (BLU) and power steering pressure sensor pin 3 (RED) |
| 61 | RED | AF-1 | A/F sensor 1 bank 1 pin 2 |
| 63 | BLU | PHASE 2 | Camshaft position sensor (PHASE) bank 2 pin 3, via F106/F107 pin 1 (sedan: F109/F110 pin 1) |
| 64 | LT BLU | AVCC-PHASE 2 | Camshaft position sensor bank 2 pin 1 (via F106/F107 pin 11); also battery current sensor pin 1 (PNK) via F1/E3 pin 29 |
| 65 | LT GRN | AF+2 | A/F sensor 1 bank 2 pin 1 |
| 66 | PPL | AF-2 | A/F sensor 1 bank 2 pin 2 |
| 67 | PNK | TA1 | Mass airflow (MAF) sensor bank 1 pin 2 (intake air temperature sensor) |
| 68 | LT GRN | GNDA-QA1_TA1 | MAF sensor bank 1 pin 4 (LT GRN) and pin 1 (BLK), joined |
| 69 | WHT | KNK2 | Knock sensor bank 2 pin 1, via F9/F201 pin 3 |
| 71 | YEL | TW | Engine coolant temperature sensor pin 1, via F106/F107 pin 5 (F105/F104 pin 1, F109/F110 pin 1) |
| 72 | SHIELD | GNDA-KNK | Knock sensor bank 1 and bank 2 shields (pin 2), via F9/F201 pins 2 and 4 |
| 73 | WHT | KNK1 | Knock sensor bank 1 pin 1, via F9/F201 pin 1 |
| 76 | WHT | O2 SRI | Heated oxygen sensor 2 bank 1 pin 4 |
| 77 | LT BLU | QA1+ | MAF sensor bank 1 pin 3 |
| 78 | GRN | TO | Engine oil temperature sensor pin 1 |
| 79 | BRN | QA2+ | MAF sensor bank 2 pin 3 |
| 80 | ORG | O2SR2 | Heated oxygen sensor 2 bank 2 pin 4 |
| 81 | RED | INJ#3 | Fuel injector 3 pin 2, via F104/F105 pin 3 (F107/F106 or F110/F109 pin 3) and F10/F120 pin 4 |
| 82 | PPL | INJ#6 | Fuel injector 6 pin 2, via F104/F105 pin 6 (F107/F106 or F110/F109 pin 10) and F10/F120 pin 7 |
| 84 | BLK | GNDA-O2_TW_TO | Engine coolant temp sensor pin 2, engine oil temp sensor pin 2, heated oxygen sensor 2 bank 1 pin 1, heated oxygen sensor 2 bank 2 pin 1 |
| 85 | BRN | INJ#2 | Fuel injector 2 pin 2, via F104/F105 pin 8 (F107/F106 or F110/F109 pin 8) and F10/F120 pin 3 |
| 86 | WHT | INJ#5 | Fuel injector 5 pin 2, via F104/F105 pin 2 (F107/F106 or F110/F109 pin 4) and F10/F120 pin 6 |
| 87 | YEL | PSPRES | Power steering pressure sensor pin 2 |
| 89 | GRY | INJ#1 | Fuel injector 1 pin 2, via F104/F105 pin 4 (F107/F106 or F110/F109 pin 2) and F10/F120 pin 2 |
| 90 | ORG | INJ#4 | Fuel injector 4 pin 2, via F104/F105 pin 7 (F107/F106 or F110/F109 pin 9) and F10/F120 pin 5 |
| 91 | LT BLU | CURSEN | Battery current sensor pin 3 (GRN), via F1/E3 pin 33 |
| 92 | GRN | GND-PHASE#2 | Camshaft position sensor bank 2 pin 2, via F106/F107 pin 6 |
| 93 | PNK | BATT | ECM relay output (IPDM E/R pin 55, LT BLU) via F1/E3 pin 12 |
| 94 | YEL | GNDA-QA2 | MAF sensor bank 2 pin 4 |
| 95 | GRN | GNDA-CURSEN | Battery current sensor pin 2 (WHT), via F1/E3 pin 22 |
| 96 | PNK | GNDA | Camshaft position sensor bank 1 pin 2; also MAP sensor pin 3 (WHT) and power steering pressure sensor pin 1 (LT GRN) |

Component locations (Fig 3, 4, 5): A/F sensor 1 bank 1 under right side of engine, bank 2 under left side of engine (pin 4 YEL (OR ORG) is heater power from the ignition relay, IPDM E/R pin 56, via F1/E3 pin 16); heated oxygen sensor 2 bank 1 on right side exhaust pipe, bank 2 on left side exhaust pipe, both between three-way catalysts 1 and 2 (pin 2 RED / LT GRN is heater power from fuse 46, IPDM E/R pin 57, via F1/E3 pin 14); engine coolant temperature sensor rear of engine; engine oil temperature sensor bottom front of engine; power steering pressure sensor right front of engine; camshaft position sensor bank 2 front of cylinder bank 2, bank 1 front of cylinder bank 1; MAF sensor bank 2 on left intake air duct, bank 1 (with IAT sensor) on right intake air duct (pin 5 of both is powered from the ECM relay node, via M116/F103 pin 10 and pin 9 respectively); battery current sensor right rear of engine compartment, at battery; knock sensors on top center of cylinder bank 1 / bank 2; fuel injectors 1, 3, 5 top of cylinder bank 1, 2, 4, 6 top of cylinder bank 2, pin 1 GRN common supply from the IGNSW node (fuse 44) via F10/F120 pin 1.

## M107 — ECM connector (32-pin)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 97 | RED | APS1 | Accelerator pedal position sensor pin 3 (sensor 1), via E106/M6 pin 12 |
| 98 | PNK | APS2 | Accelerator pedal position sensor pin 1 (sensor 2), via E106/M6 pin 15 |
| 99 | BLU | AVCC-APS1 | Accelerator pedal position sensor pin 5, via E106/M6 pin 13 |
| 100 | WHT | GND-A (APS1) | Accelerator pedal position sensor pin 4, via E106/M6 pin 16 |
| 101 | LT BLU | ASCDSW | Cruise control system |
| 102 | GRN (OR LT GRN) | FTPRS | EVAP control system pressure sensor pin 2 (LT GRN (OR LT BLU)), via B1/M7 pin 25 (convertible: pin 21), B39/B331 pin 9 and B332/B254 pin 3 (LT BLU) |
| 103 | GRN (OR GRY) | AVCC-APS2 | Accelerator pedal position sensor pin 6 (GRY), via E106/M6 pin 14 |
| 104 | GRY (OR PPL) | GND-A (APS2) | Accelerator pedal position sensor pin 2 (PPL), via E106/M6 pin 11 |
| 105 | BLU | PDPRES | Refrigerant pressure sensor pin 2 (BLU), via E106/M6 pin 84 |
| 106 | WHT (OR LT GRN) | TF | Fuel level sensor unit and fuel pump pin 4 (fuel tank temperature sensor, PPL (OR RED)), via the fuel tank harness connector (B1/M7 pin 81 on sedan; pin 60/81 on other bodies) |
| 107 | BRN (OR GRY) | AVCC-FTPRS | EVAP control system pressure sensor pin 3 (BRN (OR GRN)) via B1/M7 pin 26, B39/B331 pin 10 and B332/B254 pin 2 (GRN); also refrigerant pressure sensor pin 3 (TAN (OR WHT)) via E106/M6 pin 85 (GRY (OR TAN)) |
| 108 | YEL | GNDA-ASCD | Cruise control system |
| 109 | GRN (OR YEL) (OR BLK) (OR RED) | NEUT-H | Park/neutral position switch pin 1 (BRN, M/T) via F103/M116 pin 42; A/T: TCM STR RLY via A/T assembly J/C pin 9, F1/E3 pin 27 and E106/M6 pin 44 (coupe) / 66 (convertible) |
| 110 | RED | TACHO | Power steering control unit pin 10 (behind right side of dash) |
| 112 | RED (OR PPL) | GNDA-FTPRS | EVAP control system pressure sensor pin 1 (PPL (OR GRY)) via B1/M7 pin 24, B39/B331 pin 8 and B332/B254 pin 6 (PPL); also refrigerant pressure sensor pin 1 (PPL) via E106/M6 pin 83 (RED (OR WHT)) |
| 113 | PNK | VHECAN_L1 | Computer data lines system |
| 114 | BLU | VHECAN_H1 | Computer data lines system |
| 117 | PPL | K-LINE | Computer data lines system |
| 121 | LT GRN | CDCV | EVAP canister vent control valve pin 2 (BLU (OR GRN)), via M7/B1 pin 28 (convertible: pin 2), B39/B331 pin 3 (RED) and B332/B254 pin 1 |
| 122 | PNK | BRAKE | Stop lamp switch (exterior lights system), via fuse block (J/B) terminal 3B/M2; joined inside the J/B to terminal 2F/E103 (PPL (OR WHT)) |
| 123 | BLK | GND | Ground M95 (behind right side of dash) |
| 124 | BLK | GND | Ground M95 |
| 125 | RED | VBR | ECM relay output (IPDM E/R pin 49, TAN) via E106/M6 pin 3; same node feeds MAF sensor bank 1 pin 5 via M116/F103 pin 9 |
| 126 | BRN | BNCSW | Cruise control system |
| 127 | BLK | GND | Ground M95 |
| 128 | BLK | GND | Ground M95 |

Component locations (Fig 5): accelerator pedal position sensor on the accelerator pedal bracket; EVAP control system pressure sensor under vehicle near EVAP canister; refrigerant pressure sensor right front of engine compartment; EVAP canister vent control valve on the EVAP canister (Fig 4; its pin 1 WHT is fed from the ECM-relay / ignition-coil supply node via F103/M116 pin 3 (TAN), M7/B1 pin 27 (convertible: pin 1), B39/B331 pin 2 and B332/B254 pin 5); park/neutral position switch at rear of transmission (pin 2 WHT fed by fuse 43, IPDM E/R pin 73 PNK, via F1/E3 pin 17); MAP sensor left rear of engine; TCM in the A/T assembly at rear of engine compartment (CAN pins 3 BLU / 8 PNK to the data lines via F51). The fuel level sensor unit pin 5 (fuel level, YEL (OR LT BLU)) goes to the unified meter & A/C amplifier pin 58 (SENS GND, behind center of dash), not to the ECM; the snow mode switch (AWD) pin 4 YEL goes to unified meter pin 23 (SW SIG).

## Power supply / relays (Fig 2, 4)

IPDM E/R (intelligent power distribution module engine room), at right rear of engine compartment:

- **Throttle control motor relay** — fuses 51 (15 A) and 50 (15 A), hot at all times; coil driven by ECM pin 25 (IPDM pin 70 TAN), output pin 54 (PNK) via F1/E3 pin 11 (RED) to ECM pins 3/52
- **ECM relay** — coil driven by ECM pin 24 (SSOFF; IPDM pin 69 BRN, via F1/E3 pin 31); outputs: pin 55 (LT BLU, via F1/E3 pin 12 to ECM pin 93 BATT), pin 53 (WHT, via E3/F1 pin 9 to ignition coils pin 3, condenser, intake valve timing control solenoid valves pin 2 and the EVAP canister vent control valve pin 1), pin 49 (TAN, to the VVEL control module pin 8 VB and, via E106/M6 pin 3, to ECM pin 125 VBR, MAF sensors pin 5 and EVAP canister purge volume control solenoid valve pin 1 (RED (OR PNK), via M116/F103 pin 4))
- **Fuel pump relay** — fuse 41 (15 A); coil driven by ECM pin 22 (FPR; IPDM pin 77 RED, via F1/E3 pin 30); output pin 13 (E5, YEL) to the fuel level sensor unit and fuel pump pin 1 (PNK (OR BLU), in fuel tank) via B75/E79 pin 1 (convertible), B8/E118 pin 1 (coupe) or B9/E117 pin 2 (sedan); pump pin 3 BLK grounds at B24 (convertible: behind rear seats; otherwise in left "C" pillar)
- **Ignition relay** (hot in ON or START) — feeds fuse 43 (10 A, pin 73 PNK, park/neutral position switch pin 2 via F1/E3 pin 17), fuse 44 (10 A, pin 51 YEL (OR LT BLU), via F1/E3 pin 10 to ECM pin 53 IGNSW and injector supply), fuse 46 (15 A, pin 57 GRN, via F1/E3 pin 14 to heated oxygen sensor 2 heaters) and pin 56 (BRN (OR LT GRN), via F1/E3 pin 16 to A/F sensor 1 heaters pin 4)
- IPDM grounds E22 (pins 12, 41 BLK/WHT); CAN pins 40 (BLU) / 39 (PNK); pin 97 (PPL, E9) and 42 (YEL (OR GRY)) to cooling fans system; pin 58 (GRY, E7) via E106/M6 pin 93 to the snow mode switch pin 1 (AWD)

Fuse block (J/B), behind left kick panel: terminal 3B/M2 (PNK) to ECM pin 122 BRAKE (stop lamp switch); fuse 11 (10 A, hot at all times, 1A/M1) feeds the unified meter & A/C amplifier pin 54 BAT; fuse 3 (10 A, hot in ON or START, 2A/M1) feeds unified meter pin 53 IGN.

VVEL (Fig 4): fusible link N (50 A, fusible link holder, right rear of engine compartment) feeds the VVEL actuator motor relay (right rear of engine compartment) pins 1 and 5; relay coil pin 2 (YEL) is driven by the VVEL control module pin 23 (M-RLY), relay output pin 3 (WHT) feeds the VVEL control module pins 1 (VMOT L) and 13 (V-MOT (R)). VVEL control module pin 14 (PGND L, BLK/WHT) grounds at E46 (left rear of engine compartment); pins 11 (CAN H, GRN (OR GRY)) and 24 (CAN L, BLU) go to the computer data lines system; the VVEL control shaft position sensor shields ground at E22. The VVEL actuator motors and control shaft position sensors (rear of cylinder bank 1 / bank 2) are wired only to the VVEL control module.

Main ECM grounds M95 (behind right side of dash): pins 8, 123, 124, 127, 128; the throttle position sensor cable shields (NCA) and the MAP sensor shield (via F103/M116 pin 5) also drain to M95.
