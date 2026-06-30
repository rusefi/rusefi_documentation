# CANbus to WiFi adapter

## Device Overview

<img width="1280" height="960" alt="photo_2026-06-30_22-48-54" src="https://github.com/user-attachments/assets/90a8e251-0b6d-47c8-bb20-b4f6cd6d0c2b" />

The **rusEFI CANbus to WiFi adapter** is a compact wireless interface designed specifically to connect to **rusEFI Electronic Control Units (ECUs)** over Wi-Fi network. It enables seamless wireless tuning and logging by bridging data between a standard Wi-Fi connection and the ECU's CAN bus interface.

### Key Features

* **Standard CAN Bus Support**: Optimized for standard CAN communication (non-CAN FD) running at a fixed **500K baud rate**.
* **Wireless TunerStudio Integration**: Translates TCP traffic from/to TunerStudio to/from **IsoTP over CAN** messages, allowing wireless ECU tuning and logging.
* **Plug-and-Play ECU Detection**: Automatically scans the CAN bus for a specific rusEFI "announce" packet. Upon detection, it automatically extracts and configures the required CAN IDs for IsoTP communication.
* **Zero Configuration Network**: Operates as a standalone Wi-Fi Access Point with no complex login screens or setup required.

### Network and TunerStudio Configuration

To connect your tuning software to the ECU, use the following network parameters:

* **Wi-Fi SSID**: `rusEFI CAN2WiFi` (Open network, no password)
* **Bridge IP Address**: `192.168.4.1`
* **TunerStudio TCP Port**: `29001`

<img width="584" height="372" alt="Screenshot from 2026-06-30 22-38-32" src="https://github.com/user-attachments/assets/a04812c4-828c-4edb-a33a-36fa7d963876" />

### Software Compatibility Note

* **TunerStudio**: **TunerStudio Lite (the free version) does not support TCP/IP Wi-Fi connections.** To use this wireless bridge with TunerStudio, you must purchase a license for **TunerStudio MS** or **TunerStudio Ultra**.
* **rusEFI Console**: The official **rusEFI console** fully supports TCP/IP connections natively and works with this device out of the box.

## Initial Firmware Flashing

The primary method for flashing the Device for the first time is via a USB connection using a Windows PC. 

1. Connect the device to your computer using a USB cable.
2. Locate and run the `upload.bat` script to begin the automated installation process.

**RECOMMENDATION:** It is highly recommended to completely disconnect the **CAN and 12V power supply connector** before connecting the device via USB to prevent potential hardware conflicts.

## Over-The-Air (OTA) Firmware Updates

Once the initial flashing is complete, future firmware updates can be performed wirelessly through the built-in web interface.

1. Connect your computer or smartphone to the **`rusEFI CAN2WiFi`** Wi-Fi network (no password required).
2. Open your preferred web browser and navigate to **`192.168.4.1`** (no login credentials needed).
3. Click the **Browse...** button to open the file picker.
4. Locate and select the updated **`CAN-wifi-esp32-bridge.bin`** file from new release.
5. Click **Upload** to initiate the update process.
6. Wait for the process to finish. The device will reboot, and the **`rusEFI CAN2WiFi`** Wi-Fi network will reappear once the update is successful.
