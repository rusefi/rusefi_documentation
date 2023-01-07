# rusEFI power supply troubleshooting guide

[LM2596](http://www.ti.com/product/lm2596)

![Regulator Pinout](Images/regulator_pinout.png)

## Scenario: 12v on regulator output

With +12 applied, I measure +12 on lm2596 pin #2. With everything disconnected, I can see that #2 is not shortened to #1 (input)

I also measure zero on the feedback pin and zero on the +5 output.

Solution: make sure that regulator output pin is soldered (should show continuity with one of the inductors), make sure that feedback pin is solder (should show continuity with one of the inductors)
