# rusEFI ECU Comparison

Every rusEFI universal ECU runs the same open-source firmware. What differs between them is how much engine you can attach, and what is already fitted on the board. This page compares all eight side by side.

For prices, store links and a short description of each board, see the [Hardware overview](Hardware). Unfamiliar abbreviations are spelled out in [Acronyms and Terminology](Vault-Of-Terminology).

## Which one do I need?

- **1 or 2 cylinders, or a small batch-fire 4** — [nano](nano). Inductive ignition only, not CDI compatible.
- **Up to 6 cylinders, sequential** — [uaEFI](uaEFI). Wideband, knock and barometric sensing already on the board.
- **6 to 8 cylinders in a sealed or automotive-connector package** — [uaEFI 121](uaefi121) or [super-uaEFI](super-uaEFI). Same core as uaEFI.
- **10 to 12 cylinders, dual electronic throttle** — [Huge](rusEFI-Huge) or [Proteus](Proteus-Manual). Proteus adds an IP68 case.
- **4 cylinder gasoline direct injection** — [Power4GDI](Power4GDI).

## Engine capability

| | [nano](nano) | [uaEFI](uaEFI) | [uaEFI 121](uaefi121) | [super-uaEFI](super-uaEFI) | [Huge](rusEFI-Huge) | [Power4GDI](Power4GDI) | [Proteus](Proteus-Manual) | [microRusEFI](microRusEFI-Manual) |
|---|---|---|---|---|---|---|---|---|
| Max recommended engine | 1-2 cyl, 4 cyl batch | 1-6 cyl | 6 cyl dual throttle, 8 cyl wasted | 6 cyl dual throttle, 8 cyl wasted | 12 cyl | 4 cyl GDI | 12 cyl | 4 cyl |
| Injector channels | via 6 low-side | 6 sequential, up to 8 | 6 sequential, up to 8 | 6 sequential, up to 8 | 12 high-Z | 4 ƒ | via 16 low-side | 4 high-Z |
| Ignition channels | smart or dumb coils | 6 sequential | smart coils | smart coils | 12 logic level | 4 ƒ | 12 x 5 V | 4 x 5 V logic |
| On-board igniters (IGBT) | — | expandable | expandable | expandable | — | — | — | — |

## Inputs

| | nano | uaEFI | uaEFI 121 | super-uaEFI | Huge | Power4GDI | Proteus | microRusEFI |
|---|---|---|---|---|---|---|---|---|
| VR (crank / cam) | 1 | 2 | 2 | 2 | 3 | **none** ƒ | 2 | 1, VR or Hall |
| Hall / digital | — | 3 | 3 ƒ | 3 ƒ | 5 | 1 ƒ | 6 | 1 |
| Analog inputs | 5 | 9 + 2 | 7 + 2 | 7 + 2 | 13 + 2 temp | 6 ƒ | 11 + 4 temp | 10 + 4 thermistor |
| [Knock sensing](knock-sensing) | — | yes | yes | yes | dual channel | yes ƒ | yes | — |
| Flex fuel input | — | yes | — | — | — | — | — | — |

## Outputs

| | nano | uaEFI | uaEFI 121 | super-uaEFI | Huge | Power4GDI | Proteus | microRusEFI |
|---|---|---|---|---|---|---|---|---|
| Low-side drivers | 6 total | 4 above 1 A, 6 on newer | 6 additional | 6 additional | 35 ƒ | 4 | 16 x 4 A | 2 high-current, 4 low-current |
| High-side drivers | — | — | 1 x 2 A | 1 x 2 A | — | — | 4 x 12 V 3 A | — |
| [Electronic throttle (DBW)](Electronic-Throttle-Body-Configuration-Guide) | — | 2 x 6 A H-bridge | dual | dual | 4 H-bridges | 1 DC output ƒ | dual | single |
| Stepper idle valve | — | yes | yes ƒ | yes ƒ | yes ƒ | — ƒ | yes | yes ƒ |
| Tachometer output | dedicated pin | configurable | configurable | configurable | configurable | configurable | configurable | configurable |

No board sets a default tachometer pin in firmware, so on every unit except nano the tach signal is assigned to a suitable spare output. See the [Hardware FAQ](Hardware) for choosing the right kind of output for your gauge.

## On board

