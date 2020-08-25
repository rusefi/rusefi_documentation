Unified rusEFI firmware runs on a wide array of boards with stm32f4 and stm32f7 microcontrollers.
We also have Kinetis and Cypres prototypes.

As of March 2020 microRusEFI is sold as completely ready to run ECU or as a pre-assembled 80% complete kit.

As of March 2020 Frankenso board is sold as mostly as a DIY kit.

| Board | Features | Released in | Maximum recommended engine |
| ------------- | ------------- | ---- | ---- |
| [Frankenso](Hardware_Frankenso) | Most customizable board | 2014 | Flexible - probably 8 cylinder max recommended |
| [Prometheus](https://rusefi.com/forum/viewtopic.php?f=4&t=1215)  | The only rusEfi board with on-board wide band controller. | 2017 | 4 cylinder. No plans to offer assembled units. |
| [Frankenstein](https://rusefi.com/forum/viewtopic.php?f=4&t=359)  | Simplest rusEfi board | 2014 | Flexible - probably 8 cylinder max recommended. No plans to offer assembled units. |
| [microRusEfi](Hardware_microRusEfi) | Available fully assembled! | 2019 | 4 cylinder, single electronic throttle |
| [Hellen](https://rusefi.com/forum/viewtopic.php?f=4&t=1682) | Coming soon! | 2020 | TBD cylinder, single electronic throttle |
| [Proteus](Proteus) | rusEfi if you have lots of hardware or cylinders | 2020 | 12 cylinder, dual electronic throttles |


### Q: How to select a board?

A: History shows that fully assembled boards are the safest way to start. History shows
that 80% of the kits are never assembled. As of March 2020 we have many microRusEfi [in stock](https://rusefi.com/shop/) and
very remaining [old stock assembled Frankenso](https://www.tindie.com/stores/russian/). New fabrication of the assembled Frankenso board is
currently not planned.

### Q: What else matters?

A: Types and total count of crank and camshaft positions sensors is the next
important question. microRusEfi unfortunately only supports one VR shaft input maximum with two inputs total. 

Frankenso supports up to 2 VR or 2 Hall shaft position sensors. Prometheus supports TBD. Proteus supports TBD.

### Q: why stm32?

A: [selecting_open_source_ecu_microcontroller](selecting_open_source_ecu_microcontroller)


### Q: This is all very cool but you guys do not have a Plug&Play for my Trabant. I think I will go and make a new rusEFI board just for my Trabant!

A: At rusEFI we love cool new projects, but we are a really small team and only have so much time to work on rusEFI.  
We already have lots of different hardware configurations and we would suggest using one of the existing wire in versions.  
Nobody is stopping you from making your own board, but we cannot guarantee any support for that board or assistance with building it.  
If you proceed then please consider making a P&P adapter board design based on Hellen, Proteus, or microRusEFI.

### Q: What EDA are you guys using for your open source hardware?

A: rusEFI preference at the moment is KiCad 5. A few legacy pieces are still using KiCad 4. While many EDAs have many cool features KiCad gives rusEFI uniformity and consistency.

See also https://rusefi.com/wiki/index.php?title=Hardware:Boards_Comparison

See also https://github.com/rusefi/rusefi/tree/master/hardware

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

