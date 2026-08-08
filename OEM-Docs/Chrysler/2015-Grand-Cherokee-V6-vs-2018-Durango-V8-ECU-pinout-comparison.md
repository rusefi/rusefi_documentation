# ECU (PCM) Pinout Comparison: 2015 Jeep Grand Cherokee 3.6 V6 vs 2018 Dodge/Ram Durango 5.7 V8

Source documents (in this folder):

- `2015 Jeep Truck Grand Cherokee 2WD 3.6 v6 ECU.pdf` — 2015 Jeep Grand Cherokee 2WD, V6-3.6L Pentastar, Engine Controls wiring diagram (ALLDATA)
- `2018 Dodge or Ram Truck Durango 2WD ECU.pdf` — 2018 Dodge/Ram Durango 2WD, V8-5.7L Hemi, Engine Controls wiring diagram (ALLDATA)

Both PCMs use the same physical architecture: **two 96-way connectors**, with **C1 as the body/chassis-side connector** and **C2 as the engine-side connector**. Chrysler circuit codes (K11, F342, D27, …) are consistent between the two vehicles, which makes circuit-by-circuit matching reliable.

## Summary

- The two PCMs are clearly the same platform generation. On the engine connector (C2), **31 circuits sit on identical pins with identical circuit codes** (all injector 1–6 drivers, coils 3–6, both knock sensors, ECT, MAP, TPS, crank and cam sensor 1, all four O2 heater drivers, and the sensor 5 V/ground pins).
- On the chassis connector (C1), **24 circuits are pin-identical** (CAN C high/low, both APP signal + ground pairs, all three ASD outputs, ASD/starter/A-C relay controls, purge control, battery/ignition feeds, grounds).
- The differences are driven almost entirely by the engine configuration: the V8 adds coils/injectors 7–8 and the four MDS cylinder-deactivation solenoids, and replaces the Pentastar's four VVT phaser solenoids + 2-stage oil pump solenoid + second cam sensor with a single VCT solenoid. A handful of shared circuits (A/C pressure, fuel tank pressure, EOT, IAT, oil pressure, O2 signal returns, generator field, ETC motor) were relocated to different pins.
- Wire colors for shared circuits are nearly all identical (minor naming drift in the 2018 diagram: `LT GRN`→`GRN`, `LT BLU`→`BLU`).

Legend for the tables: **SAME** = same pin, same circuit code; **MOVED** = same circuit code, different pin; **V6 only / V8 only** = circuit exists on only one vehicle.

## Connector C1 (chassis/body side)

Union of all populated C1 pins in either diagram:

