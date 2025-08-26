# pragma version ^0.4.0

stored_hash: bytes32
method_selector: bytes4

@external
def set_hash_and_selector(data: Bytes[100]):
    # Compute keccak256 of data
    self.stored_hash = keccak256(data)

    # Convert bytes32 to Bytes[32] and extract first 4 bytes
    self.method_selector = extract32(convert(self.stored_hash, Bytes[32]), 0, output_type=bytes4)

@external
def get_values() -> (bytes32, bytes4):
    return self.stored_hash, self.method_selector
