# 2011 Nissan Armada 4WD 5.6L (VK56DE) — ECM pinout

Transcribed from [2011 Nissan-Datsun Truck Armada 4WD ECU.pdf](2011%20Nissan-Datsun%20Truck%20Armada%204WD%20ECU.pdf) (ALLDATA "Engine Controls" interactive colour diagram, four sheets, diagram IDs 353994-353997). Same ECM family as the 2004-2015 Titan and Infiniti QX56.

Engine Control Module (ECM), at the right side of the engine compartment. Single 121 pin connector: pins 1-81 are drawn as harness connector F54 and pins 82-121 as E16.

Connectors covered:

| Connector | Pins | Sheet | Role |
|-----------|------|-------|------|
| F54 | 1-60 | 1 | Injectors 1-7, A/F and O2 heaters, throttle motor, crank/cam/knock, VTC solenoids, EVAP, sensor supplies, coil 5 and 7 |
| F54 | 61-81 | 4 | Coils 1-4, 6, 8, injector 8, sensor grounds, TP sensor 2, pressure/current/temperature sensors, VTC position sensors |
| E16 | 82-121 | 4 | APP sensor, CAN, K-line, cruise, brake, PNP, relay coils, ignition switch, power and ground |

Wire colours are abbreviated as in the source (BLK black, BRN brown, RED, GRN green, LT GRN light green, YEL yellow, BLU blue, LT BLU light blue, PPL purple, WHT white, GRY grey, ORG orange, PNK pink; NCA = no colour available). Unlisted pins are not connected in this diagram. Exx/Fxx/Mxx/Cx names are harness-to-harness connectors (e.g. "via F14/E5 pin 11" = engine-room harness connector F14 mating with E5, terminal 11).

**Bank naming in this diagram.** ALLDATA draws injectors 1, 3, 5, 7 and ignition coils 1, 3, 5, 7 "on left cylinder bank", A/F sensor 1 bank 1 "at left rear of engine" and HO2S2 bank 1 on pin 6 (O2HRL, "left"). So on this V8 diagram bank 1 = left bank, bank 2 = right bank, the opposite of the VQ V6 diagrams where bank 1 is the right bank. The ECM pin names keep the VQ convention: `C-VTC (L)` on pin 10 drives the bank 1 solenoid, `C-VTC (R)` on pin 11 the bank 2 solenoid, `VTC PUS (L)` on pin 72 reads the bank 1 sensor and `VTC PUS (R)` on pin 53 the bank 2 sensor. The knock sensor labelled bank 1 is drawn "top right side of engine" and bank 2 "top rear of engine". Check the physical location before trusting a bank number on this vehicle.

Only one camshaft position sensor (PHASE) is drawn, on pin 14. Pin 33 (PHASE RH on the V6) is not connected. Intake valve timing position sensors on pins 53 and 72 provide the second-bank cam information.