| Pin | 2015 Grand Cherokee 3.6 V6 | 2018 Durango 5.7 V8 | Status |
|-----|---------------------------|---------------------|--------|
| 1 | ASD RLY OUTPUT — F344, BRN/GRY | — | V6 only |
| 6 | VCM PMP RLY CTRL — T110, DK GRN/YEL (to ABS) | — | MOVED → 77 |
| 19 | A/C PRES SIG — C18, LT BLU/BRN | — | MOVED → 44 |
| 22 | SENS GND (A/C transducer) — K914, BRN/WHT | — | MOVED → 42 |
| 23 | FSD IGN SW OUTPUT — F942, RED/LT GRN | FSD IGN SW OUT — F942, PNK/GRN | SAME (color differs) |
| 24 | FUEL TANK PRESS SIG — N7, BRN/VIO | — | MOVED → 88 |
| 30 | RAD FAN RLY CTRL — N201, DK BLU/LT GRN | — | MOVED → 82 |
| 33 | CAN C (−) — D28, YEL | CAN C (−) — D28, YEL | SAME |
| 42 | — | SENS GND (A/C transducer) — K914, BRN/WHT | MOVED ← 22 |
| 44 | — | A/C PRESS SIG — C18, BLU/BRN | MOVED ← 19 |
| 48 | FUEL TANK PRESS SENS SPLY — N8, DK BLU/PNK | 5V SPLY — N8, DK BLU/PNK | SAME (renamed) |
| 52 | GND — Z909, BLK | GND — Z909, BLK | SAME |
| 53 | GND — Z909, BLK | GND — Z909, BLK | SAME |
| 54 | FUEL TANK PRES SENS RTN — N10, DK BLU/WHT | SENS GND — N10, DK BLU/WHT | SAME (renamed) |
| 57 | CAN C (+) — D27, TAN/WHT | CAN C (+) — D27, TAN/WHT | SAME |
| 67 | APP SENS 2 GND — K400, BRN/VIO | APP SENS GND 2 — K400, BRN/VIO | SAME |
| 68 | APP SENS 1 GND — K167, BRN/YEL | APP SENS GND 1 — K167, BRN/YEL | SAME |
| 69 | 5V SPLY — K854, VIO/BRN | 5V SPLY — K854, VIO/BRN | SAME |
| 70 | ESIM SIG — K108, VIO/GRY | EVAP PURGE SOL SENS — K108, VIO/GRY | SAME (renamed) |
| 72 | GND — Z909, BLK | GND — Z909, BLK | SAME |
| 73 | — | FUEL PUMP CTRL — N9, DK BLU | V8 only (see pin 84) |
| 74 | ASD CTRL OUTPUT — F342, BRN/WHT | ASD CTRL OUT — F342, BRN/WHT | SAME |
| 75 | ASD CTRL OUTPUT — F342, BRN/WHT | ASD CTRL OUT — F342, BRN/WHT | SAME |
| 76 | ASD CTRL OUTPUT — F342, BRN/WHT | ASD CTRL OUT — F342, BRN/WHT | SAME |
| 77 | — | VACUUM PUMP RLY CTRL — T110, DK GRN/YEL | MOVED ← 6 |
| 78 | HI SPD RAD FAN CTRL — N112, DK BLU/ORG | RAD FAN CTRL RLY — N112, DK BLU/ORG | SAME (renamed) |
| 79 | A/C CLTCH COIL — C13, LT BLU/ORG | A/C CLUTCH CTRL — C13, BLU/ORG | SAME |
| 80 | ASD RLY CTRL — K51, BRN/WHT | ASD RLY CTRL — K51, BRN/WHT | SAME |
| 81 | STARTER RLY CTRL — T752, DK GRN/ORG | STRTR RLY CTRL — T752, DK GRN/ORG | SAME |
| 82 | — | LO SPD RAD FAN CTRL — N201, DK BLU/GRN (heavy duty) / RAD FAN CTRL — K175, BRN/BLU (light duty) | MOVED ← 30 |
| 84 | FUEL PMP CTRL — K31, BRN | — | V6 only (V8 uses N9 on pin 73) |
| 88 | — | FUEL TANK PRESS SIG — N7, DK BLU/ORG | MOVED ← 24 |
| 91 | APP SIG 2 — K29, WHT/BRN | APP SIG 2 — K29, WHT/BRN | SAME |
| 92 | APP SIG 1 — K23, BRN/WHT | APP SIG 1 — K23, BRN/WHT | SAME |
| 93 | 5V SPLY (APP) — K852, BRN/VIO | 5V SPLY — K852, BRN/VIO | SAME |
| 94 | PWM PRG SIG — K52, DK BLU/WHT | EVAP PURGE CTRL — K52, DK BLU/WHT | SAME (renamed) |
| 95 | — | COOLANT BYPASS VLV CTRL — K501, BRN | V8 only |
| 96 | FUSED B (+) — A209, RED | FSD B (+) — A209, RED | SAME |

## Connector C2 (engine side)

Union of all populated C2 pins in either diagram:

