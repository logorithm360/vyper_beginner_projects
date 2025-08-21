# pragma version 0.4.0
# @license MIT

"""
✅ Example 2: Using Bitwise Operators for Flags

Flags are used when you want to store multiple yes/no values in one number.

-Binaries in vyper are required to be written fully with eight bits unlike python

-in Vyper, binary literals like 0b00000001 are treated as bytes, not as integers. 
 Unlike Python or Solidity, Vyper does not automatically interpret binary literals as integers., WHY?
====
Vyper enforces strict typing for security and clarity.
0b00000001 is considered 1 byte → Bytes[1], not a uint256.
You cannot assign a byte literal to uint256 without conversion.

==== SOLUTION:
Use decimal notation for constants instead of binary, 
because Vyper does not allow direct binary integer literals.

"""# Bitwise flags example in Vyper

flag_A: constant(uint256) = 1  # 00000001
flag_B: constant(uint256) = 2  # 00000010
flag_C: constant(uint256) = 4  # 00000100

user_flags: uint256

@external
def set_flag(flag: uint256):
    # Turn on a flag using OR
    self.user_flags = self.user_flags | flag

@external
def has_flag(flag: uint256) -> bool:
    # Check if flag is set using AND
    return (self.user_flags & flag) != 0
