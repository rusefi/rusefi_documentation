Obviously tuning is a subject too complex to be dealt with exhaustively in a short wiki page. So all we can do here is give you some pointers. At this point we assume that you got the engine to run, or at least sputter using your rusEfi. All your main inputs and outputs needed to make an engine run OK are working. 

This should be at least:
Inputs:
- Trigger Inputs (crank and cam or cams)
- Mass Airflow Meter* or Manifold Air Pressure sensor
- Coolant Temperature
- Intake Air Temperature
- Wideband O2 sensor would be really great to have too

*Using a Mass Airflow Meter assumes that you have a known MAF transfer function for you specific Mass Airflow Meter

Outputs:
- Fuel pump (if controlled by ECU)
- Ignition coil(s)
- Fuel Injectors
- Idle Air Valve or other Idle Air Controller

Now we need the engine to idle acceptably, so we can check base timing. If your engine idles fine and your Air-fuel-ratio is within the acceptable range (let's say between 11 and 15 or so), continue to the base timing section.

## Getting the engine to idle
This section assumes that you have a wideband O2 sensor installed and you get readings that make some sort of sense. 
If your idle is just rough and low, or way too high, or maybe oscillating wildly, the most likely issue is that your idle control is not set right. Open the idle control main dialog under "Idle" -> "Idle Settings" and change the first setting to "Manual" (circled in yellow). This will allow you to manually control your idle setting. Then use the slider (circled in purple) to change your idle rpm.
![Idle_Settings](Images/Initial_Setup_Images/Manual_idle.png)

(If this doesn't do anything, chances are that your idle control has an issue and you need to do some troubleshooting of the hardware of basic settings). Try and get your idle to between 800 and 1200 rpm or so. Make sure it's not fluctuating much. 
If you can change your idle to some degree with the idle control, but can't really get it right, chances are either your engine is running with a terrible air-fuel-ratio or possibly your ignition timing is way off. 

### Adjusting idle air-fuel-ratio
If your AFR is too high (probably > 15 for gasoline), you need to increase the amount of fuel delivered to the engine. The quick and dirty trick is to tell your ECU that your injectors are smaller than they really are. You can do that under "Fuel" -> "injection Settings" -> "Injector Settings". Alternatively, if your AFR is too low (typically < 10 for gasoline), you need to reduce the amount of fuel delivered. So the quick and dirty trick is to cheat and tell the ECU that the injectors are bigger than they actually are. 
If you use this, make sure to remember to undo it when you are ready to properly tune your fuel table.

You can also adjust the AFR the proper way by adjusting the Volumetric Efficiency. Open the "Fuel" -> "VE" table. The area on the left side, towards the bottom contains the cells that are used in the calculation for how much fuel is to be injected with each cycle when idling. 
![Idle Cells](Images/Initial_Setup_Images/idle_cells.png)
The x-axis is your rpm, the y-axis is your engine load (typically Manifold Air Pressure or Air Mass). With the engine running, TunerStudio will display a little dot indicating which VE cell your engine is currently running in. Please note that your engine will almost never be using a value precisely in the center of a cell. It will usually interpolate between 4 neighboring cells. It's usually a good idea for rough-tuning to change a whole set of 3x3 cells or so at once. Maybe even 4x4 cells. We can worry abotu fine-tuning later. It is also recommended to use fairly significant changes for rough tuning. If the engine is running lean, add maybe 20%. If it's too rich, lean it out by 20%. Don't be shy. So, if your AFR is too high, let's say 16 , mark the 9 cells around where the engine is running right now and multiply their values by 1.2. you can do this by selecting all 9 cells with your mouse and then hitting the asterisk key on your keyboard. Or, if your AFR is too low, multiply by 0.8 to reduce the amount of fuel injected by 20%.
Don't worry about getting this "just right" for now. All we want is a fairly smooth idle. We don't really care, if it's too rich, or too high. 1200rpm and an AFR of 10.5 works. Just don't run it like that for 5 hours*. 

(* if you've been running the engine super-rich for extended periods of time, change your oil. You will likely have a substantial amount of fuel that has been washed into your oil now. Fuel is not a great lubricant)

### Adjust base timing
Now that you have a somewhat smooth idle, it's time to adjust your base timing. In order to do this, you must have some sort of timing mark on your crank pulley and some pointer on the engine block. You need to know what the ignition timing is, when the two are lined up. 
![Timing Mark](https://www.wikihow.com/images/thumb/5/5a/Adjust-Timing-Step-3-Version-3.jpg/aid1389196-v4-728px-Adjust-Timing-Step-3-Version-3.jpg)
We are working on the assumption that your ECU has a "safe" idle tune already uploaded. This would be a tune that allows the engine to run reasonably well with 93 Octane (US super) fuel without excessive detonation (ping) or pre-ignition, but is not yet optimized for hp or economy.

Borrow your neighbor's timing light and hook it up, following the original instructions for the timing light that your neighbor kept carefully locked away and absolutely grease-free for the last 25 years. Chances are, if the engine is running smoothly, you are within +/- 25 degrees of where you are supposed to be. 

In order to get this just right, you need to change your timing from "dynamic" to "fixed". Open "Ignition" -> "Ignition Settings" and set "Timing Mode" to "fixed". Set the "Fixed Tinming(deg)" to whatever the value is when the mark on your crank-pulley lines up. This is very often 10 degrees or something thereabouts. Now check with your timing light if the marks line up. If they do- great. Your base timing is set. Go ahead and change your timing mode back to "dynamic".
If the marks don't line up, you need to adjust your trigger settings. Go to "Base Engine" -> "Trigger" and adjust "Trigger Angle Offset(deg)" until your timing mark lines up. Once this is done, don't forget to change your timing mode back to "dynamic" or you will continue to run on fixed timing and give up a ton of horsepower/fuel economy and have some REALLY high exhaust temperatures. 

## Time to Tune your VE table with TS AutoTune
This is assuming that you are using the purchase version of TunerStudio with Autotune enabled. If you are planning on tuning your fuel table manually, you probably know what you're doing and don't need to read this wiki.

But before we get to the exciting subject of tuning, there is the slightly more boring subject of target AFRs. These are defined in the aptly named target AFR table. Go to "Fuel" -> "Target AFR" and to start with having a value of 14 in all cells is probably good enough. Or you can go a bit more creative and use something like this.


