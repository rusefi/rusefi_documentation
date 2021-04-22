# NOTE: This is currently under development.  This page might be wrong or change quickly.

## Pinout

![connector pinout image](https://imgur.com/LvCaQ1o.jpg)

| Pin Number | Function | Notes |
|:---:|:---:| ---|
| 1 | Ground | Connect to chassis ground |
| 2 | LSU Ip | Connect to sensor pin 1 |
| 3 | LSU Heater - | Connect to sensor pin 3 |
| 4 | LSU Heater + | Connect to sensor pin 4 |
| 5 | No connection | |
| 6 | 12v Supply | Connect to fuel pump supply or independent relay controlled by ECU |
| 7 | No connection | |
| 8 | LSU Vm | Connect to sensor pin 2 |
| 9 | LSU Rtrim | Connect to sensor pin 5 |
| 10 | LSU Un | Connect to sensor pin 6 |
| 11 | CAN H | CAN bus high |
| 12 | CAN L | CAN bus low |

## LED decoding
| Blue LED | Green LED | Meaning |
|:--------:|:---------:| -----|
| off | fast flash | sensor warming up |
| off | slow flash | Sensor hot, operating normally |
| flashing | off | See error code table below |
| alternating | alternating | Bootloader, see below |

## Firmware Update

coming soon...

## Error Codes

Green LED off and blue LED flashing indicates an error.  The blue LED will blink a certain number of times, with a 2 second pause, then repeats.

| Blinks | Meaning |
| --- |:--- |
| 3 | Sensor failed to heat up within 30 seconds |
| 4 | Sensor overheated after entering closed loop mode |
| 5 | Sensor unexpectedly cold after entering closed loop mode (bad wiring?) |

### Bootloader LED Codes

| Blink pattern | Meaning |
| --- |:--- |
| alternating slowly | Firmware integrity check failed, please retry firmware upgrade. |
| alternating quickly | Waiting for bootloader entry command, only occurs for ~1 second before launching firmware |

## Source Code

[The hardware and software source code are hosted here.](https://github.com/mck1117/wideband)
