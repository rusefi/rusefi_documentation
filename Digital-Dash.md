# Digital Dash

A digital dash displays live engine data — RPM, coolant temperature, boost, lambda and so on — on a screen instead of analogue gauges. rusEFI does not care which one you use; what differs is the hardware, how it receives data, and how long it takes to come up.

See also: [Dash hardware comparison](Dash-hardware-comparison) for the platform trade-offs, and [CAN Broadcast for Dashboards and Gauges](CAN-Broadcast-for-Dashboards) for how to get data out of the ECU and onto the dash.

## Summary

The dash situation is not ideal. Open question what is acceptable boot time and what is boot time for each of the options.

We have five versions of Digital Dash currently.

1. [TunerStudio running on a Raspberry Pi](Digital-Dash-TunerStudio)
2. [PowerTune running on a Raspberry Pi 3](https://rusefi.com/forum/viewtopic.php?p=41535)
3. A custom digital gauge cluster such as [uaDash](uaDASH) or [PiDGC](https://github.com/joshellissh/pidgc) ([Example on Josh's blog](https://mycustomcars.us/custom-digital-gauge-cluster/))
4. An Android tablet or phone running an app such as [Real Dash](http://realdash.net/index.php), [Shadow Dash](Shadow-Dash), or [MSDroid](MSDroid)
5. [combo10](combo10), a 10-inch touchscreen dashboard with a customizable gauge layout, an initial engine-configuration wizard, and limited on-device tuning. A Windows Dash Simulator is available to try the interface without hardware.

## Things to weigh up

**Boot time.** This is the open question above, and it is worth taking seriously: a dash that takes thirty seconds to appear is a dash that is blank every time you start the car. A dedicated device generally comes up faster than a general-purpose computer running a tuning application.

**How it gets its data.** Most options read the [CAN broadcast](CAN-Broadcast-for-Dashboards), which is one-way and needs only CAN wiring between the ECU and the dash. A phone or tablet usually reaches that broadcast through a Bluetooth CAN adapter. Options that instead speak the TunerStudio protocol over serial are doing something different — see [Bluetooth](Bluetooth) for the limits of that path, including the fact that iOS cannot use it.

**Whether you need to tune on it.** Most dashes only display. TunerStudio on a Raspberry Pi and combo10 can also change settings, which matters if you want one screen in the car rather than a dash plus a laptop.

**Temperature and vibration.** A dash lives on a dashboard, which gets hot and shakes. [Dash hardware comparison](Dash-hardware-comparison) lists operating temperature as a differentiator between the platforms.

## Related pages

* [CAN Broadcast for Dashboards and Gauges](CAN-Broadcast-for-Dashboards) — getting data from the ECU to the dash
* [Dash hardware comparison](Dash-hardware-comparison) — platform trade-offs for building your own
* [Other Hardware](Other-Hardware) — uaDASH and other modules
* [Bluetooth](Bluetooth) — wireless options and their limits
