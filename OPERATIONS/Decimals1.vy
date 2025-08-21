# pragma version 0.4.0
# @license MIT

# ✅ Casting Between Types

# If you have an integer and need to convert it to decimal:

amount: int128 
price: decimal 
amount_decimal: decimal
price_int: int128

# initialization
@deploy
def __init__():
    self.amount = 10
    self.price = 5.5
    self.amount_decimal = 0.00
    self.price_int = 0

self.amount_decimal= convert(amount, decimal)
self.price_int = convert(price, int128)

