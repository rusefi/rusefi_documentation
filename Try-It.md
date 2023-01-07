# Try It

## Choose Your Own Adventure

**this page is NOT UP TO DATE - Frankenstein is totally forgotten as of 2020 and Frankenso is moving into the forgotten territory.**

## Adventure 1: I have a project engine and want to try the Frankenso board

### Does Frankenso work with your setup?

Frankenso is expected to work with mid 1990's Mazda Miata, Protégé, Aspire, ect. It is also compatible (but to a lesser extent) with some vehicles like Honda Civic, ... If you have one of these vehicles, move to the below step. If you don't have this kind of setup, it may still be what you want. See this page for details about what is on the board. See [Frankenso](Frankenso)

If it has the features you need, then proceed to the next step.

### Do forum members see any problems with your setup?

If you think Frankenso works for your project, you should post your project in the forums. You'll find a variety of people there, that can offer insight into your project, and they will likely help determine if this will work for you. Feel free to ask questions, the forums members will let you know if there are any major concerns with compatibly. It's best to post specific details of your system. Items like photos of the existing connector and a list of any existing modifications will help show what obstacles one might face. Also if you post about your goals, people will likely comment about if this will get you to that goal, which will likely help you determine if this is a good option for you.

If you get good feedback from the forum, then move on to the step below.

### Get the board and install it

At this point, it appears the Frankenso is good for your applications. So now you need to get it. If you have some $, you can simply purchase an assembled board.

While you wait for the board, you can start learning about what you'll need to do when you get the board. You can install tuning software and you can get several items ready for when the board arrives. Start following the steps listed on 0this page](HOWTO-Get-Running)

Once you get the board, you should plug it into your harness. Then follow the instructions in the above link, which will walk you through powering it up, configure the board with TunerStudio (TS) and making software adjustments. Once you have things configured and working correctly you can then try to start it and make adjustments to the tuning tables via TS.

## Adventure 2: I need more flexibility, I want to try the Frankenstein board

### Does Frankenstein work for you setup?

Frankenstein is a generic board with a high level of flexibility. This flexibility comes at the cost of being a bit harder to work with. You will need to make some kind of adapter harness, which can often be done with an OEM harness and a break out board. In other situations like a small engine, you may wire direct to the board. This adapter harness can be done either by soldering in jumper wires to change a pin out for your specific needs, or it can be done by putting wires under screw terminal connections. This board includes high impedance fuel injectors, hi/lo drive ignition, several analog inputs and many of the most common circuits needed for a control unit. You can find information about this board at [this link](Hardware-Frankenstein).

If this board contains the basic features you are looking for, continue to the next step.

### Do forum members see any problems with your setup?

If you think Frankenstein works for your project, you should post your project in the forums. You should post specific details of your system in the forum. This includes details like photos of the harness, photos of the enclosure, or requirements of the application, or other things like that. From there forum members will likely chime in and offer some insight and feedback about your project. Often they can identify problems or hurdles you might have overlooked, or they can offer insight about how to make things go smoothly.

If all goes well in the forums and there are no show stoppers identified, proceed to the next step.

### Get the board and install it

If you have some $, you can simply purchase the board or you can purchase the solder it yourself kit. If you are hesitant to spend the $, you might be able to get one of the floater boards. The floater hardware is basically the development boards that have lived a rough life and are probably not as good as the purchased boards. They are functional enough to experiment with but would be questionable at best. These boards are circulated via the developers upon developers whims. If some floater equipment is available and your project attracts the development groups eyes, they may allow you to try it before you buy it.

Once you have the board, you will need to follow the instructions found here (insert link some time) These instructions should get you physically connected and operational.

Once you are physically operational, then you can follow instructions found [here](HOWTO-quick-start) This can also be found under the users area in the left pane. These instructions will show you how to connect with the tuning software known as TunerStudio (TS). TS is used for configuring items like TPS, IAT, number of cyl, ect, as well it is used for uploading tuning tables and tuning parameter and making a large variety of software adjustments.

## Adventure 3: I need other features. How do I get other features?

### Inquire with the developers

The developers have generally developed for engines that were at arm's length. This may mean the features you need haven't been developed yet.

For example, you application may have a different crank / cam wheel from what is currently offered. By inquiring in with the developers in the forum, they can guide you in how to get this wheel decoder created for your application. Generally that means you need to take some measurements or provide some data about the crank wheel, then they develop the wheel decoder. Once they have an updated decoder you install an updated firmware and verify that it's decoding correctly.

Another example feature that you might want, but might not be readily available is common rail direct fuel injection. The developers are interested in such a design and have simulated the circuits to control many of these high voltage injectors. However with out access to such engines the development is very limited. If you inquire with the developers, and offer an opportunity, they will let you know if they can develop both hardware and software for your application.

The developers are engine control enthusiasts, if you inquire they may develop new features.

### Develop it yourself

This is an open source project. You have full access to the software and hardware designs of this project. You can download these files and modify them making them fit your project needs. If you do this you can keep it quite and on the down low doing it yourself, or you can post your project in the forums and let others comment. There are several people in the forums that will likely offer help and insight into this kind of effort.

### Hire someone to develop it

If your particular feature needs don't happen to spark enough interest with the developers to get it done for free, you can always increase the interest by offering to pay them. Either that or you can find several freelance developers via several various web pages. These freelance web pages usually involve posting a description of work and letting a group of developers bid on the job.

## Adventure 4: I have only the discovery board. What can I do?

If you only have 'naked' STM32F407G-DISC1 stm32f4 board it's recommended to ground the folling pins in order to not get funny EMI handling:
PC10, PC11, PC6 & PA5

### You can experiment and learn the tuning software

See directions at below link to learn how to connect via the development console, connect with putty, ect. This will allow you to start playing with it. As well you can start development of specific features, or you can study system to see if it does what you are looking for.

### You can play with the on-board simulation

You can configure your board via jumper wire to use a crank/cam wheel signal generator, which can generate a variety of crank wheel patterns. This crank wheel signal can then be connected to the crank wheel decoder, which will allow you to simulate a running engine. It can be handy as you can vary the RPM and watch it display in TS or watch it in the dev console logs. It can also be handy to play back a log file and watch how the ECU reacts. This can also be handy because you can change the firmware and see if a bug has been addressed.

### You can get a stimulator board

The stimulator board allows better simulation than what is noted above. It allows you to stimulate other things like TPS or IAT with a real hardware instead of register manipulation. Stimulator wiki page found here (create page and insert link after the page has been created)

## Adventure 5: I have no hardware only a PC. What can I do?

### Virtual simulation

rusEFI has a virtual option. This runs same code with same RTOS in Windows, Linux or Darwin, and you can feed it mock values and such which will simulate the system which is done purely in PC software. This can be really handy for build validations. You can also develop a variety of situations that can't easily or safely be validated with real hardware. For example, it would be really costly to physically see what happens when you have extremely fast changes in RPM caused by back fires, or broken components. See [Virtual simulator](Virtual-simulator)

### Compile firmware

You can compile the firmware, making changes and submitting bug fixes. See [HOWTO Contribute to Firmware](HOWTO-contribute-to-firmware)

### Experiment with java based dev console, TunerStudio, etc

You can develop the TunerStudio (TS) or dev console, and you can test these java programs against the virtual rusEFI.
