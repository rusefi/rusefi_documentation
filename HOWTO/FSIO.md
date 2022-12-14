# FSIO

## The content below is mostly from 2018 and is in the process of being updated. This wiki article needs to be viewed as a work in progress at this time and may contain contradictory information  

Flexible Logic is the fanciest feature of rusEFI. Using the FSIO a user can quickly add a logical function directly into the program of the ECU.

Flexible Logic allows advanced users to get unprecedented level of configurability for custom outputs and engine control. rusEFI supports up to 16 flexible outputs, each of these could be either an on/off or PWM signal. In case of a PWM signal the frequency is defined in the configuration and the duty cycle is dynamically controlled by the evaluated expression.

For FSIO, rusEFI console provides a better user experience due to automated human to RPN conversion.

---

## RPN notation

Because the FSIO is like coding a new function directly into the ECU from  TunerStudio (or console) it comes with an additional difficulty step and that is understanding "reverse Polish Notation"  
This is a form of "postfix" mathematical notation that is particularly suited to computer use and allows a processor to work directly with an equation.  
If differs from the common mathematical notation as instead of having the operators (+ - < * ) between the numbers it puts all of them at the end of the expression.

Standard notation -> A + B *C
RPN notation -> A B C* +

At first look this is very confusing to read and understand but it is actually quite simple and very effective.  

