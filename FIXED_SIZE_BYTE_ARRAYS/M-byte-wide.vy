# pragma version ^0.4.0
# @license MIT

"""
✅ What is bytesM?

In Vyper, bytesM represents a fixed-size byte array of length M.
M is an integer between 1 and 32, so valid types are bytes1, bytes2, ..., bytes32.
The storage size is fixed at compile time, which makes it different from Bytes[N] (a fixed-size string) and bytes (a dynamic byte array).
On the ABI level, bytesM is encoded as a left-padded 32-byte word.

✅ Why is it important?

bytesM is mainly used for low-level operations, such as:
Hashes (bytes32 is common for keccak256 outputs).
Method selectors (bytes4 for function IDs).
Cryptographic operations (signatures, proofs).
Performance: It is more gas-efficient than dynamic types because its size is known at compile time


✅ Key Differences

| Type       | Size      | Dynamic? |
| ---------- | --------- | -------- |
| `bytesM`   | Fixed (M) | No       |
| `Bytes[N]` | Fixed (N) | No       |
| `bytes`    | Dynamic   | Yes      |


"""

hash: bytes32
some_method_id: bytes4
# initialization
@deploy
def __init__():
    self.hash = self.hash
    self.some_method_id: bytes4 = 0x01abcdef


# bytes32 is commonly used for:
# Storing hash outputs (keccak256 returns bytes32).
# Storing addresses or keys in hashed form.
# bytes4 is often used for:
# Function selectors in the Ethereum ABI (first 4 bytes of keccak256 of function signature).