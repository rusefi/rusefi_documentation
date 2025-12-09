# Why we have chosen to stop offering self-assembly rusEFI ECUs  

We get a lot of requests asking for self-assembly ECUs and this is something we took a group decision to stop offering.  
We took this course of action for several important reasons we hope to address below.  

As a group, rusEFI has always been striving to be the best in the open source space; this means we have focused a lot on the quality, reliability, and safety of our hardware.  
In order to achieve this we have based our current designs around modern high performance chips that are for the most part OEM automotive quality. These chips are all using SMD technology and in some cases are very small with high pin counts; it is this that allows us to build such small ECUs.  
Because the chips are small and SMD they require very skilled assembly with tools that most DIY auto enthusiasts will not have. At a minimum they require an SMD rework station, a microscope, specialist flux and solder pastes and a seriously steady hand to build.  

Previously, when we offered ECUs in kit form we found that the majority of issues users were having were related to the difficulty of soldering the small components and a lot of faults and failures were due to short circuits from solder bridges or IC pins that were not completely soldered down.  
These kinds of issues are not always immediately obvious and have the potential to cause unintended results when the ECU is in use. Obviously for such a safety-critical part of the car it has been the cause of some concern.

As such, it is a rusEFI policy to only offer fully assembled hardware from one of our teams of skilled builders.
Our design files are still free and open source, and you are free to use them in any way you see fit (in accordance with the license), but we recommend you use an SMT assembly service such as JLCPCB or similar to build your ECU.
