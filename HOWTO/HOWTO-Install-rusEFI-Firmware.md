### Install firmware on Frankenstein, Frankenso, and Discovery

1. Connect the stm32f4discovery ('brain board') to the IO board, place jumpers like XYZ, then connect to a PC with a mini-USB cable. Mini-USB cable is used to power and to program the brain board. See below procedure found [here](http://rusefi.com/forum/viewtopic.php?f=5&t=210&start=23)

2. Before loading rusEFI firmware - if you have one of the newer Rev D STM32 discovery boards - you need to update discovery's firmware. That's in the "Firmware" dialog of ST Link utility, as shown in this picture. 
![STLink Firmware Update](Images/Stlink_firmware_update.png)

![Discovery Upload Wire](Images/discovery_upload_wire.JPG)
* To upload the binary image into the microcontroller you will need to download & install [STM32 ST-LINK utility](http://www.st.com/st-web-ui/static/active/en/st_prod_software_internet/resource/technical/software/utility/stsw-link004.zip). (this is both the utility and the driver) Once installed it will look like this.
![STLink Utility](Images/st_link_utility.png)
* You should click '''Target --> Program...''' , browse to the rusefi.bin you have downloaded and hit Start button like this
![STLink Start](Images/st_link_start.png)
* After you have programmed the chip, you should click '''Target --> Disconnect''' and hit the '''black button''' on the discovery board '''to reset''' the firmware. After you hit the reset button, you should expect all four LEDs to blink once and then you should see just the '''blue LED blinking'''. If all is good, proceed to the Dev Console below.
