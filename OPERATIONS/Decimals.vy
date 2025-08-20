# pragma version 0.4.0
# @license MIT

"""
KEYWORD: decimal

A decimal is a type to store a decimal fixed point value. As of v0.4.0, decimals must be enabled with the CLI flag
--enable-decimals.

Values
A value with a precision of 10 decimal places between -18707220957835557353007165858768422651595.9365500928
(-2167 / 1010 ) and 18707220957835557353007165858768422651595.9365500927 ((2167 - 1) / 1010 ).
In order for a literal to be interpreted as decimal it must include a decimal point.
The ABI type (for computing method identifiers) of decimal is int168.

"""