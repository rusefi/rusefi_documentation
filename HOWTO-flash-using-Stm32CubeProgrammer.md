# HOWTO Flash using STM32CubeProgrammer

Stm32CubeProgrammer is the last most powerful option for DFU and ST-Link firmware update.

Visit [https://www.st.com/en/development-tools/stm32cubeprog.html](https://www.st.com/en/development-tools/stm32cubeprog.html) to download.

Cube is simple to use.

1. Place the device in DFU mode
2. Search USB and it will see the chip connected to USB
3. Open hex and download

A major downside of Stm32CubeProgrammer is some incompatibility between driver versions, which can result in rusEFI Console being unable to update the firmware.

See also [HOWTO-nDBANK](HOWTO-nDBANK)
