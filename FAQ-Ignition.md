# Ignition FAQ

One of the most common themes with rusEFI is people wanting to know more about ignition and what ignition hardware rusEFI can work with.
The topics below are an attempt to cover as many of the common key questions we get asked.

---

## Will rusEFI work with my "XYZ" coils?

In theory rusEFI will work with any coils from nearly any vehicle produced since the daimler motor carriage of 1901.
In reality there are some practicalities that make some coils easier than others.

The rusEFI ignition circuits are designed to work at 5v and are not designed to resist the large currents produced when controlling an ignition coil.  "Well that's is no good!" I hear you think - actually, it is perfectly fine provided certain conditions are met.  

The outputs of the rusEFI hardware are able to operate an ignition coil driver (IGBT) but not the coil directly.  
This means that more modern "smart" coils that have an IGBT built into the coil can be driven directly.
Older style coils will need an ignition coil driver added between the rusEFI output and the ignition coil.  

---

## But why did you not build the ignition control driver (IGBT) into the ECU?

Quite simply for the same reasons modern ECUs do not have them either.

1. It reduces the number of parts needed for the ECU and thus the cost
2. It means the IGBT component is replaceable as they do sometimes fail
3. It moves the electrically noisy high current/voltage components away from the sensitive MCU
4. The shorter the physical length of these (actually quite sensitive) high current/voltage circuits the better; it reduces the total EMF signature of the vehicle, it reduces the weight of the vehicle as the wires can be smaller and most importantly it reduces the losses and means there is more energy available for the spark.

Most more modern ignition coils are smart for these exact reasons and in order to work with these nice modern, high power low weight COP coils we have a 5v output.

---

## You made your point but what coils do I need?

That all depends if you want to buy new coils or already have some. In general we would advise to buy "smart coils" but we are also big fans of working with what you have or raiding the junk yard (read this as we are tight).
We have attempted to compile a list of coils [here.](Vault-Of-Ignition-Parts)

---

## Thanks but that really did not help, please tell me exactly what to do?

Ok, this question needs tackling in several parts, please pick the option you need below:

<details markdown="1"><summary><u>I want to buy new coils</u></summary>

If you are looking to buy new coils then we would recommend taking a look at the list of Ignition coils that have been tried with rusEFI.  
[List of ignition coils](Vault-Of-Ignition-Parts)  
In general though we recommend trying to get a tried and tested solution and getting coils that are easily available in your local area.
There are lots of tried and tested options that can be found by [**searching the forum.**](https://rusefi.com/forum/search.php)

</details>

<details markdown="1"><summary><u>I have existing coils </u></summary>

<details markdown="1"><summary><u>My coils are newer smart coils</u></summary>

Great, then you can wire them directly to the ECU.  
However please take care to check that tht coils you have really do incorporate the ignition driver into the coil.
Having 3 or 4 connectors pins is not a guarantee that a coils is a "smart" coil.  
There is some information on known smart coils and how to work out if you have a smart coil that can be found by [**searching the forum.**](https://rusefi.com/forum/search.php)

</details>

<details markdown="1"><summary><u>My coils are older dumb coils</u></summary>

Great - same as the smart coils, please double check your coils are actually simple coils without built in ignition modules.
You will need to source an external ignition module to go between the ECU and the coils.
These are generally quite cheap and can be found on some cars in the junk yard. We also made our own simple module [here](https://rusefi.com/forum/viewtopic.php?t=286)

There are some tested Ignition modules on the Ignition components list and some can be found by [**searching the forum.**](https://rusefi.com/forum/search.php)  
[List of ignition components](Vault-Of-Ignition-Parts)

</details>

</details>  
  
---

## I need an ignition module, what now?

Most older coils will need this and some cars have them as standard.  
These are not to be confused with the EDIS module that some ECUs require that is a more complex unit that does some of the functions for those simpler ECUs.  
Lots of users have already had to tackle this issue so there is a host of options that can be found by [**searching the forum.**](https://rusefi.com/forum/search.php)

There are several available modules some are listed on the Ignition components list.  
[List of ignition components](Vault-Of-Ignition-Parts)

---

## What about adding IGBTs on the board to drive coils directly?

Actually we already have this in the form of the Prometheus and Hellen boards.  
These boards are intended as all in one solutions.

---

## I have a coil with 3/4/5 pins, does this mean it is a smart coil?

Absolutely not.  
Some Bosch dumb coils have 3 pins, one is used for ignition misfire monitoring.
Wasted spark coils can share one common pin and then have a single pin for each coil pair. Resulting in a dumb coil with 3-5 pins.
Some wasted spark coils have 2 pins for each coil pair inside the pack.

This means it is vitally necessary to check the requirements of your actual coils by reviewing the wiring diagrams or [**searching the forum.**](https://rusefi.com/forum/search.php)
