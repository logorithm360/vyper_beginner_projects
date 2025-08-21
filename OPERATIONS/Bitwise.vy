# pragma version 0.4.0
# @license MIT

"""
These are bitwise operators they work with both integers(signed unsigned)

-Bitwise operators in Vyper work on the binary representation of numbers(just like in Python or Solidity). 
 Instead of dealing with numbers as whole values (like 10),they operate on each bit of the number.

Bitwise and: x & y
Bitwise or: x | y
Bitwise xor: x ^ y
Bitwise not: ~x


✅ How Vyper Supports Bitwise Operators

In Vyper:

They are allowed on integers (int128, uint256, etc.).

Useful for flags, masks, low-level data handling, and gas-efficient storage.

"""

@external
def demo() -> uint256:
    a: uint256 = 6
    b: uint256 = 3

    and_result: uint256 = a & b     # 2
    or_result: uint256 = a | b      # 7
    xor_result: uint256 = a ^ b     # 5
    shift_left: uint256 = a << 1    # 12
    shift_right: uint256 = a >> 1   # 3

    return and_result + or_result + xor_result + shift_left + shift_right