## F54 — ECM connector, pins 1-60 (sheet 1)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 1 | BLK | GND | Ground E9 (right front of engine compartment) |
| 2 | LT GRN/BLK | A/F H1 | Air fuel ratio (A/F) sensor 1 bank 1 pin 3 (heater), left rear of engine |
| 3 | BLU | VMOT | Throttle control motor relay output (IPDM E/R E119 pin 6), via E2/F32 pin 7 |
| 4 | BLU/WHT | MTR 2 | Electric throttle control actuator pin 5 (throttle control motor) |
| 5 | BLU/BLK | MTR 1 | Electric throttle control actuator pin 6 (throttle control motor) |
| 6 | GRY | O2HRL | Heated oxygen sensor 2 bank 1 pin 2 (heater), on exhaust |
| 10 | WHT | C-VTC (L) | Intake valve timing control solenoid valve bank 1 pin 1 (top of engine assembly) |
| 11 | LT GRN | C-VTC (R) | Intake valve timing control solenoid valve bank 2 pin 1 (top of engine assembly) |
| 12 | RED | PS PRES | Power steering pressure sensor pin 2 (signal), at power steering pump |
| 13 | ORG | POS | Crankshaft position sensor pin 2 (signal), left rear of engine |
| 14 | YEL | PHASE | Camshaft position sensor (PHASE) pin 2 (signal), left rear of engine |
| 15 | WHT | KNK1 | Knock sensor bank 1 pin 1 (top right side of engine), via F26/F101 pin 1 |
| 16 | GRN | A/F+2 | A/F sensor 1 bank 2 pin 1 (AF+), right rear of engine compartment |
| 21 | ORG/BLU | INJ 5 | Fuel injector 5 pin 2 (left bank) |
| 22 | BRN | INJ 3 | Fuel injector 3 pin 2 (left bank) |
| 23 | GRY/WHT | INJ 1 | Fuel injector 1 pin 2 (left bank) |
| 24 | GRY/GRN | AF H2 | A/F sensor 1 bank 2 pin 3 (heater); joined with pin 43 at a splice |
| 25 | ORG/GRN | OSHRR | Heated oxygen sensor 2 bank 2 pin 2 (heater) |
| 32 | BLU | FTPRS | EVAP control system pressure sensor pin 2 (signal), via E41/C1 pin 18C |
| 34 | RED/BLK | TA | Mass airflow (MAF) sensor pin 5 (intake air temperature sensor) |
| 35 | ORG | A/F+1 | A/F sensor 1 bank 1 pin 1 (AF+) |
| 36 | WHT | KNK2 | Knock sensor bank 2 pin 1 (top rear of engine), via F26/F101 pin 5 |
| 40 | YEL/GRN | INJ 6 | Fuel injector 6 pin 2 (right bank) |
| 41 | PNK | INJ 4 | Fuel injector 4 pin 2 (right bank) |
| 42 | BLU | INJ 2 | Fuel injector 2 pin 2 (right bank) |
| 43 | GRY/GRN | AF-H2 | Joined with pin 24 (A/F sensor 1 bank 2 heater) |
| 44 | ORG | INJ 7 | Fuel injector 7 pin 2 (left bank) |
| 45 | BLU/YEL | EVAP | EVAP canister purge volume control solenoid valve pin 2 (left rear of engine) |
| 46 | BLU/RED | IGN 7 | Ignition coil 7 pin 1 (left bank) |
| 47 | GRN | AVCC2 | Electric throttle control actuator pin 2 (TP sensor supply) |
| 48 | LT BLU | AVCC | EVAP control system pressure sensor pin 3 (supply), via E41/C1 pin 20C |
| 49 | RED/YEL | AVCC | Refrigerant pressure sensor pin 1 (supply, centre front of engine compartment) and battery current sensor pin 1 (supply), via F14/E5 pin 11 |
| 50 | BLK | TPS 1 | Electric throttle control actuator pin 1 (TP sensor 1) |
| 51 | WHT | QA+ | MAF sensor pin 4 |
| 53 | BLU | VTC PUS (R) | Intake valve timing control position sensor bank 2 pin 2 (top of engine assembly) |
| 55 | RED | O2SRL | Heated oxygen sensor 2 bank 1 pin 1 (signal) |
| 56 | WHT | A/F 1 | A/F sensor 1 bank 1 pin 2 |
| 60 | GRY/RED | IGN 5 | Ignition coil 5 pin 1 (left bank) |

Sheet 1 component notes: fuel injectors 5, 3, 1, 7 on the left cylinder bank and 6, 4, 2, 8 on the right; pin 1 of all eight is the WHT supply from fuse 55 (IPDM E/R E119 pin 17). Injector 8 pin 2 (GRN) goes to ECM pin 63 on sheet 4. Knock sensors: signal pin 1 via F26/F101, shield pin 2 (BLK) via F26/F101 pins 4 and 6 to ground E9. Crankshaft position sensor pin 1 (BLK) and camshaft position sensor pin 1 (BLK) share a dashed ground run to E9; both sensors' pin 3 (BRN) is fed from the ECM relay output node. EVAP purge solenoid pin 1 (BRN) is also fed from that node via F32/E2 pin 13. Both intake valve timing control solenoid valves have pin 2 (WHT/BLU) on the ECM relay output. The combination meter (unified meter control unit, M24) drives the malfunction indicator lamp from CAN (pins 11 BLU and 12 PNK to the computer data lines); its pin 40 (GRY/RED) via M31/E152 pin 17G is the park/neutral signal to ECM pin 102; pin 9 (BLK) grounds at M61 behind the centre of the dash.

