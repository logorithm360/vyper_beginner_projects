# send funds and accept funds
# withdraw the funds
# Set a minimum funding value in USD

# pragma version 0.4.0
# @license MIT


# if we want to pay in USD
minimum_usd: uint256

@deploy
def __init__():
    self.minimum_usd = 4466

@external
@payable # to enable the function to allow payments in the contract
def fund():
    """
    ORACLES AND CHAINLINK
    These are protocols that enable us to bring real world centralized to to decentralized networks

    CHAINLINK: is one protocol that enables us to create hybrid contracts that involve centralized and 
                decentralized data together into our smart contracts, instead of calling HTTP requets
    """
    # assert msg.value == 1000000000000000000
    assert msg.value >= as_wei_value(1, "gwei"), "You must send more ETHEREUM!"
    # what is revert?
    # this is a function that undo the transactions which fail to be transfered due to different errors
    # transactions are reverted when you send the amount in wrong currency, ef if you send ETH instead of BTC

@external
def withdraw():
    pass # function for allowing withdrawals

