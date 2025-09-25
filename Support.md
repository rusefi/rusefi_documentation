# Support

[TL,DR](Knowledge-best-practices-and-Channels#q-i-need-help) and https://alphaxpr.com/ for retail

rusEFI is a community-driven free open source project. It comes with zero warranty and zero promises including zero promises of technical support.

rusEFI has zero technical support staff and most of rusEFI contributors all over the globe have day jobs and other obligations.
We offer very flexible universal units which empower motorsports professionals or enthusiasts to accomplish a lot, we do not have a retail operation offering services to end users.

[https://rusefi.com/forum/](https://rusefi.com/forum/) is the primary free support channel. Please post your tune & log files at [rusEFI Online](Online), more on this at [Quick-Start-PDF](https://github.com/rusefi/rusefi/wiki/rusEFI-Quick-Start-PDF)

Commercial technical support starts at [the rusEFI Store](https://www.shop.rusefi.com/shop/p/details-about-rusefi-ecu-technical-support )

Please Read [How To Ask Technical Questions](https://opensource.com/life/16/10/how-ask-technical-questions)

## Q: I am not into reading, can I just rely on community for everything?

A: No, there's an expectation that people read documentation and follow that documentation.

## Q: What is Discord?

A: Discord is a group chat available via browser and phone app. After initial problem statement is defined on [https://rusefi.com/forum/](https://rusefi.com/forum/) Discord chat often comes handy for follow-up discussion. Discord registration & login see [Discord](Discord)

## Q: Do you guys prefer short text descriptions or long text descriptions?

A: We prefer longer problem descriptions with as much of supporting material as possible. Screen shots, videos etc.
Just a reminder that to attach a screen shot to the forum post you LITERALLY need to hit under 6 keys.

"ctrl-print screen" or "alt-print screen" to take a screenshot into clipboard
"ctrl-v" to attach image from clipboard into forum post.

## Q: I would like to get individual technical support via email

A: We have commercial technical support see https://www.shop.rusefi.com/shop/p/details-about-rusefi-ecu-technical-support

## Q: What is the preferred way of posting videos?

A: Please use youtube to post videos.

### Q: Will I get a useful response if I use manufacturer-specific jargon? (i.e. "What about N75?")

A: rusEFI is not specific to a particular vehicle.  The people involved own and know about a wide range of vehicles.  It's easy to forget this and use terms that may be familiar to people who mess with vehicles like yours but aren't well known in the broader audience.  Asking "What about N75?" is a much more ambiguous question than "What about N75 (boost control valves)?"  Adding the extra information (parenthetically) makes it easier for more people to understand what you are asking and help you faster.

### Q: I have 2009 AXP with TAMTAM.  Help me.  ("AXP" and "TAMTAM" are made up to illustrate that the particulars really don't matter here.)

A: You are very unlikely to get much help asking for support like this.  rusEFI helps those that are willing to help themselves.  We do not have the have time or bandwidth to provide hand holding for specific setups or features.  Unless you want to become involved in the development process as a contributor, it is very unlikely that we will "just get around to it" in the next year.

Please feel free to familiarize yourself with the available open source files and submit a PR to enable the functionality required to meet your needs.

### Q: Shall I take a photo of my tune?

A: Please use rusEFI Online to [share tunes](HOWTO-upload-tune)

### Q: Shall I take a photo of my screen?

A: You can but that's a bit scary. There are a lot of much nicer options like Windows 10 Snip Tool or [ShareX](https://getsharex.com/) for Windows screen snapshots or screen recording.

### Q: Matt and Andrey are on Facebook, shall I message Matt or Andrey directly?

A: Unfortunately we do not have resources for technical support via Facebook direct messages.
Same about forum private messages. Please use public channels to have a higher chance of a response from the community. The more effort you make to ask a good question, the better response you would get. See also [HOWTO-ask-questions](HOWTO-ask-questions)

Q: Is there an option for priority support?

A: Commercial support is available [here](https://www.ebay.com/itm/334964766467)

Q: How do I attach logs to my forum post? Looks like forum does not allow .msl files?

A: in TunerStudio, please use "Help->Create TunerStudio Debug Package" button - this would combine your tune and your logs.
Just make sure to remove the oldest unneeded logs from your DataLogs folder :)

[https://www.gnu.org/licenses/gpl-3.0.html](https://www.gnu.org/licenses/gpl-3.0.html)

 Please collect the below information before requesting support in the forums. Also please include this each time you post about a problem. This can all be collected in a zip file, or done as individual files and attached to your forum support request. Please keep in mind that you are seeing this and you have allot of information which those of us in the forum do not have. Things that may seem simple to you may be complicated for those of us who have not physically seen what you have, or have not see the steps you have taken to get to the problem you are faced with.

- What is the basic problem? This would be something like, engine does not start, cannot connect Tuner Studio, Magic smoke has come out, or something similar. A video on youtube can be helpful for this as well.

- Please provide a picture of the rusEFI console. This tells us allot about what firmware you are using, and the status of your software. Also please include the console's border as that indicates information as well.

- Please provide a picture of Tuner Studio. Just like the console, this indicates allot about your setup and which pieces of software you are using. Also please include the Tuner Studio border as that indicates information as well.

- Please provide a picture of your physical setup. Seeing how the wires are connected tells us allot about how the hip bone is connected to the leg bone, etc. It also tells us if you have connected the leg bone to the shoulder bone.

- Please provide a copy of your logs, or specify NA for this.

- Please provide a copy of your tune, or specify NA for this.

- Please tell us if you have updated your discovery firmware with the STLink tool. This is not the rusEFI firmware, but the discovery firmware.

- Please tell us if you have installed the VCP drivers.

- Please indicate your software pieces, commonly as noted below. The most common platform and the platform used by the primary software developer is Windows, so you are most likely to get the best support with a native Windows environment.

Tell us about your engine setup. Something like the below.

|Cylinder Count|Injection Configuration|Ignition|Fuel|Aspiration|
|-|-|-|-|-|
|1|port|distributor|gasoline/petrol|turbo|
|2|batch|COP|diesel|supercharger|
|4|direct|CNP|propane|Naturally Aspirated|
|6|no fuel control|no spark control|ethanol|other|
|8|wasted spark|other|other|other|
|12|other|other|other|other|

## Q: What is the process for warranty/returns

A: Once you have exhausted all public community support options including Discord we usually accept returns with a refund.
