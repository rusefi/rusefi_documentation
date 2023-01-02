# Converting an Engine to (port) Fuel Injection

**If there is an OEM EFI solution for your engine, you should probably start there.**

If no such system exists or is prohibitively expensive, or if you just love punishment: read on.

## For engines with only carbs or throttle-body injection (TBI) wanting to convert to port injection, here are (some) of things that you will need

### Intake manifold

Somewhere to put your injectors and throttle body/bodies. Odds are, your current intake manifold is designed for carbs, and won't work particularly well with EFI. You will need to find/make a manifold that you can mount to your engine that has spaces for injectors and a throttle body. It may be possible to modify your existing manifold to add injector ports, what you choose depends on your skill level. Individual throttle bodies (ITBs) are also an option here, but they get expensive very quickly and you will need to decide what setup is right for your goals.

### Throttle Body (maybe more)

Not complicated. A door to let air into your engine, much like the butterflies on your carbs. Nothing particularly special. More throttle bodies (ITBs) quickly add cost and complexity. You will also want a throttle position sensor (TPS) for better engine response and efficiency.

### Fuel Injectors

Fuel Injectors are all pretty similar in physical size and can be made to work as long as you have the right flow rate for your engine. Bosch, Denso, and Siemens are three very common Fuel Injector Manufacturers. Fuel requirements can be calculated based on engine size, RPM, and efficiency. You should aim to not have your injectors exceed 80% of their maximum flow rate during use.

### Fuel Rail

Where the fuel is distributed from the fuel feed line to each fuel injector. Some (older) injectors use short lengths of high-pressure hose to connect to a fuel supply, but most use a machined manifold connected by o-ring seals to each injector. The Fuel Rail may have to be custom made unless your engine had a factory EFI option or good aftermarket support.

### O2 sensor

Not actually necessary! (Not exactly anyway). rusEFI and many other engine management systems can operate in what is called "open-loop" mode, meaning there is no feedback and self-tuning. Once the engine is tuned and the tables are saved, the O2 sensor is just dead weight (as far as the EMS is concerned).

### Trigger signal

The system needs to know where the engine is so that it knows when to send fuel. If your engine uses a distributor, you can use the ignition pulse to trigger fuel. This isn't very precise, but it works well enough. For more precision, you'll need some sort of crank angle sensor. This can be any number of things but is most commonly a hall-effect (hall) or variable-reluctance (VR) sensor directly driven by the crankshaft. For maximum precision and performance, the recommended setup is a trigger on the crankshaft as well as a camshaft sensor to correctly identify where your engine is in the 720-degree cycle (for 4-stroke engines). This is another great place to look for OEM solutions, such as from later model vehicles.

### Engine Management

You're reading about rusEFI, so that's what we're going to recommend (probably 💯 ). This is alpha-stage hardware and software, but it should be totally manageable. Get a preassembled board and get ready to learn.

### Other Sensors

There are a number of different fueling algorithms, and each requires some different sensors. Intake Air Temperature (IAT), and Engine Coolant Temperature (Oil Temperature for air-cooled engines) are good things to have no matter what you use. Airflow is measured using Manifold Absolute Pressure (MAP) or Mass AirFlow (MAF), and your choice will depend on your engine characteristics and desired performance (MAP is generally recommended).

### Additional Supported Sensors

rusEFI includes support for thermocouples for measuring Exhaust Gas Temperature (EGT), battery voltage (for voltage compensation and alternator control), and whatever else you can imagine and build!
