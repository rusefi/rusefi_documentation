
## LED decoding
| Blue LED | Green LED | Meaning |
|:--------:|:---------:| -----|
| off | slow flash | sensor warming up |
| off | fast flash | Sensor hot, operating |
| flashing | off | See error code table below |
| alternating | alternating | Bootloader |


## Error Codes

Green LED off and blue LED flashing indicates an error.  The blue LED will blink a certain number of times, with a 2 second pause, then repeats.

| Blinks | Meaning |
| --- |:--- |
| 3 | Sensor failed to heat up within 15 seconds |
| 4 | Sensor overheated after entering closed loop mode |
| 5 | Sensor unexpectedly cold after entering closed loop mode (bad wiring?) |
