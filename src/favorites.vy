# Set the compiler version
# pragma version 0.4.0
# License Identifier
# @license MIT

# Cyfrin Updraft Introduction to Python and Vyper
# Vyper Smart Contract Programming Language

# @author abc0xmattyic333


# Objective create a favorite things list:
# favorite numbers
# favorite people with their favorite numbers.

struct Person:
    favorite_number: uint256
    name: String[100]

# Strings
# Keyword: String

# Fixed-size strings can hold strings with equal or fewer characters than the maxium length of a string.
# name: String[100]
# This declares a string variable named name with a maximum length of a 100 characters
# String[100] means a string can be up to 100 characters long

# State Variable, with the visibility set to public, unit256 is an unsigned interger of the value 0
my_name: public(String[100])
my_favorite_number: public(uint256)

# Functions or methods are very small subsections of code that when called or invoked or clicked
# will execute some subset of code from our code base.

# In Vyper, as well as in Python to create a function we use the keyword def
# which we can think of as "define" or "declaration".
# Think about it as defining or declaring what we want our functions to do.

# This external keyword is known as a decorator and by using the keyword external 
# this means we can call and see this function outside of the contract.

list_of_numbers: public(uint256[5]) 
list_of_people: public(Person[5])
index: public(uint256)

name_to_favorite_number: public(HashMap[String[100], uint256])

#  0, 1, 2, 3, 4
# [0, 0, 0, 0, 0]

# Constructor
@deploy
def __init__():
    self.my_favorite_number = 5
    self.index = 0
    self.my_name = "abc0xmattyic333!"

# @deploy indicates this function runs when the contract is first deployed.
# __init__() initalizes two contract variables
# Sets my_favorite_number to 5
# Sets index to 0


# External Store Function
@external
def store (new_number: uint256):
    self.my_favorite_number = new_number

# @external allows the function to be called from outside the contract.
# def store(new_number: uint256): defines a function that:

# Takes a single parameter new_number of type uint256
# Stores the input number in self.my_favorite_number
# So when called, this function updates the contract's stored favorite number with the new value passed in.


# External View Function
# The keyword @view is also a decorator, function does not alter contract state.
@external
@view 
def retrieve() -> uint256:
    return self.my_favorite_number

# @external means the function can be called from outside the contract.
# @view indicates this function only reads data and doesn't modify the contract's state. 
# This means it's a read-only function that doesn't cost gas to execute.
# def retrieve() -> uint256: defines a function named retrieve that:
# Takes no parameters
# Returns a single unsigned 256-bit integer
# Specifically returns the value of self.my_favorite_number
# So when called, this function simply retrieves and returns the stored favorite number.

# Remember that the @external decorator indicates this function can be called outside of the contract which makes it publicly accessible.

@external
def add_person(favorite_number: uint256, name: String[100]):
    new_person: Person = Person(favorite_number=favorite_number, name=name)
    self.list_of_people[self.index] = new_person

    self.name_to_favorite_number[name] = favorite_number

    self.index += 1

# Anyone interacting with this contract can call the functions inside of this contract.
# It allows external accounts or other contracts to execute add_number()
# The function itself is doing two things:
# 1. Storing a my_favorite number in an array at the current index.
# 2. Incrementing the index to prepare for the next number.

# List of numbers: 7, 7, 0, 7
# Index: 5

# A view function can be called 
# by a human for free - no gas

# But whenever a transaction calls 
# a view function, it costs gas

# Workshop Objectives:

