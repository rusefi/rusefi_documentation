See also http://rusefi.com/articles/measuring_temperature/

See also [Frankenstein Analog Inputs](Hardware-Frankenstein#step-3-analog-inputs)

See also [Frankenso Analog Inputs](Hardware-Frankenso#analog-inputs)

See also [Troubleshooting](Troubleshooting)

In order to configure coolant temperature sensor or intake air sensor you would need to know it's resistance at three temperatures - lowest, highest and somewhere in between. You would also need to know the value of pull-up 'bias' resistor, which together with your sensor would make a voltage divider.

While troubleshooting CLT and IAT, the two most useful commands are `analoginfo` and `tempinfo` - these show you the voltage registered by rusEFI alongside with input pins and resistance processing values.

![analoginfo Output](Images/analoginfo2.png)

![tempinfo Output](Images/tempinfo.png)

![CLT Thermistor Settings](Images/thermistor_settings.png)

## Some datapoints

http://rusefi.com/forum/viewtopic.php?f=3&t=864&start=60#p15344

![IAT Thermistor settings](Images/IAT_screen.png)


MLX90621

http://forum.arduino.cc/index.php?topic=126244.0

http://www.melexis.com/Asset/Datasheet-IR-thermometer-16X4-sensor-array-MLX90620-DownloadLink-6099.aspx

http://www.melexis.com/Assets/Transition-from-MLX90620-to-MLX90621-6446.aspx

![MLX90621  Pinout](Images/MLX90621_pinout.png)
