# Idle Control

rusEFI supports both solenoid-type (one or two wires; requires additional fly-back diode) and [stepper motor](Stepper-Motor) (four to six wires, add-on board required) IAC valves.

By default, idle control is in 'open-loop' mode, while in manual mode you can control the idle valve.

In the case of a stepper idle valve, the position is a percent of the total stepper steps. On startup, rusEFI moves the stepper all the way in order to find the zero position.

In the case of a solenoid valve, the percent is just the PWM duty of the control signal - it has nothing to do with the actual percentage of valve opening and you should not expect it to be linear.

## Warm-up Correction in Manual Mode

While the engine is still cold, it's good to have a bit of extra idle air; we have idle warm up correction for that. This correction adjusts the idle valve position according to the current engine coolant temperature. More air causes the engine to idle higher, but once the engine gets warmer air mass goes down and so does idle RPM.

For example, here we have 10% extra opening at 30C.

![CLT Idle Correction](Images/TS/clt_idle_correction.png)

## Valve Initialization

In the case of a stepper valve, in order to get to a known position we retract the valve all the way at startup and then go to the desired position. A solenoid-based valve does not require any initialization.
