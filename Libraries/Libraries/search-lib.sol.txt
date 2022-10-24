// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;

// Purpose: We want this loop to return the index value of some integer we are searching for.

// // ["Behzad", "Barbod", "Vahid", "Arian", "Gregory"]
// indexOf(array, "Arian"); // 4

library Search {
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