# How to Set up Launch Control

You can find this feature under Controller > Launch Control

![launch control settings](Images/TS/Ts_launch_control.png)

Configuration Fields:

**Enable LaunchControl:** true to enable/false for disable function

**Activation Mode:** - Switch Input

- Switch Input: Active while switch is pressed
- Clutch Input: Any time clutch is pressed, function would limit RPM
- Always Active (Disabled By Speed): once VSS registers a speed grather then preset value, function would disable.

**Rpm Treshold(RPM):** todo

**Speed Treshold(Kph):** If Activation mode is Always Active, while the vehicle speed is under this value, launch will limit max rpm as configured.

**Launch RPM (rpm):** RPM value to hold at launch, in this example 3000 RPM is used.

**Ignition Retard enabled:** In case this field is set to true, ignition would be retarded to the preset value in field Ignition Retard(deg).

**Ignition retard(deg):**: Desired ignition value while we do launch. This value is used while engine in inside launch window. In the picture above 500 preset so that means from 2500 - 3000 the engine would run with 10 degree of ignition.

**Smooth Retard Mode:** While true, ignition would me smoothly retarded in the window 2500-3000. Final ignition advance is 10 degree, but it is only reached at 3000 rpm.

**Ignitio Cut:** In case RPM would shoot over the target value, ignition cut is used to stop engine acceleration. If only this is used, and Fuel Cut is on the magical flames could be noticed. Note: this could do bad things to the engine.

**Fuel Cut:** In case RPM would shoot over the target value, fuel cut to stop the engine to rev higher.

**Hard Cut:** Launch limits engine while it revs in 2500 - 3500 window. If this value would be set to 1000, then rev limit window would be 2500 - 4000.
