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

  <img width="1278" alt="Main screen" src="https://github.com/user-attachments/assets/6ee873d9-9a3e-4ab5-8a6f-b1630ea9e3f5" />


4. If the ECU connects successfully, combo10 automatically opens the setup
   wizard. Follow the on-screen steps to complete the engine configuration.
5. combo10 is now ready to use.

## Customize the dashboard

<img width="1280" alt="customize mode" src="https://github.com/user-attachments/assets/76a52af3-649f-4d95-acc6-ae495a10771c" />

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

<img width="1277" alt="Right side panel" src="https://github.com/user-attachments/assets/a17ab2fe-b4eb-4868-b6c3-dd12b08c5190" />


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
    installed software versions and date, set the date and timezone, and check
    for updates over Wi-Fi.

## Use the Tuning screen

On the main gauges screen, open the right-side panel and tap **Tuning** to adjust the ECU configuration
while monitoring live engine data.

<img width="1274" alt="Tuning screen" src="https://github.com/user-attachments/assets/a8805016-c875-460b-b03c-64a56d450aeb" />

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

<img width="1277" alt="combo10 dashboard" src="https://github.com/user-attachments/assets/9865cd81-4c8f-4ef3-9946-753cc081f41b" />

<img width="1273" alt="combo10 dashboard configuration" src="https://github.com/user-attachments/assets/b987ceb3-ceb8-4c30-9dd7-f34d80516b40" />

<img width="1280" alt="combo10 dashboard wizard" src="https://github.com/user-attachments/assets/4bb20ed9-e4aa-403f-8c4c-9ccb1953c309" />

## Date and time

Open the right-side panel and tap **About Device** to see the device date
and time.

When combo10 has internet access, the OSm obtains the current time
from an NTP server and saves it to the hardware clock. NTP remains authoritative
and may correct a date that was entered manually.

To set the date without internet:

1. Open **About Device**.
2. Tap **Set Date & Time**.
3. Press **SET DATE & TIME**, select today's year, month, and day, then press
   **APPLY**. The hour and minute do not need to be exact;
4. Tap **Apply**.

Manual setup is useful for logs and offline operation. updates apply an
additional time-validity check because an incorrect date can prevent HTTPS and
certificate verification.

### Delay after connecting to Wi-Fi

On `v0.3.7-beta` with Dash version `2026.0.88`, automatic time synchronization
usually completes quickly, but it can take about five minutes if combo10 booted
without internet. The NTP service may be waiting for a retry that was scheduled
before Wi-Fi connected. During this interval:

- Wi-Fi can show **Connected** while the date is still stale;
- **Check for Updates** can ask you to check the dashboard date; and
- the message does not necessarily mean that Wi-Fi, the RTC, or a manually
  entered date has failed.

Wait up to five minutes and check whether the displayed date changes. If the
device must remain offline, enter the current date manually instead.

### Known manual-date issue in v0.3.7-beta

`v0.3.7-beta` can reject an otherwise valid manual date earlier than
`2026-08-24 03:16:25 UTC`.Until the issue is fixed, enter the current date or
connect to the internet and allow NTP to synchronize it.


## Software versions

The device runs two independently versioned software components. Both versions
are shown on the **About Device** screen.

<img width="1278" alt="combo10 About Device screen" src="https://github.com/user-attachments/assets/65c05ea7-026d-4906-95e0-a89105cf08bd" />

| About Device row | Example | Meaning |
|---|---|---|
| **Dash version** | `2026.0.9` | Dashboard application: gauges, wizard, and tuning interface |
| **Subsystem version** | `20260708_aed9736` | Full device image: the operating system and bundled dashboard |

The Windows Dash Simulator displays desktop build information instead:

<img width="1278" alt="Windows Dash Simulator About Device screen" src="https://github.com/user-attachments/assets/e1e6f43f-1955-4749-ac3d-9dd03c322df1" />

### Dash version

The format is `YEAR.MAJOR.PATCH`, for example `2026.0.9`. A higher patch number
identifies a newer application release within the same year and major version.

The Dash version changes when you:

