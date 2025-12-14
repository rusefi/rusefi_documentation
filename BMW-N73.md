# BMW N73

[rusEFI 2004 BMW 760 forum thread](https://rusefi.com/forum/viewtopic.php?f=2&t=1845)

BMW 760 12 cylinders
See [BMW-e65](BMW-e65)

x2 DME - engine control unit using [134 pin connector](OEM-connectors#134-pin)

x2 HDEV fuel injection module 7506280 [121 pin connector](OEM-connectors#121-pin)

[N73 ECU pinout](https://docs.google.com/spreadsheets/d/1W5Unmn0BxpyJrF7ygtsBidWyytZWV2f26zL1YWcE44c/)

![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_part-1.png)

![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_1.png)
![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_2.png)
![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_3.png)
![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_4.png)
![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_5.png)
![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_6.png)
![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_7.png)
![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_8.png)
![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_9.png)
![p](OEM-Docs/Bmw/2003_7_Series_e65/2003_N73_engine_10.png)
![connector](OEM-Docs/TE/Connector_121_pinout.jpg)

## HDEV

Injector #1 + #118

Injector #1 GND #114

Injector control #44-#49
These pins are pulled-up to +12v - low-side driven control.

GND #1 #2

Power +12v: #4 #51

The larger chip inside 7506280 says 30429, obviously google knows nothing about this 30429. But it's probably CJ830.

SAK-C505

[wikipedia](https://en.wikipedia.org/wiki/BMW_7_Series_(E65))

Injector 13647512081 looks to be solenoid type. Fuel pressure maxes out at 120bar.
R=2.1OHm

Ignition COP 12138657273 is shared with a lot of other BMW and Mini models.

CAS 61326943828 51210030982
CAS 61356972681
CAS 61326922329

Programming keywords:
ISTA ICON

## Starting

![x](OEM-Docs/Bmw/2003_7_Series_e65/2004-760-starting.png)

## Data Lines

![x](OEM-Docs/Bmw/2003_7_Series_e65/2004-760-obd.png)

![x](OEM-Docs/Bmw/2003_7_Series_e65/2004-760-data-buses-1.png)
![x](OEM-Docs/Bmw/2003_7_Series_e65/2004-760-data-buses-2.png)
![x](OEM-Docs/Bmw/2003_7_Series_e65/2004-760-data-buses-3.png)

## Anti Theft

![x](OEM-Docs/Bmw/2003_7_Series_e65/2004-760-anti-theft-1.png)
![x](OEM-Docs/Bmw/2003_7_Series_e65/2004-760-anti-theft-1.png)
![x](OEM-Docs/Bmw/2003_7_Series_e65/2004-760-anti-theft-1.png)
