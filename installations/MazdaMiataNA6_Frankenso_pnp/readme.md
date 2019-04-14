
###### Frankenso board was designed to be used on Mazda Miata NA6 as a plug-and-play solution

## Stage 0
###Everything stock running rusEfi ECU
All stock sensors, no extra wires, no extra hoses - just lift the carpet and plug rusEfi box instead of OEM ECU.  

## Stage 1
Stage 0 + External wide band controller, wide band oxygen sensor, external MAP sensor

## Stage 2
Stage 1 + TPS 

#### Bench testing options
On NA6 Spark #1 and Spark #3 would audibly click if you use bench Spark Test button.
Because of wasted spark wiring Spark #2 and Spark #4 are not expected to click.

On NA6 Injector #1 and Injector #2 would audibly click if you use bench Injector Test button.
Because of batch injection wirint Injectors #3 and #4 are not expected to click.

All you need is a relatively quiet surroundings and you would hear both spark and injectors. Injectors
are louder, spark is less loud but also totally audible. Both Test buttons are expected to
produce three clicks a second after you press the button in the software.

#### Wideband O2 sensor wire WBO

You would really need a wideband sensor. I suggest adding a pin into OEM connector at 3J. This pin is not used in OEM wiring,
this is between Red/White California-only wire and Lt Green/White Manual-only TPS wire.

![3J](j_pin_for_wbo.jpg)

A small flat screw driver and small pliers would allow you to move side latches and open the cap.
Insert supplied extra pin wire (pin on this picture) and close the latches. Done!

![extra wire](latches_open_J_wbo_added.jpg)
 
On Frankenso board just have a jumper between W48 top and W48 bottom.

-----------------------------------
[Frankenso Board Setup](https://rusefi.com/wiki/index.php?title=Manual:Hardware_Frankenso_board#Default_Pinout)

| # & Color | From | To | Function |   |
|------|------|----|-------|---|
| #1 White   | 3E plug / top of W43  |    |    Crank angle sensor   |   |
| #2 Yellow  | 3G plug / top of W45  |    |    Crank angle sensor   |   |
| #3 White   | 1E plug / top of W4   | bottom W62  |  Check Engine     |   | 
| #4 Red L=90mm      | 2F plug / top of W28  | top of W49 | external MAP +5v power     |   |
| #5 Green           | 2E plug / top of W27  | bottom W47 | external MAP signal      |   |
| #6 Black           | 2N plug / top of W36  | top of W40 | external MAP ground      |   |
| #7 Blue            | 2I plug / top of W31  | W52        | external wide band oxygen sensor signal |
| #8 Black           | 2M plug / top of W35  | top of W39 | external wide band oxygen sensor ground      |
| #9 Green L=120mm  | 1Q plug / top of W17  | bottom of W46   |       |  A/C switch input |
| #10     | 1J plug /    |    |       | A/C relay output  |
| #11 Yellow L=120mm | 1V plug / top of W22  | bottom of W48   |       | clutch pedal switch  |
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
1N - Red - ?? switch. ground if IDLE, floating if pressed/depressed
3L - Light Green / white ?? switch - ground if WOT, floating if not WOT

stop light switch:
ground if not depressed
floating if pressed / depressed

-----------------------------------
[Frankenso analog](https://rusefi.com/wiki/index.php?title=Manual:Hardware_Frankenso_board#Analog_Inputs)

| Analog        | ECU pin |MCU pin |  pull-up | pull-down |   |  
|------|------|----|-------|---|---|
| Coolant (stock)       | 3Q | PC2 |  2.7K | n/a      |   |
| Intake Air (stock)    | 3P | PC1 |  2.7K | n/a      |   |
| Vane Air Flow (stock) | 3O | PA0 |  n/a  | 500K     |   |
| Narrow Band O2 (stock)| 3N | PC3 |  n/a  | 500K  |
| Wide band oxygen (from middle plug) | W52   | PC3   |   n/a    | 500K  |
| TPS ??? A/T harness only!    | 3M     |    |       |   |
| Neutral switch     | 1V     | PA3   | 10K     | n/a  |
| A/C switch     | 1Q     | PA6   | 10K     | n/a  |
|      |      |    |       |   |
|      |      |    |       |   |
| MAP (from middle plug)  | 2J      | PA4   |   n/a    | 500K  |
| Stop Light Switch  green wire   | 1O rerouted     |    |       |   |
|      |      |    |       |   |

-----------------------------------



![Engine Wiring](../../oem_docs/Mazda/1990_Miata/1990_miata_us.png)

[old wiki Mazda PnP](https://rusefi.com/wiki/index.php?title=Manual:Hardware:Mazda_PnP)

[old wiki Mazda_Miata_1990](https://rusefi.com/wiki/index.php?title=Vehicle:Mazda_Miata_1990)

[old wiki Mazda_Miata_1994](https://rusefi.com/wiki/index.php?title=Vehicle:Mazda_Miata_1994)

[old wiki Frankenso board](https://rusefi.com/wiki/index.php?title=Manual:Hardware_Frankenso_board)

1996+ is too different unfortunately

[old wiki Mazda_Miata_1996](https://rusefi.com/wiki/index.php?title=Vehicle:Mazda_Miata_1996)
