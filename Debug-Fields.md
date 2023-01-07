# Debug Fields

Debug fields is an advanced troubleshooting feature allowing one to monitor internal state of some rusEFI subsystems. In an ideal world we would be always saving all these data points, in reality we need to only save those while troubleshooting something specific.

`set debug_mode CODE`

| code | name | debug f1 | debug f2 | debug f3 | debug f4 | debug f5 | debug f6 | debug f7 | debug i1 | debug i2 | debug i3 | debug i4 | debug i5
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
| 0 | Alternator_PID | controller output | integration term | previous error | I setting | D setting | dTerm | maxValue | P setting | offset | settings change counter
| 1 | TPS acceleration | from TPS | to TPS | current TPS<>TPS value | extra fuel
| 2 | Warmup PID | 3 | Idle | controller output | integration term | previous error | I setting | D setting | dTerm | maxValue | P setting | offset | settings change counter
| 4 | Engine load acceleration
| 5 | Trigger Counters | channel #1 rise counter | channel #2 rise counter | channel #3 rise counter | | | | | channel #1 fall counter | channel #2 fall counter | channel #3 fall counter
| 6 | FSIO ADC
| 7 | Aux PID #1 | controller output | integration term | previous error | I setting | D setting | dTerm
| 8 | VVT position | | | | | | | | VVT event counter
| 9 | Cranking | | | | | | | | cycles from start counter
| 11 | short-term closed loop fuel PID | | integration term | previous error | I setting | D setting | dTerm | maxValue | P setting | offset | settings change counter
| 12 | VSS | | | | | | | | vss event counter
| 17 | ETB electronic throttle body PID | duty cycle | integration term | previous error | I setting | D setting | dTerm | maxValue | P setting | offset | settings change counter
| 21 | ADC #1 / Analog Inputs | VBatt | TPS | MAF | MAP | CLT | IAT | EGO
| 23 | FSIO_EXPRESSION | FSIO output #1 | FSIO output #2 | FSIO output #3 | FSIO output #4 | FSIO output #5 | FSIO output #6
| 24 | Status | Seconds since reboot | | | | | | | VCS_VERSION
| 25 | CJ125 | Heater Duty | Heater PID I Term | Heater PID Err | UA | UR | Calibr.UA | Calibr.UR | State | Diag.reg
| 26 | CAN | | | | | | | | read counter | write OK | write NOT ok
| 31 | TLE8888 | | | | | | | | SPI counter | latest transmit | latest recieved | init count (should be 2) | i5

![Base Engine Settings](Images/1-Base_Engine_Settings.png)

![Debug Gauges](Images/debug_gauges.png)
