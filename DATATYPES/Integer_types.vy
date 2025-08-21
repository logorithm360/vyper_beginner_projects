# pragma version 0.4.0
# @license MIT

"""
integer datatypes in vyper are declared like in normal python but the difference 
is that we have signed-integers(:uint256) and unsigned-integers(:int128)

unsigned-integers: cannot be negative while signed-integers can be negative look down below

SIGNED INTEGERS: intN 
-These are integer values that are multiples of 8 and are multiples from 8 to 128 inclusivelly
-They include negative values and positive values
-They are numbers between -2^N-1 and (2^N-1 - 1), inclusive

UNSIGNED INTEGERS: uintN
-These are integer values that fare multiples of 8 and are multiples from 8 to 256 inclusively
-These integer values are only positive they can't be negative
-They are numbers between 0 to 2^n-1
"""

# unsigned-integer
my_number: uint256

# signed-integer
my_signed_integer: int128