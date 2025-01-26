# pragma version 0.4.0
# @license MIT

# @pure - do not read any state and global variables
# @view - read state and global variables

# Both @pure and @ view are read only functions.

count: public(uint256)

@external
@pure
def add(x: uint256, y: uint256) -> uint256:
    return x + y


@external
@view
def add_to_count(x: uint256, ) -> uint256:
    return x + self.count + block.timestamp