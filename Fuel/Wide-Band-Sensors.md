# Wide Band Lambda Sensors - Also known as HEGO or WBO2 

A reliable measurement of the AFR is vital for the tuner to be able to tune the engine and be sure that his changes to the fueling are correct. For this purpose we recommend one of the readily available aftermarket wideband gauges or controllers.
A wide-band oxygen sensor is pretty much a must for what we are doing here. Bosch is the only manufacturer of these sensors I am aware of. The wide-band precision of the sensor is achieved by a relatively sophisticated magic which happens inside the sensor, that's why 5 or 6 wises and that's why the sensor requires it's own controller (brain). Since there are at least two kinds of sensors it's safer to buy a kit.

As of April 2016 rusEFI does not have build-in WBO controller.

Wide-band controllers range from $35.00 for [14point7 SLC-free](http://www.14point7.com/products/slc-free) ($85 with sensor) all the way to high-200 for kits with a gauge.

TODO: an explanation why narrow band works for OEM but now for what we are doing here.

rusEFI is able to support most aftermarket wideband sensors that have a 5v analogue output.  
We have implemented the CAN interface for the new series of AEM X-type sensors, these have been tested to work with both their analog and CAN interfaces.

Sensors that have been used with rusEFI so far include:
* Innovate MTX-L
* Innovate LC-2 
* Spartan SLC Free
* AEM X-type WBO2 
* AEM older generation WBO2 

## Innovate LC-2 serial

Innovate's LC-2 serial interface is supported. The Innovate sensor controller has typically two serial connectors, the one labeled *OUT* needs to be connected to the ECU. AUX Serial needs to be configured with a baud rate of 19200BPs and *Enable Innovate LC-2 Serial* needs to be set to true in the EGO sensor window. 

![Innovate LC-2 Settings](Fuel/innovate_lc2_settings.png)

## Misc Info

Bosch LSU 4.2
[Lambda_Sensor_LSU_4.2_Datasheet_51_en_2779111435.pdf](OEM-Docs/Bosch/Lambda_Sensor_LSU_4.2_Datasheet_51_en_2779111435.pdf)

AEM 30-4100 Digital Wideband UEGO Gauge (donated by AlexL)

35-8469 35-8460 gauge

replacement sensor AEM 30-2001
alternative parts  2243, 170408, 48292001, 12575657, 213-1572, Type B, 57005	
Manufacturer Part Number: 0258007206

"The resistor is put into the raised portion of the Plug end and is used to set the calibration of the sensor during the testing and assembly process at Bosch. When you change the O2 sensor, the resistor stays with it."

Based on LSU4.2, "Each AEM UEGO sensor is individually calibrated and a resistor integral at the
connector body is laser trimmed with this value."

0v = 10AFR
5v = 20AFR

[AEM Controller Installation Instructions](http://www.aemelectronics.com/files/instructions/30-4100%20Digital%20Wideband%20UEGO%20Gauge.pdf)


![Pinout](Fuel/Aem_UEGO_pinout.png)


1j0973733 Bosch 4.2 6 pin connector available everywhere

[ALM-CAN lambda meter](http://www.ecotrons.com/products/wideband-controller-alm-can/)
