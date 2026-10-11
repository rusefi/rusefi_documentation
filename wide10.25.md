# Wide 10.25 screen

sibling of [combo10](combo10)

## .ini file

There are three ways for dash to grab .ini and start talking to your ECU
* some rusEFI units would transmit .ini via CANbus - note yellow circle status, just give it time
* we would also scan USB thumb for .ini files and pick compatible one

## wiring

BLACK GND

YELLOW +12v

SOLID GREEN CAN High

GREEN/BLACK CAN Low

## Update via USB

* Download [latest](https://github.com/rusefi/combo10-releases/releases/latest/download/wide-10.25.zip)
* unzip onto USB thumb drive
* use proper "Eject USB" to make sure USB is safe
* insert into "USB OTG" plug of dash
* follow on-screen instructions for update
* remove during reboot to not keep installing forever


## dimentions

wide10 F10 style 360x115mm

<img width="789" height="344" alt="image" src="https://github.com/user-attachments/assets/96a9e6ca-711e-450d-b945-36b966980238" />


## Update the Dash MCU

The MCU firmware is separate from the dashboard software. The dashboard tracks
the minimum supported MCU version and shows **Update required** in the MCU
update view when the installed version is older. This warning does not block
the ECU connection.

Download the [MCU update ZIP](https://raw.githubusercontent.com/rusefi/combo10-releases/main/wide10.25/wide10.25_mcu_update.zip).
Use a separate USB drive for this update; do not combine MCU and dashboard
update files on the same drive.

1. Unzip the MCU update ZIP into the root of a FAT32 USB drive, not a subfolder.
   Keep the filenames unchanged and remove any
   other files from the drive.
2. Safely eject the USB drive before unplugging it from your computer.
3. Open **About Device → Update MCU**. Follow the on-screen confirmation to
   start the update.
4. Keep power connected and leave the drive inserted until the update finishes.
   Confirm that the screen reports the running MCU version, then remove the drive.

