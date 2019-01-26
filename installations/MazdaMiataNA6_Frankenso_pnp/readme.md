
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
| #1 White   | 3E plug / top of W43  |    |    crank angle sensor   |   |
| #2 Yellow  | 3G plug / top of W45  |    |    crank angle sensor   |   |
| #3 White   | 1E plug / top of W4   | bottom W62  |  Check Engine     |   | 
|      |      |    |       |   |
|      |      |    |       |   |
|      |      |    |       |   |

-----------------------------------

-----------------------------------

| Analog        | ECU pin |MCU pin |  pull-up | pull-down |   |  
|------|------|----|-------|---|---|
| Coolant (stock)       | 3Q | PC2 |  2.7K | n/a      |   |
| Intake Air (stock)    | 3P | PC1 |  2.7K | n/a      |   |
| Vane Air Flow (stock) | 3O | PA0 |  n/a  | 500K     |   |
| Narrow Band O2 (stock)| 3N | PC3 |  n/a  | 500K  |
|      |      |    |       |   |
|      |      |    |       |   |
|      |      |    |       |   |
|      |      |    |       |   |
|      |      |    |       |   |
|      |      |    |       |   |

-----------------------------------



![Engine Wiring](../../oem_docs/Mazda/1990_Miata/1990_miata_us.png)

[old wiki Mazda PnP](https://rusefi.com/wiki/index.php?title=Manual:Hardware:Mazda_PnP)

[old wiki Mazda_Miata_1990](https://rusefi.com/wiki/index.php?title=Vehicle:Mazda_Miata_1990)

[old wiki Frankenso board](https://rusefi.com/wiki/index.php?title=Manual:Hardware_Frankenso_board)
