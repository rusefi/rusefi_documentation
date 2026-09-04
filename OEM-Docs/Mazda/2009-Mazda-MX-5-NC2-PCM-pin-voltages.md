# 2009 Mazda MX-5 (NC2) 2.0 MZR — PCM pin voltages

Transcribed from [2009 NC2 Pin Voltages.pdf](2009%20NC2%20Pin%20Voltages.pdf) (workshop manual "Powertrain Management > Engine Control Module > Testing and Inspection > Pinout Values and Diagnostic Parameters", TERMINAL VOLTAGE TABLES, PCM INSPECTION [LF], 8 pages).

This is a terminal voltage chart, not a wiring diagram: for each PCM terminal it gives the signal name, what it connects to, the test condition, and the expected voltage measured at the wiring-harness-side connector. The manual's "Inspection item" column is nearly always "<component> / Related wiring harness" and is not reproduced.

Source note: "The PCM terminal voltage can vary with the conditions when measuring and changes due to aged deterioration on the vehicle, causing false diagnosis. Therefore determine comprehensively where the malfunction occurs among the input systems, output systems, and the PCM."

Connectors covered:

| Connector | Pins | Role |
|-----------|------|------|
| 1 (1A–1BH) | 60 | Vehicle side: power, grounds, relays, CAN, APP, MAF/IAT, switches |
| 2 (2A–2BH) | 60 | Engine side: injectors, coils, ETB, sensors, solenoids, generator |

Both connectors are 60-way, 4 rows of 15. Pins are lettered 1A–1Z, 1AA–1AZ, 1BA–1BH (same scheme on connector 2).

## Connector face (wiring-harness-side, looking into the harness connector)

Connector 2 (left in the drawing):

```
2BE 2BA 2AW 2AS 2AO 2AK 2AG 2AC 2Y 2U 2Q 2M 2I 2E 2A
2BF 2BB 2AX 2AT 2AP 2AL 2AH 2AD 2Z 2V 2R 2N 2J 2F 2B
2BG 2BC 2AY 2AU 2AQ 2AM 2AI 2AE 2AA 2W 2S 2O 2K 2G 2C
2BH 2BD 2AZ 2AV 2AR 2AN 2AJ 2AF 2AB 2X 2T 2P 2L 2H 2D
```

Connector 1 (right in the drawing):

```
1BE 1BA 1AW 1AS 1AO 1AK 1AG 1AC 1Y 1U 1Q 1M 1I 1E 1A
1BF 1BB 1AX 1AT 1AP 1AL 1AH 1AD 1Z 1V 1R 1N 1J 1F 1B
1BG 1BC 1AY 1AU 1AQ 1AM 1AI 1AE 1AA 1W 1S 1O 1K 1G 1C
1BH 1BD 1AZ 1AV 1AR 1AN 1AJ 1AF 1AB 1X 1T 1P 1L 1H 1D
```

Voltage abbreviations as in the source: `B+` battery voltage, `Below 1.0` near ground, `Approx. x.x` volts. "Wave profile" means the manual refers you to the oscilloscope waveform section of PCM INSPECTION [LF] instead of a DC voltage. Pins printed as `—` in the source are listed as "not used".

Footnotes from the source: `*1` AT only, `*2` MT only, `*3` with cruise control system.

## Connector 1 — vehicle harness (60-pin)

