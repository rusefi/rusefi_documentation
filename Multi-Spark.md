# Multi-Spark Ignition

Mutli-spark is a feature that will fire the ignition coil for a single cylinder multiple times in a single stroke. This is useful for cold start conditions where complete fuel burn may not occur from a single spark. During multi-spark the first ignition will be a partial burn and stir up the remaining fuel in the cylinder allowing subsequent burns to create a more complete fuel burn.

## Disclaimer  

Currently the mutli-spark in RusEFI is completely experimental and should only be used as such. The owner and user can use at their own risk to catostrophic damage to their ECU, engine, and vehicle.  

## Working Theory

During low speed operation if there is enough time for the dwell and ignition period of an ignition coil in a single power stroke the ECU can fire the ignition coil multiple times. The result of this will be a more complete fuel burn giving more power, better fuel economy, and lower emissions. The downside is that due to the ignition coil firing multiple times per power stroke the ignition coil will operate *hotter* possibly leading to overheating and lower ignition coil life spans.  
![MultisparkMatlab](Spark/Images/multisparkmatlab.png "Multi-spark theory")  

## How-to Enable  

To enable multispark feature open the Controller tab in the options bar. In the drop down menu open the Multispark window. In the event that the Multispark option is greyed out  

![Multispark Greyed Out](Spark/Images/multisparkGreyedOut.png "Multispark Greyed Out"){: style="width: 250px;" }

spark will need to be enabled. Double check that under Ignition settings that Enabled is set to true in the drop down menu.  

![Ignition Settings](Spark/Images/ignitionSettings.png "Ignition Settings"){: style="width: 500px;" }

If ignition is enabled then multispark settings should be available. In the Mutlispark menu to enable mutlispark simply set Enable Multiple Sparks to true. **NOTE:** The configuration, Delay & Dwell settings should be set with extreme caution as serious perminent damage could be caused to your engine and safety.  

![Multispark Settings](Spark/Images/multisparkSettings.png "Multispark Settings"){: style="width: 500px;" }

## Configuration Definitions  
  
### **Maximum engine speed(rpm)**  

This is the maximum engine speed that multispark will occur. At engine speeds above this set limit multispark will be disabled.

### **Fire sparks for this angle duration(deg)**  

This is a set angle duration after the first ignition spark that subsequent spark events (multispark) is allowed. If an additional spark is scheduled to fire after this set window then it will not occur.  

### **Maximum extra spark count**

This is the maximum number of **additional** spark events not including the main spark event.

### **Spark Duration(ms)**  

This is the time the spark occurs during multispark.

### **Dwell(ms)**  

This is the time the Dwell period is set for. Keep in mind that this time does not need to be as long as your main ignition dwell period due to a partial burn having already occured. Not only does it not *need* to be as long it should not be to prevent overheating of the ignition coils.  

## Example  

An example of multispark in action can be viewed [here](https://www.youtube.com/watch?v=SZn2CPouFek)  

[//]: # "Shaun Veilluex"
