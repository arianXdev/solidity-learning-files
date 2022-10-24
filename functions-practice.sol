// SPDX-License-Identifier: GPL-3
pragma solidity >= 0.7.0 < 0.9.0;

/* 
- Functions are essentially just groups of reusable code, and we can
    call them anywhere in our contract.

- So we have a function and then we put code inside of the function and then        
    we can execute these functions.

- function name(inputs | parameters-list) scope |view| returns() {
    // everything inside here is "statements"
}

- If we want to return something, we bring in "returns()" keyword and then 
    we have to declare 'what we're are returning"

- Remember, the final thing about our functions is whatever we write in the function, if we create
    variables that are going to be local (local scope)


*/

contract functionsPractice {
    // uint a = 10; // state variable
    // uint b = 20; // state variable

    // NOTE: Local variables will supersede State variables.

    // These variables inside "getValues()" are not going to change the variables in "getNewValues()"
    function getValues() public pure returns (uint256) {
        uint256 a = 1;
        uint256 b = 2;
        uint256 result = a + b; // 3

        return result;
    }

    function getNewValues() public pure returns (uint256) {
        uint256 a = 10;
        uint256 b = 20;
        uint256 result = a + b; // 30

        return result;
    }
}
