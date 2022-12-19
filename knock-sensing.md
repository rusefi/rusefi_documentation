
TL,DR: We have native knock processing, with [Proteus](Proteus) and Hellen hardware support at the moment. We have very limited amount of testing on real vehicles.

# Software knock sensing

![x](https://rusefi.com/forum/download/file.php?id=6900)

[Youtube rusEFI: knock on standing Miata, Proteus](https://youtu.be/GOWEKU2SH9I)

[Youtube rusEFI: Hellen knock gauge](https://youtu.be/oJKI8X4oxCs)


# ASIC solution

We have some progress integrating with conventional knock sensors but it's not ready for end users.
We use TPIC/HIP9011 IC for knock sensor integration but no conclusive data.

We believe that we have hip9011 hardware yet nobody has ever actually detected knock with a hip9011, 
someone would have to figure our calibration approach and test the overall implementation.

Frankenso has hip9011 on-board 

TODO AndreiKA?


TODO MattK

Frequency is calculated based on bore, Freq = (900 / (PIF * (bore) / 2)) 

We also have some results with ion sensing but it's not ready for end users

[rusEFI ion sensing](Saab-Trionic-8-Combustion-Detection-Module-on-Mazda-Miata-running-rusEFI)
 
