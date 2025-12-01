# Hellen One Platform

Hellen is a new take on a modular approach for rusEFI ECU - both **Universal** and **Plug-and-Play (PNP)**.

A number of functional building modules were developed with the intention of easily combining those depending on the specific PCB use case, by simply interconnecting them by merging a number of reusable modules on a single PCB. 🤜🤛

Hellen One framework merges modules so that we do not have to sandwich separate PCBs.

|Platform| Purchase                                                                      | |
|--------|-------------------------------------------------------------|--|
|[uaEFI](uaEFI)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/uaefi-ultra-affordable-efi)||
|[uaEFI 121](uaefi121)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/uaefi121)||
|[Super uaEFI](super-uaEFI)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/super-uaefi)||
|[nano](nano)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/nano)||
|[rusEFI Huge](rusEFI-Huge)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/rusefi-huge)||
|[Power4GDI](Power4GDI)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/gdi4ecu)||
|[AlphaECU 2Chan](AlphaX-2chan)|[AlphaX Store](https://alphaxpr.com/collections/wire-in/products/alphaecu-2chan)||
|[AlphaECU 4Chan](AlphaX-4chan)|[AlphaX Store](https://alphaxpr.com/collections/wire-in/products/alphaecu-4chan-plus)||
|[AlphaECU Bronze]()|[AlphaX Store](https://alphaxpr.com/collections/wire-in/products/alphaecu-bronze)||
|[AlphaECU Silver](AlphaX-Silver)|[AlphaX Store](https://alphaxpr.com/collections/wire-in/products/alphaecu-silver)||
|[AlphaECU Gold](AlphaX-Gold)|[AlphaX Store](https://alphaxpr.com/collections/wire-in/products/alphaecu-gold)||
|[AlphaECU Platinum](AlphaX-Platinum)|[AlphaX Store](https://alphaxpr.com/collections/wire-in/products/alphaecu-platinum)||
|[Miata 90-95](Hellen64-Miata-NA6-94)| *not currently available* ||
|[Miata NA96](Hellen-NA96)| *not currently available* ||
|[Miata NB1](Hellen-NB1)| *not currently available* ||
|[Miata NB2](Hellen-NB2)| *not currently available* ||
|[72 Pin Miata 01-05](Hellen-NB2)| *not currently available* ||
|[121 Pin VAG](Hellen121VAG)| [![Image](Images/ebay_gen_button.gif)](https://www.ebay.com/itm/334968365497) |[open source](https://github.com/rusefi/hellen121vag)|
|[121 Pin Nissan](Hellen-121-Nissan)| [rusEFI Store](https://www.shop.rusefi.com/shop/p/hellen-121-nissan) ||
|[128 Pin Mercedes](Hellen-128-Mercedes)| [![Image](Images/ebay_gen_button.gif)](https://www.ebay.com/itm/334094173341) ||
|[125 Pin Honda K-series](Hellen-125-Honda-K)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/honda-k-2002-pinout)||
|[Honda OBD1](uaEFI-Honda-OBD1)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/rusefi-for-obd1)||
|[88 Pin BMW](Hellen-88-BMW)| [rusEFI Store](https://www.shop.rusefi.com/shop/p/hellen-88-bmw) ||
|[154 Pin Hyundai](Hellen-154-Hyundai)| soon  |[open source](https://github.com/rusefi/hellen154hyundai)|
|[GM E38](GM-E38)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/pnp-e38)||
|[GM E67](GM-E67)|[rusEFI Store](https://www.shop.rusefi.com/shop/p/e67-working-prototype-version-b)||
|[Harley 81](Harley-81)| *not currently available* ||
|[Hellen 81](Hellen81)| *not currently available* ||

    **The .ini file for Hellen is loaded onto the Hellen board. 
    When you plug the Hellen into your computer, a "virtual flash drive" will load up. 
    The .ini file is in there. Copy to your computer and save in your TunerStudio folder, 
    and link your TunerStudio definition to that file. 
    When your Hellen firmware is updated, the .ini file is also updated, 
    so make sure you get the latest .ini from the Hellen board after you update the firmware**

## FAQ

### Q: Surely it would have made more sense and less effort to make one universal hardware design and produce and sell adapter looms?

A: from our experience for our tiny quantities the primary bottleneck is rusEFI manual labor. Between crimping and cases Hellen in a powder coated OEM ECU really looks like the simplest way to produce 10 units for specific vehicle.

### Q: What's Hellen's role in rusEFI [Mission-Statement](Mission-Statement)?

A: Part of the reasoning behind developing PnP boards at this stage is attracting software developers who might know less about cars, or who just aren't ready to make the commitment of building or modifying a harness.

### Q: Why so many closed source boards? Ultimately, these are to be commercial products right?

A: it's mostly an experiment really. As of October 2021 we have couple of open source boards with very little community interest and some closed source boards with a very enthusiastic dealer. We are still gathering data. [It's-complicated](It's-complicated). See also [Standalone-on-Demand](Standalone-on-Demand)

[Dev Information](https://github.com/andreika-git/hellen-one/wiki)

[See also](Hardware)

![x](Hardware-files/Hellen/hellen-one-logo-300.jpg)
