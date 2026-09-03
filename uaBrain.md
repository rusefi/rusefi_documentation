# uaBrain (Ultra Affordable EFI Brain)

A castellated solder-down "brain" module: all the electronics of a full-featured ECU on one 4-layer PCB with 8-pin castellated edge connectors, ready to be placed onto your own carrier/adapter board.

🔴 Community support ONLY 🔴 [Support Statement](Support) 🔴 [Facebook group](https://www.facebook.com/groups/rusEfi) 🔴 [Discord](Discord) 🔴

[New to rusEFI start here](Home)

## Specs

* Firmware: [fw-uaBrain](https://github.com/rusefi/fw-uaBrain) https://rusefi.com/build_server/rusefi_bundle_uaBrain.zip

### Ignition and injection

* Sequential six smart coil outputs with option of on-board igniters (ISL9V3040 IGBT populate option)
* Sequential six injector outputs (VNLD5160 smart low-side drivers)

### Inputs

* Two VRs: one MAX9924, one vr-discrete conditioner
* Three hall inputs (HALL3 is SENT-capable)
* Three button inputs
* 9 analog inputs: TPS1/TPS2, PPS1/PPS2, CLT, IAT, MAP, two auxiliary analog
* Key/ignition voltage sense
* [Flex fuel](Flex-Fuel) input
* **Two** [knock sensor](knock-sensing) inputs (two on-board knock signal conditioners)
* On-board digital baro sensor
* On-board MAP sensor option

### Outputs

* **Ten** low side outputs
* Two DC motor drivers (TLE9201). Can drive two [ETBs](Electronic-Throttle-Body-Configuration-Guide) or ETB + electronic wastegate or [stepper idle](Idle-Control#stepper-idle-valve-wiring)

### On-board

* **Two** 4.9 LSU [WBO controllers](rusEFI-Wideband-Controller)
* **Two** EGT thermocouple inputs (MAX31855)
* Two CAN buses: CAN1 with on-board transceiver, CAN2 through the on-board CAN module
* ESP32-S2 module on the MCU's UART2 for wireless connectivity
* On-board SD card and accelerometer
* USB-C connector, plus USB brought out to edge pins for the carrier board
* Real time clock battery
* **STM32F765** (same MCU class as uaEFI PRO)

### Physical

* 4 layer PCB
* Fourteen castellated 8-pin edge connectors (112 edge pins), reflow- or hand-solderable onto a carrier board
* M3 mounting holes

free open source firmware - support us at https://www.patreon.com/rusefi

## Edge connectors

All I/O comes out on fourteen castellated 8-pin edge connectors J2..J21:

| Connector | Edge | Contents |
|---|---|---|
| J5 | right | Coils 1-3, Injectors 1-3, Knock 1, GNDA |
| J14 | top | Coils 4-6, Injectors 4-6, Knock 2, GNDA |
| J15 | left | +12V, key voltage (VIGN), GND, Low Side 9/10/1/2 |
| J2 | left | PPS1/PPS2, +5VP, GNDA, CAN1 H/L, Buttons 1/2 |
| J20 | left | Low Side 6, Button 3, +5VP, GNDA, 3.3VA, 3.3V, 5VA, 5V |
| J8 | right | Low Side 4, AIN1, +5VP, GNDA, 3.3VA, 3.3V, 5VA, 5V |
| J3 | right | VR discrete +/-, HALL1, Low Side 3, GND |
| J18 | top | VR MAX9924 +/-, HALL3 (SENT), Low Side 5, GND |
| J4 | top | DC1 +/-, TPS1/TPS2, CLT, +5VP, GNDA |
| J21 | top | DC2 +/-, AIN2, MAP, +5VP, GNDA |
| J16 | top | IAT, HALL2, CAN2 H/L, Low Side 7/8, GND |
| J10 | left | PROG button, USB, Flex, +5VP, GNDA |
| J19 | right | WBO1 LSU 4.9, EGT1, +12V RAW |
| J13 | top | WBO2 LSU 4.9, EGT2, +12V RAW |

Pin-by-pin mapping lives in the firmware repo: [fw-uaBrain/connectors](https://github.com/rusefi/fw-uaBrain/tree/main/connectors), one yaml per connector.

## uaBrain User Documentation

New to rusEFI? Start with the [Getting Started roadmap](Getting-Started), which walks through the whole path from choosing hardware to a first start.

| Topic | Page |
|---|---|
| Wiring and connections | [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) |
| Firmware install and updates | [HOWTO Update Firmware](HOWTO-Update-Firmware), [Release vs Snapshot](Release-Snapshot-Latest-firmware) |
| Trigger setup | [Trigger Configuration Guide](Trigger-Configuration-Guide) |
| On-board wideband | [rusEFI Wideband Controller](rusEFI-Wideband-Controller) |
| Idle control | [Idle Control](Idle-Control), [Stepper Motor](Stepper-Motor) |
| Electronic throttle | [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide) |
| Logging and diagnostics | [Diagnostics and Logging](Diagnostics-and-Logging) |
| Something is wrong | [Troubleshooting](Troubleshooting) |

## Technical Details

[uaBrain firmware](https://github.com/rusefi/fw-uaBrain)

Hellen-One platform modules used: mega-mcu100-f7 (CPU), knock ×2, vr-discrete, vr-max9924, motor-driver, wbo ×2, can

[Support & Community](Support)

## Related pages

* [Hardware](Hardware) — all universal units we offer
* [uaEFI](uaEFI) — the stand-alone Ultra Affordable EFI with Mini-Fit Jr. connectors
* [uaEFI 121](uaefi121) — sibling with a metal enclosure and automotive header
* [super-uaEFI](super-uaEFI) — sibling with STM32F7 and superseal headers

🔴 [Commercial Support](https://www.shop.rusefi.com/shop/p/details-about-rusefi-ecu-technical-support) 🔴

### FAQ

## Q: where is mating footprint?

A: [hw-uaBrain.kicad_mod](https://github.com/rusefi/kicad6-libraries/blob/main/hw-uaBrain.kicad_mod) https://github.com/rusefi/kicad6-libraries/blob/main/hw-uaBrain.kicad_sym

