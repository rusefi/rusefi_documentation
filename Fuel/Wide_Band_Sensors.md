# Wide Band Lambda Sensors - Also known as HEGO or WBO2 

A reliable measurement of the AFR is vital for the tuner to be able to tune the engine and be sure that his changes to the fueling are correct. For this purpose we recommend one of the readily available aftermarket wideband gauges or controllers.

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

![Innovate LC-2 Settings](innovate_lc2_settings.png)