## F54 — ECM connector, pins 61-81 (sheet 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 61 | ORG/WHT | IGN 3 | Ignition coil 3 pin 1 (left bank) |
| 62 | YEL/RED | IGN 1 | Ignition coil 1 pin 1 (left bank) |
| 63 | GRN | INJ 8 | Fuel injector 8 pin 2 (right bank) |
| 65 | GRN/RED | IGN 8 | Ignition coil 8 pin 1 (right bank) |
| 66 | RED | GND A2 | Electric throttle control actuator pin 4 (TP sensor ground) |
| 67 | BLK | GND A | Sensor ground splice (see grounds below), via E5/F14 pin 10 |
| 68 | WHT/BLU | AVCC | Power steering pressure sensor pin 1 (supply) |
| 69 | WHT | TPS2 | Electric throttle control actuator pin 3 (TP sensor 2) |
| 70 | BLK/WHT | PD PRES | Refrigerant pressure sensor pin 2 (signal), via E5/F14 pin 24 |
| 71 | RED | CURSEN | Battery current sensor pin 3 (signal), via F32/E2 pin 12 |
| 72 | YEL | VTC PUS (L) | Intake valve timing control position sensor bank 1 pin 2 |
| 73 | YEL/BLK | TW | Engine coolant temperature sensor pin 1 (right side of engine), via F26/F101 pin 3 |
| 74 | BLU | O2SRR | Heated oxygen sensor 2 bank 2 pin 1 (signal) |
| 75 | BLU | A/F 2 | A/F sensor 1 bank 2 pin 2 |
| 78 | BLK/WHT | GND 02 | Heated oxygen sensor 2 bank 1 pin 4 (BLK) and bank 2 pin 4 (BLK/WHT), joined |
| 79 | PPL/WHT | IGN 6 | Ignition coil 6 pin 1 (right bank) |
| 80 | WHT/RED | IGN 4 | Ignition coil 4 pin 1 (right bank) |
| 81 | WHT/GRN | IGN 2 | Ignition coil 2 pin 1 (right bank) |

## E16 — ECM connector, pins 82-121 (sheet 4)

