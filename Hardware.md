Unified rusEFI firmware runs on a wide array of boards with stm32f4 and stm32f7 microcontrollers.
We also have Kinetis and Cypress prototypes.

As of May 2021 microRusEFI and Proteus are sold as ECU development boards. See [Mission-Statement](Mission-Statement)

| Board | Features | Connectors/Misc. Info | Released in | Maximum recommended engine |
| ----- | -------- | --------------------- | ----------- | ---------------------------|
| [Hellen](Hellen-One-Platform) | +knock detection<br/>+VR<br/>+Wideband Controller | Not an ECU, but a collection of modules that can be used to design an ECU. | 2020 | Board-specific |
| [Proteus](https://www.ebay.com/itm/rusEFI-Proteus-0-4-standalone-ECU/333841923141)| + rusEFI if you have lots of hardware or cylinders<br/>+ 4 layer PCB, 135mm x 82.5mm<br/>+ 16 low-side outputs, limited to 3 amps each (injectors, relays, check engine light, etc)<br/>+ 12x ignition outputs (or general purpose 5v, 100mA push-pull)<br/>+ Dual electronic throttles<br/>+ 4x High-side 12v drivers, 1 amp each<br/>+ 4 thermistor analog inputs (2.7k pull up resistor)<br/>+ 12 General purpose analog inputs<br/>+ Dual VR sensors (crank position, wheel speed)<br/>+knock detection<br/>+ 6 digital inputs (hall cam/crank position, wheel speed, clutch/brake switch, etc) | TE Ampseal connectors: 2x 35 pin, 1x 23 pin<br/>rusEFI's most fully-featured shield<br/>IP68 waterproof case | 2020 | 12 cylinder, dual electronic throttles |
| [microRusEFI](https://www.ebay.com/itm/333532119947) | + Available fully assembled!<br/>+ about 10 analog inputs<br/>+ One VR/Hall input channel for crank sensor<br/>+ One Hall input channel for crank sensor<br/>+ 4 injector output channels<br/>+ 4 logic level coil control channels (external igniters could be needed for some coils) | 48-pin connector<br/>On-board DBW<br/>USB, CAN<br/>open source hardware  | 2019 | 4 cylinder, single electronic throttle |
| [Prometheus](https://rusefi.com/forum/viewtopic.php?f=4&t=1215)  | + on-board wide band controller.<br/>+ compact 4-layer PCB smaller than 93 x 100 mm<br/>+ on-board power supply<br/>+ knock sensor chip<br/>+ stepper motor IAC controller chip<br/>+ stepper motor IAC controller chip<br/>+ onboard 4-channel "smart" protected ignition drivers<br/>+ bluetooth module<br/>+ supports two packages of on-board stm32 chips | no on-board connector (wired)<br/>SD card, USB/TTL, CAN  | 2017 | 4 cylinder. No plans to offer assembled units. |
| [Frankenso](Hardware-Frankenso) retired| + Most customizable board<br/>+ larger 154x152mm 4-layer board requires a Medium Box shipping rate<br/>+ on-board power supply<br/>+ 20x4 LCD screen<br/>+ joystick<br/>+ works both with external brain boards and on-board stm32 chip<br/>+ knock sensor chip<br/>+ used Denso OEM cases available | on-board 64 pin connector<br/>SD card, USB/TTL, CAN<br/>open source hardware | 2014 | Flexible - probably 8 cylinder max recommended |
| [Frankenstein](https://rusefi.com/forum/viewtopic.php?f=4&t=359) retired | + Simplest rusEFI board<br/>+ our smaller two-layer board<br/>+ Small Box shipping rate<br/>+ low price<br/>- external 5v power supply required<br/>- external brain board required | no on-board connector (wired)<br/>SD card, USB/TTL, CAN<br/>open source hardware | 2014 | Flexible - probably 8 cylinder max recommended. No plans to offer assembled units. |

### Q: How to select a board?

A: History shows that fully assembled boards are the safest way to start. History shows
that 80% of the kits are never assembled. As of May 2022 we have microRusEFI and Proteus [in stock](https://shop.rusefi.com/). New fabrication of the assembled Frankenso board is
currently not planned.

### Q: What else matters?

A: Types and total count of crank and camshaft positions sensors is the next
important question. microRusEFI unfortunately only supports one VR shaft input maximum with two inputs total.

Frankenso supports up to 2 VR or 2 Hall shaft position sensors. Prometheus supports TBD. Proteus supports TBD.

### Q: why stm32?

A: [selecting-open-source-ecu-microcontroller](selecting-open-source-ecu-microcontroller)

### Q: This is all very cool but you guys do not have a Plug&Play for my Trabant. I think I will go and make a new rusEFI board just for my Trabant

A: At rusEFI we love cool new projects, but we are a really small team and only have so much time to work on rusEFI.  
We already have lots of different hardware configurations and we would suggest using one of the existing wire in versions.  
Nobody is stopping you from making your own board, but we cannot guarantee any support for that board or assistance with building it.  
If you proceed then please consider making a P&P adapter board design based on Hellen, Proteus, or microRusEFI.

### Q: What EDA are you guys using for your open source hardware?

A: rusEFI preference at the moment is KiCad 6. A few legacy pieces are still using KiCad 4 and 5. While many EDAs have many cool features KiCad gives rusEFI uniformity and consistency.

See also [https://github.com/rusefi/rusefi/tree/master/hardware](https://github.com/rusefi/rusefi/tree/master/hardware)

### Q: What pin do I use for tachometer output?

A: There is no single right answer. It really depends on what kind of electrical signal is your tachometer expecting. Is it low-side driven? +5v logic signal driven? +12v logic signal driven?

### Q: What are these four status LEDs close to main processor?

A: Many rusEFI boards have four status LEDs. All four LEDs blink on start-up just to confirm life.

Blue Communication LED which is expected to blink at 50% duty cycle during normal board operation.
If USB communication cable is connected Blue LED starts to blink faster.

Red CRITICAL (previously known as FATAL) error means you have a CRITICAL error, engine operation is not possible with CRITICAL error.

Green LED on many rusEFI boards is RUNNING. Off if engine is stopped, blinks if engine is cranking, solid if engine is running.

### Q: what about many other LEDs which seem to be blinking in sync with injectors or coils?

A: Following Frankenso tradition, Injector LEDs are RED. Ignition LED are blue, power LED are green.

### Q: Why mini/micro/type C on MRE?

A: USB choice dictated by price and availability. If it changes MRE page will note.

### Q: Exiting, what soldering iron is best?

A: [FAQ Why No Self Assembly](FAQ-Why-No-Self-Assembly/)