**The two videos below explain this very well and we strongly recommend watching them.**  
[Reverse Polish Notation and The Stack - Computerphile Video](https://www.youtube.com/watch?v=7ha78yWRDlE)  
[Reverse Polish Grows on Trees - Computerphile Video](https://www.youtube.com/watch?v=TrfcJCulsF4)

The TLDR is that the processor is critical to how this notation works, if a value is a number it loads it onto its "stack" if a value is an operator it performs an operation on the numbers in the stack.

A simple example of how this works is as follows:

A B +
| Stack         | Value           |
| ------------- |:-------------:|
| +             | Operand       |
| B             | Number        |
| A             | Number        |

How the processor interprets this is: *"Add, Number B, to Number A."*

A B C * +

| Stack         | Value           |
| ------------- |:-------------:|
| *             | Operand       |
| C             | Number        |
| B             | Number        |
| A             | Number        |

The Processor hits the *operator first so performs a multiplication on the B and C.*"Multiply, by Number C, Number B"*  
The result of B*C would then be put back on the stack, for our example we will call this D. At which point the processor would continue the calculation. "A, B, C and *" have already been taken care of so the result would be as shown below.

| Stack         | Value         |
| ------------- |:-------------:|
| +             | Operand       |
| D             | Number        |
| A             | Number        |

As previously shown this would be *"add, Number D, to Number A"*

The clever part of this notation is that it does not need to have parenthesis in order to conform to correct calculation order [See here for deeper understanding of the importance of calculation order in maths](https://en.wikipedia.org/wiki/Order_of_operations)

Taking a simple calculation to prevent a starter button working above cranking speed (as used on the Prometheus ECU):

Standard notation -> RPM < Cranking_RPM
RPN -> RPM Cranking_RPM <

| Stack         | Value         |
| ------------- |:-------------:|
| <             | Operand       |
| Cranking_RPM  | Number        |
| RPM           | Number        |

Resulting in the processor reading the < operand and performing a "less than" assessment of Cranking_RPM and RPM.
*"Less than check for, Cranking_RPM, being less than RPM"*

RPN is not easy at first but hopefully this short guide and the examples shown below in a similar format will make this as easy as possible while giving a little bit of understanding of how an ECU processes the FSIO.

---;

## rusEFI console now has build-in decoder of RPN form

For example entering the formula below into the command window:

```decode_rpn "0 fsio_analog_input 20 > 0 10 if"```

Would return
```"Human form is "if((fsio_analog_input(0) > 20), 0, 10)"```

and

```"decode_rpn "0 fsio_input 20 > 0 10 if"```

It would show a filing to parse message with a list of some known functions.

---

## Examples

---;

## Rev limit logic

![img](Overview/FSIO/FSIO_for_idle_target.png)

![img](Images/RevFSIO.png)  

FSIO setting 6 has been configured for an adjustable RPM limiter, this can be configured as shown above, the first number (2000) is the limit that will be active when the signal is on, the second (7000) is the standard limiter when the switch is deactivated.

---

## See [legacy wiki](https://rusefi.com/wiki/index.php?title=Manual:Flexible_Logic) content below  

Fuel pump is already using this mechanism - see [https://github.com/rusefi/rusefi/blob/master/firmware/controllers/system_fsio.txt](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/system_fsio.txt)

Here are some commands to try:

eval "2 + 3"

Prints the result of "2 + 3"

eval "max (rpm, 100)"

Prints the result of "max(100, rpm)"

eval "if(1, 200, 100)"

Prints the result of "if(1, 200, 100)"

set_fsio_expression 1 "rpm > fsio_setting(4)"

Turn output #1 hi if rpm is greater than fsio setting #4

set_fsio_output_pin 1 pd11

Tells output #1 to use pin PD11

See [https://github.com/rusefi/rusefi/blob/master/firmware/controllers/core/fsio_impl.cpp](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/core/fsio_impl.cpp) for list of available methods

---

## Contents

1 [More Examples](##More Examples)  
2 [FSIO parameters](##FSIO parameters)  
3 [FSIO digital inputs](##FSIO digital inputs)  
4 [FSIO analog inputs](##FSIO analog inputs)  
5 [Case study #1: shift light](##Case study #1: shift light)  
6 [Case study #2: A/C compressor control](##Case study #2: A/C compressor control)  
7 [Case study #3: digital inputs for extra devices](##Case study #3: digital inputs for extra devices)  
8 [Case study #4: boost controller](##Case study #4: boost controller)  
9 [Case study #5: solenoid exhaust cam actuator](##Case study #5: solenoid exhaust cam actuator)  
10 [See also](##See also)  
11 [Pin naming usability issue](##Pin naming usability issue)  

---

## More Examples

set_fsio_output_frequency 1 100

Tells FSIO channel #1 to output 100Hz PWM

set_fsio_output_frequency 1 0

Now, let's assume we want duty cycle to be 10% if rpm is below 1000, 90% if rpm is above 5000, and have it grow linearly from 10% to 90% between 1000 rpm and 5000 rpm. The human-readable expression for that would be

min(0.9, max(0.1, (rpm - 1000) / 4000 * 0.8))

We can use

eval "min(0.9, max(0.1, (rpm - 1000) / 4000 * 0.8))"

to validate and then

set_fsio_expression 1 "min(0.9, max(0.1, (rpm - 1000) / 4000 * 0.8))"

Another version of the same logic would be

if (rpm < 1000, 0.1, if (rpm > 5000, 0.9, 0.1 + (rpm - 1000) / 4000 * 0.8))

TODO

---

## FSIO parameters

FSIO expressions could be customized using 16 user-defined 'settings' which are stored within the configuration. To change a setting from dev console your command is set_fsio_setting INDEX VAlUE

To access for example setting #3 your FSIO expression is

fsio_setting(3)

---

## FSIO digital inputs

These feature allows you to pull toggle switches state from your fsio expressions.

work in progress

---

## FSIO analog inputs

As of Aug 1, 2018 only one analog input is implemented:

rpn_eval "fsio_analog_input 0" or set_fsio_expression 0 "((rpm > fsio_setting(4) & (fsio_analog_input 0 < fsio_setting(5)) | rpm > fsio_setting(1) | (coolant > fsio_setting(2) > | (vbatt < fsio_setting(3)"

where input would be assigned via FSIO analog input #1

---

## Case study #1: shift light

We want to turn on a warning light if RPM is above 4500

In order to set an output, three commands have to be invoked, also user has to decide which FSIO unit between 1 and 16 to use. Separate commands are used to set duty cycle, output pin, and condition. All three commands referencing the same FSIO index. This is poor usability and one day someone would improve this somehow.

First we need to configure user output, let's use pin PE5 and index #3 for this example:

set_fsio_output_frequency 3 0

this would disable PWM on channel #3 and set this port to simple digital output mode

set_fsio_output_pin 3 PE5

Now we will set FSIO expression to control this output pin:

set_fsio_expression 3 "rpm > 4500"

here 3 is the index of the output pin

A configurable version of same would be

set_fsio_expression 3 "rpm > fsio_setting(3)"

set_fsio_setting 3 4500

---

## Case study #2: A/C compressor control

Say we want to use PE0 as A/C toggle button, and we want A/C compressor logic to be 'if (rpm > 1200 AND A/C button is depressed) then output 200Hz @ 80% duty cycle on PB1 else output nothing on PB1'.

First we need to configure A/C button input pin which is currently implemented as analog input (that's a temporary hack) - see engineConfiguration->acSwitchAdc

set_fsio_output_pin 3 PB1

Configure output #3 to use pin PB1

set_fsio_output_frequency 3 200

Configure output #3 to use 200Hz PWM

And finally set the expression:

'set_fsio_expression 3 "0 80 rpm 1200 > ac_on_switch AND IF"'

Which is RPN for if(rpm > 1200 AND ac_on_switch, 80, 0)

---

## Case study #3: digital inputs for extra devices

TODO

First we need to configure A/C digital input pin, we will use index 0:

set_fsio_input_pin 0 PE0

---

## Case study #4: boost controller

Solenoid-controlled boost controller would need variable duty cycle.

For example, let's use fsio table #3 to define the desired duty cycle:

![FSIO table](Images/Fsio_table3.png)

Let's set PE11@300Hz as FSIO output #4

![FSIO outputs](Images/Fsio_outputs.png)

And now the tricky part, let's set FSIO expression on that output using the following command

set_fsio_expression 4 "rpm map 3 fsio_table 100 /"

Do not forget writeconfig

fsioinfo could be used to monitor output value

![FSIO info](Images/Fsioinfo.png)

As for the magic expression, that's RPN for "fsio_table (3, rpm, map) / 100".

---

## Case study #5: solenoid exhaust cam actuator

Let's assume we want to turn on 200Hz solenoid at 80% duty cycle if RPM is above 6000.

Here is how this would look in Tuner Studio:

That's RPN notation for "(rpm > 6000) * 0.8"

See [https://github.com/rusefi/rusefi/blob/master/firmware/controllers/system_fsio.txt](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/system_fsio.txt)

![FSIO TunerStudio](Images/Fsio_TS.png)

---
A/C control

Work in Progress

useFSIO12ForIdleOffset:false
useFSIO13ForIdleMinValue:false

// Human-readable: ac_on_switch & (rpm > 850) & (time_since_ac_on_switch > 0.3)

---

## See also

set debug_mode 23

[Debug Fields](Debug-Fields)

[FSIO warning light via rusEfi console - Video](https://www.youtube.com/watch?v=nrIrtdn-Nc0)

[FSIO warning light via TunerStudio - Video](https://www.youtube.com/watch?v=eA4clVtklZ8)

---

## Pin naming usability issue

We have a usability feature with microRusEFI where stm32 pin names are hidden from users. Unfortunately for FSIO these smt32 pin names are needed. Those are visible in the yaml files in each board's connector directory, e.g. [https://github.com/rusefi/rusefi/blob/master/firmware/config/boards/microrusefi/connectors/main.yaml](https://github.com/rusefi/rusefi/blob/master/firmware/config/boards/microrusefi/connectors/main.yaml)
