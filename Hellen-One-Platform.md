
Hellen is a new take on a modular approach for rusEFI ECU - both **Universal** and **Plug-and-Play (PNP)**.

A number of functional building modules were developed with the intention of easily combining those depending on the specific PCB use case, by simply interconnecting them by merging a number of reusable modules on a single PCB. 🤜🤛 

Hellen One framework merges modules so that we do not have to sandwich separate PCBs.


|Platform|Purchase|
|--------|--------|
|[64 Pin Miata](Hellen64-Miata-NA6-94)|[Buy Here](https://www.ebay.com/itm/234060110093)|
|Miata NB1 coming soon!|[Buy Here]()|
|[72 Pin Miata](Hellen72)|[Buy Here](https://www.ebay.com/itm/334064047907)|
|[121 Pin VAG](Hellen121VAG)|[Buy Here](https://www.ebay.com/itm/334048095704)|
|[121 Pin Nissan](Hellen-121-Nissan)|[Buy Here](https://www.ebay.com/itm/334061645783)|
|[128 Pin Mercedes](Hellen-128-Mercedes)|[Buy Here]()|
|88 Pin BMW coming soon!|[Buy Here]()|


# The .ini file for Hellen is loaded onto the Hellen board. When you plug the Hellen into your computer, a "virtual flashdrive" will load up. The .ini file is in there. Copy to your computer and save in your TunerStudio folder, and link your TunerStudio definition to that file. When your Hellen firmware is updated, the .ini file is also updated, so make sure you get the latest .ini from the Hellen board after you update the firmware!


# Q: Surely it would have made more sense and less effort to make one universal hardware design and produce and sell adapter looms?

A: from our experience for our tiny quantities the primary bottleneck is rusEFI manual labor. Between crimping and cases Hellen in a powder coated OEM ECU really looks like the simplest way to produce 10 units for specific vehicle.


[Dev Information](https://github.com/andreika-git/hellen-one/wiki) 