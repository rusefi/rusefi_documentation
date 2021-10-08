Too many of Proteus 0.6 with F767 are behaving strangely in terms of initial programming. Maybe we have a hardware design issue? Maybe we are missing something?

Anyway looks like there is a working procedure.

1) use STM32CubeProgrammer software https://www.st.com/en/development-tools/stm32cubeprog.html

2) connect via USB while holding PROG button

3) make sure you have "STM32 BOOTLOADER" driver not "STM Device in DFU Mode". If necessary update/install driver from C:\Program Files\STMicroelectronics\STM32Cube\STM32CubeProgrammer\Drivers\DFU_Driver

4) connect STM32CubeProgrammer via USB, follow https://github.com/rusefi/rusefi/wiki/HOWTO-nDBANK to reset nDBANK flag

5) close STM32CubeProgrammer, unplug USB cable, plug USB cable, open STM32CubeProgrammer. STM32CubeProgrammer is finicky you really have to restart it between steps

6) 