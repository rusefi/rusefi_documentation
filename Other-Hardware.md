# Other Hardware

Modules and add-on boards that are not engine ECUs. For the ECUs themselves see [Hardware](Hardware) and the [ECU Comparison](ECU-Comparison).

## CAN modules and gateways

| Hardware | What it is | Purchase |
|---|---|---|
| [Small CAN Board](Small-CAN-Board) | A CAN-bus module running full rusEFI firmware with [Lua](Lua-Scripting), for building your own controller — a smart wastegate, auxiliary lighting, whatever the I/O supports. Two CAN buses, LIN/K-line, CAN wake-up and very low standby current. | [rusEFI Store](https://www.shop.rusefi.com/shop/p/smallcanboard) |
| [uaCanBridge](uaCanBridge) | Three-channel CAN-FD gateway, programmable with [Lua](Lua-Scripting). | [rusEFI Store](https://www.shop.rusefi.com/shop/p/ua-can-bridge) |
| [Purple Gateway](purple-gateway) | Supplies engine data over CAN to an OEM transmission control unit so the gearbox can run without the original engine electronics. Current focus is Dodge and BMW 8HP, plus GM 6, 8 and 10 speed. | |

## Wideband oxygen controllers

| Hardware | What it is | Purchase |
|---|---|---|
| [Dual Channel WBO](rusEFI-Wideband-Controller) | Two-channel wideband controller reporting over CAN. | [rusEFI Store](https://www.shop.rusefi.com/shop/p/dual-channel-wbo) |
| [uaWBO](uaWBO) | Compact wideband controller with both CAN and analog output. | [rusEFI Store](https://www.shop.rusefi.com/shop/p/uawbo) |

See [Wide Band Sensors](Wide-Band-Sensors) for choosing and wiring the sensor itself.

## Direct injection drivers

These drive GDI injectors and the high pressure fuel pump. They are **not** standalone ECUs — you use them alongside one. See [GDI status](GDI-status).

| Hardware | What it is | Purchase |
|---|---|---|
| [GDI4](GDI4) | Four-injector GDI driver with high pressure pump control. | [rusEFI Store](https://www.shop.rusefi.com/shop/p/gdi4) |
| [GDI8](GDI8) | Eight injectors and two high pressure pumps — effectively two GDI4 boards in one. Note the warnings on its page about main-ECU integration. | [rusEFI Store](https://www.shop.rusefi.com/shop/p/gdi8) |

## Arduino form factor boards

For converting legacy Arduino-based hardware to rusEFI. Both need injector MOSFETs that can be driven from 3.3 V.

| Hardware | What it is | Purchase |
|---|---|---|
| [mega100](mega100) | mega2560 form factor board on an STM32F4. | [rusEFI Store](https://www.shop.rusefi.com/shop/p/mega100-f4) |
| [mega144](mega144) | The same idea on an STM32F7, giving more memory and more [Lua](Lua-Scripting) capacity. | [rusEFI Store](https://www.shop.rusefi.com/shop/p/mega144) |

## Dash

| Hardware | What it is | Purchase |
|---|---|---|
| [uaDASH](uaDASH) | Digital gauge cluster hardware. See [Digital Dash](Digital-Dash) for all dash options and [Dash hardware comparison](Dash-hardware-comparison) for the platform trade-offs. | [rusEFI Store](https://www.shop.rusefi.com/shop/p/uadash7) |

## Proteus adapters

Adapter boards that connect a [Proteus](Proteus-Manual) to a factory harness.

* [Proteus to Honda OBD2A](Proteus-HondaOBD2A)
* [Proteus to Honda 125](Proteus-Honda125)
* [Proteus to BMW M54](Proteus-BMW-M54)
* [Proteus to Mitsubishi 76](Proteus-mitsubishi76)
