# How to Update Firmware

This guide updates the software on your ECU. Updating rusEFI tuner on your
computer does not update the ECU.

<!-- this URL is hard-coded in rusEFI tuner splash screen MAKE SURE NOT TO RENAME -->

## Before updating

- Save a copy of the current tune on your computer before starting.
- Confirm your ECU model and chosen [firmware channel](Release-Snapshot-Latest-firmware).
  The standard Windows installer uses snapshots for updates; use the matching
  Release/LTS bundle if you want to remain on that channel.
- Use stable power and a reliable USB connection. Keep both connected until
  the update and any settings conversion finish.

For board-specific files, [download the bundle](Download) for your ECU. Recovery
mode is not needed to install the application or make a first connection.

## Windows

For the installed universal application, launch [rusEFI tuner](Console) from its
desktop shortcut or Windows Start menu. If you downloaded a board-specific
Release/LTS bundle, launch the application from that extracted bundle instead
to use its firmware channel. Starting the installed universal application does
not select firmware from another bundle you downloaded. Existing launcher
filenames containing `updater` or `console` are unchanged.

1. Connect the ECU and open __Update Firmware__ in the startup window, or the
   __Device__ tab if rusEFI tuner is already open.
2. Use the normal update button and follow the prompts. Its label depends on
   the connection and update mode. Use OpenBLT where supported; the options
   depend on your ECU and bundle. Use manual recovery only when your board's
   instructions require it.
3. Wait for the update and any settings conversion to finish. Keep power and
   USB connected, then check the result below.

## Check the result

- Read the update report and any settings-conversion warnings. Some settings
  may need to be entered again.
- Check that rusEFI tuner reconnects and shows the firmware version you wanted.
- Check the settings before using the ECU again. If you use
  TunerStudio, also check its [definition file](#update-tunerstudio-definition).

If the update fails or the ECU does not reconnect, save the error or report and
use [Troubleshooting](#troubleshooting). Do not try erase or recovery options at random.

## Compare downloaded firmware

With an ECU connected, choose __Actions > Compare ECU with Downloaded
Firmware…__ in rusEFI tuner to compare it with firmware already downloaded to
your computer. This is a comparison, not a firmware update.

Check the [release channel](Release-Snapshot-Latest-firmware) before deciding
to update. The installed universal application uses snapshots by default;
launch the application from your Release/LTS bundle to use that bundle's channel.

## Linux

Follow the [Windows update steps](#windows). USB-serial OpenBLT also works on
Linux with a supported ECU and bundle, using 64-bit Java. OpenBLT over CAN is a
separate option that requires Windows and PCAN.

Linux DFU programming uses `dfu-util`. Use it only when your board's instructions
call for it, not just because a normal update failed.

### Advanced: legacy DFU procedure

Use these commands only if your board's procedure calls for a compatible
`rusefi.dfu` file. Many bundles do not include `.dfu` files. Do not substitute
another image without the correct instructions.

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

## DFU mode

DFU is for advanced programming and recovery. Use OpenBLT for normal updates
where supported, or DFU when your ECU's instructions require it.

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

The recovery methods below can erase firmware and settings. Back up what you
can and confirm the recovery steps for your board before trying them.

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
