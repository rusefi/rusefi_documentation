# HOWTO Update Firmware

<!-- this URL is hard-coded in rusEFI console splash screen MAKE SURE NOT TO RENAME -->

[Download the rusEFI bundle](Download) for your hardware.

## Windows

Launch [rusEFI Console](Console). You can find it in the bundle you downloaded, in the "console" folder.

Click the "Update Firmware" button once you've picked desired update mode.

## Linux

The canonical way to update the firmware on Linux is with DFU.

You will need dfu-util:

```shell
# Debian/Ubuntu
sudo apt install dfu-util
# Arch/Manjaro
sudo pacman -Syu dfu-util
```

Once you have dfu-util, you can run this from the extracted bundle directory:

```shell
java -jar console/rusefi_console.jar reboot_dfu

dfu-util -a 0 -D rusefi.dfu

```

## FAQ

Q: I got "DRIVER ERROR"

A: in rusEFI console please hit "Device Manager". When ECU gets into DFU mode (blue LED stops blinking) you are expected to see "STM32 Bootloader" device. If you see "STM device in DFU mode" please uninstall it and remove old driver.

Bad 

![x](https://user-images.githubusercontent.com/7377949/76368499-dbfd8500-6306-11ea-9aff-823b22b46283.png)

Good

![x](https://user-images.githubusercontent.com/568254/76368785-90d77800-62ee-11ea-8fc1-bf03165909b7.png)

## More Information

For more about DFU see [HOWTO-DFU](HOWTO-DFU)

ST-LINK is an advanced mode of firmware update which requires ST-LINK device, either external, or built-in like on Discovery/Nucleo board.

## Update TunerStudio Definition

Once you have updated your firmware, you also need to update your TunerStudio definition so it is able to communicate properly.

You can find the .ini file in the USB storage device that rusEFI board presents to your computer, or in the [rusEFI bundle](Download). The former is preferable, as it ensures that you have the correct version for the firmware that is installed on your board.
