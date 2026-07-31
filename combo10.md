# combo10

## TL, DR

https://github.com/rusefi/combo10-releases/releases

## Combo10

combo10 is a 10-inch touchscreen dashboard for rusEFI. It includes:

- a customizable dashboard;
- an initial engine-configuration wizard;
- limited on-device tuning support; and
- a Windows Dash Simulator.

## Get started with combo10

1. Connect the ECU to combo10. Make sure the ECU is powered on or the ignition
   is on. Skip this step if you only want to explore the combo10 dashboard
   without ECU connectivity.
2. Connect combo10 to a 12–36 V power supply and power it on.
3. combo10 starts and displays the dashboard screen shown below.

  <img width="1278" height="795" alt="Main screen" src="https://github.com/user-attachments/assets/6ee873d9-9a3e-4ab5-8a6f-b1630ea9e3f5" />


4. If the ECU connects successfully, combo10 automatically opens the setup
   wizard. Follow the on-screen steps to complete the engine configuration.
5. combo10 is now ready to use.

## Customize the dashboard

<img width="1280" height="794" alt="customize mode" src="https://github.com/user-attachments/assets/76a52af3-649f-4d95-acc6-ae495a10771c" />

Press and hold any gauge for 2 seconds to open its customization menu. The
gauge being edited is highlighted with a yellow outline. The following controls
are available:

- **Search:** Opens the gauge-selection screen, where you can search for and
  select one of the available gauge types.
- **Resize:** Drag upward to make the gauge larger or downward to make it
  smaller.
- **Drag:** Drag the gauge to move it to a different position on the dashboard.
- **Arrange:** Changes the gauge's stacking position, moving it forward or
  backward relative to other gauges.
- **Delete:** Removes the gauge from the dashboard.
- **Set Max:** Sets the maximum value displayed by the gauge.
- **Dec On:** Enables decimal values. For example, a value displayed as `0`
  becomes `0.0`.
- **Set Danger:** Sets the value at which the gauge enters the danger zone.
- **Mode:** Selects one of four display styles: gauge, text/digital, vertical
  bar, or horizontal bar.

While editing a gauge, tap anywhere outside it to apply your changes. You can
also apply them by tapping the confirmation button on the right-side panel.

<!-- Add gauge-customization image here. -->

## Use the right-side panel

<img width="1277" height="802" alt="Right side panel" src="https://github.com/user-attachments/assets/a17ab2fe-b4eb-4868-b6c3-dd12b08c5190" />


The right-side panel provides access to dashboard layouts, ECU configuration,
diagnostic tools, and device information:

1. **Add Gauge:** Adds a new gauge at a random position on the dashboard.
   You can then move, resize, and customize it.
2. **Tuning:** Opens the Tuning screen, where you can adjust the desired ECU
   configuration while viewing live data at the bottom of the screen.
3. **Wizard:** Opens the setup wizard. Use it to configure the ECU for the first
   time or reset and reconfigure an ECU that has already been set up. The wizard
   is a linked sequence: its steps must be completed in order and cannot be
   modified separately after completion.
4. **Commands:** Opens the Commands screen, where you can test ECU-controlled
   components such as spark plugs and injectors.
5. **Pinout:** Opens the Pinout screen, where you can check ECU connections and
   view the description of each pin and the color legend.
6. **Save As:** Opens the Save As screen, where you can save the current gauge
   layout.
7. **Load:** Opens the Load screen, where you can load a previously saved gauge
   layout.
8. **Background:** Opens the background-selection screen. To import an image,
   copy one or more PNG files to the root of a FAT32-formatted USB drive and
   insert it into a USB port on the right side of combo10. Select an image and
   tap **Apply**. Images are automatically cropped and resized; for the best
   results, use a 1280 x 800. Tap **Restore Default** to
   remove the custom background.
9. **Reset Layout:** Restores the default gauge layout.
10. **About Device:** Opens the About Device screen, where you can check the
   installed software versions.

## Use the Tuning screen

On the main gauges screen, open the right-side panel and tap **Tuning** to adjust the ECU configuration
while monitoring live engine data.

