# pragma version 0.4.0
# @license

"""
Events provide an interface for the EVM's logging facilities
"""

# example of an event
event Payment:
    amount: int128
    sender: indexed(address)

total_paid: int128

@external
@payable
def pay():
    self.total_paid += msg.value
    log Payment(msg.value, msg.sender)