# pragma version 0.4.0
# @license MIT

"""
Logical operations return boolean value (True, False) whether they work on booleans or other datatypes
Logical Negation: not x
Logical Conjunction: x and y
Logical Disjunction: x or y
Equality: x == y
Inequality: x != y
"""
# example
x: int128 
y: int128

a: bool
b: bool

@deploy
def __init__():
    self.x = 0
    self.y = 0

    self.a = True
    self.b = False

# negation
@external # this annotation makes the function external so that you can interact with it
@view #this annotation is used if you want to view the return value of a function
def negation(x: int128, y: int128) -> bool:
    return not x == y
    # if x is not equal to y: TRUE and vice versa

# logical conjunction
# This operation cannot be performed in any other types than booleans only
@external
@view
def Conjunction(a: bool, b: bool) -> bool:
    return a and b


# logical disjunction
# This operation cannot be performed in any other types than booleans only
@external
@view
def disjunction(a: bool, b: bool) -> bool:
    return a or b
    

# logical equality
@external
@view
def equality(x: int128, y: int128, a: bool, b: bool) -> bool[2]:
    return [x == y, a == b]

# logical inequality
@external
@view
def inequality(x: int128, y: int128, a: bool, b: bool) -> bool[2]:
    return [x != y, a != b]
