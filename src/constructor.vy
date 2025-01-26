# pragma version 0.4.0
# @license MIT

owner: public(address)
name: public(String[100])
expiresAt: public(uint256)

# @deploy visibility decorator
# @deploy: constructor code. This is code which is invoked once in the lifetime of a contract, upon its deploy. 
# It is not available at runtime to either external callers or internal call invocations. 
# At this time, only the __init__() function may be marked as @deploy

@deploy
def __init__(name: String[100], duration: uint256):
    self.owner = msg.sender
    self.name = name
    self.expiresAt = block.timestamp + duration