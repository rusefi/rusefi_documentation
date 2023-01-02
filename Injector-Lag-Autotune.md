![Individual Injection](Images/Injection_individual.png)

![Batch Injection](Images/Injection_batch.png)

In individual mode each cylinder gets on time injector lag correction per engine cycle, in batch mode each cylinder gets the same amount of fuel split into two squirts with two times injection lag correction. In a perfect world, AFR measured would be be the same. In case of a wrong injector lag, batch mode would be affected more.

If assumed injector lag is above actual injector lag, batch mode would get more fuel than it should, air/fuel ratio would go down/richer comparing with individual mode. During the switch from individual to batch AFR would go leaner.

If assumed injector lag is below actual injector lag, batch mode would get less fuel than it should, air/fuel ratio would go up/leaner comparing with individual mode. During the switch from individual to batch AFR would go richer.

[auto-tune injector open/close lag](https://github.com/rusefi/rusefi/issues/492)
