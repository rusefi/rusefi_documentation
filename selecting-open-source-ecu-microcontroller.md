# Selecting Open Source ECU Microcontroller

As of Jan 2019 we still like Cortex-M a lot stm32, here are the reasons: Performance, Availability,
Toolchain, Hardware API.

1. **Performance** - stm32 gives us 160MHz and close to 200Kb of RAM with floating point unit.

2. **Availability** stm32 is cheap and readily available in low quantity both just chips and convenient dev boards

3. **Toolchain** Free GNU Arm Embedded Toolchain allows us to compile and debug software

4. **Hardware API** ChibiOS Hardware Abstraction Layer allows us to not spend too much time debugging low level peripheral registers

One of the things we do not like about smt32 Cortex-M is the fact that this family is not automotive and not based on 5 volts.
In an ideal chip we would like to see 5v ADC and maybe more hardware timers.

We've looked into a few other chips but so far have not found a better overall platform.

Relevant forum threads:

S32K148 [Is STM32F4 the right chip? - Forum](https://rusefi.com/forum/viewtopic.php?f=13&t=816)

SPC563Mx, MPC563x - this one has some ChibiOS support - [What chip is inside Ford EEC*? - Forum](https://rusefi.com/forum/viewtopic.php?f=13&t=429)

TMS570 - [TMS570 - Forum](https://rusefi.com/forum/viewtopic.php?f=13&t=407) & [Hello World project for TMS570](https://github.com/rusefi/rusefi/issues/89)

(in Russian) [Why did you choose this STM32? - Forum](https://rusefi.com/forum/viewtopic.php?f=8&t=269)

=======================================================

Rafael Matos  4:13 AM
@Matthew Kennedy  @Andrey  in your opinion whats the advantage between runing a 8bit mcu and a 32 bit mcu apart from having more timers can bus, etc? (serious question)

Matthew Kennedy  4:17 AM
You mean why is 32b better?

Rafael Matos  4:24 AM
Yes on your understanding why woukd you never use 8bit or why you wouldn't use it now

Matthew Kennedy  4:37 AM
That's a sort of complicated question that you could teach several full university courses about (some of which I've taken).  There are some technical factors about how the CPU and peripherals actually work, then there are some economic factors that have pushed the world in the same direction.
Technical:
32b generally means that the native word size of the CPU core is 32 bits, which lets you do more math per cycle.  For example the stm32 can add/subtract/multiply two 32bit numbers in a single cycle, but an AVR can only do 8 bits per cycle.  If you want to add 32 bit numbers, it's possible, but requires issuing four instructions in sequence to complete the operation, requiring both more time and more program space.
In addition to the native word size being longer, addresses are also larger.  An 8-bit cpu can only address 8 bits worth of memory, 256 bytes.  With some trickery like the AVR does, you actually extend that to 16, but that only gets you 65k of address space.  An stm32 has a full 32 bit memory bus, which gives you 4.2 gigabytes of address space.  This has implications in that it allows more physical memory to be installed, in addition to more peripherals like timers/usb/serial/CAN.
Economic:
There has been more demand for more powerful processors everywhere (phones/desktop PC/servers/MCUs, literally everything), which means that chip MFGs have more incentive to develop and produce more advanced MCUs.  This results in 32 bit processors getting diffused on smaller processes (each transistor is physically smaller), which means they can run a faster clock speed.
Since a faster 32b processor has more horsepower to play with, the development cost is reduced.  You get a better "functionality per dev time" ratio when you have a bigger hammer to hit the problem with.  For example MS/speeduino/etc use dedicated timers for each output - that's why they're limited on cylinder count on the AVRs, they ran out of timers.  But since we had the performance available to not worry about that, we actually only use a single timer, and just emulate an infinite number of timers in software.  Is it less efficient? Yep!  Does it matter, since the CPU is so fast? Not really!
4:37
sorry for the wall of text lol

Gwendal Blot  4:40 AM
Is this on the wiki ?

Matthew Kennedy  4:40 AM
not yet :slightly_smiling_face:
:heavy_check_mark:
2

Gwendal Blot  4:41 AM
Should be imo, quite readable for semi specialists

Matthew Kennedy  4:44 AM
a quick perusal of mouser says that the fastest 8b MCU they carry is 100mhz, and fastest 32b is 400mhz

1 reply
Today at 9:49 AMView thread

Rafael Matos  4:49 AM
@Matthew Kennedy beautiful text, good info, as you said thats what we learn at uni, but in terms. Of engine management do you believe the advantage is only the timers and the fact it requires less cycles for the same calculations?

Matthew Kennedy  4:50 AM
the actual value for this project is that with a faster CPU, the ratio of tricks or cleverness required to functionality achieved is minimized
:heart:
1

Gwendal Blot  4:51 AM
Isn't it an automotive rating thing also ?
4:52
I.e. most commonly used 8 bit platform isn't regarded as the safest one that exists

Matthew Kennedy  4:52 AM
plenty of 32b stuff is automotive
4:53
tricore, spc5, etc

Rafael Matos  4:53 AM
S32
4:53
Mcp5

Matthew Kennedy  4:53 AM
kinetis
4:53
etc
4:53
they exist

Rafael Matos  4:53 AM
The future will probably be mcu+fpga

Matthew Kennedy  4:54 AM
you don't really need it for stuff like engine control
4:54
the versatile timers they have are plenty
4:54
and the whole industry seems to have settled on 60-2 as the "one true trigger pattern"

Gwendal Blot  4:54 AM
Multi core 32bits MCU ?

Matthew Kennedy  4:54 AM
yes
4:54
many of the ones we listed have multi core options
4:54
both lockstep and true multi core

Rafael Matos  4:55 AM
Yes most also have dedicated hardware for crank cam. Timing

Gwendal Blot  4:55 AM
That would be neat for interruption parallelization, with possibility of running a 60-2 or even more at 15k rpm

Matthew Kennedy  4:55 AM
we can do 60-2 at 15k (edited)
4:56
the point of the fancy timer hardware is that you don't need per-tooth interrupts

Rafael Matos  4:56 AM
Exaclty
4:56
Which the OEM manufacturers really prefer

Matthew Kennedy  4:56 AM
everybody prefers fewer interupts

Rafael Matos  4:57 AM
And also makes it easier to be plaved in several different cars

Matthew Kennedy  4:57 AM
I heard an anecdote that you could break in to the debugger (halting the CPU) with an engine running on the dyno, and it would continue running just fine
4:58
it wouldn't vary the ignition timing or fuel quantity, but it would continue running steady state

Rafael Matos  4:59 AM
The thing is, i understand 8 bit is enough to run an engine, and it works fine, everweek there is at least 9/10 8 bit ecus passing through my hands, but i dont like the fact that people try to make it look that has a lot if headroom and there is no advantage on 32b
4:59
Like the iphone 1 also makes calls and sends texts...
5:00
:face_with_rolling_eyes:

Matthew Kennedy  5:00 AM
But the iPhone 1 doesn't take photos like this
Image from iOS
Image from iOS

Rafael Matos  5:00 AM
Yep

Matthew Kennedy  5:02 AM
also geez I need to clean my keyboard
5:06
though to their point, even if an 8b ecu is fully packed with work to do, it can still work fine
5:06
there are many cases that it is 100% adequate, and you wouldn't get any gain from a faster cpu

Rafael Matos  5:06 AM
Of course

Matthew Kennedy  5:07 AM
my race car would make the exact same power with an ms2

Rafael Matos  5:07 AM
The problem is everytime there is a new idea to add something the mcu is a limiting factor and there is a lot of work that has to be done in order to work around it

Matthew Kennedy  5:07 AM
yep

Rafael Matos  5:08 AM
I get that, there is not many people that have seen and assembled so many DIY engine management systems as i did, i know what works and what doesn't work, i just don't like that people always try to find a way to justify things

Gwendal Blot  5:19 AM
Main advantage of a 32 bits ECU is you can brag about it at car meets when leaning on your engine

Simon - Orchardperformance  5:45 AM
I like to use the simple analogy of the flathead V8, sure a flat head V8 will run and drive, sure you can tune it up to decent power, but no matter what it is always going to be a flathead V8 and your not going to get the same $/hp or peak power or light weight from it.
Same deal for an 8 bit CPU

Dave B.  9:52 AM
If you look at the really successful automotive MCU platforms circa 201x, you'll see a few things:
9:52
-32 bit (way of the world)
9:53
-Dedicated coprocessors / programmable timer modules / fancy timers for handling time sensitive events
9:54
-Often a solid FPU, "DSP" or other set of instructions for doing lots of math fast
9:55
PPC/MPC/Power architecture, Tricore, SuperH, ARM variants.  They all have very similar playbooks.
9:56
Unfortunately, most of the chip manufacturers will make you sign a fairly strict NDA before releasing details of their "TPU" time processing unit programing, from what I understand.
9:57
Processors like the XGATE that have been used successfully despite relatively modest specs (16 bit, low clock speed) tend to have very well developed secondary timing processors.
9:58
I look at the Honda ECUs on my bench that came in 1992 model year vehicles and would at least run an engine at 12,000 RPM with nothing more than a chip change.  They have a 10Mhz 16/8 bit MCU with no floating point and an ASIC for handling timing tasks.
