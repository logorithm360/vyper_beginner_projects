# pragma version ^0.4.0
# @license MIT

# full_data: Bytes[32] = b"ABCDEFGHIJKLMNOPQRSTUVWX"
# part: Bytes[4] = slice(full_data, start=0, len=4)  # returns first 4 bytes

full_data: Bytes[32]
part: Bytes[4]

# init
@deploy
def __init__():
    self.full_data = b"ABCDEFGHIJKLMNOPQRSTUVWX"
    self.part = slice(self.full_data, 0, 4)



@external
@view
def result() -> Bytes[4]:
    return self.part