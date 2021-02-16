
Overview of state of integration between rusEFI and all kinds of ASICs.


# Low side+

### Mostly implemented

| Part | Function | Notes |
|------|----------|--------------|
| TLE8888 |  System basis chip | Linear regulator so it gets warm<br/>(with adequate heatsink this is no problem) |
| MC33816/PT2001  | Low impedance (fast) solenoid control: GDI | GDI low priority |
|  TLE6240 | 16 channel low side  |   |
| MC33810  | 4 low + 4 ignition pre-drivers |   |
|   |   |   |

### Mostly not implemented

| Part | Function | Notes |
|------|----------|--------------|
| PT2000 | Low impedance (fast) solenoid control: GDI | We only have dev board, no code |
|   |   |   |

# Sensors

| Part | Function | Notes |
|------|----------|--------------|
| LPS25HB | Barometric pressure sensor | Installed on Proteus v0.5+ |
|   |   |   |

# Misc

### Implemented but known limitations

| Part | Function | Known issues |
|------|----------|--------------|
| MAX992x | VR | 85ms threshold timeout means it doesn't work well with low tooth-count wheels (cam, Honda)  |
| CJ125 | WBO | Legacy - unobtanium |
| HIP9011 | knock | Not great compared to software implementation |
| MAX31855 | EGT | Not used by anyone |
| [MC33972](https://www.nxp.com/docs/en/data-sheet/MC33972.pdf) | Multiple switch detection interface  | EG33 board |
|   |   |   |   |   |


