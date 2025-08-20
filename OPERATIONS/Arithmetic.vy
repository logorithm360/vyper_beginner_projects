# pragma version 0.4.0
# @license MIT

"""
-The following are comparison opertors used to compare different  integer values 
-Also these operators return boolean values
- Remember you can't compare variables with different types, so the below format works with Decimals, Signed and unsigned integers

Addition: x + y
Subtraction: x - y
Multiplication: x * y

Division: x // y
Exponentiatiation: x ** y
Modulo: x % y

---- ERROR:
    OPERATIONS/Arithmetic.vy
    InvalidOperation:Cannot apply an overflow check on exponentiation when both the base and power are unknown at compile-time. 
    To perform this operation without an overflow check, use `pow_mod256(num1, num2)`

    contract "OPERATIONS/Arithmetic.vy function "exponentiatiation", line 59:11 
        58 def exponentiatiation(num1: uint256, num2: uint256) -> uint256:
    ---> 59     return num1 ** num2
    -------------------^
       60
"""

# variables
num1: uint256
num2: uint256

# initialization
@deploy
def __init__():
    self.num1 = 0
    self.num2 = 0

# addition
@external
@view
def add(num1: uint256, num2: uint256) -> uint256:
    return num1 + num2


# subtraction
@external
@view
def minus(num1: uint256, num2: uint256) -> uint256:
    return num1 - num2


# multiplication
@external
@view
def multiply(num1: uint256, num2: uint256) -> uint256:
    return num1 * num2


# division
@external
@view
def division(num1: uint256, num2: uint256) -> uint256:
    return num1 // num2

# Exponentiatiation
@external
@view
def exponentiatiation(num1: uint256, num2: uint256) -> uint256:
    return pow_mod256(num1, num2)
    # return num1 ** num2
    # the above comment caused this error in line 17
    

# modulo
@external
@view
def modulo(num1: uint256, num2: uint256) -> uint256:
    return num1 % num2


