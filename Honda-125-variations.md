# Honda 125 pin ECU variations

Honda's **A31 + B24 + C22 + D17 + E31 = 125-position** connector family has several different pin assignments. The [Hellen 125 Honda K](Hellen-125-Honda-K.md) reference wiring is the **2002–04 RSX**. A matching connector does not establish matching wiring: later RSX, Civic D17, Element, TSX, S2000 and Jazz/Fit diagrams move signals, grounds and actuator outputs between cavities.

The comparisons below come from the local OEM pin lists and wiring diagrams linked in the transcription catalogue. They describe the vehicle wiring, not a tested adapter conversion or a board jumper procedure. Check the exact vehicle, transmission and emissions branch against the [board schematic](Hellen-125-Honda-K.md) or [Proteus adapter schematic](Proteus-Honda125.md).

## Transcribed source catalogue

Each companion has connector tables with ECU pin, wire colour, printed function and destination, plus source-specific circuit notes. The RSX lists explicitly document all 125 positions for each year group. Wiring diagrams for the other vehicles document populated or labelled terminals; omitted pins must not be treated as universally unused.

| Vehicle / source scope | Searchable transcription | Local source coverage |
|---|---|---|
| Acura RSX, 2002–04 and 2005–06 | [Both 125-position lists](OEM-Docs/Honda/2002-2006-Acura-RSX-ECM-pinouts.md) | Two ECM/PCM pin-list images; related 2003, 2005 and 2006 engine diagrams linked with their base/Type S and transmission qualifications |
| Honda Civic Si 2.0L, 2003–05 | [ECM pinout](OEM-Docs/Honda/2003-2005-Honda-Civic-Si-2.0L-ECM-pinout.md) | Three PDFs, each containing the same three circuit figures, 157338–157340 |
| Honda Civic 1.7L, 2004, except HX/GX | [ECM/PCM pinout](OEM-Docs/Honda/2004-Honda-Civic-1.7L-Except-HX-GX-ECM-pinout.md) | 2004 Civic PDF, Figs 1–3; DX/LX/EX and A/T/M/T branches |
| Honda Civic GX 1.7L, 2004 | [PCM pinout](OEM-Docs/Honda/2004-Honda-Civic-GX-1.7L-PCM-pinout.md) | Same PDF, Figs 4–6; gaseous fuel and CVT |
| Honda Civic HX 1.7L, 2004, automatic | [CVT PCM pinout](OEM-Docs/Honda/2004-Honda-Civic-HX-1.7L-CVT-PCM-pinout.md) | Same PDF, Figs 7–9 |
| Honda Civic HX 1.7L, 2004, manual | [M/T ECM pinout](OEM-Docs/Honda/2004-Honda-Civic-HX-1.7L-MT-ECM-pinout.md) | Same PDF, Figs 10–12 |
| Honda Element 2.4L, 2003 | [ECM/PCM pinout](OEM-Docs/Honda/2003-Honda-Element-2.4L-ECM-pinout.md) | Three images, combined image and supplemental cooling diagram |
| Honda Element 2.4L, 2008 | [ECM/PCM pinout](OEM-Docs/Honda/2008-Honda-Element-2.4L-ECM-pinout.md) | Four images, 269519–269522 |
| Honda Accord 2.4L, 2004 | [ECM/PCM pinout](OEM-Docs/Honda/2004-Honda-Accord-2.4L-ECM-pinout.md) | Four PDF figures; DX selection with SULEV/non-SULEV, transmission and cruise alternatives |
| Acura TSX 2.4L, 2005 | [ECM/PCM pinout](OEM-Docs/Honda/2005-Acura-TSX-2.4L-ECM-pinout.md) | Four images, 190037–190040 |
| Acura TSX 2.4L, 2007 | [ECM/PCM pinout](OEM-Docs/Honda/2007-Acura-TSX-2.4L-ECM-pinout.md) | Four images, 255463–255466 |
| Honda S2000, files labelled 2006 | [ECM pinout and test conditions](OEM-Docs/Honda/2006-Honda-S2000-ECM-pinout.md) | Five terminal-table images covering A/B/E; C/D are outside the excerpt |
| Honda Jazz GD 1.5L L15A1, source labelled 2002–08 | [ECM pinout](OEM-Docs/Honda/2002-2008-Honda-Jazz-GD-L15A1-ECM-pinout.md) | Seven-page EMM002321 diagram stored as `2005-honda-fit.pdf`; M/T/CVT branches |
| Honda Fit 1.5L, 2008 | [ECM/PCM pinout](OEM-Docs/Honda/2008-Honda-Fit-1.5L-ECM-pinout.md) | Four PDF figures, 269534–269537; USA/Canada, A/T/M/T and Sport branches |

