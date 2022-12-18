## About Prometheus...


The project is born as a lightweight alternative for a transition from SECU-3i EFI to a more powerful and innovative hardware platform.

The idea is simple: take the existing SECU-3i housing and make a replacement of those two boards with one small PCB of the equal size.

And try to put inside everyting needed for a 4-cylinder fuel injection engine, including ready-to-use ignition drivers and even a bit more ;) 

The PCB is self inclusive, there is no need for STM32Discovery brain boards, external modules etc.


*Assembled board, Rev.0.10, top side:*

![Prometheus board](Hardware/Prometheus/Prometheus-pcb-top.jpg)

---


### DISCLAIMER:

1. Prometheus board is an experimental hobby project. It's an independent design, not associated with the authors of rusEFI, but using rusEFI under the license. Please use only official rusEFI boards to avoid any problems - Frankenso, Frankenstein etc.

2. We're NOT experts in electronics or EFI, and we can NOT guarantee the operation of this board or correctness of the documentation. We are not liable for any damage caused by them.

3. The board is NOT universal, and has been designed for the limited specs of an "ordinary" 4-cylinder engine. We've made it for our own needs. It cannot do everything that official rusEFI boards do, and it's certainly NOT a complete replacement of them. See item 1.

4. The whole idea of 'Prometheus' project was to stuff "everything and the kitchen sink" densely into one small board, without any additional boards needed. It's a reckless experiment, for sure. But we never give up!  8-) 

5. The current board revision was developed for manual pcb assembly only (no thermal relief requirements satisfied and so on), and for components available in our region, also taking into account the compatibility with SECU-3i peripherals.

Licensed under the TAPR Open Hardware License (http://www.tapr.org/OHL).

---

'''Special thanks to @Russian and @Kb1gtt for their brilliant work and inspiration!'''

---

## More...


**See [Prometheus - NEW compact ECU shield! - Forum](http://rusefi.com/forum/viewtopic.php?f=4&t=1215**)

Project files:
[https://github.com/andreika-git/prometheus/](https://github.com/andreika-git/prometheus/)

Interactive Map:
[Prometheus Board Map](https://rawgit.com/andreika-git/prometheus/master/html/prometheus-map.html)
