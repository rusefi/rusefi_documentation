# WBO Overview
[Do-i-need-wideband-oxygen-sensor](https://github.com/rusefi/rusefi/wiki/do-i-need-wideband-oxygen-sensor)


# External WBO

* External controller with analog output, like then AEM 30-4110 and similar products.
* External controller with CAN interface, like the AEM X-Series wideband controller/gauge.


# rusEFI Wide band oxygen

rusEFI has two probably working implementations for Bosch wideband oxygen control:

* We have cj125 integration 
* We like [https://github.com/mck1117/wideband](https://github.com/mck1117/wideband) even more. See [the forum thread](https://rusefi.com/forum/viewtopic.php?f=4&t=1856)

# rusEFI wideband module

See [rusEFI-Wideband-Controller](rusEFI-Wideband-Controller)

See [Hellen-WBO](Hellen-WBO)


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


# Naming Convention

IP=Pump Current

VS/IP=VM=common virtual ground for VS and IP

R Trim=Calibration resistor

H+ Constant +12v

H- Heater control, low-side

UN = Vs = sensor voltage output

4.9 pinout courtesy of [https://www.wbo2.com/cable/lsuconns.htm](https://www.wbo2.com/cable/lsuconns.htm)

![x](Images/LSU-4-9-17025hcon.gif)



![x](Images/LSU_42_LSU_49_Plug_Comparsion.jpg)

With SOIC-24 rusEFI module W1=W10=0R means LSU 4.2

With SOIC-24 rusEFI module W1=W10=Do not populate means LSU 4.9

### Q: Any troubleshooting hints when things do not work?

A: VM wire between CJ125 and sensor is virtual ground, should measure 2.5v when sensor is connected and when sensor is disconnected.




# Part Numbers

### Connector Shells

| Connector        | Part Number |
| :--------------: | :---------: |
| Female (harness) | 1928404669  |
| Male (sensor)    | 1928405111  |

Male connector is only needed when building extension harnesses. The connector on the sensor contains a laser-trimmed calibration resistor and should not be removed.

### Female Terminals for Harness Side

| Wire Size | Plating | Strip       | Loose       |
| :-------: | :-----: | :---------: | :---------: |
| 24-22 AWG | Tin     | 1564324-1   | 1564325-1   |
| 24-22 AWG | Gold    | 1564324-2   | 1564325-2   |
| 20-18 AWG | Tin     | 1241380-1   | 1241381-1   |
| 20-18 AWG | Gold    | 1241380-2   | 1241381-2   |
| 16 AWG    | Tin     | 1418884-1   | 1418885-1   |
| 16 AWG    | Gold    | unavailable | unavailable |

Part numbers provided by and available for purchase at corsa-technic.com individually or as a kit. https://www.corsa-technic.com/item.php?item_id=1296
