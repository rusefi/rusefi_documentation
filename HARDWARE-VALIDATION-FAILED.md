# HARDWARE VALIDATION FAILED

On startup, after setting pins low, rusEFI firmware checks that the pin is in fact low. If the pin is in fact high, a critical "HARDWARE VALIDATION FAILED" error is raised.

Whatever is the root cause of the issue it's outside of rusEFI firmware control. rusEFI console has useful commands for troubleshooting: `readpin X`, `bench_setpin X`, and `bench_clearpin X`, where `X` is the low level STM32 pin name.