| Pin | Wire | Function (as printed) | Connects to |
|-----|------|----------------------|-------------|
| 82 | BLK/RED | GND A | Accelerator pedal position (APP) sensor pin 1 (sensor 1 ground) |
| 83 | GRN/WHT | GND A2 | APP sensor pin 3 (sensor 2 ground) |
| 85 | GRN/WHT | KLINE | Data link connector pin 7 (behind lower left side of dash), via E152/M31 pin 11G |
| 86 | PNK | CAN L | Computer data lines circuit |
| 90 | BLU | AVCC | APP sensor pin 7 (sensor 1 supply) |
| 91 | WHT/RED | AVCC2 | APP sensor pin 6 (sensor 2 supply) |
| 94 | BLU | CAN H | Computer data lines circuit |
| 98 | GRN/RED | APS2 | APP sensor pin 5 (sensor 2) |
| 99 | GRN/YEL | ASCDSW | Cruise control system |
| 101 | RED/WHT | BRAKE | Stop lamp switch pin 2 (drawn RED/GRN at the switch, also feeds the exterior lights system); switch pin 1 RED/YEL is fed by fuse 20 |
| 102 | GRY/RED | NEUT | Combination meter pin 40 (park/neutral position from the unified meter control unit), via M31/E152 pin 17G |
| 104 | ORG | MOTRLY | Throttle control motor relay coil (IPDM E/R E122 pin 47); early production cars have an extra inline connector E176/E175 pin 8 in this wire |
| 106 | BRN/WHT | APS1 | APP sensor pin 2 (sensor 1) |
| 107 | PPL/RED | TF | Fuel tank temperature sensor (fuel level sensor unit and fuel pump pin 4, YEL/RED, on top of fuel tank), via C1/E41 pin 15C |
| 108 | BRN/WHT | BNCSW | Cruise control system |
| 109 | BLU/WHT | IGN SW | Fuse 59 (10 A, hot in ON or START, fuse and relay box at right rear of engine compartment) |
| 111 | WHT/BLK | SSOFF | ECM relay coil (IPDM E/R E119 pin 7) |
| 113 | GRY | FPR | Fuel pump relay coil (IPDM E/R E122 pin 46); early production cars have an extra inline connector E176/E175 pin 9 in this wire |
| 115 | BLK | GND | Ground E9 |
| 116 | BLK/WHT | GND | Ground E9 |
| 117 | BLU/YEL | CDCV | EVAP canister vent control valve pin 2 (YEL/BLU or WHT/BLU at the valve, left rear underside of vehicle near fuel tank), via C1/E41 pin 21C |
| 119 | BRN | VB | ECM relay output node (see below); joined with pin 120 |
| 120 | BRN | VB | ECM relay output node |
| 121 | WHT | BATT | Fuse 53 (20 A, hot at all times, IPDM E/R E121 pin 30) |

Sheet 2-4 component notes: ignition coils with power transistor 5, 7, 3, 1 on the left cylinder bank and 8, 6, 4, 2 on the right; coil pin 3 (WHT/BLU) is the ECM relay output, coil pin 2 (BLK) grounds at F16 (left front of engine), spark plug lead NCA. Electric throttle control actuator at top left side of engine (motor pins 5/6, TP sensor 1 on pins 1 and 2 with ground pin 4, TP sensor 2 on pin 3; cable shields NCA to ground E9). Accelerator pedal position sensor (sensor 1 pins 1/2/7, sensor 2 pins 3/5/6). MAF sensor with IAT sensor at left front of engine compartment (pin 2 BRN from the ECM relay output node, pin 3 BLK to the cruise control system and sensor ground, pin 6 BLK to the sensor ground splice, pin 4 WHT airflow signal, pin 5 RED/BLK IAT). EVAP control system pressure sensor at left rear underside of vehicle near fuel tank (pin 1 BLK to the sensor ground via E41/C1 pin 19C and E5/F14 pin 9). A/F sensor 1 bank 1 at left rear of engine, bank 2 at right rear of engine compartment; both pin 4 (RED/BLK) heater power from fuse 54. Heated oxygen sensor 2 bank 1 and bank 2 on the exhaust, pin 3 (RED/BLK) heater power from fuse 54. Engine coolant temperature sensor right side of engine (pin 2 BLK to the sensor ground via F26/F101 pin 2). Intake valve timing control position sensors bank 1 and bank 2 on top of the engine assembly (pin 3 BRN from the ECM relay output node, pin 1 BLK to ground E9). Refrigerant pressure sensor at centre front of engine compartment (pin 3 BLK to the sensor ground). Power steering pressure sensor at the power steering pump (pin 3 BLK to the sensor ground). Battery current sensor (pin 2 BLK to the sensor ground). Condenser 1 at left rear of engine (pin 1 WHT/BLU from the ECM relay output, pin 2 BLK to F16); condenser 2 at rear of engine (pin 1 BLK/YEL from the fuel pump relay output, pin 2 BLK to E15 via E41/C1 pin 16C). Fuel level sensor unit and fuel pump on top of fuel tank (pump pin 1 BLK/YEL from the fuel pump relay, pin 3 BLK to ground E15 via C1/E41 pin 52, pin 4 YEL/RED fuel temperature to ECM pin 107).

## Power supply / relays

IPDM E/R (intelligent power distribution module engine room), right rear of engine compartment:

