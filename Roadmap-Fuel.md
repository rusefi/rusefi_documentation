## rusEFI fuel control roadmap 2020

This is a summary of what we hope to achieve over the next few months in terms of fuel control.

Fuel control roadmap V0.1

Now ->

- Fuel algorithm improvements
- MAF   - Fix VE map tracing in TS, some progress on #1398
  - Fix spark map to use the cylinder air charge as Y axis
- Alpha N  - Move fuel and spark table to use the VE table
- Change to use % of ideal cylinder filling at the Y axis making AN a VE based mode
Tickets:
[mass air flow output channel scaling needs help](https://github.com/rusefi/rusefi/issues/1472)
[Add VE/AFR tables to Alpha-N strategy](https://github.com/rusefi/rusefi/issues/1455)
[Updates to fuel algorithms](https://github.com/rusefi/rusefi/issues/1299)

Jun ->

- Ram and space savings
  - Deprecate the pure voltage MAF method (done?)
  - Removal of old unused fuel and spark table
- Reduce the resolution of the VE and spark table to 16bit.

Jul ->

- Stage 1 dual bank control
- Move to a dual fuel state system (Requires cylinders to have an ID for bank 1 or bank 2, reads the correct MAP/MAF/TPS for that bank and then keeps a fuel/spark state on a per bank basis~
- Implement MAP/MAF/TPS/Lambda swapping based on the bank ID
- Implement Pulse width and Spark angle on a per bank basis

Oct ->

- Stage 2 dual bank control
  - Implement dual 6x6 trim tables (one per bank) either manual or short term trim
  - Potentially set up short term and long term 6x6?
  - Create 5x5 (6x6?) TPS to MAP/Cylinder filling transfer function table, Use TPS
vs RPM for this table with values in VE to create a limp mode activated on MAP or MAF failure [#932](https://github.com/rusefi/rusefi/issues/932) [#919](https://github.com/rusefi/rusefi/issues/919) [#468](https://github.com/rusefi/rusefi/issues/468)

Nov/Dec->

- Advanced fuel control
        - Fuel Consumption [#45](https://github.com/rusefi/rusefi/issues/45) [#426](https://github.com/rusefi/rusefi/issues/426)  
  - Begin work on advanced algorithms  
  - Cylinder mass based control  
  - Inlet/exhaust pressure ballance  
  - Torque demand (too hard?)
  - Returnless fuel math?  [#954](https://github.com/rusefi/rusefi/issues/954)  
        - Can we reduce AE tuning via an auto tune? [#944](https://github.com/rusefi/rusefi/issues/944)  
        - Fuel gauge? [#219](https://github.com/rusefi/rusefi/issues/219)  
        - Dual tables? [#289](https://github.com/rusefi/rusefi/issues/289)  
        - Non-linearity correction [#275](https://github.com/rusefi/rusefi/issues/275)  
        - Fuel autotune (non TS) [#247](https://github.com/rusefi/rusefi/issues/247)  
        - Closed loop changes [#355](https://github.com/rusefi/rusefi/issues/355) [#348](https://github.com/rusefi/rusefi/issues/348) [#384](https://github.com/rusefi/rusefi/issues/384)  
        - Flex fuel [#540](https://github.com/rusefi/rusefi/issues/540)  
        - dead time autotune [#492](https://github.com/rusefi/rusefi/issues/492)  

[#959](https://github.com/rusefi/rusefi/issues/959)

[//]: # 'Some comments from DaveB'  

[//]: # 'Arguably, one of the greatest strengths of Ford/GM (others?) OE engine management is that airflow is modeled 100% independently than fueling. This means that any algorithms for arriving at "fueling"" are really modelling airflow. On a practical level, this means that you can have multiple algorithms (AN, VE speed density, MAF) for determining how much AIR is entering the engine AND every algorithm you have outputs the same units. The net result of this is that you can have a AN, SD and MAF model of the engine that feed an independent injector model. Assuming that each of them are calibrated properly, you can switch among your algorithms at will, while the engine is running. Essentially: AN, SD-VE and MAF all output g/s. g/s feeds to a behavioral model (torque request) that determines target lambda. Target lambda + airflow feeds to a stoich model that handles (potentially) a flex fuel sensor and comes up with a quantity of fuel required. quantity of fuel required gets fed to an injector model that models actual injector behavior in terms of latency, delta fuel pressure (IM vs. rail, i.e. 1:1 return regulator vs. returnless vs. differential pressure sensor vs. absolute pressure sensor compensated by MAP sensor)'
