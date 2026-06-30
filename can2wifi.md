# CANbus to WiFi adapter

## Initial Firmware Flashing

The primary method for flashing the Device for the first time is via a USB connection using a Windows PC. 

1. Connect the device to your computer using a USB cable.
2. Locate and run the `upload.bat` script to begin the automated installation process.

**RECOMMENDATION:** It is highly recommended to completely disconnect the **CAN and 12V power supply connector** before connecting the device via USB to prevent potential hardware conflicts.

---

## Over-The-Air (OTA) Firmware Updates

Once the initial flashing is complete, future firmware updates can be performed wirelessly through the built-in web interface.

1. Connect your computer or smartphone to the **`rusEFI CAN2WiFi`** Wi-Fi network (no password required).
2. Open your preferred web browser and navigate to **`192.168.4.1`** (no login credentials needed).
3. Click the **Browse...** button to open the file picker.
4. Locate and select the updated **`CAN-wifi-esp32-bridge.bin`** file from new release.
5. Click **Upload** to initiate the update process.
6. Wait for the process to finish. The device will reboot, and the **`rusEFI CAN2WiFi`** Wi-Fi network will reappear once the update is successful.
