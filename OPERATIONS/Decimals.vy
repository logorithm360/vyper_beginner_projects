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

LISTEN ITS SIMPLE IN VYPER:

====Decimals in Vyper are special because they are implemented as fixed-point numbers, 
    not floating-point like in Python. This means they have a fixed precision (10 decimal places) 
    and are deterministic (safe for smart contracts).

✅ Key Points About decimal in Vyper

✔ Must enable decimals when compiling: vyper --enable-decimals MyContract.vy
    and run it using terminal
✔ Keyword: decimal
✔ Precision: 10 decimal places
✔ Type under the hood: int168
✔ Valid Range: -18707220957835557353007165858768422651595.9365500928
                to
                +18707220957835557353007165858768422651595.9365500927


✔ Literals: Must include a decimal point (e.g., 5.0, 0.1, -3.14)
✔ Operations: Addition, subtraction, multiplication, division work, but cannot mix decimal and uint256 directly (must cast).


✅ Important Notes:

1.0 and 100.0 must have a decimal point, otherwise they are treated as integers (int128 or uint256).

If you try self.stored_price * 2, you’ll get an error (because 2 is int128, not decimal). Use 2.0.
"""

# Enable decimals when compiling
# vyper --enable-decimals MyContract.vy

stored_price: decimal

@external
def set_price(p: decimal):
    self.stored_price = p  # store the decimal value

@external
def increase_price(percent: decimal):
    # Increase price by a percentage
    # Example: if price = 100.0 and percent = 10.0 -> new price = 110.0
    self.stored_price = self.stored_price * (1.0 + (percent / 100.0))

@external
def get_price() -> decimal:
    return self.stored_price
