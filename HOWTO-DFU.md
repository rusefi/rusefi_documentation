
DFU is Device Firmware Update mode - that's a way to update firmware via the same USB cable you use for rusEFI communication. stm32 DFU is part of stm32 factory bootloader and we expect that any rusEFI board could be updated/reset via same USB connector as the one you use to communicate to your rusEFI ECU. Please let us know if that's not the case!

*Auto DFU* is when your rusEFI console switches your rusEFI device into DFU mode

*Manual DFU* mode is when you hold "Program" button while powering your rusEFI in order to switch it into DFU mode. This mode is
used to program brand new stm32 chips which do not have a running version of rusEFI firmware.

[HOWTO DFU video](https://www.youtube.com/watch?v=VdvXYgv_acg)

On a STM32F4 Discovery, entering DFU mode requires putting a jumper between the pins VDD and BOOT0, then powering or resetting the board.

## Q: I have "STM Device in DFU Mode" in Device Manager and rusEFI console does not update firmware. What's wrong?

A: As of Oct 2021 rusEFI console uses "newer" ST DFU driver. You would need to remove older "STM Device in DFU Mode" driver. Hit "Remove Device" with "Remove Drivers" checkbox. Once you've removed newer "STM Device in DFU Mode" driver re-install DFU driver using rusEFI console driver button. Alternatively install driver manually from drivers\silent_st_drivers\DFU_Driver folder.

## Q: What's the meaning on this image?

![x](Images/no-dfu-driver.png)

A: this image says that you do not have STM32 Bootloader driver installed.

## Q: Do I need to install STM32CubeProgramer in order to use update firmware via DFU?

A: No. We have a small portion of STM32CubeProgramer embedded into rusEFI console, even the drivers! Make sure to download complete fresh bundle, use "Install Drivers" button to automatically extract silent_st_drivers2.exe archive and attempt auto-install. If automatic driver install did not happen try pointing device manager driver wizard at drivers\silent_st_drivers\DFU_Driver folder within uncompressed rusEFI bundle.

## Q: I am using the buttons but it simply does not work?

A: We have a report of this [on the forum](https://www.rusefi.com/forum/viewtopic.php?p=42317#p42317). For now please keep trying!

## Q: I have a Mac? Or even better I have a Linux device?

A: rusEFI console firmware functionality currently runs on Windows only.

## Q: Do you have any ST-Link provisions?

Some boards have [Tag-Connect-TC2030] upwards three of those! Some boards have an unofficial (?) ST-Link V2 pinout. Both are intended for software developers while debugging issues, those are not intended for firmware update/recovery.
