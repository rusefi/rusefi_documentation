# How to Update Firmware

This guide updates the software on your ECU. Updating rusEFI tuner on your
computer does not update the ECU.

<!-- this URL is hard-coded in rusEFI tuner splash screen MAKE SURE NOT TO RENAME -->

## Before updating

- Stop the engine. Save a copy of the current tune on your computer before
  starting; if you cannot connect, preserve any backup you already have.
- Disconnect other ECUs; connect only the ECU you intend to update.
- Confirm your ECU model and chosen [firmware channel](Release-Snapshot-Latest-firmware).
  The standard Windows installer uses snapshots for updates; use the matching
  Release/LTS bundle if you want to remain on that channel.
- Use stable power and a reliable USB connection. Keep both connected until
  the update and any settings conversion finish.

For board-specific files, [download the bundle](Download) for your ECU. Installing
rusEFI tuner on your computer does not update the ECU.

## Windows

For the installed universal application, launch [rusEFI tuner](Console) from its
desktop shortcut or Windows Start menu. If you downloaded a board-specific
Release/LTS bundle, launch the application from that extracted bundle instead
to use its firmware channel. Starting the installed universal application does
not select firmware from another bundle you downloaded. Existing launcher
filenames containing `updater` or `console` are unchanged.

1. Connect the ECU and choose __Update ECU firmware__ in the startup window or
   the __Device__ tab.
2. Check the ECU board and firmware channel, then follow the prompts. Leave
   __Try to keep my current tune__ selected when offered. This attempts to
   preserve the tune; it is not a guarantee.
3. Keep power and USB connected while the update and any settings conversion
   finish. Review the result and any warnings before using the ECU.

__Update application__ updates rusEFI tuner on your computer, not the ECU firmware.

If the ECU is detected in recovery mode, the same button changes to __Recover ECU__.
Recovery can erase firmware and settings. Use it only when your board's
instructions call for it; see [Recovery / emergency programming (DFU)](HOWTO-DFU).
Manual programming options remain under __Advanced programming tools__; see
[Advanced Programming Options](Advanced-Programming-Options) for their purpose,
availability, and risks.

## Check the result

- Read the update report and any settings-conversion warnings. Some settings
  may need to be entered again.
- When rusEFI tuner reconnects, check that it shows the firmware version you
  wanted. If it does not reconnect automatically, reconnect manually and check
  the version; this may be needed after programming.
