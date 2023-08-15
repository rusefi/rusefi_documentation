# 4chan F7 initial programming

## One time Setup

* download & uncompress https://github.com/rusefi/rusefi/releases/download/20230726_2_release/rusefi_bundle_alphax-4chan_f7.zip

* launch console/rusefi_console.exe

* hit 'install drivers' button on top of the splash screen

## For each board

* power 4chanF7 board while holding PROG button on 4chanF7. Windows would show "STM32 BOOTLOADER" device in device manager.

* in ``console\STM32_Programmer_CLI\bin`` folder invoke stm32-reset-nDBANK.bat

* hit 'reset' button on 4chanF7 while holding PROD button on 4chanF7.

* in ``console\STM32_Programmer_CLI\bin`` folder invoke stm32-flash-dfu.bat

Expected result: BLUE LED close to stm32 MCU is constantly blinking.

Expected result: no RED LED next to blinking BLUE.
