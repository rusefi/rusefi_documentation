# Fuel control overview

The Air Fuel Ratio (AFR) is controlled by how much fuel is delivered to the cylinder for combustion. There are many factors and many sensors that come into play when trying to determine how much O2 is in the cylinder. rusEFI collects this information and makes a guess about how much O2 is in the cyl, then rusEFI has to determine how much fuel is needed to get the expected AFR and deliver that fuel charge. Below is a graphic that shows some common differences in AFR for a particular Toyota engine. Other engines are similar to this, but may have a different peak power area, or peak efficiency area, etc. To know this information for your particular setup you would need to run it on a Dyno, and determine the exact AFR's.

Airfuel.jpg  

[//]: # "Add picture"

Original graphic found here [1]

Most people who are installing tuneable ECU's like rusEFI are looking for more power at the track; however, your fuel weight advantage is also commonly important. So it is common that an engine will be tuned for peak power when over a certain load, and peak economy when at a cruise load. OEMs are often concerned with minimal environmental impact, so they may tune to a different AFR. Once you have decided on what your AFR strategy is going to be, you'll have to tune rusEFI to deliver that strategy. You will probably use a wide band oxygen sensor to measure your AFR and ensure that your are meeting your desired AFT plan.

# Supported fuel control algorithms 
rusEFI supports mono, individual/sequential and batched fuel injection using one of the following fuel control algorithms:

1) MAF-based or MAP-based table fuel lookup with interpolation - these algorithms are pretty rough since they do not account for ambient air temperature but not many sensor are required to run.

2) TPS-based table fuel lookup with interpolation (Alpha-N)

3) MAP-based Speed Density model, with fuel auto-tune provided by a fully registered copy of TunerStudio

Wideband Oxygen Sensor is pretty much a requirement for both manual and auto-tuning.


T4dv3ed.png  

[//]: # "Add picture"

Within each fuel calculation mode there is coolant temperature correction ("warm-up mode"), battery voltage correction and injector open time ("injector lag") correction.


rusEFI could be used with MAF sensors sending out voltage (like Mazda Miata) or current (like Ford Aspire).


NXe9uWH.png 
 
[//]: # "Add picture"

(also some content at http://rusefi.com/forum/viewtopic.php?f=2&t=1124)

[//]: # "I feel this page needs a lot of work" 
[//]: # "OrchardPerformance" 