# HOWTO Create a TunerStudio Project

[EFI Analytics TunerStudio](https://www.tunerstudio.com/index.php/tuner-studio) is a third party commercial tuning application needed while working with rusEFI. TunerStudio is available on Windows, Mac and Linux. TunerStudio needs "ECU Definition file" (usually with .ini extension) in order to start communicating with rusEFI.

## Download and Install

[download and install TunerStudio](https://www.efianalytics.com/TunerStudio/)

## Detect mode

All official rusEFI boards support automatic ECU definition file download if connected via USB, serial port or Bluetooth. Just hit 'Detect' and wait for the name of your ECU to appear.

## Manual procedure

Here is how you create your first project in Tunerstudio:

![First project](FAQ/images/simulator/TCP_first_project.png)

In order to create a rusEFI project you need a rusefiSOMETHING.ini file from your [rusEFI bundle](Download).

Your rusEFI board should also present itself as a USB storage device to your computer, containing the .ini file you need. This is the most foolproof method of making sure you have the correct .ini file.

![Menu](FAQ/images/simulator/TunerStudio_other_browse.png)

After clicking on the link you'll see this:

![Menu](FAQ/images/simulator/TCP_menu.png)

You have successfully created your first Tunerstudio project.
