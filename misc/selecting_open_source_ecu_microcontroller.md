
As of Jan 2019 we still like Cortex-M a lot stm32, here are the reasons: Performance, Availability,
Toolchain, Hardware API.

1. **Performance** - stm32 gives us 160MHz and close to 200Kb of RAM with floating point unit.

2. **Availability** stm32 is cheap and readily available in low quantity both just chips and convenient dev boards

3. **Toolchain** Free GNU Arm Embedded Toolchain allows us to compile and debug software

4. **Hardware API** ChibiOS Hardware Abstraction Layer allows us to not spend too much time debugging low level peripheral registers

One of the things we do not like about smt32 Cortex-M is the fact that this family is not automotive and not based on 5 volts.
In an ideal chip we would like to see 5v ADC and maybe more hardware timers. 


We've looked into a few other chips but so far have not found a better overall platform.

Relevant forum threads:

S32K148 https://rusefi.com/forum/viewtopic.php?f=13&t=816

SPC563Mx, MPC563x - this one has some ChibiOS support - https://rusefi.com/forum/viewtopic.php?f=13&t=429

TMS570 - https://rusefi.com/forum/viewtopic.php?f=13&t=407 & https://github.com/rusefi/rusefi/issues/89

(in Russian) https://rusefi.com/forum/viewtopic.php?f=8&t=269