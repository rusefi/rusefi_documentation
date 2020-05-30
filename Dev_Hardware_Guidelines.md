### This is a **DEVELOPERS** manual. For the user manual please see https://rusefi.com/wiki/index.php?title=Manual:Hardware:User/en

## Summary
This page is a general guide for hardware items and 
suggestions on how to design and work with things like a PCB layout.  

---

## General suggested environment
- Allows an ambient temperature from -40C to +85C (-40F to 185F) AEC Q100 Grade 3  
- Voltage regulators that are compatible with ISO 7637-2 and ISO16750-2 (100V repetitive pulses via 50ohm impedance, 18 V for 60 min, 24V for 60s to all relevant inputs, withstand a reversed voltage for 60s, 500V rms (50 Hz to 60 Hz) for 60s, ect).  
- Voltage regulators that follow Maxim's suggestions here (cold cranking down to 4V for up to 40mS)  
- Reverse polarity protection as noted in this video (P-MOSFET style)  
- Humidity allowed up to 100% (water resistant enclosure, perhaps fully potted)  
- Sensor inputs are capable of human body model ESD (100 pF 1.5 kohm 500V to 1kV class 1B or better)  
- All sensor inputs can survive a sustained short to 12V or GND. (fused as required)  
- All sensor inputs should float either full scale or min scale when a wire is not connected. The normal operation of the sensor should not hit the full scale or min scale. This allows full or min scale to be an error indicator.  
- All sensor GND references are fuse protected such a dead short to 12V can be repaired, with out replacing the entire PCB.  
- Should be able to maintain crank angle accuracy of .2 degrees up to at least 6kRPM. When above .2 degree tolerance, it should be noted some where such that tuning people know when there might be a tolerance issue.  
- Native ignition drivers should be min 400V, 20A, and 300mJ SCIS energy. Higher rating for any of these parameters is better.  
- When high side drive is provided with the ability to provide more than 20mA, current sensing and limiting should be implemented to prevent the possibility of electrical fire. See VND5E025AK for an example of a chip that has this feature.  
- Take AEC Q100 into consideration See freely published documents found [here](http://www.aecouncil.com/AECDocuments.html)

---

## Connectors
- Connectors should be keyed such that it is difficult to accidentally swap connectors  
- Connectors should be able to carry the max possible load with one pin, no doubling up pins to get increased current ratings. It is OK to double up pins to decrease connector resistance for a lower voltage drop.  
- Connectors should survive the currents passed when inputs are shorted to GND or 12V as noted above in the suggested environment.  
- GND(s) should be properly sized such that 99% duty on the fuel injectors will not raise the GND voltage and prevent the MOSFET's from operating correctly.  
- Suggested to use twisted pair PVC wire as a minimum for signal wires, silicon jackets are more costly, but also much better.  
- Suggested to use the "Tin Commandments" found here  

---

## PCB design rules
- See http://rusefi.com/wiki/index.php?title=Manual:Hardware:PCB_design_rules    
  
---

## Links to specific hardware projects
#### - Frankenso
http://rusefi.com/wiki/index.php?title=Manual:Hardware_Frankenso_board


#### - Brain board
![alt text](images/Vyuqd8h.png)  

The brain board can be the off the shelf STMDiscoveryF4. However the Discovery has several circuits like the analog microphone circuits which change how a particular pin is loaded. We have noticed that this pin loading cause the injector circuits to vary pulse widths. Because of this we have developed a stripped down version of the discovery board with out the extra circuits. Both boards have the same general specifications, same clock rates, same IO headers with the same pin out's, ect.

Forum thread about this PCB found [here](http://rusefi.com/forum/viewtopic.php?f=4&t=381)
[Current pin out](https://docs.google.com/spreadsheet/ccc?key=0Arl1FeMZcfisdGpIZVBGMWFIQXdycnVNOWRjRG5YNnc)


---


#### - Frankenstein
![alt text](images/20140224_state.jpg)  
Frankenstein is a combination of individual modules, such that you can make sub modules, then combine them with a script. The end result allows you to prototype a small board, then once you have verified the small board, you can combine it with the larger module. If you don't want all the features of Frankenstein, you can mix and match as you so choose. Frankenstein is a combination of the below.

- Forum thread about this PCB found [here](http://rusefi.com/forum/viewtopic.php?f=4&t=359)  
- 12 low side 1A injector driver module found  
- 6 high / low side drive .125A capable ignition pre-drivers, for use with external ignitors.  
- 12 channels op-amp analog input module (TPS, MAP, IAT, ect)  
- Variable reluctor / Hall input module  
- SD card module  
- USB FTDI communications module  
- Example system schematic found here  120px-System_schematic.png

Source file for the schematic found [here](https://sourceforge.net/p/daecu/code/HEAD/tree/Hardware/trunk/rusefi.com/frankenstein/system_schematics/system_schematic.png?format=raw)  

---

Links to misc schematics
J701 NEON engine schematics  
![alt text](images/120px-TPS-INJ-IAT_schematic.jpg)  
[120px-TPS-INJ-IAT_schematic.jpg](images/TPS-INJ-IAT_schematic.jpg) 

![alt text](images/120px-IGN.jpg)  
[120px-IGN.jpg](images/IGN.jpg)


Found in this thread [link](http://rusefi.com/forum/viewtopic.php?f=3&t=360&start=52)

---

## Misc
http://rusefi.com/wiki/index.php?title=Manual:Hardware:CAN_sniffer

[Vehicle:Mini_Cooper_2003](https://rusefi.com/wiki/index.php?title=Vehicle:Mini_Cooper_2003)

[Vehicle:Saturn_Ion_2004](https://rusefi.com/wiki/index.php?title=Vehicle:Saturn_Ion_2004)

[Vehicle:Hyundai_Elantra_2004](https://rusefi.com/wiki/index.php?title=Vehicle:Hyundai_Elantra_2004)

[176122-6 ECU connector board](http://rusefi.com/forum/viewtopic.php?f=4&t=507)

[our first ECU connector breakout board](http://rusefi.com/forum/viewtopic.php?f=4&t=3)

[migration breakout board includes fused jumpers to move wires](http://rusefi.com/forum/viewtopic.php?f=4&t=454)

[Ignition modules A couple ignition (igniter) modules found in this thread.](https://rusefi.com//forum/viewtopic.php?f=4&t=286)

[2003 dodge Neon test mule](https://rusefi.com/forum/viewtopic.php?f=3&t=696)

[connector boards](https://rusefi.com/wiki/index.php?title=Hardware:OEM_connectors)