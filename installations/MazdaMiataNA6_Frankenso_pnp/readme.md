
### Frankenso board was designed to be used on Mazda Miata NA6 as a plug-and-play solution


#### Wideband O2 sensor wire WBO

You would really need a wideband sensor. I suggest adding a pin into OEM connector at 3J. This pin is not used in OEM wiring,
this is between Red/White California-only wire and Lt Green/White Manual-only TPS wire.

![3J](j_pin_for_wbo.jpg)

A small flat screw driver and small pliers would allow you to move side latches and open the cap.
Insert supplied extra pin wire (pin on this picture) and close the latches. Done!

![extra wire](latches_open_J_wbo_added.jpg)
 
On Frankenso board just have a jumper between W48 top and W48 bottom.

-----------------------------------
Frankesno Board Setup

| # & Color | From | To | Function |   |
|------|------|----|-------|---|
| #1 White   | 3E plug / top of W43  |    |    Crank angle sensor   |   |
| #2 Yellow  | 3G plug / top of W45  |    |    Crank angle sensor   |   |
| #3 White   | 1E plug / top of W4   | bottom W62  |  Check Engine     |   | 
|      |      |    |       |   |
|      |      |    |       |   |
| #4 Red   |  2F plug / top of W28 | top of W49  | external MAP +5v power     |   |
| #5 ?     |  2J plug / top of W32 | ?| external MAP signal      |   |
| #6 Black    |  2M plug / top of W36 | top of W40 | external MAP ground      |   |
|      |      |    |       |   |
|      |      |    |       |   |
|      |      |    |       |   |
| 30V 0.5A Schottky Diode (for example RSX051VYM30FHTR)     | top of ?    | bottom of ?   | Idle Air Valve fly-back diode      |   |
|      |      |    |       |   |

-----------------------------------


### TPS mod
Cars with automatic OEM engine harness use a better OEM TPS sensor.
On vehicles with manual OEM engine harness this TPS mod is recommended.

original manual wiring:

3C/3D GND
1N - Red - ?? switch
3L - Light Green / white ?? switch


-----------------------------------

| Analog        | ECU pin |MCU pin |  pull-up | pull-down |   |  
|------|------|----|-------|---|---|
| Coolant (stock)       | 3Q | PC2 |  2.7K | n/a      |   |
| Intake Air (stock)    | 3P | PC1 |  2.7K | n/a      |   |
| Vane Air Flow (stock) | 3O | PA0 |  n/a  | 500K     |   |
| Narrow Band O2 (stock)| 3N | PC3 |  n/a  | 500K  |
| TPS ??? A/T harness only!    | 3M     |    |       |   |
|      |      |    |       |   |
|      |      |    |       |   |
| Wide band oxygen   | W47 rerouted 3I     | PA4   |   n/a    | 500K  |
| Stop Light Switch     | 1O rerouted     |    |       |   |
|      |      |    |       |   |

-----------------------------------



![Engine Wiring](../../oem_docs/Mazda/1990_Miata/1990_miata_us.png)

[old wiki Mazda PnP](https://rusefi.com/wiki/index.php?title=Manual:Hardware:Mazda_PnP)

[old wiki Mazda_Miata_1990](https://rusefi.com/wiki/index.php?title=Vehicle:Mazda_Miata_1990)

[old wiki Frankenso board](https://rusefi.com/wiki/index.php?title=Manual:Hardware_Frankenso_board)
