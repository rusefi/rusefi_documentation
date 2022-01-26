# Acceleration Compensation

See also [Fuel Overview](Fuel-Overview)

Acceleration Compensation is required in an EFI system to modify the fuel injection to compensate for the deviation in AFR caused by the change of conditions in the inlet manifold. 
 
When an engine changes load the depression in the inlet manifold changes; during an increase of load the depression increases and this causes fuel to drop out of suspension and collect on the walls of the intake manifold. Because of this fuel drop out, instead of being drawn into the cylinders, the fuel momentarily remains on the walls of the inlet manifold. The result of this is the lean AFR spike you can often see on poorly tuned vehicles when giving a sudden increase of throttle. 

rusEFI has implemented several strategies that attempt to compensate for this physical phenomenon. These are detailed in their own specific pages, but a brief overview is shown below.

It is important to note that the Acceleration Compensation is not intended to increase the amount of fuel in order to increase power during acceleration - that is the purpose of the AFR table or VE table, whereas this compensation is purely intended to correct for the fuel dropping out of suspension.  
N.B. This is also why I refer to it as "Acceleration Compensation" rather than "Acceleration Enrichment", as the second term implies the wrong purpose. 

# TPS based 

The simplest method, this uses the change in TPS position over time to decide on an additional quantity of fuel to inject.  
It is most similar to a carburetors accelerator pump in operation. 

# Wall Wetting 

This is a more sophisticated method that was developed in the 1980s by the Ford Motor Company. It uses a simple model to estimate the amount of fuel that is dropping out of suspension and the time it takes to re-evaporate.  
This is a more accurate method but requires a little more knowledge to tune. 

# Engine Load based 

[//]: # "To do by someone with more understanding of this implementation"

[//]: # "OrchardPerformance" 
