# pragma version 0.4.0
# @license MIT

# Reference data types

# - Fixed size list
nums: public(uint256[10])
# - Dynamic arrays
# - Mappings
myMap: public(HashMap[address, uint256])
# - Structs
struct Person:
   name: String[10]
   age: uint256

person: public(Person)
@deploy
def __init__():
    self.nums[0] = 123
    self.nums[1] = 456

    self.myMap[msg.sender] = 1
    self.myMap[msg.sender] = 11

    self.person.name = "vyper"
    self.person.age = 33

    p: Person = self.person
    p.name = "solidity"
    p.age = 22 