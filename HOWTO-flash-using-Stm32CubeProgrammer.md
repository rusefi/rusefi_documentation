# HOWTO Flash using STM32CubeProgrammer

Stm32CubeProgrammer is the last most powerful option for DFU and ST-Link firmware update.

Visit [https://www.st.com/en/development-tools/stm32cubeprog.html](https://www.st.com/en/development-tools/stm32cubeprog.html) to download.

Cube is simple to use.

1. Place the device in DFU mode
2. Search USB and it will see the chip connected to USB
3. Open hex and download

A major downside of Stm32CubeProgrammer is [this driver issue.](HOWTO-DFU#q-i-have-stm-device-in-dfu-mode-in-device-manager-and-rusefi-console-does-not-update-firmware-whats-wrong)

See also [HOWTO-nDBANK](HOWTO-nDBANK)
