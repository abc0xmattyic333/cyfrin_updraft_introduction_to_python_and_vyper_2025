# pragma version 0.4.0
# @license MIT

@external
@pure
def multiply(x: uint256, y: uint256) -> uint256:
    return x * y

@external
@pure
def divide(x: uint256, y: uint256) -> uint256:
    return x // y # To divide in Vyper you need to use 2 slashes

@external
def todo():
    pass

@external
@pure
def reuturn_many() -> (uint256, bool):
    return (123, True)