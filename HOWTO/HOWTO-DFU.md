

DFU is Device Firmware Update mode - that's a way to update firmware via the same USB cable you use for rusEFI communication.

*Auto DFU* is when your rusEFI console switches your rusEFI device into DFU mode

*Manual DFU* mode is when you hold "Program" button while powering your rusEFI in order to switch it into DFU mode. This mode is
used to program brand new stm32 chips which do not have a running version of rusEFI firmware.

[HOWTO DFU video](https://www.youtube.com/watch?v=VdvXYgv_acg)

On a STM32F4 Discovery, entering DFU mode requires putting a jumper between the pins VDD and BOOT0, then powering or resetting the board.


## Q: I have "STM32 BOOTLOADER" in Device Manager and rusEFI console does not update firmware. What's wrong?

A: As of Aug 2021 rusEFI console uses "older" ST DFU driver. You would need to remove newer "STM32 BOOTLOADER" driver. Hit "Remove Device" with "Remove Drivers" checkbox. Once you've removed newer "STM32 BOOTLOADER" driver re-install DFU driver using rusEFI console driver button.