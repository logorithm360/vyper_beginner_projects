# pragma version 0.4.0
# @license MIT

"""
-The following are comparison opertors used to compare different  integer values 
-Also these operators return boolean values
- Remember you can't compare variables with different types, so the below format works with Signed and unsigned integers

Equal to: ==
Less than: <
Greater than: >

Less than or equal: <=
Greater than or equal: >=
Not equal: !=
"""

# variables
num1: uint256
num2: uint256

# initialization
@deploy
def __init__():
    self.num1 = 0
    self.num2 = 0

# equal to
@external
@view
def equal(num1: uint256, num2: uint256) -> bool:
    return num1 == num2


# less than
@external
@view
def less(num1: uint256, num2: uint256) -> bool:
    return num1 < num2


# greater than
@external
@view
def greater(num1: uint256, num2: uint256) -> bool:
    return num1 > num2


# greater than or equal
@external
@view
def greater_or_equal(num1: uint256, num2: uint256) -> bool:
    return num1 >= num2

    # YOU GO ON AND ON

