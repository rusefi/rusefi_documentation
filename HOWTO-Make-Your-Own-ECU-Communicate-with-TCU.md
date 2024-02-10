# HOWTO Make Your Own ECU Communicate with TCU

## What is this about

As of Feb 2024 it has been _years_ since I've on and off started to work on getting an open source ECU to communicate with a transmission control unit via CANbus. So far I have not accomplished the goal which makes it a great point to write an article on the subject!

I have a [2006 Volkswagen Passat 2.0 Turbo GDI PG35 non-DSG automatic complete running and driving test mule](https://rusefi.com/forum/viewtopic.php?f=2&t=1631) idling on rusEFI open source ECU. Attempting to engage transmission while posting only minimal dashboard CANbus messages causes something violent to happen and the engine would usually stall see https://youtu.be/rTobt4l-iEs

Original ECU which I am looking to replace for no good reason is BOSCH MED9.1. Conveniently the relevant Bosch Funktionsrahmen Ea827 TSI is available on the internet. CANbus traffic seems to mostly align with https://github.com/commaai/opendbc/blob/master/vw_golf_mk4.dbc DBC file.

I've used google translate to translate some of interesting field description those are already merged into the file like https://github.com/commaai/opendbc/commit/951ab07fdcbce023a5c927f56bbf94e0f2322366
