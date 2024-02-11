# HOWTO Make Your Own ECU Communicate with TCU

## What is this about

TL,DR: notes on PG35 TCU Man-in-the-middle research.

As of Feb 2024 it has been _years_ since I've on and off started to work on getting an open source ECU to communicate with a transmission control unit via CANbus. So far I have not accomplished the goal which makes it a great point to write an article on the subject!

I have a [2006 Volkswagen Passat 2.0 Turbo GDI PG35 non-DSG automatic complete running and driving test mule](https://rusefi.com/forum/viewtopic.php?f=2&t=1631) idling on rusEFI open source ECU. Attempting to engage transmission while posting only minimal dashboard CANbus messages causes something violent to happen and the engine would usually stall see https://youtu.be/rTobt4l-iEs

Original ECU which I am looking to replace for no good reason is BOSCH MED9.1. Conveniently the relevant Bosch Funktionsrahmen Ea827 TSI is available on the internet. CANbus traffic seems to mostly align with https://github.com/commaai/opendbc/blob/master/vw_golf_mk4.dbc DBC file. I've used google translate to translate some of interesting field descriptions those are already merged into the file.

## Toolset

* PCAN USB dongle to record CANbus traces
* a few Proteus units for Man-in-the-middle research
* VAG diagnostics cable to read/reset error codes
* I've also created my own suite of CANbus trace processing utilities https://github.com/rusefi/can-log-tools/

## First experiments

First let's grab a trace and a snapshot of CANbus traffic while engine is not running, both with OEM ECU and with OEM ECU disconnected. We get https://github.com/rusefi/rusefi_documentation/commit/722e81d2b0dd2b1f9661a3e9fd6383087ba4418a#diff-457155f3530fe11dbca1083aa1860f4e3cccc8f2d8b78d81634def58fbc38d9f

Comparing these two files we confirm which packets are clearly originating from the now disconnected OEM ECU https://github.com/rusefi/rusefi_documentation/commit/8575c7292d975c2477ccf070634883f5a9423c7e

## Now let's cut the wires

I am going to use the https://en.wikipedia.org/wiki/Man-in-the-middle_attack approach meaning I want to drop the CANbus wire coming into TCU, install my Proteus and by means of Lua scripting alter the flow between
vehicle and TCU. By doing that I hope to understand what TCU cares about and what it does care about while running OEM ECU in order to later apply that knowledge while making my own ECU cooperate with same TCU.

On this Passat TCU is located under the fender, I've cut and extended the wires. Proteus now sits between TCU and rest of the vehicle.

First script would just pass all messages and just print ``isShiftActive``

https://github.com/rusefi/rusefi_documentation/blob/master/OEM-Docs/VAG/2006-Passat-B6/HOWTO/script_1_mim.lua

```language=text
2024-02-10_18_43_23_440: EngineState: LUA: TCU isShiftActive=0 tcuError=0 EGSRequirement=0
2024-02-10_18_43_23_440: EngineState: LUA: Total from vehicle 125658 from TCU 15593 dropped=0 replaced 0
2024-02-10_18_43_23_839: EngineState: LUA: TCU isShiftActive=1 tcuError=0 EGSRequirement=0
```

## Let's drop a packet or two

Next step: let's drop MOTOR_BRE 0x284, i.e. not let it through.

https://github.com/rusefi/rusefi_documentation/blob/master/OEM-Docs/VAG/2006-Passat-B6/HOWTO/script_2_drop_motor_bre.lua

```language=text
2024-02-10_18_54_03_328: EngineState: LUA: TCU isShiftActive=0 tcuError=0 EGSRequirement=0
2024-02-10_18_54_03_517: EngineState: LUA: Total from vehicle 123015 from TCU 15380 dropped=3796 replaced 0
2024-02-10_18_54_03_718: EngineState: LUA: TCU isShiftActive=0 tcuError=0 EGSRequirement=0
```

Well, TCU did care. Let's drop something else, let's drop MOTOR_5 0x480.

https://github.com/rusefi/rusefi_documentation/blob/master/OEM-Docs/VAG/2006-Passat-B6/HOWTO/script_3_drop_motor_5.lua

Nice! TCU reports an error now! We've learned that MOTOR_5 0x480 is required.

Manually resetting codes gets old really quickly so I have a second Proteus constantly checking if there are error codes to reset https://github.com/rusefi/rusefi/blob/0bcf342976951a24c9e81a3524e0c897b29e5440/firmware/controllers/lua/examples/vw-tp-tcu.txt