- install a autoupdate file;
- install a factory/recovery image

### Subsystem version

The format is `BUILDDATE_GITHASH`, for example `20260708_aed9736`. This means the
image was built on 2026-07-08 from commit `aed9736`. It corresponds to the full
image filename, such as `dwin_10in_20260708_aed9736.img.7z`.

The Subsystem version changes when an update contains a newer operating-system
base, including a factory image or applicable update.

> `screen_autoupdate_*.7z` filenames also contain a build date and Git hash.
> Those identify the application inside the update package; they do not become
> the Subsystem version.

## Check for updates over Wi-Fi

1. Connect combo10 to a Wi-Fi network with internet access.
2. Open **About Device**.
3. Confirm that the displayed date is current. If it is stale immediately after
   connecting, see [Delay after connecting to Wi-Fi](#delay-after-connecting-to-wi-fi).
4. Tap **Check for Updates**.

Keep the device connected to reliable power while downloading or installing an
update.

### Interpreting connection errors

Some versions combine several causes into the same update-server or dashboard-
date message. Do not assume every such message is a Wi-Fi failure.

| Situation | Likely condition | What to do |
|---|---|---|
| Wi-Fi just connected and the displayed date is stale | NTP synchronization is waiting for its next retry | Wait up to five minutes, then check again |
| The date is current but GitHub does not respond | GitHub timeout or temporary server problem | Wait briefly and retry |
| Repeated checks fail after many requests | GitHub may be rate-limiting requests | Stop repeated checks, wait, and try again later |
| Wi-Fi is connected but other internet services also fail | DNS, routing, hotspot, or internet-access problem | Reconnect Wi-Fi or try a different network/hotspot |
| Certificate/date message remains after waiting | Time is still not trusted or certificate validation failed | Verify the displayed date; synchronize with NTP or set the current date manually |

This UX defect and will be fixed on newer versions.

## Update using USB on current systems

### Set the date before an offline update

1. Open the dashboard side panel and press **ABOUT DEVICE**.
2. Check the live **Local date & time** value.
3. Press **SET DATE & TIME**, select today's year, month, and day, then press
   **APPLY**. The hour and minute do not need to be exact;

update certificates have a validity period, so Combo10 needs a valid
calendar date even when the update arrives on a USB drive.

After a reboot without Wi-Fi, confirm that the dialog shows today's date and
press **APPLY** again before starting an offline update.

Wi-Fi and USB use the same bundle and installer.

1. Download `combo10_update.7z` [from the releases](https://github.com/rusefi/combo10-releases/releases). An already
   extracted `combo10-t113-10inch-stable.raucb` is also supported.
2. Format a USB drive as FAT32.
3. Copy exactly one supported update to the root of the drive. Do not rename it.
4. Safely eject the drive from the computer before unplugging it.
5. Insert it into the running combo10 device.
6. Keep power connected while combo10 unpacks, verifies, and installs the
   update to the inactive A/B slot.
7. Allow the device to reboot automatically.

1. Download `screen_autoupdate_*.7z` from the
   [combo10 releases page](https://github.com/rusefi/combo10-releases/releases).
2. Format a USB drive as FAT32.
3. Copy `screen_autoupdate_*.7z` to the root of the drive. Do not extract it.
4. Safely eject the drive from the computer.
5. Insert it into the running combo10 device.
6. Wait for the update to finish and for the dashboard to restart.

This updates the Dash version but leaves the Subsystem version unchanged.

## Troubleshooting and support information

Open **ABOUT DEVICE** from the right-side menu. For additional diagnostic
information, press and hold **ABOUT DEVICE** for 5 seconds, or tap the
status circle in the bottom-right corner. Hold the status circle for 2 seconds
to enable dragging, move it while the yellow ring is visible, and release it
at the desired location.

<img width="1279" alt="combo10 diagnostic information" src="https://github.com/user-attachments/assets/411ea250-44f0-42b4-80f0-db58d9469696" />


## FAQ

### Where is the source code?

combo10 is not open source.

### Size?

display is about 135mm tall, overall PCB is about 155mm tall

