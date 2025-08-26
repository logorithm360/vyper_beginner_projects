# pragma version ^0.4.0
# @license MIT

"""
Concatenates multiple byte arrays into a new one.
Important: When concatenating bytesM values, result is a Bytes type, not bytesM, 
so assignment to bytesM may fail without slice().
"""

# prefix: bytes4 = 0x12345678
# suffix: bytes4 = 0xabcdef01
# combined: Bytes[8] = concat(prefix, suffix)  # result is dynamic type Bytes[8]

prefix: bytes4
suffix: bytes4
combined: Bytes[8]

@deploy
def __init__():
    self.prefix = 0x12345678
    self.suffix = 0xabcdef01
    self.combined = concat(self.prefix, self.suffix)

@external
@view
def result() -> Bytes[8]:
    return self.combined