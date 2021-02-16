
Wide band oxygen.

We have cj125 integration

TODO: document it better


# cj125 troubleshooting



We have a few rusEFI console commands relevant for cj125

``cj125_info``

``cj125_restart``

``cj125_calibrate``



![x](Overview/wbo/cj125_heating_4_9.png)


AndreiKA says Prometheus works

Matthew says 0.3 SOIC-24 boards works

Wideband controller based on Bosch CJ125 chip

green is vUr, temperature feedback

red is duty cycle

yellow is vUa, the lambda current measurement

white is converted AFR

fully operating in <30 seconds

in to closed loop in ~18 seconds

P=30

I=5

D=0.3

though you could probably use D=0 since the system is already damped so hard

50Hz


[Older SOIC-24 board - double sided assembly](https://github.com/rusefi/hw_modular/tree/master/cj125_Module)

[Newer LQFP-32 board - single side assembly](https://github.com/rusefi/rusefi/tree/master/hardware/CJ125_board)


IP Pump Current

VS/IP=VM=common virtual ground for VS and IP

H+ Constant +12v

H- Heater control, low-side

4.9 pinout courtesy of https://www.wbo2.com/cable/lsuconns.htm

![x](FAQ/LSU-4-9-17025hcon.gif)



![x](FAQ/LSU_42_LSU_49_Plug_Comparsion.jpg)

With SOIC-24 rusEFI module W1=W10=0R means LSU 4.2

With SOIC-24 rusEFI module W1=W10=Do not populate means LSU 4.9

Q: Any troubleshooting hints when things do not work?

A: VM wire between CJ125 and sensor is virtual ground, should measure 2.5v when sensor is connected and when sensor is disconnected.
