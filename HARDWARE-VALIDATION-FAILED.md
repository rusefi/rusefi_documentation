# HARDWARE VALIDATION FAILED

On start-up after setting pins low rusEFI firmware checks that the pin is in fact low. If the pin is in fact high HARDWARE VALIDATION FAILED critical error is raised.

Whatever is the root cause of the issue it's outside of rusEFI firmware control. rusEFI console has useful commands for troubleshooting ``readpin X``, ``bench_setpin X``, ``bench_clearpin X`` where ``X`` is low level stm32 pin name.