This catalogue covers the 125-position engine-control pinout sources in the local Honda collection. Separate body-system diagrams and capture logs remain supplemental references. Other connector families are outside this comparison: for example, the [2001 S2000](OEM-Docs/Honda/2001-s2000-1.png) includes A32, the [2008 Civic](OEM-Docs/Honda/2008-civic-dx-1.png) and [2010 Civic](OEM-Docs/Honda/2010-civic-dx-1.png) have A44, and the [2008 Accord](OEM-Docs/Honda/2008-accord-2.4-1.png) and [2010 Accord](OEM-Docs/Honda/2010-accord-2.4-1.png) have A49. They are not the A31/B24/C22/D17/E31 layout.

## RSX: concrete 2002–04 versus 2005–06 changes

These assignments are transcribed from the [two RSX terminal lists](OEM-Docs/Honda/2002-2006-Acura-RSX-ECM-pinouts.md). A change in one row does not imply that the circuit can be converted by moving that wire alone.

| Circuit | 2002–04 RSX | 2005–06 RSX |
|---|---|---|
| Knock input | A9 | A1 |
| Logic grounds LG2 / LG1 | A23 / A24 | A8 / A9 |
| Sensor returns SG2 / SG1 | A10 / A11 | A23 / A24 |
| Ignition coils 4 / 3 / 2 / 1 | A27 / A28 / A29 / A30 | A13 / A14 / A15 / A16 |
| Cam signals A / B | A25 / A26 | A19 / A6 |
| Throttle position | A15 | A29 |
| MAP | A19 | A30 |
| Primary A/F signal + / − | A6 / A16 | A31 / A28 |
| Primary A/F heater | A1 and A22 | A10; A22 unassigned in list |
| VTEC solenoid | B15 | B6 |
| VTEC pressure switch | B9 | B11 |
| Cooling fan control | B6 | E12 |
| Fuel-pump relay control | E1 | E17 |
| Secondary O2 signal / heater | E2 / E6 | E20 / E21 |
| Multiplex SEFMJ | E24 | E13 |
| Tachometer NEP | E26 | E25 |
| VSS output | E25, A/T | E26 |
| Reverse lockout, Type S | B7 | E2; A/T uses E2 for interlock instead |
| Mainshaft-speed input, A/T | C7 | C19 |
| Countershaft-speed input, A/T | C15 | A18 |
| Clutch pressure solenoid A positive, A/T | B14 | C1 |
| Clutch pressure solenoid B positive, A/T | B16 | C15 |
| Clutch pressure solenoid C positive, A/T | B24 | C7 |
| Neutral-position input, A/T | D4 | C20 |

The ground changes are particularly consequential: **A9 is a knock input in the early list and a logic ground in the later list**. A23/A24 change from logic grounds to sensor returns. C1 changes from the negative side of clutch solenoid A to its positive connection. Shared cavities therefore do not even guarantee the same electrical role.

## Model year does not identify the assignment

The [2003 Element](OEM-Docs/Honda/2003-Honda-Element-2.4L-ECM-pinout.md) already has coils on A13–A16, knock on A1, VTEC on B6/B11, fan control on E12 and fuel-pump control on E17. Those resemble the later RSX positions, even though the Element source is from 2003. Its multiplex wire is E13, and its sensor return A23 is GRN/BLK rather than the RSX list's GRN/YEL.