| Pin | 2015 Grand Cherokee 3.6 V6 | 2018 Durango 5.7 V8 | Status |
|-----|---------------------------|---------------------|--------|
| 1 | COIL 1 CTRL — K19, DK BLU/DK GRN | SOL CTRL 7 (MDS) — K454, BRN/ORG | Different (coil 1 MOVED → 51) |
| 2 | GEN FLD CTRL — K20, BRN/DK GRN | — | MOVED → 32 |
| 3 | ETC MTR (+) — K447, TAN/YEL | — | MOVED → 33 |
| 4 | ETC MTR (−) — K448, TAN/ORG | OIL PRESS SIG — G6, VIO/GRY | Different (K448 → 34, G6 ← 20) |
| 6 | — | SOL CTRL 4 (MDS) — K452, BRN/BLU | V8 only |
| 8 | INJ 1 CTRL — K11, BRN/YEL | INJ CTRL 1 — K11, BRN/YEL | SAME |
| 9 | INJ 2 CTRL — K12, BRN/DK BLU | INJ CTRL 2 — K12, BRN/DK BLU | SAME |
| 10 | INJ 3 CTRL — K13, BRN/LT BLU | INJ CTRL 3 — K13, BRN/BLU | SAME |
| 11 | INJ 4 CTRL — K14, BRN/TAN | INJ CTRL 4 — K14, BRN/TAN | SAME |
| 12 | ECT SIG — K2, VIO/ORG | ECT SIG — K2, VIO/ORG | SAME |
| 13 | KS 2 SIG — K242, BRN/WHT | KS 2 SIG — K242, BRN/WHT | SAME |
| 14 | KS 1 SIG — K42, DK BLU/YEL | KS 1 SIG — K42, DK BLU/YEL | SAME |
| 16 | EOT SIG — G24, VIO/BRN | — | MOVED → 43 |
| 17 | IAT SIG — K21, DK BLU/LT GRN | — | MOVED → 44 |
| 18 | DNSTRM O2 RTN — K904, DK BLU/DK GRN | — | MOVED → 20 |
| 19 | UPSTRM O2 RTN — K902, BRN/DK GRN | O2 1/2 SIG — K141, DK BLU/YEL | Different (K902 → 40, K141 ← 43) |
| 20 | OIL PRESS SIG — G6, VIO/GRY | O2 RTN (DNSTRM) — K904, DK BLU/DK GRN | Different (G6 → 4, K904 ← 18) |
| 21 | — | O2 2/2 SIG — K243, BRN | MOVED ← 42 |
| 22 | VVT EXT 1/2 CTRL — K276, DK BLU/WHT | VCT CTRL — K442, DK BLU | Different circuits |
| 23 | VVT INT 1/1 CTRL — K76, BRN/WHT | — | V6 only |
| 24 | O2 1/1 HTR CTRL — K99, BRN/LT GRN | O2 1/1 HTR CTRL — K99, BRN/GRN | SAME |
| 25 | COIL 2 CTRL — K17, DK BLU/TAN | SOL CTRL 6 (MDS) — K453, BRN/DK GRN | Different (coil 2 MOVED → 50) |
| 31 | — | SOL CTRL 1 (MDS) — K451, BRN/WHT | V8 only |
| 32 | — | GEN FIELD CTRL — K20, BRN/GRY | MOVED ← 2 |
| 33 | — | ETC MTR (+) — K447, TAN/YEL | MOVED ← 3 |
| 34 | — | ETC MTR (−) — K448, TAN/ORG | MOVED ← 4 |
| 35 | — | GEN SNS — A804, RED/VIO | MOVED ← 40 |
| 37 | KS 2 RTN — K924, WHT/BRN | KS 2 RTN — K924, WHT/BRN | SAME |
| 38 | KS 1 RTN — K942, BRN/LT GRN | KS 1 RTN — K942, BRN/GRN | SAME |
| 39 | — | O2 1/1 SIG — K41, DK BLU/BLU | MOVED ← 44 |
| 40 | GEN SENS — A804, RED/VIO | O2 RTN (UPSTRM) — K902, BRN/DK GRN | Different (A804 → 35, K902 ← 19) |
| 41 | O2 2/1 SIG — K43, DK BLU/LT GRN | O2 2/1 SIG — K43, DK BLU/GRN | SAME |
| 42 | O2 2/2 SIG — K243, BRN | — | MOVED → 21 |
| 43 | O2 1/2 SIG — K141, DK BLU/YEL | EOT SIG — G24, VIO/BRN | Different (K141 → 19, G24 ← 16) |
| 44 | O2 1/1 SIG — K41, DK BLU/LT BLU | IAT SIG — K21, DK BLU/GRN | Different (K41 → 39, K21 ← 17) |
| 45 | MAP SIG — K1, VIO/BRN | MAP SIG — K1, VIO/BRN | SAME |
| 48 | HTR CTRL SPLY — K299, BRN/WHT | O2 1/2 HTR CTRL — K299, BRN/WHT | SAME (renamed) |
| 49 | COIL 3 CTRL — K18, DK BLU/ORG | COIL CTRL 3 — K18, DK BLU/ORG | SAME |
| 50 | — | COIL CTRL 2 — K17, DK BLU/TAN | MOVED ← 25 |
| 51 | — | COIL CTRL 1 — K19, DK BLU/DK GRN | MOVED ← 1 |
| 53 | — | SRV SNS OUTPUT — K238, DK BLU/GRN | V8 only (6.4L short runner valve) |
| 60 | — | SRV ACT CTRL SIG — K237, DK BLU/YEL | V8 only (6.4L short runner valve) |
| 61 | SENS SIG 2/1 (cam sensor 2) — K445, DK BLU/DK GRN | — | V6 only |
| 62 | SENS SIG 1/2 (cam sensor 2) — K441, DK BLU/BRN | — | V6 only |
| 63 | SENS SIG 2/2 (cam sensor 2) — K444, DK BLU/TAN | — | V6 only |
| 65 | TP SENS RTN — K922, BRN/DK BLU | TP SENS RTN — K922, BRN/DK BLU | SAME |
| 66 | SENS GND — K900, DK BLU/DK GRN | SENS GND — K900, DK BLU/DK GRN | SAME |
| 67 | 5V SPLY — F855, PNK/YEL | 5V SPLY — F855, PNK/YEL | SAME |
| 68 | SENS GND — K915, BRN/WHT | SENS GND — K915, BRN/WHT | SAME |
| 72 | HTR CTRL (O2 2/1) — K199, BRN/VIO | O2 2/1 HTR CTRL — K199, BRN/VIO | SAME |
| 73 | COIL 4 CTRL — K15, DK BLU/GRY | COIL CTRL 4 — K15, DK BLU/GRY | SAME |
| 74 | COIL 5 CTRL — K16, DK BLU/YEL | COIL CTRL 5 — K16, DK BLU/YEL | SAME |
| 75 | COIL 6 CTRL — K10, DK BLU/ORG | COIL CTRL 6 — K10, DK BLU/ORG | SAME |
| 76 | — | COIL CTRL 7 — K97, BRN | V8 only |
| 77 | — | COIL CTRL 8 — K98, DK BLU/YEL | V8 only |
| 79 | INJ 5 CTRL — K38, BRN/ORG | INJ CTRL 5 — K38, BRN/ORG | SAME |
| 80 | INJ 6 CTRL — K58, BRN/VIO | INJ CTRL 6 — K58, BRN/VIO | SAME |
| 81 | — | INJ CTRL 7 — K26, BRN/YEL | V8 only |
| 82 | — | INJ CTRL 8 — K28, BRN/BLU | V8 only |
| 85 | SENS SIG (cam sensor 1) — K44, DK BLU/GRY | CMP SIG — K44, DK BLU/GRY | SAME |
| 86 | CNKSHFT POS SIG — K24, BRN/LT BLU | CKP SIG — K24, BRN/BLU | SAME |
| 87 | FSD ASD RLY O/P — F856, YEL/PNK | 5V SPLY — F856, YEL/PNK | SAME circuit (label differs between diagrams) |
| 88 | CNKSHFT POS GND — K925, DK BLU/GRY | CKP GND — K925, DK BLU/GRY | SAME |
| 89 | TP 1 SIG — K22, BRN/ORG | TP 1 SIG — K22, BRN/ORG | SAME |
| 90 | TP 2 SIG — K122, BRN/DK GRN | TP 2 SIG — K122, BRN/DK GRN | SAME |
| 93 | OIL PRESS SOL CTRL (2-stage oil pump) — G62, VIO/YEL | — | V6 only |
| 94 | VVT INT 2/1 CTRL — K78, BRN | — | V6 only |
| 95 | VVT EXT 2/2 CTRL — K277, DK BLU | — | V6 only |
| 96 | HTR CTRL (O2 2/2) — K399, BRN/GRY | O2 2/2 HTR CTRL — K399, BRN/GRY | SAME |

