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