Conversely, all three [2003–05 Civic Si 2.0L diagrams](OEM-Docs/Honda/2003-2005-Honda-Civic-Si-2.0L-ECM-pinout.md) retain coils on A27–A30, knock on A9, VTEC on B15/B9, fan control on B6, fuel-pump control on E1 and multiplex on E24. Do not apply the 2005 RSX changes to a 2005 Civic Si by year alone.

## Electronic throttle and communication

| Source | Pedal signals | Serial lines to separate throttle controller | Other distinguishing assignments |
|---|---|---|---|
| [2005 TSX](OEM-Docs/Honda/2005-Acura-TSX-2.4L-ECM-pinout.md) / [2007 TSX](OEM-Docs/Honda/2007-Acura-TSX-2.4L-ECM-pinout.md) | A25 / A26 | B19 SEFD / B20 SEDF | D15 throttle-controller relay; B15 A/T engine mount solenoid |
| [2008 Element](OEM-Docs/Honda/2008-Honda-Element-2.4L-ECM-pinout.md) | A25 / A26 | B19 SEFD / B20 SEDF | D15 STS RLY, a starting-system reference |
| [S2000 table labelled 2006](OEM-Docs/Honda/2006-Honda-S2000-ECM-pinout.md) | A25 APSB / A26 APSA | B19 SEFD / B20 SEDF | E1 ECT2; table gives voltage/test conditions |
| [2008 Fit](OEM-Docs/Honda/2008-Honda-Fit-1.5L-ECM-pinout.md) | D5 APSB / D6 APSA | D13 SEFD / D14 SEDF | D15 throttle-controller relay; D12/E5 pedal supplies and D10/E4 return circuits |

These sources use a separate throttle actuator controller. Its motor and throttle-position wiring must be read at that controller; B19/B20 or D13/D14 are communication lines, not the motor outputs.

**E24 also changes role:** it is multiplex SEFMJ in the early RSX and Civic Si diagrams, but CAN low in the TSX, 2008 Element, S2000 and 2008 Fit references. The latter sources pair it with CAN high on E11. Colours differ even where the functions agree: the S2000 table prints **E11 RED / E24 WHT**, while the TSX, 2008 Element and 2008 Fit print **E11 WHT / E24 RED**.

The TSX also changes within the family: the 2005 diagram connects **E23 K-LINE** to DLC pin 7, whereas the 2007 diagram leaves E23 unwired and shows DLC pin 7 on the MICU circuit. E25 NEP is explicitly a **NOT USED** stub in 2005 and is not wired in 2007. The 2007 source adds ECT2 at E1.

## Same cavities, different sensors and transmission circuits

| Positions | Source-specific examples |
|---|---|
| C21 / C22 | [2004 Accord SULEV](OEM-Docs/Honda/2004-Honda-Accord-2.4L-ECM-pinout.md) and [2008 Element](OEM-Docs/Honda/2008-Honda-Element-2.4L-ECM-pinout.md): MAF circuit VG− / VG+. [2008 Fit](OEM-Docs/Honda/2008-Honda-Fit-1.5L-ECM-pinout.md): transmission reverse / park inputs. |
| C1 / C15 | [2005 TSX](OEM-Docs/Honda/2005-Acura-TSX-2.4L-ECM-pinout.md): clutch pressure solenoids A / B. [2008 Fit](OEM-Docs/Honda/2008-Honda-Fit-1.5L-ECM-pinout.md): B / A. |
| E1 | Early RSX/Civic Si: fuel-pump relay control. [2004 Civic GX](OEM-Docs/Honda/2004-Honda-Civic-GX-1.7L-PCM-pinout.md): injector control module relay. S2000, 2007 TSX, 2008 Element and 2008 Fit: second coolant-temperature sensor. |
| B15 | Early RSX/Civic Si and VTEC-equipped D17: VTEC solenoid. 2004 Accord and 2005/07 TSX A/T: engine mount control solenoid. |
| A8 | Early base RSX: intake manifold valve position switch. [2004 Civic 1.7L except HX/GX](OEM-Docs/Honda/2004-Honda-Civic-1.7L-Except-HX-GX-ECM-pinout.md): VCCR, a third knock-sensor connection. Later RSX/Element/TSX: logic ground LG2. |

