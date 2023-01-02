
Hellen is a new take on a modular approach for rusEFI ECU - both **Universal** and **Plug-and-Play (PNP)**.

A number of functional building modules were developed with the intention of easily combining those depending on the specific PCB use case, by simply interconnecting them by merging a number of reusable modules on a single PCB. 🤜🤛

Hellen One framework merges modules so that we do not have to sandwich separate PCBs.

|Platform|Purchase| |
|--------|--------|--|
|[Miata 90-95](Hellen64-Miata-NA6-94)|[Buy Here](https://www.beermoneymotorsports.com/)|
|[Miata NB1](Hellen-NB1)|[Buy Here](https://www.beermoneymotorsports.com/)|
|[72 Pin Miata 01-05](Hellen-NB2)|[Buy Here](https://www.beermoneymotorsports.com/)|
|[121 Pin VAG](Hellen121VAG)|[![Image](Images/ebay_gen_button.gif)](https://www.ebay.com/itm/334048095704)|[open source](https://github.com/rusefi/hellen121vag)|
|[121 Pin Nissan](Hellen-121-Nissan)|[![Image](Images/ebay_gen_button.gif)](https://www.ebay.com/itm/334061645783)|
|[128 Pin Mercedes](Hellen-128-Mercedes)|[![Image](Images/ebay_gen_button.gif)](https://www.ebay.com/itm/334094173341)|
|[88 Pin BMW](Hellen-88-BMW)|[![Image](Images/ebay_gen_button.gif)](https://www.ebay.com/itm/334235601464)|
|[154 Pin Hyundai](Hellen-154-Hyundai)|soon|[open source](https://github.com/rusefi/hellen154hyundai)|

### The .ini file for Hellen is loaded onto the Hellen board. When you plug the Hellen into your computer, a "virtual flashdrive" will load up. The .ini file is in there. Copy to your computer and save in your TunerStudio folder, and link your TunerStudio definition to that file. When your Hellen firmware is updated, the .ini file is also updated, so make sure you get the latest .ini from the Hellen board after you update the firmware

# FAQ

### Q: Surely it would have made more sense and less effort to make one universal hardware design and produce and sell adapter looms?

A: from our experience for our tiny quantities the primary bottleneck is rusEFI manual labor. Between crimping and cases Hellen in a powder coated OEM ECU really looks like the simplest way to produce 10 units for specific vehicle.

### Q: What's Hellen's role in rusEFI [Mission-Statement](Mission-Statement)?

A: Part of the reasoning behind developing PnP boards at this stage is attracting software developers who might know less about cars, or who just aren't ready to make the commitment of building or modifying a harness.

### Q: Why so many closed source boards? Ultimately, these are to be commercial products right?

A: it's mostly an experiment really. As of October 2021 we have couple of open source boards with very little community interest and a some closed source boards with a very enthusiastic dealer. We are still gathering data. [It's-complicated](It's-complicated). See also [Standalone-on-Demand](Standalone-on-Demand)

[Dev Information](https://github.com/andreika-git/hellen-one/wiki)

![x](Hardware/Hellen/hellen-one-logo-300.jpg)
