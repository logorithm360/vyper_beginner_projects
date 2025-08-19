# pragma version 0.4.0
# @license MIT

"""
-Consider a module as a toolbox which contain different tools for different tasks
-In vyper we use modules to perform code reuse like inheritance in solidity
-So vyper offers you more secure composition code reuse unlike error prone inheritance in solidity


1. First, think of a "module" like a toolbox.

In regular Vyper, you usually put everything (state variables, functions, structs) into a single contract. That can get messy.

A module lets you move some of those tools into a separate .vy file, then import them wherever you need.
So instead of inheritance (like Solidity’s contract Child is Parent), Vyper says:
👉 “reuse code by plugging in toolboxes (modules).”

2. What goes inside a module?

A .vy file (a module) can contain:

*functions (reusable logic)
*state variables (persistent storage for the module)
*types/structs
"""

# this is a math module

# reusable storage variable
password: uint256

# initializer
@deploy
def __init__():
    self.password = self.password

# reusable function
@external
def times_two(a: uint256) -> uint256:
    return a * 2

# another reusable function
@pure
def addition(b: uint256, c: uint256) -> uint256:
    return b + c