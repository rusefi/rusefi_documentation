# Trigger Hardware

## Quick links

[How to handle raw VR signal with Frankenso board](Frankenso-VR-Input)

[How to handle raw Hall signal with Frankenso board](Frankenso-Hall-Input)

[More information about the rusEFI trigger handling software logic](Trigger)

## Summary

The hardware takes funky cam / crank signals from VR, Hall, optical and or other sensors, and converts them into clean digital pulses that can be used by the MCU.

This page contains information about the Variable Reluctor (VR) style sensor, commonly used for detecting angular rotation (RPM). This includes links to show how to configure the Frankenso board, as well as formulas, equations, application notes, and other such information related to how VR's work and how you get them working with rusEFI. TODO: actually, this page does not really focus on just VR

## rusEFI specific information

### General rusEFI information about the software and hardware

[More information about the Frankenso's hardware](Hardware-Frankenso)

## Misc notes equations, app notes, etc

If the above didn't detail specifically what you need, here are some note that may provide what you are looking for. Both Hall and VR can detect shaft RPM's at the reasonably fast RPM's and reasonably slow RPM found in a typical engine. Both can detect the shaft angle at resolutions that are around .02 to .01 degrees of rotation. However there are some differences between the two technologies. These differences typically mean that Hall is a better technical choice of sensor if you have the option to choose your sensor.

### Hall notes

#### Pros of Hall vs VR

* Halls typically work from around -40C to 150C, which is typically good enough for engine applications.
* Halls can detect 0 RPM
* Halls have very good immunity to EMI. The reasonably low impedance of the 5V pulses coming out of the sensor typically do not require special wiring consideration.
* Halls are low voltage, so you don't need to take higher voltages into consideration or concern beyond your normal ESD protections.

#### Cons of Hall vs VR

* The Hall sensors typically have internal self adjusting circuitry, this causes a certain amount of jitter on the output signal as the sensor is auto-hunting for optimal values. The jitter is typically less than .02 degrees accurate for RPM's that are down around 1 to 10 RPM and up to the max RPM. Below these slow RPM's you get more jitter and could get a period of time where you get a splatter of pulses as you are on the edge of a detected tooth. This jitter can be an issue that needs to be addressed in the shaft decoders. As they commonly have error detection algorithms that use a window for predicting when the next tooth edge should be found, this jitter opens that window as well it moves that window around. The window algorithm should be based an average of the last couple detected teeth, not on a tooth by tooth basis. This jitter and window control can be problematic for engines with a high rates of angular change like a single cyl small engine.
* Lower max temperatures limits where you can physically mount the sensor.

### VR notes

#### Pros of VR vs Hall

* VR's can easily be made to work at high temperatures around 300C, which is handy for jet engine applications.
* VR's **can** have less edge detection have less jitter caused but this is dependent on the sensing circuit's jitter tendencies.

#### Cons of VR vs Hall

* Sensitive small voltage signals can be more easily influenced by EMI noise under the hood causing false triggers
* Can not read down to 0 RPM. Depending on the trigger wheel, they generally don't work below 50-100 RPM.
* Special consideration needs to be accounted for the high RPM as higher voltages generate voltages that can be unsafe to the ECU, you need to make sure the ECU can absorb these voltages.
* Low RPM generally has a small voltage, EMI noise from things like spark can cause false triggers, and you need to shield the wires between the sensing circuit and the VR sensor.

#### VR lower level details, formulas, app notes, etc

VR's have many critical characteristics that need may be of concern. The variations in design will result in different minimum RPM's, maximum RPM's, noise immunity and other such items that result in properly detecting the shaft angle. There are critical dimensions and critical materials used in parts of a VR that need to be taken into consideration. There are some equations and examples noted on [this application note](http://sensing.honeywell.com/vrs-app-note-005934-2-en-final-26jun12.pdf) These equations help you determine the min RPM, load resistor and voltages produced at higher RPM's. [This is also a useful app note about hall sensor](https://sensing.honeywell.com/hallbook.pdf).

This application note is copied [here](PDFs/VRS_App_Note_005934-2-EN_Final_26Jun12.pdf) for archival purposes.

[Hall Book](PDFs/Hallbook.pdf)

There is a condensed version of this app note found [here](http://sensing.honeywell.com/index.php?ci_id=51555) and archived [here](PDFs/VRS_output_voltage_calculations.pdf)

As an example, see the below spreadsheet that includes the information from the above application note. This is a starting point and you can copy this spread sheet then enter specifics relative to your application.

[VR Calculations Spreadsheet](https://docs.google.com/spreadsheets/d/1zjY_75mM5rDzKeJ_xcjCDBJ1z_Nbhw614xTaEh1eNq0/edit#gid=1410395179)

It's good practice to design to at least 300V or better, especially if you expect more than 6kRPM, and you don't know your VR sensor. However most VR sensors only get up to around 50V. See below snap shot of the above spread sheet. It shows a 10kRPM 36 tooth VR design that would generate 300V.

![VR Signal](Images/300V_VR_Signal.png)

[One forum member noted their motorcycle VR goes up to 380Vp-p](https://rusefi.com/forum/viewtopic.php?p=13981#p13981).