| Pin | Signal | Connected to | Test condition | Voltage (V) |
|-----|--------|--------------|----------------|-------------|
| 1A | not used | | | |
| 1B | Starter relay control | Starter relay | Under any condition | Below 1.0 |
| 1C | not used | | | |
| 1D *2 | Clutch operation | CPP switch | Clutch pedal depressed | Below 1.0 |
| 1D *2 | Clutch operation | CPP switch | Clutch pedal released | B+ |
| 1E | not used | | | |
| 1F | not used | | | |
| 1G | not used | | | |
| 1H | Fuel pump control | Fuel pump relay | Ignition switch ON (engine off) and a certain period has elapsed | B+ |
| 1H | Fuel pump control | Fuel pump relay | Cranking | Below 1.0 |
| 1H | Fuel pump control | Fuel pump relay | Idle | Below 1.0 |
| 1I | A/C | A/C relay | Engine running, A/C operating | Below 1.0 |
| 1I | A/C | A/C relay | Engine running, A/C not operating | B+ |
| 1J | Refrigerant pressure switch (middle) | Refrigerant pressure switch (middle) | Refrigerant pressure is more than the specification (switch is on) | Below 1.0 |
| 1J | Refrigerant pressure switch (middle) | Refrigerant pressure switch (middle) | Refrigerant pressure is less than the specification (switch is off) | B+ |
| 1K | not used | | | |
| 1L | not used | | | |
| 1M | Cooling fan control | Cooling fan relay No.1 | Cooling fan not operating | B+ |
| 1M | Cooling fan control | Cooling fan relay No.1 | Cooling fan operating | Below 1.0 |
| 1N | Cooling fan control | Cooling fan relay No.2 | Cooling fan not operating | B+ |
| 1N | Cooling fan control | Cooling fan relay No.2 | Cooling fan operating | Below 1.0 |
| 1O | not used | | | |
| 1P | MAF sensor ground | MAF sensor | Under any condition | Below 1.0 |
| 1Q | Main relay control | Main relay | Ignition switch ON | Below 1.0 |
| 1Q | Main relay control | Main relay | Ignition switch off and a certain period has elapsed | B+ |
| 1R | Cooling fan control | Cooling fan relay No.3 | Cooling fan not operating | B+ |
| 1R | Cooling fan control | Cooling fan relay No.3 | Cooling fan operating | Below 1.0 |
| 1S | not used | | | |
| 1T | not used | | | |
| 1U | EVAP system leak detection pump (pump) | EVAP system leak detection pump | Ignition switch ON | B+ |
| 1U | EVAP system leak detection pump (pump) | EVAP system leak detection pump | Idle | B+ |
| 1V | EVAP system leak detection pump (solenoid) | EVAP system leak detection pump | Ignition switch ON | B+ |
| 1V | EVAP system leak detection pump (solenoid) | EVAP system leak detection pump | Idle | B+ |
| 1W | not used | | | |
| 1X *2 | Neutral position | Neutral switch | Shift lever is at neutral position | Below 1.0 |
| 1X *2 | Neutral position | Neutral switch | Shift lever is not at neutral position | B+ |
| 1X *1 | Selector lever position | TR switch | Ignition switch ON, P or N position | Below 1.0 |
| 1X *1 | Selector lever position | TR switch | Ignition switch ON, except above | B+ |
| 1Y | not used | | | |
| 1Z | not used | | | |
| 1AA | not used | | | |
| 1AB | Brake switch No.1 | Brake switch No.1 | Brake pedal depressed | B+ |
| 1AB | Brake switch No.1 | Brake switch No.1 | Brake pedal released | Below 1.0 |
| 1AC | not used | | | |
| 1AD | not used | | | |
| 1AE | not used | | | |
| 1AF *3 | Brake switch No.2 | Brake switch No.2 | Brake pedal depressed | B+ |
| 1AF *3 | Brake switch No.2 | Brake switch No.2 | Brake pedal released | Below 1.0 |
| 1AG | not used | | | |
| 1AH | not used | | | |
| 1AI | CAN_L | CAN related module | Because this terminal is for CAN, no valid determination of terminal voltage is possible | |
| 1AJ | APP sensor No.2 power supply | APP sensor | Ignition switch ON | Approx. 5.0 |
| 1AK | MAF | MAF sensor | Ignition switch ON | Approx. 0.7 |
| 1AK | MAF | MAF sensor | Idle | Approx. 1.4 |
| 1AL | APP sensor No.1 power supply | APP sensor | Ignition switch ON | Approx. 5.0 |
| 1AM | CAN_H | CAN related module | Because this terminal is for CAN, no valid determination of terminal voltage is possible | |
| 1AN | not used | | | |
| 1AO | APP sensor No.1 | APP sensor | Ignition switch ON, accelerator pedal depressed | Approx. 3.9 |
| 1AO | APP sensor No.1 | APP sensor | Ignition switch ON, accelerator pedal released | Approx. 1.6 |
| 1AP | APP sensor No.2 | APP sensor | Ignition switch ON, accelerator pedal depressed | Approx. 3.4 |
| 1AP | APP sensor No.2 | APP sensor | Ignition switch ON, accelerator pedal released | Approx. 1.0 |
| 1AQ *3 | Cruise control switch | Cruise control switch | Ignition switch ON, ON OFF switch pressed in | Approx. 0 |
| 1AQ *3 | Cruise control switch | Cruise control switch | Ignition switch ON, CANCEL switch pressed in | Approx. 1.1 |
| 1AQ *3 | Cruise control switch | Cruise control switch | Ignition switch ON, SET/− switch pressed in | Approx. 3.1 |
| 1AQ *3 | Cruise control switch | Cruise control switch | Ignition switch ON, RES/+ switch pressed in | Approx. 4.2 |
| 1AQ *3 | Cruise control switch | Cruise control switch | Ignition switch ON, except above | Approx. 5.0 |
| 1AR | Sensor ground | MAF/IAT sensor | Under any condition | Below 1.0 |
| 1AS | APP sensor No.1 ground | APP sensor | Under any condition | Below 1.0 |
| 1AT | IAT | MAF/IAT sensor | Ignition switch ON, IAT is 20 °C {68 °F} | Approx. 2.4 |
| 1AT | IAT | MAF/IAT sensor | Ignition switch ON, IAT is 60 °C {140 °F} | Approx. 0.9 |
| 1AU | Refrigerant pressure switch (high, low) | Refrigerant pressure switch (high, low) | Ignition switch ON, A/C operating | Below 1.0 |
| 1AU | Refrigerant pressure switch (high, low) | Refrigerant pressure switch (high, low) | Ignition switch ON, A/C not operating | B+ |
| 1AV | APP sensor No.2 ground | APP sensor | Under any condition | Below 1.0 |
| 1AW | B+ | Main relay | Ignition switch off | Below 1.0 |
| 1AW | B+ | Main relay | Ignition switch ON | B+ |
| 1AX | Drive-by-wire relay control | Drive-by-wire relay | Under any condition | Below 1.0 |
| 1AY | Ignition switch on | Ignition switch | Ignition switch off | Below 1.0 |
| 1AY | Ignition switch on | Ignition switch | Ignition switch ON | B+ |
| 1AZ | Ground | Ground | Under any condition | Below 1.0 |
| 1BA | Back-up power supply | Battery (positive terminal) | Under any condition | B+ |
| 1BB | Ground | Ground | Under any condition | Below 1.0 |
| 1BC | not used | | | |
| 1BD | Ground | Ground | Under any condition | Below 1.0 |
| 1BE | B+ | Main relay | Ignition switch off | Below 1.0 |
| 1BE | B+ | Main relay | Ignition switch ON | B+ |
| 1BF | Drive-by-wire relay control | Drive-by-wire relay | Ignition switch ON, drive-by-wire system is malfunction | Below 1.0 |
| 1BF | Drive-by-wire relay control | Drive-by-wire relay | Ignition switch ON, drive-by-wire system is normal | B+ |
| 1BG | not used | | | |
| 1BH | Ground | Ground | Under any condition | Below 1.0 |

