# Wall Wetting (X-tau) Acceleration Compensation

Wall Wetting (or X-tau as it is sometimes called) is one of the acceleration fuel compensation methods available in rusEFI. 
This method uses a simple model to estimate the amount of fuel that drops out of the intake charge when the manifold pressure changes. 

# The Detail

There are 3 key factors that go into the X-tau method:
1. X = the fuel deposited on the wall of the inlet port
2. Tau = the build up of fuel on the wall and how persistent it is 
3. T = The temperature of the air and surfaces

The math used is based on: SAE 810494 by C. F. Aquino and SAE 1999-01-0553 by Peter J Maloney

		M_cmd = commanded fuel mass (output of this function)
		desiredFuel = desired fuel mass (input to this function)
		fuelFilmMass = fuel film mass (how much is currently on the wall)

		First we compute how much fuel to command, by accounting for
		a) how much fuel will evaporate from the walls and enter the air charge
		b) how much fuel from the injector will hit the walls amd stay there, thus being deposited

		Next, we compute how much fuel will be deposited on the walls.   
        The net effect of these two steps is computed (some leaves the walls, some is deposited)
		and stored back in fuelFilmMass.

		alpha describes the amount of fuel that REMAINS on the wall per cycle.
		It is computed as a function of the evaporation time constant (tau) and
		the time the fuel spent on the wall this cycle, (reciprocal RPM).

		beta describes the amount of fuel that hits the wall.  

		TODO: these parameters, tau and beta vary with various engine parameters,
		most notably manifold pressure (as a proxy for air speed), and coolant
		temperature (as a proxy for the intake valve and runner temperature). 

[//]: # "Note - Are we sure these all increase?"
[//]: # "TAU: decreases with increasing temperature."
[//]: # "decreases with decreasing manifold pressure."

[//]: # "BETA: decreases with increasing temperature."
[//]: # "decreases with decreasing manifold pressure."

The current implementation of X-tau ignores coefficients (X) below 0.01 and RPM below 100. 



# How to tune it

[//]: # "need a screen shot of the x-tau TS section" 

# Old info

![config](ww_sample_config.jpg)

![log](ww_log.jpg)

This is about 1 second worth of log, during a 2-3-4 shift at low-ish RPM, but near wide open throttle. Worst case scenario for AE!

The yellow trace on the top graph, AfrRatio, is a ratio of target vs. actual. If the engine is lean, it goes below 1, and rich above 1. Graph is scaled to +-20%. I'm using this because my actual AFR target varies from 14.7 all the way down to around 11.5. This swing causes the AFR signal to look like the ECU is doing a poor job, when in fact the setpoint is moving by nearly 30%.

There's a bit of a spike rich-then-lean during the shifts, but it's not bad (results in a nice burble out of the exhaust  :lol:), and resolves once back on the throttle. Some of this is caused by the phase shift between the AFR target and measured AFR, but some of it is real.

[Sample log](2019-01-01_19_modified.msl)

Based on [https://rusefi.com/forum/viewtopic.php?f=5&t=1481](https://rusefi.com/forum/viewtopic.php?f=5&t=1481)

[//]: # "OrchardPerformance" 