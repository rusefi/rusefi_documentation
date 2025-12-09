# 4chan F7 Initial Programming

## One-time Setup

* Download and uncompress [the bundle](https://github.com/rusefi/rusefi/releases/download/20230726_2_release/rusefi_bundle_alphax-4chan_f7.zip).

* Launch console/rusefi_console.exe

* Hit the 'install drivers' button on the top of the splash screen

## For each board

* Power the 4chanF7 board while holding PROG button on 4chanF7. Windows should show "STM32 BOOTLOADER" device in device manager.

* In `console\STM32_Programmer_CLI\bin` folder, invoke stm32-reset-nDBANK.bat

* Hit the 'reset' button on 4chanF7 while holding PROG button on 4chanF7.

* In the `console\STM32_Programmer_CLI\bin` folder, invoke stm32-flash-dfu.bat

Expected result: the BLUE LED close to the STM32 MCU is constantly blinking.

Expected result: no RED LED next to the blinking BLUE LED.