- **Throttle control motor relay** — fuse 52 (20 A, hot at all times); coil driven by ECM pin 104 (E122 pin 47 ORG); output E119 pin 6 (BLU) via E2/F32 pin 7 to ECM pin 3 VMOT
- **ECM relay** — fuse 53 (20 A, hot at all times) feeds both the relay contact and, from E121 pin 30 (WHT), ECM pin 121 BATT. Coil driven by ECM pin 111 SSOFF (E119 pin 7 WHT/BLK). Two outputs: E119 pin 3 (BRN) and E119 pin 4 (WHT/BLU). The BRN output runs to a dashed junction that feeds ECM pins 119 and 120 VB, both intake valve timing control position sensors pin 3, the crankshaft and camshaft position sensors pin 3, the EVAP purge solenoid pin 1 (via F32/E2 pin 13) and the MAF sensor pin 2 (via E2/F32 pin 9). The WHT/BLU output feeds the EVAP canister vent control valve pin 1 (via E41/C1 pin 42C), all eight ignition coils pin 3, both intake valve timing control solenoid valves pin 2 and condenser 1 pin 1 (via E2/F32 pin 11)
- **Fuel pump relay** — fuse 48 (15 A, hot in ON or START); coil driven by ECM pin 113 FPR (E122 pin 46 GRY); output E119 pin 13 (BLK/YEL) to the fuel pump pin 1 and condenser 2 pin 1
- **Fuse 55** (15 A, hot in ON or START) — E119 pin 17 WHT to fuel injectors 1-8 pin 1
- **Fuse 54** (15 A, hot in ON or START) — E119 pin 8 RED/BLK to A/F sensor 1 bank 1 and bank 2 pin 4 and heated oxygen sensor 2 bank 1 and bank 2 pin 3 (heater power)

Fuse and relay box (right rear of engine compartment): fuse 59 (10 A, hot in ON or START) BLU/WHT to ECM pin 109 IGN SW. Fuse block (J/B, behind right end of dash): fuse 20 (10 A, hot at all times, M60 pin 1T RED/YEL) via M31/E152 pin 46G to the stop lamp switch pin 1.

## Grounds

- **E9** (right front of engine compartment): ECM pins 1, 115, 116; crankshaft position sensor pin 1 and camshaft position sensor pin 1; knock sensor shields (via F26/F101 pins 4 and 6); intake valve timing control position sensors bank 1 and bank 2 pin 1; throttle control actuator and APP sensor cable shields
- **Sensor ground splice** on ECM pin 67 GND A (via E5/F14 pin 10): MAF sensor pins 3 and 6, EVAP control system pressure sensor pin 1, engine coolant temperature sensor pin 2, power steering pressure sensor pin 3, refrigerant pressure sensor pin 3, battery current sensor pin 2
- ECM pin 66 GND A2 is the throttle position sensor ground only; pins 82 GND A and 83 GND A2 are the APP sensor 1 and sensor 2 grounds only; pin 78 GND 02 is the rear oxygen sensor ground
- **F16** (left front of engine): ignition coils pin 2 and condenser 1 pin 2
- **E15** (right side of engine compartment): fuel pump pin 3 and condenser 2 pin 2
- **M61** (behind centre of dash): combination meter pin 9

## Differences from the 2011 Xterra (VQ40DE) 121 pin ECM

Compared with [2011-Nissan-Xterra-VQ40DE-ECM-pinout.md](2011_Xterra/2011-Nissan-Xterra-VQ40DE-ECM-pinout.md), the V8 adds injector 7 (44), injector 8 (63), coil 7 (46), coil 8 (65), knock sensor 2 (36), intake valve timing control position sensors (53, 72), battery current sensor (71) and a second A/F heater pin (43, paralleled with 24). It drops the second camshaft position sensor (33 NC) and the VIAS solenoid (29 NC). Fuel tank temperature (107), power, ground, CAN and relay pins are identical. The park/neutral input on 102 comes from the combination meter, as on the Xterra A/T.
