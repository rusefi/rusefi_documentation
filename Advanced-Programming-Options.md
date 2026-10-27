# Advanced Programming Options

For a normal firmware update, start with [How to Update Firmware](HOWTO-Update-Firmware).
The **Update ECU firmware** button chooses a supported programming method for you;
you normally do not need to select DFU or OpenBLT. If the ECU is already detected
in DFU recovery, the button may instead say **Recover ECU**. Follow the normal
guide first, save a tune backup if possible, and check the firmware version and
settings afterward. Keeping the tune is an attempt, not a guarantee.

Use **Advanced programming tools** only when the instructions for your exact ECU
call for a manual action. Available entries depend on your computer, detected
device, firmware bundle, and selected port. Stop the engine and maintain stable
power throughout programming. Connect only the ECU
you intend to program; a detected device or saved board selection does not prove
that the physical ECU is that model.

**Important:** **Full DFU Erase** mass-erases through DFU; **EMERGENCY WIPE
INTERNAL FLASH** erases the application/internal-settings region defined by a
validated wipe profile and leaves the ECU in OpenBLT; **Install OpenBLT** writes
a bootloader image. These are different
operations, not interchangeable recovery attempts. They can lose firmware and
settings or leave the ECU needing additional programming. Use none unless the
exact board procedure calls for it and you have a recovery plan.

## Available actions

| Menu label | What it does and when it is available |
| --- | --- |
| **Auto DFU Update** | Reboots a live, selected serial ECU into the STM32 DFU bootloader and programs its firmware. Available on Windows or Linux when DFU is supported and the bundle/target permits DFU. The normal update button already does this automatically when appropriate. |
| **Switch to DFU Mode** | Reboots the selected, live serial ECU into DFU without programming firmware. Available under the same DFU and live-connection conditions as Auto DFU Update. Use only when a board-specific procedure asks you to enter DFU as a separate step. |
| **Manual DFU Update** | Programs the detected DFU device without first rebooting a running ECU. Available on Windows or Linux when DFU recovery is permitted by the bundle and target. A universal bundle asks you to choose a board; this is a user selection, not automatic identification. A board-specific bundle does not provide that universal board picker. Confirm the exact ECU and firmware yourself. |
| **Pick Custom File [DFU]** | Lets you choose a `.bin` firmware image for the detected DFU device. Available when DFU programming is supported and allowed for the current bundle/target. This is a specialist action: use only a verified image for the exact ECU and follow its board-specific recovery instructions. |
| **Switch to OpenBLT Mode** | Requests that the selected serial ECU enter OpenBLT mode; it does not install firmware. Available for a detected serial ECU or OpenBLT port. Use only when the board procedure calls for this transition. |
| **Manual OpenBLT Update** | Programs firmware through the selected serial OpenBLT/serial programming port. Available when a usable serial port is detected. Use the correct board bundle and procedure; the application checks firmware/target information, but a saved target is not physical-board verification. USB-serial OpenBLT works on Windows and Linux with 64-bit Java. |
| **OpenBLT via CAN** | Runs the manual OpenBLT CAN programmer. This menu action is currently shown on Windows when a PCAN adapter is detected; the ECU must be reachable in OpenBLT mode and the matching firmware image must be available. It is not a generic SLCAN option. |
| **ST-LINK Update** | Programs firmware through a detected ST-LINK. This menu action is Windows-only and is hidden when the bundle/target requires OpenBLT. It is for boards with a supported ST-LINK connection and requires the correct board configuration and firmware; follow the board's programming instructions. It is not the normal update path. |
| **Install OpenBLT** | Uses the DFU device to install the bundle's OpenBLT bootloader image. It is shown only when DFU is allowed, a DFU device is detected, and the bundle contains that image. This is initial/bootloader programming, not a firmware update or an erase-and-recover shortcut. A wrong or interrupted bootloader write can prevent normal programming; do not use it without the exact board procedure. |

On Linux, DFU programming requires `dfu-util` and USB access to the device. See
the DFU guide for driver and recovery details.

For the normal **Update ECU firmware** action, USB-serial OpenBLT can also be
selected automatically. Automatic OpenBLT over CAN is separate from the manual
**OpenBLT via CAN** menu action: it requires an enabled CAN OpenBLT setting and a
matching live CAN connection. The automatic path supports PCAN and SocketCAN;
SLCAN is not supported for automatic OpenBLT flashing. Availability depends on
the host and the rusEFI tuner configuration.

## Destructive actions — stop and verify first

These options are not interchangeable. Do not try them at random, and do not use
them just because an update failed. They can remove firmware and settings,
including the tune. Keep stable power connected, preserve any tune backup, and
follow the procedure for the exact ECU. Do not assume that a particular erase
leaves a usable bootloader or that a tune can be restored.

| Menu label | Effect and restriction |
| --- | --- |
| **Full DFU Erase** | Requests a mass erase through the STM32 DFU interface. It erases internal flash rather than installing firmware; firmware and settings can be lost, and the ECU may need separate programming before it can run again. It is available only with a detected DFU device when DFU is allowed. Proceed only if the exact board procedure specifically requires this operation and you have a recovery plan. |
| **EMERGENCY WIPE INTERNAL FLASH** | Applies only to a positively detected serial OpenBLT target for which the bundle has a validated, matching wipe profile. It erases the supported application/internal-settings region, including the tune; the ECU remains in OpenBLT and needs a subsequent **Manual OpenBLT Update**. The tune is not restored automatically. It is a narrowly scoped emergency operation, not a general-purpose erase. |

## Board-specific and manual recovery references

- [Recovery / emergency programming (DFU)](HOWTO-DFU) explains DFU mode, drivers,
  board-specific entry, and manual recovery.
- [STM32CubeProgrammer flashing](HOWTO-flash-using-Stm32CubeProgrammer) covers
  specialist DFU or ST-LINK programming.
- Check the instructions for your board, including [F7 full erase](F7-requires-full-erase),
  [4chan F7 initial programming](4chan-F7-initial-programming), and
  [Proteus F767 programming](Proteus-F767-programming-instructions), where applicable.

After any manual programming, rusEFI tuner may not reconnect automatically.
Reconnect if needed, confirm the installed firmware version, and check the tune
and settings before using the ECU. Restore a tune backup only after confirming it
is appropriate for that ECU and firmware.