## Connector 2 — engine harness (60-pin)

| Pin | Signal | Connected to | Test condition | Voltage (V) |
|-----|--------|--------------|----------------|-------------|
| 2A | Throttle control (+) | Throttle body (throttle valve actuator) | Inspect using the wave profile | |
| 2B | Throttle control (−) | Throttle body (throttle valve actuator) | Inspect using the wave profile | |
| 2C | Purge control | Purge solenoid valve | Inspect using the wave profile | |
| 2D | not used | | | |
| 2E | OCV control | OCV | Inspect using the wave profile | |
| 2F | not used | | | |
| 2G | EGR valve #2 coil control | EGR valve (terminal A) | Idle (EGR control not operating) | B+ |
| 2H | EGR valve #4 coil control | EGR valve (terminal F) | Idle (EGR control not operating) | B+ |
| 2I *1 | Variable tumble control | Variable tumble solenoid valve | ECT 63 °C {145 °F} or more, or engine speed 3,750 rpm or more | B+ |
| 2I *1 | Variable tumble control | Variable tumble solenoid valve | ECT less than 63 °C {145 °F} and engine speed less than 3,750 rpm | Below 1.0 |
| 2J | Variable intake air control | Variable intake air solenoid valve | Ignition switch ON | Below 1.0 |
| 2J | Variable intake air control | Variable intake air solenoid valve | Engine speed less than 4,750 rpm | Below 1.0 |
| 2J | Variable intake air control | Variable intake air solenoid valve | Engine speed 4,750 rpm or more | B+ |
| 2K | EGR valve #1 coil control | EGR valve (terminal E) | Idle (EGR control not operating) | Below 1.0 |
| 2L | EGR valve #3 coil control | EGR valve (terminal B) | Idle (EGR control not operating) | B+ |
| 2M | not used | | | |
| 2N | not used | | | |
| 2O | not used | | | |
| 2P | CMP sensor ground | CMP sensor | Under any condition | Below 1.0 |
| 2Q | HO2S | HO2S | Idle after warm-up | Alternates between 0 and 1.0 |
| 2R | not used | | | |
| 2S | CMP | CMP sensor | Inspect using the wave profile | |
| 2T | Power steering pressure | PSP switch | Idle, steering wheel at straight ahead position | B+ |
| 2T | Power steering pressure | PSP switch | Idle, while turning steering wheel | Below 1.0 |
| 2U | Knocking (+) | KS | Ignition switch ON (use a digital voltmeter; an analog meter reads less than true voltage) | Approx. 4.3 |
| 2V | Knocking (−) | KS | Ignition switch ON (use a digital voltmeter; an analog meter reads less than true voltage) | Below 1.0 |
| 2W | CKP | CKP sensor | Inspect using the wave profile | |
| 2X | Ground | Shield wire | Under any condition | Below 1.0 |
| 2Y | not used | | | |
| 2Z | A/F sensor | A/F sensor | Idle after warm-up | Approx. 2.4 |
| 2AA | not used | | | |
| 2AB | CKP sensor ground | CKP sensor | Under any condition | Below 1.0 |
| 2AC | not used | | | |
| 2AD | A/F sensor | A/F sensor | Idle after warm-up | Approx. 2.8 |
| 2AE *1 | Variable tumble shutter valve monitor | Variable tumble shutter valve switch | Variable tumble shutter valve close | B+ |
| 2AE *1 | Variable tumble shutter valve monitor | Variable tumble shutter valve switch | Variable tumble shutter valve open | Below 1.0 |
| 2AF | not used | | | |
| 2AG | Manifold absolute pressure | MAP sensor | Ignition switch ON (at sea level) | Approx. 4.1 |
| 2AG | Manifold absolute pressure | MAP sensor | Idle | Approx. 1.2 |
| 2AH | ECT | ECT sensor | Ignition switch ON, ECT is 20 °C {68 °F} | Approx. 3.0 |
| 2AH | ECT | ECT sensor | Ignition switch ON, ECT is 80 °C {176 °F} | Approx. 0.9 |
| 2AI | Generator field coil control | Generator (terminal D) | Inspect using the wave profile | |
| 2AJ | Generator output voltage | Generator (terminal P) | Inspect using the wave profile | |
| 2AK | Throttle valve opening angle No.1 | Throttle body (TP sensor) | Ignition switch ON, accelerator pedal depressed | Approx. 4.5 |
| 2AK | Throttle valve opening angle No.1 | Throttle body (TP sensor) | Ignition switch ON, accelerator pedal released | Approx. 0.5 |
| 2AL | Throttle valve opening angle No.2 | Throttle body (TP sensor) | Ignition switch ON, accelerator pedal depressed | Approx. 0.5 |
| 2AL | Throttle valve opening angle No.2 | Throttle body (TP sensor) | Ignition switch ON, accelerator pedal released | Approx. 4.5 |
| 2AM | Constant voltage | CMP sensor | Ignition switch ON | B+ |
| 2AN | not used | | | |
| 2AO | Constant voltage (Vref) | Throttle body (TP sensor) | Ignition switch ON | Approx. 5.0 |
| 2AP | Sensor ground | Throttle body (TP sensor) | Under any condition | Below 1.0 |
| 2AQ | Constant voltage | CKP sensor | Ignition switch ON | B+ |
| 2AR | not used | | | |
| 2AS | not used | | | |
| 2AT | IGT4 | Ignition coil (No.4 cylinder) | Inspect using the wave profile | |
| 2AU | Constant voltage (Vref) | MAP sensor | Ignition switch ON | Approx. 5.0 |
| 2AV | MAP sensor ground | MAP sensor | Under any condition | Below 1.0 |
| 2AW | IGT2 | Ignition coil (No.2 cylinder) | Inspect using the wave profile | |
| 2AX | IGT3 | Ignition coil (No.3 cylinder) | Inspect using the wave profile | |
| 2AY | ECT sensor ground | ECT sensor | Under any condition | Below 1.0 |
| 2AZ | Fuel injection (#4) | Fuel injector No.4 | Inspect using the wave profile | |
| 2BA | IGT1 | Ignition coil (No.1 cylinder) | Inspect using the wave profile | |
| 2BB | Fuel injection (#1) | Fuel injector No.1 | Inspect using the wave profile | |
| 2BC | Fuel injection (#2) | Fuel injector No.2 | Inspect using the wave profile | |
| 2BD | Fuel injection (#3) | Fuel injector No.3 | Inspect using the wave profile | |
| 2BE | HO2S heater control | HO2S heater | Heavy load (heater control not operating) | B+ |
| 2BF | not used | | | |
| 2BG | A/F sensor heater control | A/F sensor heater | Inspect using the wave profile | |
| 2BH | HO2S ground | HO2S | Under any condition | Below 1.0 |

## Notes

- Pin 1X is dual-listed in the source: on MT (*2) it is the neutral switch input, on AT (*1) it is the TR (transmission range) switch input.
- Terminals 1AI (CAN_L) and 1AM (CAN_H) have no voltage specification; the source says only that no valid determination is possible because they are CAN.
- Sensor supplies: the CKP sensor (2AQ) and CMP sensor (2AM) are fed B+ ("constant voltage"), while the TP sensor (2AO), MAP sensor (2AU) and both APP sensors (1AJ, 1AL) get approx. 5.0 V (Vref). The 2.0 MZR in the NC uses Hall-type CKP/CMP sensors, not VR.
- The EGR valve is a stepper motor (four coils, PCM pins 2G/2H/2K/2L to EGR valve terminals A/F/E/B).
- The variable tumble pins (2I, 2AE) are AT-only; the variable intake air solenoid (2J) switches at 4,750 rpm.
- The manual's "Inspection item" column (last column in the source) was dropped; it lists, for every populated pin, the connected component plus "Related wiring harness", with pin 1AW/1BE additionally listing "Battery".
- All 120 terminals were legible; no cells were left blank due to readability.
