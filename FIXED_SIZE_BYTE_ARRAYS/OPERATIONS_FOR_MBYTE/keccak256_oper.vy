# pragma version ^0.4.0
# @license MIT

# data: Bytes[100] = b"hello"
# hashed: bytes32 = keccak256(data)  # hashed is a bytes32
data: Bytes[100]
hashed: bytes32
# init
@deploy
def __init__():
    self.data = b"hello"
    self.hashed = keccak256(self.data)

    # Returns the Keccak-256 hash of x as bytes32.