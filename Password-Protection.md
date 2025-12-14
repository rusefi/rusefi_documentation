# Password Protection

The tuner has the option to hide calibration from the end user and prohibit tune adjustment using a password. Once a password is burned into the tune, TunerStudio looses the ability to read and write the calibration for everyone including the tuner, who has local copy of the tune on his/her tuning device.

The only way to unlock the tune for reading and writing is via the rusEFI console.

## Unlocking

Please use `unlock 123` command (where `123` is your password) in console to unlock; here is what this would look like:

![image](Images/console/Console_password_unlock.png)
