# Hardware

Unified rusEFI firmware runs on a wide array of boards with stm32f4 and stm32f7 microcontrollers.

As of 2024 we are selling five universal ECUs. See [Mission-Statement](Mission-Statement)

[2024 universal hardware matrix](https://docs.google.com/spreadsheets/d/1HJYltK4RPDa0RIg4GWNU_2hYVAgdOU0GPiVdebtVTzo)

|                                                                        | Features                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Connectors/Misc. Info                                                                                        | Released in | Maximum recommended engine             |
|------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|-------------|----------------------------------------|
| [💲nano💲](https://www.shop.rusefi.com/shop/p/nano)                      | tiny 2 cylinder ECU                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | 26 pin superseal                                                                                             | 2025        | 2 cylinder                             |
| [💲Huge💲](https://www.shop.rusefi.com/shop/p/rusefi-huge)                 | our most powerful ECU with dual WBO                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | 26+36+26+34 superseal                                                                                        | 2023        | 12 cylinder , dual electronic throttles                           |
| [💲uaEFI 121💲](https://www.shop.rusefi.com/shop/p/uaefi121)               | similar to uaEFI with metal enclosure and automotive connector                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | 121 pin                                                                                                      | 2023        | 6 cylinder dual throttle body          |
| [💲uaEFI💲](https://www.shop.rusefi.com/shop/p/uaefi-ultra-affordable-efi) | ultra affordable with WBO controller and knock detection                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Molex miniFit                                                                                                | 2023        | 6 cylinder dual throttle body          |
| [💲Proteus💲](https://www.shop.rusefi.com/shop/p/spring-blade-cyy7n)       | + rusEFI if you have lots of hardware or cylinders<br/>+ 4 layer PCB, 135mm x 82.5mm<br/>+ 16 low-side outputs, limited to 3 amps each (injectors, relays, check engine light, etc)<br/>+ 12x ignition outputs (or general purpose 5v, 100mA push-pull)<br/>+ Dual electronic throttles<br/>+ 4x High-side 12v drivers, 1 amp each<br/>+ 4 thermistor analog inputs (2.7k pull up resistor)<br/>+ 12 General purpose analog inputs<br/>+ Dual VR sensors (crank position, wheel speed)<br/>+knock detection<br/>+ 6 digital inputs (hall cam/crank position, wheel speed, clutch/brake switch, etc) | TE Ampseal connectors: 2x 35 pin, 1x 23 pin<br/>rusEFI's most fully-featured shield<br/>IP68 waterproof case | 2020        | 12 cylinder, dual electronic throttles |
| [💲microRusEFI💲](https://www.shop.rusefi.com/shop/p/microrusefi-assembled-ecu-development-module)                   | + Available fully assembled!<br/>+ about 10 analog inputs<br/>+ One VR/Hall input channel for crank sensor<br/>+ One Hall input channel for crank sensor<br/>+ 4 injector output channels<br/>+ 4 logic level coil control channels (external igniters could be needed for some coils)                                                                                                                                                                                                                                                                                                              | 48-pin connector<br/>On-board DBW<br/>USB, CAN<br/>open source hardware                                      | 2019        | 4 cylinder, single electronic throttle |
| [Hellen One Platform](Hellen-One-Platform)                             | +knock detection<br/>+VR<br/>+Wideband Controller                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | Not an ECU, but a collection of modules that can be used to design an ECU.                                   | 2020        | Board-specific                         |

## Q: This is all very cool but you guys do not have a Plug&Play for my Trabant. I think I will go and make a new rusEFI board just for my Trabant

A: At rusEFI we love cool new projects, but we are a really small team and only have so much time to work on rusEFI.  
We already have lots of different hardware configurations and we would suggest using one of the existing wire in versions.  
Nobody is stopping you from making your own board, but we cannot guarantee any support for that board or assistance with building it.  
If you proceed then please consider making a P&P adapter board design based on Hellen, [Proteus](https://github.com/mck1117/proteus/), or microRusEFI. See also https://github.com/rusefi/rusefi/wiki/Custom-Firmware

## Q: What EDA are you guys using for your open source hardware?

A: rusEFI preference at the moment is KiCad 7. A few legacy pieces are still using KiCad 4 and 5. While many EDAs have many cool features KiCad gives rusEFI uniformity and consistency.

See also [https://github.com/rusefi/rusefi/tree/master/hardware](https://github.com/rusefi/rusefi/tree/master/hardware)

## Q: What pin do I use for tachometer output?

A: There is no single right answer. It really depends on what kind of electrical signal is your tachometer expecting. Is it low-side driven? +5v logic signal driven? +12v logic signal driven?

## Q: What are these four status LEDs close to main processor?

A: Many rusEFI boards have four status LEDs. All four LEDs blink on start-up just to confirm life.

Blue Communication LED which is expected to blink at 50% duty cycle during normal board operation.
If USB communication cable is connected Blue LED starts to blink faster.

Red CRITICAL (previously known as FATAL) error means you have a CRITICAL error, engine operation is not possible with CRITICAL error.

Green LED on many rusEFI boards is RUNNING. Off if engine is stopped, blinks if engine is cranking, solid if engine is running.

## Q: Exiting, what soldering iron is best?

A: [FAQ Why No Self Assembly](FAQ-Why-No-Self-Assembly)

## Q: Why battery holder?

A: So that log file names could be current time stamp. That functionality is the only reason for battery holder.

## Q: I would like to fabricate and sell on my country

A: See [Royalty](Royalty)
