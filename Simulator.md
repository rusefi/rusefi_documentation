# RusEfi Simulator

##### You'll be able to test out the rusEfi controller on your computer 

This simulator is bild on the firm wear of the rusEfi controllers, made to be usable on the Windows operating systems. The only thing that you'll need will be a computer. 


The rusEfi console runs on Java, so if you don't have that installed on your PC you'll need to download it.
If you don't have the rusEfi console you can download it [here](http://rusefi.com/build_server/rusefi_bundle.zip).  
You'll have to unzip the file and go into the console folder.
 
 ![Directory](FAQ\images\simulator\rusEfi_console_directory.PNG)
 
 And then open the rusefi_console.jar file.
 
 ![Contents](FAQ\images\simulator\rusEfi_console.jar_directory.png)


## Connecting the simulator to Tunerstudio

There are two ways to connect rusEfi simulator to Tunerstudio, it all depends on weather you have the lite or commercial version.

To start of you'll need to open one of your existing projects or just create a new one.

![Start menu](FAQ\images\simulator\TunerStudio_start_menu.png)
 
 With the paid version all you need to do is to go into the communication settings inside a created project,
 
 ![Commsetings](FAQ\images\simulator\Tunerstudio_comm._settings.png)
 
 choose the USB and wireless driver and the WiFi driver connection type, write the Port as 29002 and the IP address as 127.0.0.1
 
 ![Communication_settings](FAQ\images\simulator\Communication_settings_direct.png)
 
However, if you only have the lite version of Tunerstudio the process will be different

## Emulating a serial port to connect to Tunerstudio lite

If you prefer using the free version of Tunerstudio - Tunerstudio lite -  you'll need to install a serial port emulator from [here](https://www.hw-group.com/software/hw-vsp3-virtual-serial-port#download). You'll need to emulate a port on your PC. The only thing that you'll need to do is to choose a port name, COM100 for example and to change the port address to 29002.



![Virtual serial port](FAQ\images\simulator\Emulator_settings.png)

Now you can create your virtual port.

![Virtual_port_start](FAQ\images\simulator\Virtual_port_start.png)

One of the quirks of emulating is that your rusEfi console has to be open. So now if you open the communication settings in Tunerstudio,

![Commsettings](FAQ\images\simulator\Tunerstudio_comm._settings.png)

you'll be able to connect to your emulator.

![Emulated Communication settings](FAQ\images\simulator\Communication_settings_tutorial.png) 

Now your simulator is connected to Tunerstudio. 