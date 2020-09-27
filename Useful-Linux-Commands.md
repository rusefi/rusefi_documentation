```
sudo apt-get install dfu-util
lsusb
lsusb | grep 'STMicroelectronics Virtual COM Port'
lsusb | grep DFU

java -jar rusefi_console.jar reboot_dfu

dfu-util -a 0 -D rusefi.dfu

```