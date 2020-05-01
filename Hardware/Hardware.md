Unified rusEFI firmware runs on a wide array of boards with stm32f4 and stm32f7 microcontrollers.
We also have Kinetis and Cypres prototypes.

As of March 2020 microRusEFI is sold as completely ready to run ECU or as a pre-assembled 80% complete kit.

As of March 2020 Frankenso board is sold as mostly as a DIY kit.

| Board | Features | Released in |
| ------------- | ------------- | ---- |
| [Frankenso](https://rusefi.com/forum/viewtopic.php?f=4&t=569) | Most customizable board | 2014 |
| [Prometheus](https://rusefi.com/forum/viewtopic.php?f=4&t=1215)  | The only rusEfi board with on-board wide band controller  | 2017 |
| [Frankenstein](https://rusefi.com/forum/viewtopic.php?f=4&t=359)  | Simplest rusEfi board | 2014 |
| [microRusEfi](https://rusefi.com/microrusefi) | Available fully assembled! | 2019 |
| [Hellen](https://rusefi.com/forum/viewtopic.php?f=4&t=1682) | Coming soon! | 2020 |


Q: How to select a board?

A: History shows that fully assembled boards are the safest way to start. History shows
that 80% of the kits are never assembled. As of March 2020 we have many microRusEfi [in stock](https://rusefi.com/shop/) and
very remaining [old stock assembled Frankenso](https://www.tindie.com/stores/russian/). New fabrication of the assembled Frankenso board is
currently not planned.

Q: What else matters?

A: Types and total count of crank and camshaft positions sensors is the next
important question. microRusEfi unfortunately only supports one VR shaft input maximum with two inputs total. 

Frankenso supports up to 2 VR or 2 Hall shaft position sensors. Prometheus supports TBD. Proteus supports TBD.

Q: why stm32?

A: [selecting_open_source_ecu_microcontroller](selecting_open_source_ecu_microcontroller)


Q: This is all very cool but you guys do not have a Plug&Play for my Trabant. I think I will go and make a new rusEFI board just for Trabant!

A: There is an opinion that a brand new rusEFI board from scratch would be an insanity, we already have too much hardware and we are running
thin trying to support it. Please consider building your P&P design either on Hellen, Proteus or microRusEfi - either as an adapter board or at least as a custom PCB with shared schematics.

See also https://rusefi.com/wiki/index.php?title=Hardware:Boards_Comparison

See also https://github.com/rusefi/rusefi/tree/master/hardware