pragma solidity ^0.8.9;

// What are UINTs?
/* 
    - The "uint" data type is an 'unsigned integer', meaning its value must be non-negative.
    - There is also an "int" data type for 'signed integer'.


    NOTE: In Solidity, "uint" is actually an alias for uint256, a 256-bit unsigned integer.
    = When you write "uint", it defaults to uint256!
    - You can declare "uints" with less bits - uint8, uint16, uint32, uint48, etc...
    - But in general you want to simply use "uint" except in specific cases
*/

// Every transaction costs gas!

contract Conversions {
    /* 
        uint defaults uint256.
        uint (alias for uint256) is an unsigned integer which has:

        -   minium value of 0! So it can't be negative! Can't go below zero!
        -   maximum value of 2^256-1 (2 to the power of 256 minus 1) (formula)
    */

    uint8 number = 255; // 2 ^ 8 - 1 (0 - 255) This is going to be computationally much less expensive than this.
    uint16 number2 = 65535; // 2 ^ 16 - 1 (0 - 65535)
    uint24 number3 = 16777215; // 2 ^ 24 - 1 (0 - 16777215)
    uint32 number4; // 2 ^ 32 - 1 (4.2949673×10^9)
}
