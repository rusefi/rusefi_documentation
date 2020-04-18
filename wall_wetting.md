
todo: more explanation of what this is all about

![config](ww_sample_config.jpg)

![log](ww_log.jpg)

This is about 1 second worth of log, during a 2-3-4 shift at low-ish RPM, but near wide open throttle. Worst case scenario for AE!

The yellow trace on the top graph, AfrRatio, is a ratio of target vs. actual. If the engine is lean, it goes below 1, and rich above 1. Graph is scaled to +-20%. I'm using this because my actual AFR target varies from 14.7 all the way down to around 11.5. This swing causes the AFR signal to look like the ECU is doing a poor job, when in fact the setpoint is moving by nearly 30%.

There's a bit of a spike rich-then-lean during the shifts, but it's not bad (results in a nice burble out of the exhaust  :lol:), and resolves once back on the throttle. Some of this is caused by the phase shift between the AFR target and measured AFR, but some of it is real.

[Sample log](2019-01-01_19_modified.msl)

Based on [https://rusefi.com/forum/viewtopic.php?f=5&t=1481](https://rusefi.com/forum/viewtopic.php?f=5&t=1481)