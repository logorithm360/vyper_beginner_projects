# send funds and accept funds
# withdraw the funds
# Set a minimum funding value in USD

# pragma version 0.4.0
# @license MIT

# the skeleton of our contract

@external
@payable # to enable the function to allow payments in the contract
def fund():
    """
    this function will allow users to send money to this contract

    it will have the minimum amount of $ to send

    1. How to send ETH to the contract
    """
    # assert msg.value == 1000000000000000000
    assert msg.value > as_wei_value(1, "gwei"), "You must send more ETHEREUM!"
    # what is revert?
    # this is a function that undo the transactions which fail to be transfered due to different errors
    # transactions are reverted when you send the amount in wrong currency, ef if you send ETH instead of BTC

@external
def withdraw():
    pass # function for allowing withdrawals

