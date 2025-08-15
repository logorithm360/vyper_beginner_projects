# pragma version 0.4.0
# @license MIT

"""
integer datatypes in vyper are declared like in normal python but the difference 
is that we have signed-integers(:uint256) and unsigned-integers(:int128)

unsigned-integers: cannot be negative while signed-integers can be negative look down below
"""

# unsigned-integer
my_number: uint256

# signed-integer
my_signed_integer: int128