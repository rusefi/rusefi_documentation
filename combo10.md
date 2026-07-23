# combo10

combo10 is a 10-inch touchscreen dashboard for rusEFI. It includes:

- a customizable dashboard;
- an initial engine-configuration wizard;
- limited on-device tuning support; and
- a Windows Dash Simulator.

This guide explains how to try the dashboard on Windows, flash combo10 hardware,
and confirm that the installation is working.

## Downloads

Download the latest files from the
[combo10 releases page](https://github.com/rusefi/combo10-releases/releases).

The release may contain several packages:

| File | Use |
|---|---|
| `dwin_10in_*.img.7z` | Full hardware image for an SD card |
| `Dash-Windows-x64-*.zip` | Windows Dash Simulator |
| `screen_autoupdate_*.7z` | Dashboard application update for hardware that is already installed |

## Try the Windows Dash Simulator

The simulator lets you explore the dashboard, menus, gauges, and general user
interface without flashing an SD card.

1. Download `Dash-Windows-x64-*.zip` from the releases page.
2. Extract the ZIP file to a folder on your computer.
3. Run the dashboard executable from the extracted folder.

The simulator can display the interface without an ECU. Features that read or
write ECU configuration, including the setup wizard, require an ECU connection.

<img width="1277" height="795" alt="combo10 dashboard" src="https://github.com/user-attachments/assets/9865cd81-4c8f-4ef3-9946-753cc081f41b" />

<img width="1273" height="660" alt="combo10 dashboard configuration" src="https://github.com/user-attachments/assets/b987ceb3-ceb8-4c30-9dd7-f34d80516b40" />

<img width="1280" height="825" alt="combo10 dashboard wizard" src="https://github.com/user-attachments/assets/4bb20ed9-e4aa-403f-8c4c-9ccb1953c309" />


## Flash combo10 hardware

### What you need

- combo10 hardware with the 10-inch display;
- an SD card with at least 2 GB of capacity;
- an SD card reader; and
- a Windows or Linux computer.

> **Warning:** Flashing an image erases everything on the selected SD card.
> Check the selected drive carefully before writing the image.

### 1. Download and extract the image

Download the latest `dwin_10in_*.img.7z` file, then extract it. The extracted
file has an `.img` extension.

### 2. Write the image to the SD card

On Windows, use an image-writing tool such as
[Rufus](https://rufus.ie/) or
[Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/).
Select the extracted `.img` file and write it to the **whole SD card**, not to a
partition.

On Linux, identify the SD card with `lsblk`, then write the image with:

```sh
7z x -so dwin_10in_*.img.7z | sudo dd of=/dev/sdX bs=4M status=progress conv=fsync
```

Replace `/dev/sdX` with the device for your SD card. Selecting the wrong device
can erase another disk.

### 3. Install the image on the device

1. Power off combo10.
2. Insert the flashed SD card.
3. Power on the device.
4. Wait while the screen displays **Updating firmware - do not power off**.
   Installation normally takes about one or two minutes.
5. When **Update complete - remove SD card and reboot** appears, power off the
   device and remove the SD card.
6. Power on the device again without the SD card.

The device now boots from its internal storage and starts the dashboard
automatically. Do not interrupt power while an installation or update is in
progress.

## Test the installation

After the dashboard starts:

1. Confirm that the touchscreen responds and the side menu opens.
2. Open **ABOUT DEVICE** from the right-side menu.
3. Confirm that **Dash version** and **Subsystem version** contain values.
4. Connect the ECU and verify that the connection indicator changes state.
5. Open the setup wizard and complete the required engine configuration.
6. Return to the dashboard and confirm that gauges receive live ECU values.

Without an ECU, you can still inspect the dashboard and menus, but live values,
the setup wizard, and ECU tuning operations cannot be fully tested.

## Software versions

The device runs two independently versioned software components. Both versions
are shown on the **About Device** screen.

<img width="1278" height="800" alt="combo10 About Device screen" src="https://github.com/user-attachments/assets/65c05ea7-026d-4906-95e0-a89105cf08bd" />

| About Device row | Example | Meaning |
|---|---|---|
| **Dash version** | `2026.0.9` | Dashboard application: gauges, wizard, and tuning interface |
| **Subsystem version** | `20260708_aed9736` | Full device image: the operating system and bundled dashboard |

The Windows Dash Simulator displays desktop build information instead:

<img width="1278" height="798" alt="Windows Dash Simulator About Device screen" src="https://github.com/user-attachments/assets/e1e6f43f-1955-4749-ac3d-9dd03c322df1" />

### Dash version

The format is `YEAR.MAJOR.PATCH`, for example `2026.0.9`. A higher patch number
identifies a newer application release within the same year and major version.

The Dash version changes when you:

- install a full SD-card image; or
- apply a `screen_autoupdate_*.7z` package from a FAT32 USB drive.

### Subsystem version

The format is `BUILDDATE_GITHASH`, for example `20260708_aed9736`. This means the
image was built on 2026-07-08 from commit `aed9736`. It corresponds to the full
image filename, such as `dwin_10in_20260708_aed9736.img.7z`.

The Subsystem version changes only after installing a full SD-card image. A USB
application update does not change it.

> `screen_autoupdate_*.7z` filenames also contain a build date and Git hash.
> Those identify the application inside the update package; they do not become
> the Subsystem version.

## Update only the dashboard application

Use this method when combo10 is already installed and you only need a newer
dashboard application:

1. Format a USB drive as FAT32.
2. Copy `screen_autoupdate_*.7z` to the root of the drive. Do not extract it.
3. Safely eject the drive from the computer.
4. Insert it into the running combo10 device.
5. Wait for the update to finish and for the dashboard to restart.

This updates the Dash version but leaves the Subsystem version unchanged.

## Troubleshooting and support information

Open **ABOUT DEVICE** from the right-side menu. For additional diagnostic
information, press and hold **ABOUT DEVICE** for five seconds, or press the
status circle in the bottom-right corner.

<img width="1279" height="798" alt="combo10 diagnostic information" src="https://github.com/user-attachments/assets/411ea250-44f0-42b4-80f0-db58d9469696" />


## FAQ

### Where is the source code?

combo10 is not open source.

