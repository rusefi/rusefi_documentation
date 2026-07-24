# Proteus Manual

Our older fully-featured larger ECU available at [💲rusEFI Store💲](https://www.shop.rusefi.com/shop/p/spring-blade-cyy7n)

🔴 Community support ONLY 🔴 [Support Statement](Support) 🔴 [Facebook group](https://www.facebook.com/groups/rusEfi) 🔴 [Discord](Discord) 🔴

New to rusEFI? [Start here](Home).

[📦Proteus Release Software](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_proteus_f7.zip)
[🧪Proteus Beta Snapshot](https://rusefi.com/build_server/rusefi_bundle_proteus_f7.zip)
[ℹ️Release vs Snapshotℹ️](Release-Snapshot-Latest-firmware)

## Specs

* [⏩ Interactive Pinout ⏪](https://rusefi.com/docs/pinouts/proteus/)
* One of the eight [universal units we offer](Hardware)
* 16x 4A low-side drivers
* 12x 5v ignition (or general purpose) outputs
* Dual H-bridges for electronic throttle (also supports stepper idle valve!)
* 4x 12v 3A high-side outputs
* 11x Analog voltage inputs
* 4x Analog temperature (5v pullup) inputs
* 2x VR crank/cam/vehicle speed inputs
* 6x hall cam/crank or digital input
* dual 1 mbit/s CAN bus
* Full operation from 6-24v supply
* Limited operation from 4-6v
* Dual 5v sensor supplies, 150mA each, fully protected
* Dual protected 12v external sensor supply
* free open source firmware - support us at https://www.patreon.com/rusefi

## Legacy Revisions Software

Legacy Proteus 0.3-0.5 and 0.7 (STM32F4) [📦Release F4](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_proteus_f4.zip) [🧪Snapshot F4](https://rusefi.com/build_server/rusefi_bundle_proteus_f4.zip)

## Wiring & Pinout

Proteus has three connectors: a 23-pin connector (inputs, CAN, and low-voltage power) and two 35-pin connectors, one commonly called "black35" (outputs: injectors, ignition, high-side) and one "white35" (sensor power, analog and thermistor inputs, knock).

> The tables below reflect the current firmware's pin definitions. Always cross-check against the [Interactive Pinout tool](https://rusefi.com/docs/pinouts/proteus/), which is generated from the same source and always up to date, and against your specific board revision before wiring. See "Legacy Revisions" above — very old Proteus revisions (0.3-0.7) may differ.

### 23-pin connector

| Pin | Function | Wire Color |
|---|---|---|
| 1 | Digital input 2 — Hall-type CAM trigger/switch input | Green |
| 2 | Digital input 3 — VSS trigger/switch input | White |
| 3 | Digital input 4 — Start button trigger/switch input | Grey |
| 4 | VR input 2, positive | Blue |
| 5 | VR input 1, positive | Blue |
| 6 | ETB 1, negative | White |
| 7 | ETB 1, positive | Blue |
| 8 | ETB 2, negative | White |
| 9 | Digital input 5 — trigger/switch input | — |
| 10 | Digital input 1 — trigger/switch input | Yellow |
| 11 | Digital input 6 — trigger/switch input | — |
| 12 | VR input 2, negative | White |
| 13 | VR input 1, negative | White |
| 14 | Ground | — |
| 15 | ETB 2, positive | Blue |
| 16 | CAN1 Low | Blue |
| 17 | CAN1 High | Green |
| 18 | Battery sense — connect to the output of your ignition switch | — |
| 19 | Power GND | — |
| 20 | Power GND | — |
| 21 | CAN2 Low | Blue |
| 22 | CAN2 High | Green |
| 23 | Power supply from main relay, for the ETB drivers and high-side outputs | — |

### 35-pin connector ("black35") — outputs

| Pin | Function | Wire Color |
|---|---|---|
| 1 | High-side output 2 | — |
| 2 | High-side output 1 | — |
| 3 | Injector #1 / low-side output 1 | Green |
| 4 | Injector #3 / low-side output 3 | Blue |
| 5 | Injector #5 / low-side output 5 | — |
| 6 | Injector #6 / low-side output 6 | — |
| 7 | Injector #7 / low-side output 7 | — |
| 8 | Injector #9 / low-side output 9 | — |
| 9 | Injector #11, or radiator fan relay / low-side output 11 | White |
| 10 | Low-side output 13 | — |
| 11 | Low-side output 14, or starter | Yellow |
| 12 | Low-side output 15 | White |
| 13 | High-side output 3 | — |
| 14 | High-side output 4 | — |
| 15 | Injector #2 / low-side output 2 | White |
| 16 | Injector #4 / low-side output 4 | Orange/Brown |
| 17 | Power GND | — |
| 18 | Power GND | — |
| 19 | Injector #8 / low-side output 8 | — |
| 20 | Injector #10, or fuel pump relay / low-side output 10 | White |
| 21 | Injector #12, or main relay / low-side output 12 | Grey |
| 22 | Ignition cylinder 3 | Blue |
| 23 | Low-side output 16 | Yellow |
| 24 | Power GND | — |
| 25 | Ignition cylinder 12 | — |
| 26 | Ignition cylinder 11 | — |
| 27 | Ignition cylinder 10 | — |
| 28 | Ignition cylinder 9 | — |
| 29 | Ignition cylinder 8 | — |
| 30 | Ignition cylinder 7 | — |
| 31 | Ignition cylinder 6 | — |
| 32 | Ignition cylinder 5 | — |
| 33 | Ignition cylinder 4 | Orange/Brown |
| 34 | Ignition cylinder 2 | White |
| 35 | Ignition cylinder 1 | Green |

### 35-pin connector ("white35") — sensors

| Pin | Function | Wire Color |
|---|---|---|
| 1 | Sensor GND | — |
| 2 | Sensor GND | — |
| 3 | Sensor GND | — |
| 4 | Sensor GND | — |
| 5 | Sensor GND | — |
| 6 | Sensor GND | — |
| 7 | Sensor GND | — |
| 8 | Sensor GND | — |
| 9 | Analog +5V sensor supply #1 | — |
| 10 | Analog +5V sensor supply #2 | — |
| 11 | 12V protected output for sensors | — |
| 12 | 12V protected output for sensors | — |
| 13 | Analog voltage input #1 — MAP | Yellow |
| 14 | Analog voltage input #3 — TPS2 / TPS1_2 | Blue |
| 15 | Analog voltage input #5 | — |
| 16 | Analog voltage input #7 (PPS2) | Orange/Brown |
| 17 | Analog voltage input #9 (PPS) | White |
| 18 | Analog voltage input #11 | — |
| 19 | Analog thermistor input #1 | — |
| 20 | Analog thermistor input #3 (CLT) | Grey |
| 21 | Analog +5V sensor supply #1 | — |
| 22 | Analog +5V sensor supply #2 | — |
| 23 | Sensor GND | — |
| 24 | Analog voltage input #2 — TPS | Green |
| 25 | Analog voltage input #4 | — |
| 26 | Analog voltage input #6 | — |
| 27 | Analog voltage input #8 | — |
| 28 | Analog voltage input #10 | — |
| 29 | Sensor GND | — |
| 30 | Intake air temperature (IAT) | Blue |
| 31 | Analog thermistor input #4 | — |
| 32 | Analog +5V sensor supply #1 | — |
| 33 | Analog +5V sensor supply #2 | — |
| 34 | Knock input 1 | — |
| 35 | Knock input 2 | — |

For a per-connector wiring diagram and connector part numbers, also see [List of I/O](https://github.com/mck1117/proteus#proteus).

More technical details see [Proteus](Proteus).

### Technical sources

- Connector pin definitions: `firmware/config/boards/proteus/connectors/black23.yaml`, `black35.yaml`, `white35.yaml` in the rusEFI firmware repository. These are the same definitions used to generate the Interactive Pinout tool and TunerStudio pin names. Low-level MCU/GPIO pin assignments (used by firmware developers) are omitted here since they are not needed for wiring a harness; see `generated_board_pin_names.h` in the same directory if you need them.
