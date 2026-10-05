# Nissan Cube Z11 / CR14DE (filename identification) — ECM pinout and reference voltages

Transcribed from [Nissan Cube Z11 CR14DE.pdf](Nissan%20Cube%20Z11%20CR14DE.pdf), Nissan workshop manual **TROUBLE DIAGNOSIS [CR (WITH EURO-OBD)]**, “ECM Harness Connector Terminal Layout” and “ECM Terminals and Reference Value”, manual pages **EC-94–EC-101** (all eight PDF pages). The end of PDF page 8 also contains the beginning of “CONSULT-II Function (ENGINE)”.

**Vehicle/year scope:** the filename identifies a Cube Z11 with the CR14DE engine; the actual pages identify only **CR (WITH EURO-OBD)** and include both A/T and M/T conditions. No vehicle name, model year, manual edition, or ECM part number is printed on these pages. A manual [catalogued as the 2003 Micra K12 Engine Control System](https://pdfcoffee.com/engine-control-system-2003-micra-k12-5-pdf-free.html) has the same section titles and pagination (terminal layout/reference values at EC-94, CONSULT-II at EC-101). This suggests **2003-era Micra K12 CR documentation**, but does not establish a specific Cube model year or confirm Cube harness applicability. Nissan identifies the [Z11 Cube generation as October 2002–November 2008, with CR14DE versions before and after the May 2005 facelift](https://faq2.nissan.co.jp/faq/show/10907?site_domain=default). Keep the year unconfirmed rather than assigning this pinout to every vehicle in that range.

This source is a terminal inspection table, not a wiring schematic. Component-side terminal numbers, harness connector IDs, fuse ratings, splice locations, and ground-point IDs are not supplied. “Connects to” below follows the printed item name only; no routing from another vehicle has been added. Unlisted terminals are **not described in this excerpt**, not necessarily physically unused.

## Page order

PDF pages 3 and 4 are reversed relative to the manual. The tables below restore numerical terminal order and cite the printed manual page.

| PDF page | Manual page | Contents |
|----------|-------------|----------|
| 1 | EC-94 | Connector layout, preparation, terminal 1 |
| 2 | EC-95 | Terminals 2–13 |
| 3 | EC-97 | Terminals 22–47, including injector terminals 41/42 |
| 4 | EC-96 | Terminals 14–19 |
| 5 | EC-98 | Terminals 49–61, including ignition terminals 79/80 |
| 6 | EC-99 | Terminals 62–90 |
| 7 | EC-100 | Terminals 91–104 |
| 8 | EC-101 | Terminals 106–121, pulse-voltage footnote, CONSULT-II functions |

## Connector layout and measurement notes

The ECM is described as being on the **left-hand side of the engine room**. The harness-side drawing (H.S., figure **MBIB0045E**) shows two connector groups with **121 numbered terminals** in total:

| Connector group in source drawing | Numbered terminals | Count |
|-----------------------------------|--------------------|-------|
| Left / larger | 1–81 | 81 |
| Right / smaller | 82–121 | 40 |

The larger group has a left block containing 4/5, a middle row with terminal 3 between crossed-out positions, and a bottom row 1/2. Its main rows run left-to-right **24→6**, **43→25**, **62→44**, **81→63**. The smaller group's main rows run left-to-right **106→113**, **98→105**, **90→97**, **82→89**. Its right block has rows **119/120/121**, **crossed-out/117/118/crossed-out**, **114/115/116**. Refer to the source drawing for the physical spacing and connector orientation; crossed-out positions are not additional numbered terminals.

Wire abbreviations used here: **B** black, **BR** brown, **G** green, **GY** grey, **L** blue, **LG** light green, **OR** orange, **P** pink, **PU** purple, **R** red, **W** white, **Y** yellow. **L/OR** is blue/orange. **—** means the wire colour is not specified in the table (terminal 54).

Preparation on EC-94: remove the ECM harness protector, fully release the connector levers to disconnect it, and connect the specified break-out box and Y-cable adapter between ECM and harness. Avoid touching two pins simultaneously. These are comparison/reference values and may not be exact.

The manual specifies measuring each terminal relative to ground, with pulse signals measured using CONSULT-II. It cautions **not to use ECM ground terminals as the reference when measuring input/output voltages**, because this can damage the ECM transistor; use a separate ground point.

In the tables, **BATT = 11–14 V**, **≈ = approximately**, and **★ = average voltage of a pulse signal, not its peak amplitude**. The source says an oscilloscope can confirm the actual pulse signal. “Warm” means the source's “warm-up condition”. A/T = automatic transmission; M/T = manual transmission; APP = accelerator pedal position; PNP = park/neutral position.

Two repeated test conditions are abbreviated:

- **Throttle test:** ignition ON, engine stopped, selector in D (A/T) or 1st (M/T); pedal position as stated in the row.
- **Rear O2 preparation:** warm engine, hold 3,500–4,000 rpm for one minute, then idle for one minute under no load. Measure with engine speed below 3,600 rpm (A/T) or 3,800 rpm (M/T).

## Larger connector group — terminals 1–81

| Pin | Wire | Function (as printed) | Connects to | Test condition → reference voltage | Manual page |
|-----|------|----------------------|-------------|------------------------------------|-------------|
| 1 | B | ECM ground | Engine ground | Engine running at idle → engine ground | EC-94 |
| 2 | GY | Heated oxygen sensor 2 heater | HO2S2 heater | Running, after rear O2 preparation → 0–1.0 V; ignition ON/engine stopped, or running above 3,600 rpm (A/T) / 3,800 rpm (M/T) → BATT | EC-95 |
| 3 | LG | Throttle control motor relay power supply | Throttle motor relay supply | Ignition ON → BATT | EC-95 |
| 4 | L | Throttle control motor (Close) | Throttle control motor | Throttle test, accelerator released → 0–14 V ★ | EC-95 |
| 5 | P | Throttle control motor (Open) | Throttle control motor | Throttle test, accelerator fully depressed → 0–14 V ★ | EC-95 |
| 13 | Y | Crankshaft position sensor (POS) | Crankshaft position sensor | Running, warm idle → ≈3.0 V ★; running at 2,000 rpm → ≈3.0 V ★ | EC-95 |
| 14 | R | Camshaft position sensor (PHASE) | Camshaft position sensor | Running, warm idle → 1.0–4.0 V ★; running at 2,000 rpm → 1.0–4.0 V ★ | EC-96 |
| 15 | W | Knock sensor | Knock sensor | Running at idle → ≈2.5 V | EC-96 |
| 16 | LG | Heated oxygen sensor 2 | HO2S2 signal | Running, after rear O2 preparation → 0–≈1.0 V | EC-96 |
| 19 | LG | EVAP canister purge volume control solenoid valve | EVAP purge solenoid | Running at idle → BATT ★; running at about 2,000 rpm, more than 100 seconds after starting → ≈10 V ★ | EC-96 |
| 22 | OR | Injector No. 3 | Injector 3 | Running, warm, at idle or 2,000 rpm → BATT ★ | EC-97 |
| 23 | L | Injector No. 1 | Injector 1 | Running, warm, at idle or 2,000 rpm → BATT ★ | EC-97 |
| 24 | Y | Heated oxygen sensor 1 heater | HO2S1 heater | Running, warm, below 3,600 rpm → ≈7.0 V ★; running above 3,600 rpm → BATT | EC-97 |
| 29 | B | Sensor ground (Camshaft position sensor) | Camshaft position sensor ground | Running, warm idle → ≈0 V | EC-97 |
| 30 | B | Sensor ground (Crankshaft position sensor) | Crankshaft position sensor ground | Running, warm idle → ≈0 V | EC-97 |
| 34 | OR | Intake air temperature sensor | IAT sensor | Engine running → ≈0–4.8 V, varies with intake air temperature | EC-97 |
| 35 | BR | Heated oxygen sensor 1 | HO2S1 signal | Running, warm, at 2,000 rpm → 0–≈1.0 V, changes periodically | EC-97 |
| 41 | R | Injector No. 4 | Injector 4 | Running, warm, at idle or 2,000 rpm → BATT ★ | EC-97 |
| 42 | GY | Injector No. 2 | Injector 2 | Running, warm, at idle or 2,000 rpm → BATT ★ | EC-97 |
| 45 | L | Sensor power supply | Sensor supply; recipients not named in this table | Ignition ON → ≈5 V | EC-97 |
| 46 | W | Sensor power supply (Refrigerant pressure sensor) | Refrigerant pressure sensor supply | Ignition ON → ≈5 V | EC-97 |
| 47 | L | Sensor power supply (Throttle position sensor) | Throttle position sensor supply | Ignition ON → ≈5 V | EC-97 |
| 49 | Y | Throttle position sensor 1 | TP sensor 1 | Throttle test, accelerator fully released → >0.36 V; fully depressed → <4.75 V | EC-98 |
| 51 | W | Manifold absolute pressure sensor | MAP sensor | Running, warm idle → ≈1.5 V; running, warm, at 2,000 rpm → ≈1.2 V | EC-98 |
| 54 | — | Sensor ground (Knock sensor) | Knock sensor ground | Running, warm idle → ≈0 V | EC-98 |
| 56 | B | Sensor ground (Manifold absolute pressure sensor) | MAP sensor ground | Running, warm idle → ≈0 V | EC-98 |
| 57 | Y | Sensor ground (Refrigerant pressure sensor) | Refrigerant pressure sensor ground | Running, warm idle → ≈0 V | EC-98 |
| 60 | Y | Ignition signal No. 3 | Cylinder 3 ignition signal | Running, warm idle → 0–0.1 V ★; running, warm, at 2,000 rpm → 0–0.2 V ★ | EC-98 |
| 61 | PU | Ignition signal No. 1 | Cylinder 1 ignition signal | Running, warm idle → 0–0.1 V ★; running, warm, at 2,000 rpm → 0–0.2 V ★ | EC-98 |
| 62 | LG | Intake valve timing control solenoid valve | Intake valve timing solenoid | Running, warm idle → BATT ★; running, warm, revving quickly to 2,000 rpm → ≈4 V–BATT ★ | EC-99 |
| 66 | B | Sensor ground (Throttle position sensor) | Throttle position sensor ground | Running, warm idle → ≈0 V | EC-99 |
| 68 | R | Throttle position sensor 2 | TP sensor 2 | Throttle test, accelerator fully released → <4.75 V; fully depressed → >0.36 V | EC-99 |
| 69 | BR | Refrigerant pressure sensor | Refrigerant pressure sensor signal | Running, warm, A/C and blower ON, compressor operating → 1.0–4.0 V | EC-99 |
| 72 | P | Engine coolant temperature sensor | ECT sensor | Engine running → ≈0–4.8 V, varies with coolant temperature | EC-99 |
| 73 | B | Sensor ground (Engine coolant temperature sensor) | ECT sensor ground | Running, warm idle → ≈0 V | EC-99 |
| 74 | B | Sensor ground (Heated oxygen sensor) | Heated oxygen sensor ground; sensor number not specified | Running, warm idle → ≈0 V | EC-99 |
| 79 | G | Ignition signal No. 4 | Cylinder 4 ignition signal | Running, warm idle → 0–0.1 V ★; running, warm, at 2,000 rpm → 0–0.2 V ★ | EC-98 |
| 80 | BR | Ignition signal No. 2 | Cylinder 2 ignition signal | Running, warm idle → 0–0.1 V ★; running, warm, at 2,000 rpm → 0–0.2 V ★ | EC-98 |

## Smaller connector group — terminals 82–121

| Pin | Wire | Function (as printed) | Connects to | Test condition → reference voltage | Manual page |
|-----|------|----------------------|-------------|------------------------------------|-------------|
| 82 | B | Sensor ground (APP sensor 1) | APP sensor 1 ground | Running, warm idle → ≈0 V | EC-99 |
| 83 | B | Sensor ground (APP sensor 2) | APP sensor 2 ground | Running, warm idle → ≈0 V | EC-99 |
| 85 | LG | DATA link connector | Diagnostic connector; terminal/protocol not specified here | Ignition ON, CONSULT-II or GST disconnected → BATT | EC-99 |
| 86 | W | CAN communication line | CAN bus; H/L not printed here | Ignition ON → 1.0–2.5 V | EC-99 |
| 90 | OR | Sensor power supply (APP sensor 1) | APP sensor 1 supply | Ignition ON → ≈5 V | EC-99 |
| 91 | BR | Sensor power supply (APP sensor 2) | APP sensor 2 supply | Ignition ON → ≈5 V | EC-100 |
| 92 | GY | Throttle position sensor signal output (A/T models) | A/T throttle-position signal output; destination not named | Ignition ON, engine stopped, selector D, accelerator fully released → ≈0.5 V; fully depressed → ≈4.2 V | EC-100 |
| 94 | R | CAN communication line | CAN bus; H/L not printed here | Ignition ON → 2.5–4.0 V | EC-100 |
| 98 | GY | Accelerator pedal position sensor 2 | APP sensor 2 signal | Ignition ON, engine stopped, accelerator fully released → 0.3–0.6 V; fully depressed → 1.95–2.4 V | EC-100 |
| 101 | W | Stop lamp switch | Stop lamp switch | Ignition ON, brake fully released → ≈0 V; depressed → BATT | EC-100 |
| 102 | GY | PNP switch | Park/neutral switch | Ignition ON, P or N (A/T) / neutral (M/T) → ≈0 V; other gear position → BATT | EC-100 |
| 103 | L/OR | Tachometer signal output (A/T models) | Tachometer signal output; destination not named | Running, warm idle → 10–11 V ★; running at 2,000 rpm → 10–11 V ★ | EC-100 |
| 104 | G | Throttle control motor relay | Throttle motor relay control | Ignition OFF → BATT; ignition ON → 0–1.0 V | EC-100 |
| 106 | W | Accelerator pedal position sensor 1 | APP sensor 1 signal | Ignition ON, engine stopped, accelerator fully released → 0.6–0.9 V; fully depressed → 3.9–4.7 V | EC-101 |
| 109 | PU | Ignition switch | Ignition-switch input | Ignition OFF → 0 V; ignition ON → BATT | EC-101 |
| 111 | P | ECM relay (Self shut-off) | ECM relay control | Engine running, and for a few seconds after ignition OFF → 0–1.0 V; more than a few seconds after ignition OFF → BATT | EC-101 |
| 113 | R | Fuel pump relay | Fuel pump relay control | First second after ignition ON, or engine running → 0–1.0 V; more than one second after ignition ON → BATT | EC-101 |
| 115 | B | ECM ground | Engine ground | Engine running at idle → engine ground | EC-101 |
| 116 | B | ECM ground | Engine ground | Engine running at idle → engine ground | EC-101 |
| 119 | G | Power supply for ECM | ECM supply; upstream routing not shown | Ignition ON → BATT | EC-101 |
| 120 | G | Power supply for ECM | ECM supply; upstream routing not shown | Ignition ON → BATT | EC-101 |
| 121 | BR | Power supply for ECM (Back-up) | ECM backup supply; upstream routing not shown | Ignition OFF → BATT | EC-101 |

## Pulse waveform references

The source includes oscilloscope illustrations for the following terminals. Values in the pin tables retain the printed ★ average-voltage notation. The illustrations are available in the linked PDF; they are not reconstructed from the DC averages.

| Terminal(s) | Condition | Printed waveform figure |
|-------------|-----------|-------------------------|
| 4 | Throttle close test | PBIB0534E |
| 5 | Throttle open test | PBIB0533E |
| 13 | Idle / 2,000 rpm | PBIB0527E / PBIB0528E |
| 14 | Idle / 2,000 rpm | PBIB0525E / PBIB0526E |
| 19 | Idle / about 2,000 rpm after >100 seconds | PBIB0050E / PBIB0520E |
| 22, 23, 41, 42 | Idle / 2,000 rpm | PBIB0529E / PBIB0530E |
| 24 | Below 3,600 rpm | PBIB0519E |
| 60, 61, 79, 80 | Idle / 2,000 rpm | PBIB0521E / PBIB0522E |
| 62 | Revving quickly to 2,000 rpm | PBIB1790E |
| 103 | Idle / 2,000 rpm | MBIB0053E / MBIB0054E |

The crank, cam, injector, ignition and tachometer rows explicitly note that pulse cycle changes with engine speed at idle. The table does not give enough information to assign a crank/cam trigger pattern or ignition dwell from these average voltages alone.

## Power, relay and ground summary

- ECM grounds: **1, 115, 116**. Switched-operation ECM supplies: **119, 120**; backup supply: **121**. Ignition-switch input: **109**.
- Relay control terminals: **104** throttle motor relay, **111** ECM relay/self shut-off, **113** fuel pump relay. Throttle motor relay supply enters at **3**; motor outputs are **4/5**.
- Approximately 5 V sensor supplies: **45** unspecified sensors, **46** refrigerant pressure, **47** throttle position, **90/91** APP 1/2.
- Sensor grounds are individually identified at **29, 30, 54, 56, 57, 66, 73, 74, 82, 83**. This table does not establish an external splice joining them.
- No fuse numbers/ratings, relay connector terminals, or physical ground-point designations appear in the excerpt.

## CONSULT-II Function (ENGINE) — beginning of section, EC-101

The final PDF page includes these diagnostic modes and their descriptions:

| Diagnostic test mode | Function |
|----------------------|----------|
| Work support | Guides the technician through device adjustments using CONSULT-II indications. |
| Self-diagnostic results | Reads and erases DTCs, first-trip DTCs, freeze-frame data and first-trip freeze-frame data. |
| Data monitor | Reads ECM input/output data. |
| Data monitor (SPEC) | Reads specification-related input/output data for basic fuel schedule, A/F feedback control value and other monitor items. |
| CAN diagnostic support monitor | Reads CAN communication transmit/receive diagnostic results. |
| Active test | Uses CONSULT-II to drive some actuators independently of ECM control and change selected parameters within a specified range. |
| Function test | Indicates when vehicle condition requires periodic maintenance. |
| DTC & SRT confirmation | Confirms system-monitoring test status and self-diagnosis status/results. |
| ECM part number | Reads the ECM part number. |

The visible footnote says erasing ECM memory clears emission-related diagnostic information; only its first bullet, **Diagnostic trouble codes**, is included before this excerpt ends. The continuation is not present in the supplied PDF.
