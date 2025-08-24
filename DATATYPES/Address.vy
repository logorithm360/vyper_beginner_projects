# pragma version 4.0.0
# @license MIT

"""
Address: this is a type that holds and ethereum address of the user

-Address type holds ethereum address, it contains 20 bytes or 160 bits and
 they must be written in hexadecimal notation with a leading 0x and must be checksummed

This excerpt is describing EIP-155, introduced during the Spurious Dragon hard fork on Ethereum. 
It adds a modification to how transactions are signed to prevent replay attacks across different Ethereum chains 
(Ethereum mainnet, testnets, and Ethereum Classic). Let’s break it down professionally and clearly: 

Context: What is Spurious Dragon and EIP-155?
Spurious Dragon: A hard fork on Ethereum at block 2,675,000 (Nov 2016). 
It implemented fixes related to state-clearing and introduced EIP-155, which adds a chainId into the transaction signature.

Goal: Prevent replay attacks—where a signed transaction on one chain (e.g., Ethereum) 
could be reused (replayed) on another chain (e.g., Ethereum Classic) because they shared the same transaction format and signature scheme.

✅ What changed after this fork?
Before the fork:
[nonce, gasPrice, gasLimit, to, value, data]
Transaction signatures included only 6 elements:

After the fork (with EIP-155):
[nonce, gasPrice, gasLimit, to, value, data, chainId, 0, 0]
When signing, you include chain-specific information by adding chainId, 0, and 0 at the end:

-the v value changes to:
v = {0 or 1} + (CHAIN_ID * 2) + 35


✅ Detailed Specification

Signing phase:
If block.number >= FORK_BLKNUM and CHAIN_ID is known:
Instead of hashing 6 fields, hash 9 fields (adding chainId, 0, 0).
v = parity (0 or 1) + CHAIN_ID * 2 + 35.
If still using old style (6 fields):
v remains 27 or 28 (legacy format).
Verification / recovery phase:
If v equals CHAIN_ID * 2 + 35 or CHAIN_ID * 2 + 36:
Recover the signature using the 9-field hash.
If v is 27 or 28:
Recover using the old 6-field hash.
"""


| Member       | Type     | Description                                                                                               |
|-------------|----------|-----------------------------------------------------------------------------------------------------------|
| balance     | uint256  | Balance of an address                                                                                    |
| codehash    | bytes32  | Keccak of code at an address; `0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470` if no contract is deployed (see EIP-1052) |
| codesize    | uint256  | Size of code deployed at an address, in bytes                                                            |
| is_contract | bool     | Boolean indicating if a contract is deployed at an address                                               |
| code        | bytes    | Contract bytecode                                                                                        |