| | nano | uaEFI | uaEFI 121 | super-uaEFI | Huge | Power4GDI | Proteus | microRusEFI |
|---|---|---|---|---|---|---|---|---|
| [Wideband controller](rusEFI-Wideband-Controller) | — | LSU 4.9 | dual LSU 4.9 | dual LSU 4.9 | dual LSU 4.9 | LSU 4.9 | — | — |
| Barometric sensor | — | yes | yes | yes | yes | — | — | — |
| [MAP sensor](MAP-Sensor) | — | optional | optional | optional | optional | optional | — | — |
| EGT input | — | optional | optional | optional | — | — | — | — |
| SD card logging | yes | yes | fixed | removable | yes | yes ƒ | yes ƒ | yes ƒ |
| [CAN bus](CAN) | 1 | up to 2 | 1 ƒ | 1 ƒ | dual | 1 ƒ | dual 1 Mbit/s ƒ | 1 ƒ |
| [Bluetooth](Bluetooth) | — | optional JDY-33 | — | — | optional JDY-33 | — | — | — |

## Physical

| | nano | uaEFI | uaEFI 121 | super-uaEFI | Huge | Power4GDI | Proteus | microRusEFI |
|---|---|---|---|---|---|---|---|---|
| Connector | Superseal 26 pin | Molex Mini-Fit Jr, 68 circuits | TE 121 pin | Superseal 120 pin | Superseal 120 pin | Superseal 68 pin | TE Ampseal 93 pin | 48 pin |
| Enclosure | — | — | metal | — | — | — | IP68 waterproof | — |
| Schematics published | — | repo and gerbers | no ƒ | PDF | PDF and iBOM | PDF | repo | repo |
| Released | 2025 | 2023 | 2023 | 2023 | 2023 | 2024 | 2020 | 2019 |

## How to read this

- **yes** or a number means the feature is on the board as sold.
- **optional** means the part is not fitted by default and has to be soldered on.
- **—** means the board does not have it.
- **ƒ** marks a value established from the firmware rather than from a board page, because the board page does not state it. Each one is listed below.

## Sources

Values come from the board's own page on this wiki, from the hardware table on [Hardware](Hardware), or from that board's configuration in the rusEFI firmware. Nothing here comes from marketing material or a third-party site.

Values marked **ƒ** and where they came from:

| Value | Source in `rusefi/rusefi` |
|---|---|
| uaEFI 121 has CAN | `boards/hellen/uaefi121/connectors/uaefi121.yaml` — pin 82a CAN bus high, pin 83a CAN bus low |
| Power4GDI has CAN | `boards/hellen/alphax-4K-GDI/connectors/gdi-B.yaml` — pin 15B CANH, pin 16B CANL |
| super-uaEFI has CAN | `boards/hellen/super-uaefi/board_configuration.cpp` — `canTxPin = MM100_CAN_TX` |
| microRusEFI has one CAN | `boards/microrusefi/board_configuration.cpp` — `canTxPin` set, `can2TxPin` absent |
| Proteus has two CAN | `boards/proteus/board_configuration.cpp` — `canTxPin` and `can2TxPin` both set |
| Power4GDI has no VR input | `boards/hellen/alphax-4K-GDI/connectors/gdi-B.yaml` — no reluctor pins defined |
| Power4GDI injector and ignition channels | `board_configuration.cpp` — `injectionPins[0..3]`, `ignitionPins[0..3]` |
| Power4GDI, Proteus, microRusEFI SD card | `board_configuration.cpp` — `isSdCardEnabled = true` |
| Power4GDI knock | board ships a `knock_config.h` |
| Power4GDI, uaEFI 121, super-uaEFI Hall and analog counts | that board's `connectors/*.yaml` |
| Huge low-side count | `board_configuration.cpp` — `getBoardMetaOutputsCount()` is 41, low-side is total minus 6 |
| Stepper idle on uaEFI 121, super-uaEFI, Huge, microRusEFI | DC output count in `board_configuration.cpp`, applied against the rule on [Stepper Motor](Stepper-Motor) that two H-bridges drive a 4-wire stepper |
| uaEFI 121 schematics | the uaEFI 121 FAQ states there are no plans to make it open source hardware |

Two notes on method, so the numbers are not over-trusted:

- **`injectionPins[]` in a board config is that board's default engine setup, not its capability.** Huge sets only four injector pins by default despite having twelve channels. Channel counts on this page therefore follow the board pages; firmware was used for counts only where the board page is silent.
- **Each source counts analog and Hall inputs differently.** The connector files count every analog pin, including on-board MAP, knock and battery sense; the board pages count user-available inputs. Where they disagree the board page figure is shown, since that is the published specification.
