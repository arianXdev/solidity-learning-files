// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;

import { Search } from "./Libraries/lib.sol";

// Rolls Royce Wraith
/* 
A library in Solidity is a different type of smart contract that contains reusable code.
Libraries are similar to Contracts but are mainly intended for reuse. A library contains functions which other contracts can call.
Solidity have certain restrictions on use of a library. Following are the key charactersictics of a Solidity Library.


    Library functions can be called directly if (as long as) they do not modify the state.
    That means pure or view functions only can be called from outside the library. (it doesn't mean we can't make them)
 
    Library can not be destroyed as it is assumed to be stateless.

    A library is considered as stateless.

    A library cannot have state variables.

    A library cannot inherit any element.

    A library cannot be inherited.


    Benefits:
        1. Deploying common code as library will save gas (gas limit)
        2. Functions in a library can be used by many contracts
            Using a base contract instead of a library to split the common 
            code won’t save gas 
            because in Solidity, inheritance works by copying code.
        3. We can define "structs", "enums", "constant variables" in a library!


    Limitations:
        1. They can’t hold ethers (so can’t have a fallback function)
        2. Doesn’t allow payable functions (since they can’t hold ethers)
        3. They do not have any storage (so can’t have non-constant state variables)
*/

/* 
- WHAT IS THE INDEX?
   Index isn't the value itself, The index is where the value exists in the array (starts from zero).
*/

contract Test {
    // State variables
    string[] data; // empty string dynamic array
    constructor() {
        // two ways to intialize our arrays.
        // data = ["Arian"];

        data.push("Arian");
    }

    function isValuePresent(string memory val) external view returns(uint) {
        uint index = Search.indexOf(data, val);
        return index;
    }
}
 

/* 
---------------------------- Exercise: USING LibraryName FOR Type -------------------------------------------------------------------------
    The directive using A for B; can be used to attach library functions of library A to a given type B.
    These functions will use the caller type as their first parameter (identified using self).

    Exercise: 
    1. Copy over the library Search and the contract Test below
    and rename library Search to Search2 and contract Test to Test2. 

    2. Using the A for B library pattern assign the new library to an empty array type 
    and
    rewrite the code so that we can run the same search hardcoded this time to the value of 4
    accordingly.  
*/

library Search2 {
    // We can write a function inside of a library 
    function indexOf(string[] storage array, string memory value) external view returns(uint index) {
        // because our statement only has a single line, we don't even need these curly brackets.
        for (uint i = 0; i < array.length; i++) {
            // Comparing two strings in Solidity
            if (keccak256(abi.encodePacked(array[i])) == keccak256(abi.encodePacked(value))) {
                return i;
            }
        }
    }

}

contract Test2 {
     // the wildcard operator * (any data type)
    using Search2 for string[];

    // State variables
    string[] array; // empty string dynamic array
    constructor() {
        // two ways to intialize our arrays.
        // array = ["Behzad", "Gregory", "Ashkan", "Omid", "Arian"];

        array.push("Arian");
    }


    function isValuePresent(string memory val) external view returns(uint) {
        uint index = array.indexOf(val);
        return index;
    }
}
 