The [2004 Civic 1.7L except HX/GX diagram](OEM-Docs/Honda/2004-Honda-Civic-1.7L-Except-HX-GX-ECM-pinout.md) moves the **secondary O2 signal/heater from A25/A14 on DX/LX to E2/E6 on EX**. It also has EGR position/control on A13/B14, unlike the Accord/Fit B12/B16 assignments. Its A/T speed sensors use two-wire pairs C7/C21 and C15/C14; those terminals cannot be inferred from later three-wire sensor diagrams.

The HX [CVT](OEM-Docs/Honda/2004-Honda-Civic-HX-1.7L-CVT-PCM-pinout.md) and [manual](OEM-Docs/Honda/2004-Honda-Civic-HX-1.7L-MT-ECM-pinout.md) sources show **three exhaust sensors**: primary A/F at A6/A16 with A1/A22 heater connections, secondary HO2S at A25/A14, and third HO2S at E2/E6. In the CVT drawing, A18 is VEL2, C7 NDR, C15 NDN and C22 VEL1. B7/C1, B16/C8 and B24/C16 are paired CVT solenoid circuits. Those CVT circuits are absent from the manual figures.

The [GX source](OEM-Docs/Honda/2004-Honda-Civic-GX-1.7L-PCM-pinout.md) routes B2–B5 to a **separate injector control module**, with A17 INJMODE. It also has fuel pressure/temperature inputs E14/E17, tank pressure/temperature inputs E19/E21 and a fuel-regulator pressure switch at E28. Treating it as a gasoline Civic pinout loses these distinctions.

The [Jazz GD L15A1 diagram](OEM-Docs/Honda/2002-2008-Honda-Jazz-GD-L15A1-ECM-pinout.md) retains early coil positions A27–A30 and EGR A13/B14. Its A18 speed signal comes from a vehicle-speed sensor with M/T or the ABS unit with CVT. It must not be merged with the later [2008 Fit](OEM-Docs/Honda/2008-Honda-Fit-1.5L-ECM-pinout.md) electronic-throttle and transmission assignments just because both sources concern a 1.5L Jazz/Fit.

## Reading the source material

- **NC is a speed-sensor signal name** at wired Honda ECU terminals; it does not mean “not connected.”
- The 2005–06 RSX list labels B22 `IMT (IMRC) VPS`, but the circuit diagrams connect it to the IMRC solenoid; A8 early / A11 late is the position switch. The earlier list prints B22 `IMT (IMRC)` without VPS. The transcription retains the printed labels and traced destinations, and also flags the shared list's C8 entry that is absent from the later circuit drawings.
- The 2003 Element diagram prints E19 `SHO2S` and E20 `SO2SHTC`, although their wires lead to the EVAP vent valve and secondary O2 signal respectively. E21 is the secondary heater. The companion flags this discrepancy explicitly.
- The file named `2003-acura-rsx-type-R.pdf` prints **Type S**. The file named `2005-honda-fit.pdf` prints **Jazz GD L15A1 2002–2008**. The 2004 Civic PDF's selected GX heading does not apply to all twelve figures.
- Connector-face drawings and wire-side drawings are not interchangeable views. The S2000 tables explicitly specify the wire side of female terminals; the RSX list does not state its viewing direction and contains repeated numerals in the C connector face picture.

See [connector part numbers](OEM-connectors.md#125-pin) and the [Honda OEM vault](Vault-Of-Honda-OEM.md) for the associated hardware and source collection.
