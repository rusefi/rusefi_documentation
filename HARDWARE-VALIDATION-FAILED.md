# HARDWARE VALIDATION FAILED

On startup, after setting pins low, rusEFI firmware checks that the pin is in fact low. If the pin is in fact high, a critical "HARDWARE VALIDATION FAILED" error is raised.

Whatever is the root cause of the issue it's outside of rusEFI firmware control. rusEFI console has useful commands for troubleshooting: `readpin X`, `bench_setpin X`, and `bench_clearpin X`, where `X` is the low level STM32 pin name.

## Related pages

- [How to Update Firmware](HOWTO-Update-Firmware) - main firmware update procedure (Windows and Linux, OpenBLT and DFU).
- [HOWTO DFU](HOWTO-DFU) - DFU (Device Firmware Update) mode: auto vs. manual, drivers, and troubleshooting.
- [HOWTO Flash using STM32CubeProgrammer](HOWTO-flash-using-Stm32CubeProgrammer) - advanced / last-resort flashing via STM32CubeProgrammer (DFU or ST-Link).
- [F7 Requires Full Erase](F7-requires-full-erase) - some F7 Proteus units require a full erase before a firmware update.
- [4chan F7 Initial Programming](4chan-F7-initial-programming) - one-time initial programming for AlphaX 4chan F7 boards.
