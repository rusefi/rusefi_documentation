# Suzuki 72 Superseal adapter — connection and configuration

Revision a is a passive adapter between a Suzuki 72-terminal connector (A: 31, B: 24, C: 17) and one 60-terminal Superseal connector. It routes 34 vehicle terminals to 32 Superseal contacts; A1/A2 share a ground contact and B5/B6 share a supply contact. The remaining vehicle terminals and free Superseal contacts have separate solder access pads.

[📄 Adapter schematics (PDF)](Hardware-files/adapters/Suzuki-72-adapter/Suzuki-72-superseal-adapter.pdf) | [🚗 Vehicle pinout](https://rusefi.com/docs/pinouts/suzuki72/) | [🔌 Adapter board pinout](https://rusefi.com/docs/pinouts/suzuki72-adapter/)

## Application and references

**Engine: Suzuki G13BB, with a 72-terminal ECU connector.** The reference assignment includes Samurai-specific notes. A tested vehicle/model-year list has not been established. A matching connector alone does not establish compatibility.

[Reference wiring and terminal tables — Jimny workshop manual, pages 614–619](https://www.carmanualsonline.info/suzuki-jimny-2005-3-g-service-workshop-manual/62) are comparison material. Their assignments differ from the linked vehicle pinout, including ground, backup supply and sensor circuits. Do not substitute the Jimny terminal table for the adapter pinout or assume a common jumper configuration for all 72-terminal ECUs.

## Contact numbering

Vehicle contacts use their bank letter first: **A1–A31, B1–B24, C1–C17**. Superseal contacts use the number first: **1A–34A and 1B–26B**. The letters A/B printed beside Superseal identify its 34- and 26-position sections. For example, vehicle A3 connects to Superseal 2A.

Use the connector image in each pinout to identify the viewing direction. The rear silkscreen table is organized by vehicle contact; its final column gives the Superseal destination or `PAD`. `PAD` means a separate solder access pad carrying that same vehicle contact label.

## Ground-selection solder jumpers

The default assembly has all four jumpers **open**. Select their state from the actual harness wiring, before connecting the ECU.

| Jumper | Connection when closed | Configuration |
|---|---|---|
| JP1 | Vehicle A3 / Superseal 2A to power ground | Close only when A3 is verified as power ground. |
| JP2 | Vehicle A3 / Superseal 2A to sensor ground | Close only when A3 is verified as sensor ground. |
| JP3 | Vehicle B7 / Superseal 13A to power ground | Close only when B7 is verified as ground. Other harness variants can use this terminal for a supply. |
| JP4 | Vehicle C16 / Superseal 21A to power ground | Close only when C16 is verified as ground. |

**Never close JP1 and JP2 together.** Each configurable terminal retains its direct Superseal connection when its jumper is open. When a ground jumper is closed, that Superseal contact is grounded; do not connect it to an ECU power output or supply.

Fixed connections are A1/A2 to power ground, A10 to sensor ground, A22 to the sensor 5 V supply, and B5/B6 to the main-relay supply. The adapter does not generate these supplies or provide actuator drivers.

## Variant-dependent signals

- **A23 / 12A and A24 / 11A:** independent CKP2 and CKP lines. Sensor type and polarity are not established by the reference assignment. Its note identifies a Spanish G13BB variant without a crank sensor.
- **A11 / 10A:** camshaft input, labelled `CMP 2` in the reference. Sensor interface type is unspecified.
- **B19 / 8B:** fuel-pump relay low-side control. **C6 / 10B:** fuel-pump relay high-side control, identified for Samurai only. These are separate circuits; the adapter neither joins them nor converts low-side control to high-side control.
- **Ignition 1 and 2:** the adapter passes these signals directly. Verify whether the harness uses smart coils or an external igniter before selecting the ECU output interface.
- **Unspecified functions:** blank reference entries are independent pass-throughs. `N/A` and explicitly unused entries terminate at individual access pads, without an assumed connection to ground or a supply.

## Free Superseal contacts

**23A–34A and 11B–26B** are not connected to vehicle terminals. Each has an individually labelled solder access pad for additional wiring. The 15B access pad is positioned to the right of the Superseal connector when viewed from the connector side.

The board has not been validated on a vehicle. Confirm connector fit, harness assignments and jumper configuration for the intended installation.
