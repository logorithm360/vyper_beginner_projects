# pragma version 0.4.0

# @license MIT

# favorite thing-list
# favorite numbers
# favorite people with their favorite numbers

struct Person: # this is the person struct for storing people and their numbers
    favorite_number: uint256
    name: String[80]

my_favorite_number: public(uint256)

list_of_numbers: public(uint256[5])
list_of_people: public(Person[5]) # A list of 5 people
index: public(uint256) # number to track the index of our array
name_to_favorite_number: public(HashMap[String[80], uint256])
@deploy
def __init__():
    self.my_favorite_number = 10
    self.index = 0


@external # means that the function can be externally accessed
def store(new_number: uint256):
    self.my_favorite_number = new_number

@external
@view #
def retrieve() -> uint256:
    return self.my_favorite_number

@external
def add_person(name: String[80], favorite_number: uint256):
    # add number to the list of numbers
    self.list_of_numbers[self.index] = favorite_number

    # add person to the list of people
    new_person: Person = Person(favorite_number = favorite_number, name = name)
    self.list_of_people[self.index] = new_person

    self.name_to_favorite_number[name] = favorite_number # this goes like self.HashMap[requiredValue] = mappedValue

    self.index = self.index + 1

        
# 🔍 What is @view?

# In Vyper (and also in Solidity), @view is a function decorator used to mark a function that only reads the state of the smart contract but does not modify it.
# ✅ When to Use @view

# You use @view when:

#     The function reads from the blockchain, like reading a variable (self.my_favorite_number in your case).

#     It does NOT write, update, or change any storage data.

#     It doesn't emit events, create new contracts, or send Ether.

# ✨ Why is it Important?

#     No gas required (if called externally): Calling a @view function doesn't cost gas because it doesn't change the blockchain. You can call it for free using a frontend (like Web3 or Ethers.js).

#     Better optimization & security: Vyper (and Ethereum in general) can optimize and protect functions more if it's clear they won't modify anything.