## Engine-configuration differences behind the C2 changes

**3.6 Pentastar V6 (2015) only:**

- Four cam phaser solenoids: VVT INT 1/1 (K76, pin 23), VVT EXT 1/2 (K276, pin 22), VVT INT 2/1 (K78, pin 94), VVT EXT 2/2 (K277, pin 95)
- Second camshaft position sensor with three signal channels (K445/K441/K444, pins 61–63)
- Two-stage oil pump solenoid (G62, pin 93)

**5.7 Hemi V8 (2018) only:**

- Cylinders 7–8: coils K97/K98 (pins 76/77) and injectors K26/K28 (pins 81/82)
- Four MDS cylinder-deactivation solenoids for cylinders 1, 4, 6, 7: K451 (pin 31), K452 (pin 6), K453 (pin 25), K454 (pin 1)
- Single variable camshaft timing (VCT) solenoid: K442 (pin 22)
- Short runner valve actuator/sense (K237/K238, pins 60/53) — 6.4L engine only in this diagram
- Coolant bypass valve on C1 (K501, pin 95) and a brake vacuum pump with its own relay (T110 relocated to C1-77)

Note that the V8 re-uses the pins vacated by the V6-only hardware: MDS solenoid 7 takes coil 1's old pin (C2-1), MDS solenoid 6 takes coil 2's old pin (C2-25), and the VCT solenoid takes the VVT EXT 1/2 pin (C2-22). Coils 1 and 2 moved to C2-51 and C2-50.

