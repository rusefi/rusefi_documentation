
Overview of state of integration between rusEFI and all kinds of ASICs.


# Low side+

## Mostly implemented

|         |              | SPI implemented |   |  Known issues |
|---------|--------------|---|---|---|
| TLE8888 |  System Chip |  Y |   | Hot power supply  |
| MC33816/PT2001  | Fast solenoid control: GDI  | Y  |   | GDI low priority   |
|  TLE6240 | 16 channel low side  | Y  |   |   |
| MC33810  | 4 low + 4 ignition pre-drivers | Y?  |   |   |
|   |   |   |   |   |

## Mostly not implemented

|         |              | SPI implemented |   |  Known issues |
|---------|--------------|---|---|---|
| PT2000  |  We only have dev board, no code |   |   |   |
|   |   |   |   |   |



# Misc

## Mostly implemented but with drama

|         |              | SPI implemented | Notes  |  Known issues |
|---------|--------------|---|---|---|
| MAX99xx  | VR  |  n/a |   | Minor drama - 85ms timeout  |
| CJ125   | WBO  | Y  |   |  Legacy - unobtanium |
| HIP9011 | knock  | Y  |   |   |
| MAX31855  | EGT  |   |   |  Not used by anyone |
| MC33972  | MULTIPLE SWITCH DETECTION INTERFACE  | ?  | EG33 board  |   |
|   |   |   |   |   |
|   |   |   |   |   |


