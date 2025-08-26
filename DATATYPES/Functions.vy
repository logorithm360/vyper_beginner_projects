# pragma version 0.4.0
# @license MIT

"""
-Functions are executable units of code within a contract
-Functions can be called internally or externally within a contract depending on their visibility

-We define the visibility of functions using words @external and @internal

-@external means a function can be used  and accesed outside the contract vise-versa to @internal

THIS PROJECT WILL DEMONSTRATE HOW @internal AND @external WORK:
-It will take a name from a user then modify it so that the user can retrieve it
"""
name: String[50] # this is a name variable
modified_name: public(String[100]) # this is a modified name
current_name: String[100]


@deploy
def __init__():
    self.name = ""
    self.modified_name = ""

# external function
@external
def set_name(new_name: String[10]):
     assert len(new_name) <= 10 # for making sure that maximum length of a given string is 10
     self.name = new_name 

# internal function: this function does the modification
@internal
def modifyit():    
    self.modified_name = concat("I am ", self.name) # the concat function concatinates the modifications
        
    

# external function
@external
# this is the funtion that takes the concatination so, the number of strings returned must be larger than the returned
def get_name() -> String[100]:   
    empty_name: String[50] = "null, please Enter your name!"

    self.modifyit() # returns the current name 
    if self.name == " ":
        self.name = empty_name
    else:
        pass
    return self.modified_name
    



# IF YOU LOOK CAREFULLY YOU CAN SEE HOW STRINGS HAVE BEEN USED IN modifyit AND get_name
# as get_name returns the String with the exact count from modifyit since modified_name has 20 characters