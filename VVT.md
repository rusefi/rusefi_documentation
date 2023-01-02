
rusEFI has proper closed-loop VVT valve control. VVT valve closed-loop is implemented via FSIO which is
not the best usability experience.

At the moment VVT trigger options are one-tooth or Miata NB2. Some software clean-up needs to happen
to start supporting more trigger options.

At the moment rusEFI has only one channel of VVT position input.

rusEFI trigger configuration is the most confusing part of rusEFI configuration unfortunately.

If rusEFI does not know your exact overall trigger shape and you use composite setup with crank sensor driving RPM and single tooth cam sensor providing phase information, that's considered "4 stroke without cam with VVT". Even if you do not have VVT :(

## VVT mode 'first half'

This mode could be used for skipped-tooth wheels with single tooth cam sensors in order to support individual injection and coil-on-plug setups.

For example, 3/1 skipped wheel with cam sensor in the first half of the 720 cycle:

![VVT First half](Images/VVT_first_half.png)

## VVT mode 'second half'

Same as the above, but with CAM sensor indicating the second phase of 720 degree engine cycle.

![VVT Second half](Images/VVT_second_half.png)

![VVT Config](Images/VVT_config.png)
