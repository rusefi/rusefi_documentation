# Transmission Control

rusEFI can run an automatic transmission, but not in one single way — what you need depends on how old the transmission is and how it is controlled. This page is the starting point.

The short version: **for older solenoid-controlled transmissions rusEFI can drive the transmission itself. For modern transmissions rusEFI talks to the factory transmission controller over CAN rather than replacing it**, and the [Purple Gateway](purple-gateway) is the module that does that.

## Which approach do I need?

| Your transmission | Approach | Start here |
|---|---|---|
| Older, controlled by simple solenoids — GM 4Lxx, Ford 4R70W and similar | rusEFI drives the transmission directly with its built-in TCU logic, or with a Lua script | [TCU Status](TCU-status) |
| Modern ZF 8HP, or GM 6L / 8L / 10L | The factory TCU stays and keeps control of the solenoids. rusEFI feeds it the engine data it expects, over CAN, through the [Purple Gateway](purple-gateway) | [Purple Gateway](purple-gateway), [8HP](8hp) |
| Something else, or you want to do the CAN work yourself | Write your own CAN integration | [How To Make Your Own ECU Communicate with TCU](HOWTO-Make-Your-Own-ECU-Communicate-with-TCU) |

Modern transmissions use clutch-to-clutch control, where one clutch engages as another releases. rusEFI deliberately does not try to re-implement that: as [TCU Status](TCU-status) puts it, *"CAN bus integration with the OEM TCU is the only way for modern transmissions"*.

A note on words, because they get mixed up: a **TCU** is wired to the transmission solenoids and actually controls them. A **CAN gateway** sits between the engine ECU and the TCU and translates. A **PCM** is one box doing both, which is how Ford, Toyota and Honda usually do it. Full definitions are on [TCU Status](TCU-status).

## Purple Gateway

[Purple Gateway](purple-gateway) is a CAN module that supplies a factory transmission controller with the engine data it needs, so the gearbox works without the original engine electronics behind it.

**It is not a standalone TCU.** The factory TCU still controls the solenoids. The gateway's job is to make that TCU believe it is still installed in its original car.

### What your engine side must provide

The gateway needs four things to run an 8HP:

| Data | Notes |
|---|---|
| Engine RPM | |
| Driver intent | Pedal position sensor on a drive-by-wire setup, or [TPS](Throttle-and-Pedal-Sensors) on a cable throttle |
| Torque | Either real torque from the ECU, or torque estimated from the [MAP sensor](MAP-Sensor) |
| Brake | Brake pedal switch, or brake pedal pressure |

Torque is the one people underestimate. Shift quality depends on the engine reducing and restoring torque on cue, which is why the gateway needs an ECU it can coordinate with. Without that coordination shifts will work, but they will not be smooth.

### Supported transmissions

| Transmission | Status |
|---|---|
| Dodge / Chrysler 8HP | Ready |
| BMW F-series 8HP | Partly ready |
| GM 6L | Beta |
| GM 8L | Beta |
| GM 10L | In progress |

### Supported engine ECUs

Torque coordination only works with an engine ECU the gateway knows how to talk to. As of the [Purple Gateway](purple-gateway) page, for 8HP that is:

| Engine ECU | Status |
|---|---|
| OEM BMW E9x and siblings | Supported |
| OEM BMW E46 and siblings such as E39 | Supported |
| rusEFI | Coming |
| GM E38 | Coming |
| Generic legacy | Coming |

If your engine is run by something not on that list, check with the project before buying — this is the question the gateway's own FAQ asks first.

### Also worth knowing

* It has a **built-in ZF flasher**, useful for backing up a TCU or moving it between brands.
* The connector is **Superseal 26 pin**; harness side `3-1437290-8`.
* The TCU gateway feature is **not open source**, unlike the rusEFI firmware.
* It looks like the [nano](nano) ECU but is a completely different device.

## ZF 8HP

The [8HP](8hp) page covers the transmission family itself — which generations are worth using, and what a swap involves:

* **BMW F-series** is the most available and bolts into older BMWs.
* **BMW 2nd generation** such as 8HP50 shifts faster but does not bolt into older BMWs.
* **Chrysler / Dodge** uses a physically interchangeable TCU but a completely different CAN dialect, and some versions have a trans brake.

Two practical points from that page that catch people out:

* **ISN reset.** A used 8HP arrives locked to the donor car's VIN and security data. The controller has to be reset before it will work in your car — see [BMW 8hp](Bmw-8hp).
* **Power.** Constant power is ideal so the TCU can save its adaptations. If you must use switched power, use a 60 second time-delay relay.

Vehicle-specific notes: [BMW 8hp](Bmw-8hp) and [Dodge 8hp](Dodge-8hp).

## Older transmissions

rusEFI has basic TCU logic of its own. A Ford 4R70W has driven under rusEFI TCU control, and there is code for GM 4Lxx transmissions with little real-world testing so far. There is also an alternative Lua approach for direct control of older transmissions — see [Lua Scripting](Lua-Scripting).

Reference material for specific units: [NAG1 722.6](NAG1---722.6) and [How To TCU A42DE on Proteus](HOWTO-TCU-A42DE-on-Proteus).

## Related pages

* [Purple Gateway](purple-gateway) — the module, its pinout, changelog and FAQ
* [8HP](8hp) — the transmission family
* [TCU Status](TCU-status) — terminology and what is implemented
* [How To Make Your Own ECU Communicate with TCU](HOWTO-Make-Your-Own-ECU-Communicate-with-TCU) — doing the CAN work yourself
* [GM 6L transmissions](GM-6L)
* [Sequential Transmission](Sequential-Transmission) — automated manual, a different thing entirely
* [Other Hardware](Other-Hardware) — the rest of the add-on modules
