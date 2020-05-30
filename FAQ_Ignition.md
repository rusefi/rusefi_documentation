# Ignition FAQ

One of the most common themes with rusEFI is people wanting to know more about igntion and what ignition hardware rusEFI can work with. 
The topics below are an attempt to cover as many of the common key questions we get asked. 

---

## Will rusEFI work with my "XYZ" coils? 
In theory rusEFI will work with any coils from nearly any vehicle produced since the daimler motor carriage of 1901. 
In reality there are some practicalities to that mean some coils are easier than others. 

The rusEFI ignition circuits are designed to work at 5v and are not designed to resist the large currents produced when controlling an ignition coil.  "Well that's is no good!" I hear you think, actually it is perfectly fine provided certain conditions are met.  

The outputs of the rusEFI hardware are able to operate an ignition coil driver (IGBT) but not the coil directly.  
This means that more modern "smart" coils that have an IGBT built into the coil can be driven directly. 
Older style coils will need an ignition coil driver added between the rusEFI output and the ignition coil.  

---

## But why did you not build the ignition control driver (IGBT) into the ECU?

Quite simply for the same reasons modern ECUs do not have them either.   
1. It reduces the number of parts needed for the ECU and thus the cost
2. It means the IGBT component is replaceable as they do sometimes fail
3. It moves the electrically noisy high current/voltage components away from the sensitive MCU
4. The shorter the physical length of these (actually quite sensitive) high current/voltage circuits the better, it reduces the total EMF signature of the vehicle, it reduces the weight of the vehicle as the wires can be smaller and most importantly it reduces the losses and means there is more energy available for the spark. 

Most more modern ignition coils are smart for these exact reasons and in order to work with these nice modern, high power low weight COP coils we have a 5v output. 

---

## OK you made your point but what coils do I need? 

That all depends if you want to buy new coils or already have some. In general we would advise to buy "smart coils" but we are also big fans of working with what you have or raiding the junk yard (read this as we are tight).

---

## Thanks but that really did not help, please tell me exactly what to do? 

OK, ok, this question needs tackling in several parts, please pick the option you need below:

<details><summary><u>I want to buy new coils</u></summary>

If you are looking to buy new coils then we would recommend taking a look at the list of Ignition coils that have been tried with rusEFI.  
[List of ignition coils](Vault_Of_Ignition_Parts)  
In general though we recommend trying to get a tried and tested solution and getting coils that are easily available in your local area. 

</details>


<details><summary><u>I have existing coils </u></summary>

<details><summary><u>My coils are newer smart coils</u></summary>

Great, then you can wire them directly to the ECU.  
However please take care to check that tht coils you have really do incorporate the ignition driver into the coil. 
Having 3 or 4 connectors pins is not a guarantee that a coils is a "smart" coil. 

</details>

<details><summary><u>My coils are older dumb coils</u></summary>

Great, same as the smart coils please double check your coils are actually simple coils without built in ignition modules. 
You will need to source an external ignition module to go between the ECU and the coils. 
These are generally quite cheap and can be found on some cars in the junk yard. We also made our own simple module [here](fix link)

There are some tested Ignition modules on the Ignition components list. 
[List of ignition components](Vault_Of_Ignition_Parts) 

</details>

</details>  
  
---

## I need an ignition module, what now? 

Most older coils will need this and some cars have them as standard.  
These are not to be confused with the EDIS module that some ECUs require that is a more complex unit that does some of the functions for those simpler ECUs. 

There are several available modules some are listed on the Ignition components list.  
[List of ignition components](Vault_Of_Ignition_Parts) 

---

## What about adding IGBTs on the board to drive coils directly? 

Actually we already have this in the form of the Prometheus and Hellen boards.  
These boards are intended as all in one solutions. 