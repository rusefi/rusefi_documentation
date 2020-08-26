## HOWTO use custom build of rusEfi for CAN bus sniffing

In this HOWTO I will explain how to see raw CAN message flow with less than $30 in hardware & some free software.

## Step 1: shopping cart

1. Get an [http://www.st.com/web/catalog/tools/FM116/SC959/SS1532/PF252419 STM32F4DISCOVERY] micro-controller board - there are 'Order Now' buttons at the bottom of the official page.

http://www.st.com/st-web-ui/static/active/en/fragment/product_related/rpn_information/board_photo/stm32f4_discovery.jpg

2. Get an [http://www.wvshare.com/product/SN65HVD230-CAN-Board.htm SN65HVD230 CAN Board]
http://www.wvshare.com/img/preview/SN65HVD230-CAN-Board.jpg

3. Get a "OBD2 16-Pin Male to Female Diagnostic Extension Cable" on eBay
http://rusefi.com/images/forum_posts/CAN/OBD2_16_Pin_Male_to_Female_Diagnostic_Extension_Cable.jpg

4. Get a microUSB cable (one which comes with any Android phone)

## Step 2: putting hardware together

Cut the OBD extension cord into two pieces, we would need the part with the male connector. Find the wires for pins #6 and #14

http://rusefi.com/images/forum_posts/CAN/obd2_connector.png

Run some wires from these pins to CANH (high) and CANL (low) screw terminals of the can module.

Here is how the end result should look like:
http://rusefi.com/images/forum_posts/CAN/hardware.jpg

Ignore the white wire - we do not need it.

Run female-female jumper wires to connect TX on the CAN module with pin PB6 on the discovery board. RX on the module to pin PB12. GND to GND. +3v to +3v.

Hardware is ready!

http://rusefi.com/images/forum_posts/CAN/hardware2.jpg

## Step 3: software
1. Download and install [http://www.st.com/web/en/catalog/tools/PF258168 STSW-LINK004 STM32 ST-LINK utility]

2. Firmware: download and unzip [http://rusefi.com/images/forum_posts/CAN/rusefi_can_sniffer.zip rusefi_can_sniffer.zip]

2. Uploading the firmware: Connect stm32f4discovery to your laptop using a mini-USB cable (one should come with the board), install driver, start St-Link Utility.
http://rusefi.com/images/forum_posts/st_link_utility.png

click 'Target'>'Program...'

http://rusefi.com/images/forum_posts/st_link_start.png
Point the utility to the rusefi_can_sniffer.hex file and hit 'Start'

Close ST Link Utility.

3. Now it's time to connect the micro USB cable. Keep miniUSB cable connected - you should have two USB cables connected. When you do this for the first time your Windows would prompt for drivers, you should download & install [http://www.st.com/web/en/catalog/tools/PF257938 virtual COM driver]

Once the driver is installed, you can verify serial connectivity by opening your Device Manager - we are expecting to see a Virtual COM Port.
http://rusefi.com/images/forum_posts/device_manager.png
Remember the number of the COM port.

4. Download and launch [http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html Putty] telnet application.

http://rusefi.com/images/forum_posts/putty.png

http://rusefi.com/images/forum_posts/CAN/hardware3.jpg

Now connect the obd connector to your vehicle and you should see the CAN messages flowing in putty.
http://rusefi.com/images/forum_posts/CAN/end_result.jpg