<img width="1274" height="804" alt="Tuning screen" src="https://github.com/user-attachments/assets/a8805016-c875-460b-b03c-64a56d450aeb" />

The left side of the Tuning screen contains the configuration menu. Use the
search bar above the menu to find a specific item, then select the item to open
its settings in the main area of the screen.

Eight digital live gauges remain visible along the bottom of the screen. These
gauges cannot be removed, but you can change the data shown by each one:

1. Tap the gauge that you want to change.
2. On the gauge-selection screen, search for the required gauge type.
3. Select the gauge type to assign it to that position.

To view additional live data, tap the arrow button at the upper-right corner of
the gauge area. This opens the extended live-data panel.

## Try the Windows Dash Simulator

The simulator lets you explore the dashboard, menus, gauges, and general user
interface without flashing an SD card.

1. Download `Dash-Windows-x64-*.zip` from the [releases page](https://github.com/rusefi/combo10-releases/releases).
2. Extract the ZIP file to a folder on your computer.
3. Run the dashboard executable from the extracted folder.

The simulator can display the interface without an ECU. Features that read or
write ECU configuration, including the setup wizard, require an ECU connection.

<img width="1277" height="795" alt="combo10 dashboard" src="https://github.com/user-attachments/assets/9865cd81-4c8f-4ef3-9946-753cc081f41b" />

<img width="1273" height="660" alt="combo10 dashboard configuration" src="https://github.com/user-attachments/assets/b987ceb3-ceb8-4c30-9dd7-f34d80516b40" />

<img width="1280" height="825" alt="combo10 dashboard wizard" src="https://github.com/user-attachments/assets/4bb20ed9-e4aa-403f-8c4c-9ccb1953c309" />


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

1. Download `screen_autoupdate_*.7z` from the
   [combo10 releases page](https://github.com/rusefi/combo10-releases/releases).
2. Format a USB drive as FAT32.
3. Copy `screen_autoupdate_*.7z` to the root of the drive. Do not extract it.
4. Safely eject the drive from the computer.
5. Insert it into the running combo10 device.
6. Wait for the update to finish and for the dashboard to restart.

This updates the Dash version but leaves the Subsystem version unchanged.

## Major image update

A major image update replaces the operating system and the bundled dashboard.
It is not required for initial setup. Use this procedure only when a combo10
release or support instructions specifically call for a full image update.

### What you need

- an SD card with at least 2 GB of capacity;
- an SD card reader; and
- a Windows or Linux computer.

> **Warning:** Writing an image erases everything on the selected SD card.
> Check the selected drive carefully before writing the image.

### 1. Download and extract the image

Download the latest `dwin_10in_*.img.7z` file from the
[combo10 releases page](https://github.com/rusefi/combo10-releases/releases),
then extract it. The extracted file has an `.img` extension.

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

### 3. Update combo10

1. Power off combo10.
2. Insert the prepared SD card.
3. Power on the device.
4. Wait while the screen displays **Updating firmware - do not power off**.
   The update normally takes about 1 or 2 minutes.
5. When **Update complete - remove SD card and reboot** appears, power off the
   device and remove the SD card.
6. Power on the device again without the SD card.

The device now boots the updated system from its internal storage and starts the
dashboard automatically. Do not interrupt power while an update is in progress.

### Confirm the major update

After the dashboard starts, open **ABOUT DEVICE** from the right-side menu and
confirm that **Dash version** and **Subsystem version** contain the expected
values.

## Troubleshooting and support information

Open **ABOUT DEVICE** from the right-side menu. For additional diagnostic
information, press and hold **ABOUT DEVICE** for 5 seconds, or tap the
status circle in the bottom-right corner. Hold the status circle for 2 seconds
to enable dragging, move it while the yellow ring is visible, and release it
at the desired location.

<img width="1279" height="798" alt="combo10 diagnostic information" src="https://github.com/user-attachments/assets/411ea250-44f0-42b4-80f0-db58d9469696" />


## FAQ

### Where is the source code?

combo10 is not open source.
