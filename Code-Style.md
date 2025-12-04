# Code Style Guidelines

* Reduce visibility where possible

* Avoid magic constants

* Please do not push dead code

We make with -std=c++20; see [the Makefile](https://github.com/rusefi/rusefi/blob/master/firmware/Makefile).

## Brackets

Only the simplest, two-line if/for/while should not have the curly brackets. Anything more than two lines should have {}.

``` c
if (plain_condition)
   oneLineStatement();

if (plain_condition) {
   // comment
   oneLineStatement();
}

if (plain_condition) {
   oneLineStatement();
} else {
   oneLineStatement2();
}
```

## Code Formatting

Code formatting matters. The de facto standard is Eclipse CDT (K&R) with one change: Maximum line width = 120

This standard is far from perfect, but it's good enough for now.
