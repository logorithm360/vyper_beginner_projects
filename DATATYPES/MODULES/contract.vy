# pragma version ^0.4.0
# @license MIT

# importing a module to reuse the code inside it
import math

initializes: math

# external function for using a pure addition function
@external
def my_sum(a: uint256, b: uint256) -> uint256:
    return math.addition(a, b)