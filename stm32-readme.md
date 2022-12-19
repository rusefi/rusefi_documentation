

rusEFI is known to work on these stm32 chips:

| chip | Frequency | Ram | Flash | Notes | Package notes  |   |
|------|-----------|-----|-------|-------|---|---|
| F407 | 168 MHz   | 192 Kb    | 1M      | most popular rusEFI chip      |   |   |
| F469 | 180 MHz   | 384 KB    |   two banks of flash should allow storing settings without execution pauses.    |  Prometheus board.      |   |   |
| F767 | 216MHz    | 512 KB    | 1M      |  Used on MicroRusEFI     |   |   |
| F429 | 180MHz    | 256 KB    | 2MB      |   144 pin used on Proteus    | [pinout](https://os.mbed.com/platforms/ST-Nucleo-F767ZI/#board-pinout)  |   |
|      |           |     |       |       |   |   |

Trying to get rusEFI running on:
 
| chip | Frequency | Ram | Flash | Notes | Package notes  |   |
|------|-----------|-----|-------|-------|---|---|
| F746 | 216 MHz   | 320 Kb    | 1M      | .      |   | [pinout](https://os.mbed.com/platforms/ST-Nucleo-F746ZG/#board-pinout)  |
| F767 | 400 MHz   | 1024 KB   | 2M    |  ..      |   | [pinout](https://os.mbed.com/platforms/ST-Nucleo-H743ZI/#board-pinout)  |