## Power distribution differences

- **2015 Jeep PDC:** Auto Shutdown relay and Fuel Pump relay; fuses 22, 56, 63, 64, 70, 78. PCM drives the fuel pump relay with circuit K31 (C1-84).
- **2018 Durango PDC:** Auto Shutdown, Fuel Pump, Vacuum Pump, and Run/Start relays; fuses 9, 22, 63, 64, 70, 78. Fuel pump control is circuit N9 on C1-73, and the instrument cluster sits on CAN C alongside the PCM.
- Splice/ground names carry over between the two vehicles (G903A, G909B, SP102, SP1846, SP2176, SP2186, SP2190/2191/2192, SP2470), confirming the shared harness architecture.

## Caveats

- Pin data was transcribed from ALLDATA "Interactive Color (Non OE)" diagrams; pins not shown in the Engine Controls diagram (e.g. grounds or feeds drawn only in other system diagrams) will appear empty here even if physically populated.
- The 2018 diagram covers both 5.7L and 6.4L Durangos; SRV circuits apply to the 6.4L, and CKP/EVAP solenoid locations differ by engine. Fan control pins differ between heavy-duty and light-duty cooling packages (N201 vs K175 on C1-82).
- Wire-color naming drift between the two diagrams (`LT GRN` vs `GRN`, `LT BLU` vs `BLU`) most likely reflects documentation style, not a physical change.
- Always verify against the physical harness before repinning or building an adapter.
