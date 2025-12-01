# FAQ

TL,DR: [Hellen-Hyundai-PB](Hellen-Hyundai-PB) and [rusEFI GDI4 pinout](GDI4)

See [How To GDI](HOWTO-GDI)

[GDI8](GDI8)

[GM E92 PnP](PnP-E92)

## Q: What are key differences between port and GDI?

A: high voltage control of injectors, high pressure pump control logic and target fuel pressure control logic. GDI engines run on variable fuel pressure. Meaning ECU has to request specific fuel pressure and ECU has to control HPFP relief valve in sync with corresponding camshaft to actually build desired pressure.

## GDI Status

TL,DR: Summer 2023 progress is happening, GDI4 rev D board is ready for prime time and Kia has driver around the block!

[Forum thread for test mule](https://rusefi.com/forum/viewtopic.php?f=3&t=1631)

[Forum thread for dev board](https://rusefi.com/forum/viewtopic.php?f=4&t=1337)

pump setup manual https://rusefi.com/forum/viewtopic.php?f=16&t=2886

Gasoline Direct Injection requires a few additional components on top of port injection:

1) High voltage injection control

2) High pressure fuel pump solenoid control - we have a working implementation!

3) Target fuel pressure logic - we have nothing, but could be as easy as adding a simple table?

![x](OEM-Docs/NXP/pulse-variables.jpg)

![x](OEM-Docs/NXP/WBNR_FTF12_AUT_F0098.pdf_page59.png)

![x](OEM-Docs/NXP/WBNR_FTF12_AUT_F0098.pdf_page72.png)

See also [BMW injector driver](https://rusefi.com/forum/viewtopic.php?f=4&t=1564)

See also [rusEFI injector driver](https://github.com/rusefi/rusefi-hardware/tree/main/GDI-4ch)

TODO: try INJECTOR DRIVE MODULE IDM-2
2013 13 HYUNDAI GENESIS
39175-3C000
2014 Hyundai Azera
39172-3С010
