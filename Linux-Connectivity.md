# Device Recognition Issue When Connecting

When connecting rusefi to a Linux PC, you may encounter an issue where TunerStudio fails to detect the device when you click the “Detect” button.
To resolve this problem, try the following steps:

1. Add the user to the `uucp` group:

      ``` shell
      sudo usermod -aG uucp $USER
      ```

2. Restart the computer.
3. Reconnect the rusefi device to the computer and verify that it is successfully connected and recognized:

      ``` shell
      ls /dev/ttyACM*
      ```

4. Try detecting the unit in the TunerStudio interface again.
<br/><br/>
<br/><br/>

## Linux Connectivity Issues caused by ModemManager

CDC ACM is an interface mostly used for modems.
ModemManager tries to detect a modem on all newly added ttyACM devices.
This breaks TunerStudio communication few seconds after it is established when ModemManages sends a few AT commands.
https://stackoverflow.com/questions/24696527/modem-manager-and-ttyacm-in-use

Simple solution:
`systemctl stop ModemManager.service`

Advanced solution:
Add the VID and PID to udev rules with a `ENV{ID_MM_DEVICE_IGNORE}="1"` attribute
https://linux-tips.com/t/prevent-modem-manager-to-capture-usb-serial-devices/284/2

See also [Useful Linux Commands](Useful-Linux-Commands)
