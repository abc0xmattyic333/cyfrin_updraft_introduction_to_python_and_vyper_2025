# pragma version 0.4.0
# @license MIT

# Conditional Statements in Vyper
# This Vyper function uses an if-else statement to return different values based on the input:

# - `@external` allows the function to be called from outside the contract
# - `@pure` indicates the function doesn't read or modify contract state
# - Takes a `uint256` input `x`
# - Returns a `uint256`

# Function logic:
# - If `x` is 10 or less, returns 1
# - If `x` is between 11 and 20, returns 2
# - For any value over 20, returns 0

# Example:
# - `if_else(5)` returns 1
# - `if_else(15)` returns 2
# - `if_else(25)` returns 0


@external
@pure
def if_else(x: uint256) -> uint256:
    if x <= 10:
        return 1
    elif x <= 20:
        return 2    
    else:
        return 0