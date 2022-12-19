<!-- this URL is hard-coded in rusEFI console splash screen MAKE SURE NOT TO RENAME -->

[Download the rusEFI bundle](Download) for your hardware. 

## Windows:
Launch [rusEFI Console](Console.md). You can find it in the bundle you downloaded, in the "console" folder.

Click the "Update Firmware" button once you've picked desired update mode.

## Linux:
The canonical way to update the firmware on Linux is with DFU.

You will need dfu-util:
```
# Debian/Ubuntu
sudo apt install dfu-util
# Arch/Manjaro
sudo pacman -Syu dfu-util
```

Once you have dfu-util, you can run this from the extracted bundle directory:

```
java -jar console/rusefi_console.jar reboot_dfu

dfu-util -a 0 -D rusefi.dfu

```

## More Information

For more about DFU see [HOWTO-DFU](HOWTO-DFU.md)

ST-LINK is an advanced mode of firmware update which requires ST-LINK device, either external, or built-in like on Discovery/Nucleo board.

## Update TunerStudio Definition

Once you have updated your firmware, you also need to update your TunerStudio definition so it is able to communicate properly.

You can find the .ini file in the USB storage device that rusEFI board presents to your computer, or in the [rusEFI bundle](Download). The former is preferable, as it ensures that you have the correct version for the firmware that is installed on your board.