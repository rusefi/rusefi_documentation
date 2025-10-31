# Device Recognition Issue When Connecting
When connecting rusefi to a Linux PC, you may encounter an issue where TunerStudio fails to detect the device when you click the “Detect” button.
To resolve this problem, try the following steps:
1. Add the user to the `uucp` group:
```
sudo usermod -aG uucp $USER
```
2. Restart the computer.
3. Reconnect the rusefi device to the computer and verify that it is successfully connected and recognized:
```
ls /dev/ttyACM*
```
4. Try detecting the unit in the TunerStudio interface again.
<br/><br/>
<br/><br/>

# Linux Connectivity Issues caused by ModemManager

CDC ACM is interface mostly used for modems.
ModemManager tries to detect modem on all newly added ttyACM devices.
This breaks TunerStudio communication few seconds after establish when ModemManages sends few AT commands.
https://stackoverflow.com/questions/24696527/modem-manager-and-ttyacm-in-use

Simple solution:
systemctl stop ModemManager.service

Advanced solution:
Add VID, PID to udev rules with ENV{ID_MM_DEVICE_IGNORE}="1" attribute
https://linux-tips.com/t/prevent-modem-manager-to-capture-usb-serial-devices/284/2
