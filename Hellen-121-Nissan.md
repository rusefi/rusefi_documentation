*Compatible with: Earlier 350Z, 2nd Generation Nissan X-Terra, some Sentra, some Maxima.

[Download release firmware](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_hellen121nissan.zip)
[Download nightly firmware](https://rusefi.com/build_server/rusefi_bundle_hellen121nissan.zip)

[Ebay](https://www.ebay.com/itm/334061645783)

[Pinout](https://rusefi.com/docs/pinouts/hellen/hellen121nissan/) & [Google Sheet](https://docs.google.com/spreadsheets/d/1mhGITGrEsXB65xr1dcxLFLKIrD0TVu754hoxm6RZHCA)

[Issue Tracker](https://github.com/rusefi/hellen121nissan-issues/issues)

[[Schematics rev b]](Hardware/Hellen/hellen121nissan-b-schematic.pdf)[[ibom rev b]](https://rusefi.com/docs/ibom/hellen121nissan-b-ibom.html)

[[Nissan-Xterra-2011]]

[Almera](OEM-Docs/Nissan/Almera-N16-ECU.pdf)

[[Vault-Of-Nissan-OEM]]

## Hardware features

* 
* 
* 
* 
* 
* 

![x](Hardware/Hellen/hellen121nissan-rev-B-with-connector.jpg)

## Extension Pads

| Pin | Type | Comments |
|---|---|---|
||**Outputs**||
| P43 | PP | 1.5 A peak |
| P45 | PP | 1.5 A peak |
| P48 | Bridge driver A | 3 A peak |
| P49 | Bridge driver A | 3 A peak |
| P50 | Bridge driver B | 3 A peak |
| P51 | Bridge driver B | 3 A peak |
| P52 | Low side | 0.5 A |
| P53 | Low side | 1 A |
| P54 | Low side | 0.5 A |
| P55 | Low side | 0.5 A |
| P56 | Low side | 0.5 A |
| P57 | Low side | 0.5 A |
| P58 | Low side | 0.5 A |
| P59 | Low side | 0.5 A |
| P60 | High side | 4 A |
| P61 | High side | 4 A |
| P73 | PP 5 V | 20 mA |
| P74 | PP 5 V | 20 mA |
|   | **Inputs** |   |
| P62 | Analog pull up | |
| P63 | Analog pull up | |
| P64 | Analog pull down | |
| P65 | Analog pull down | |
| P66 | Analog pull down | |
| P67 | Analog pull down | |
| P68 | Analog pull down | |
| P69 | Analog pull down | |
| P70 | Discrete pull up | |
| P71 | Discrete pull up | |
| P72 | Discrete pull down | |

## Vehicle Specific Jumpers

| Vehicle | R7 | R8 |
| --- | --- | --- |
| 2005 Sentra, 2005 Maxima | ✔️ | ❌ |
| 2003 350z, 2005 350z | ❌ | ✔️ |
| 2011 Nissan Xterra | ❌ | ❌ |
| Other model | ? | ? |