- Check the settings before using the ECU again. If you use
  TunerStudio, also check its [definition file](#update-tunerstudio-definition).

If the update fails or the ECU does not reconnect, save the error or report and
use [Troubleshooting](#troubleshooting). Do not try erase or recovery options at
random.

## Advanced programming options

The normal __Update ECU firmware__ flow chooses a supported programming method
for you. Use [Advanced Programming Options](Advanced-Programming-Options) only
when your exact ECU's instructions call for a manual action. That page describes
the actions under __Advanced programming tools__ and distinguishes manual
programming from destructive erase and bootloader operations. For DFU recovery,
see [Recovery / emergency programming (DFU)](HOWTO-DFU).

## Compare downloaded firmware

With an ECU connected, choose __Actions > Compare ECU with Downloaded
Firmware…__ in rusEFI tuner to compare it with firmware already downloaded to
your computer. This is a comparison, not a firmware update.

Check the [release channel](Release-Snapshot-Latest-firmware) before deciding
to update. The installed universal application uses snapshots by default;
launch the application from your Release/LTS bundle to use that bundle's channel.

## Linux

Follow the [Windows update steps](#windows). USB-serial OpenBLT also works on
Linux with a supported ECU and bundle, using 64-bit Java. Programming over CAN
has separate adapter and configuration requirements; see
[Advanced Programming Options](Advanced-Programming-Options).

Linux DFU programming uses `dfu-util`. Use it only when your board's instructions
call for it, not just because a normal update failed.

### Advanced: legacy DFU procedure

Use these commands only if your board's procedure calls for a compatible
`rusefi.dfu` file. Many bundles do not include `.dfu` files. Do not substitute
another image without the correct instructions.

Manual programming can erase firmware and settings, including the tune. Back up
what you can and confirm these steps for your exact ECU before proceeding.

You will need dfu-util:

``` shell
# Debian/Ubuntu
sudo apt install dfu-util
# Arch/Manjaro
sudo pacman -Syu dfu-util
```

Once you have dfu-util, you can run this from the extracted bundle directory:

``` shell
java -jar console/rusefi_console.jar reboot_dfu

dfu-util -a 0 -D rusefi.dfu
```

After manual programming, rusEFI tuner may not reconnect automatically. Reconnect
manually if needed, then check the installed firmware version and settings.

## DFU mode

The application handles the programming method for a normal update where
supported; you do not need to choose between OpenBLT and DFU. __Recovery / emergency
programming (DFU)__ is a separate, advanced procedure. Use it only when the
instructions for your exact ECU call for it, not just because an update failed.

In DFU mode, the normal firmware heartbeat is not running. On Windows, the
expected device name with the current driver is "STM32 BOOTLOADER". LED layouts
vary by board; see [LED states](LED-states) and your board's documentation.

<img width="228" alt="image" src="https://github.com/user-attachments/assets/1c3fb5cb-5eb7-4a7f-974e-6f82bd912f65" />

## Troubleshooting

1. Save the error and report. Note your ECU model, firmware version if known,
   bundle/channel, and whether it reconnects.
2. Check power, USB, and your board's [LED states](LED-states). Note the blue
   heartbeat and red status LEDs if fitted; LEDs alone do not explain the fault.
3. If your board requires DFU recovery, follow its instructions. Some boards
   enter DFU by holding __PROG__ during power-on; check yours first.
4. If the device still does not appear or you are unsure what to do, stop and
   ask for [support](Support) with the details above.

The recovery methods below can erase firmware and settings, including the tune.
Back up what you can and confirm the recovery steps for your exact ECU before
trying them. After recovery, restore a tune backup only after checking it is
appropriate for the installed firmware and ECU.

## Corrupted Option Bytes

Firmware versions between October 2025 and January 2026 were reported to be
fragile with poor power during calibration or firmware updates. If documented
DFU recovery cannot make "STM32 BOOTLOADER" appear, ST-LINK restoration may be
needed. This is a specialist recovery procedure; the referenced procedure uses
a TC-2030 programming cable. Confirm the appropriate connection for your board
before proceeding.

Some technical details at https://github.com/rusefi/rusefi/issues/8926

## FAQ

### Q: Device is under Read Out Protection or Target is held under reset

A: Removing protection can erase firmware and settings. Check the cause and
recovery steps with your board's manual or support first. The advanced procedure
uses DFU mode and ``console\STM32_Programmer_CLI\bin\stm32-remove-read-out-protection.bat``,
then manual firmware programming in DFU mode.

*__Q:__ I got "DRIVER ERROR"*  
__A:__ In rusEFI tuner please hit "Device Manager". When ECU gets into DFU mode (blue LED stops blinking) you are expected to see a "STM32 Bootloader" device. If you see "STM device in DFU mode", please uninstall it and remove the old driver.

Bad

![x](Images/DeviceManager_dfu.png)

Good

![x](Images/DeviceManager_stm32_bootloader.png)

## More Information

For more about DFU see [HOWTO-DFU](HOWTO-DFU).

ST-LINK is an advanced mode of firmware update which requires ST-LINK device, either external or built-in like on Discovery and Nucleo boards.

## Update TunerStudio Definition

This section applies only if you use TunerStudio. After updating firmware,
TunerStudio needs the matching ECU definition (`.ini` file) to communicate
properly. It can normally download the matching definition automatically.

If you chose to do it manually, you can find the .ini file in the USB storage device that rusEFI board presents to your computer, or in the [rusEFI bundle](Download). You can also look it up online from the firmware signature - see [.ini Lookup Logic](INI-lookup-logic).

## Related pages

- [HOWTO DFU](HOWTO-DFU) - DFU (Device Firmware Update) mode: auto vs. manual, drivers, and troubleshooting.
- [HOWTO Flash using STM32CubeProgrammer](HOWTO-flash-using-Stm32CubeProgrammer) - advanced / last-resort flashing via STM32CubeProgrammer (DFU or ST-Link).
- [F7 Requires Full Erase](F7-requires-full-erase) - some F7 Proteus units require a full erase before a firmware update.
- [Hardware Validation Failed](HARDWARE-VALIDATION-FAILED) - diagnosing the "HARDWARE VALIDATION FAILED" startup error.
- [4chan F7 Initial Programming](4chan-F7-initial-programming) - one-time initial programming for AlphaX 4chan F7 boards.
- [Proteus F767 Programming Instructions](Proteus-F767-programming-instructions) - DFU + STM32CubeProgrammer procedure for Proteus 0.6 boards with the F767 chip.
