// SPDX-License-Identifier: GPL-3
pragma solidity >= 0.7.0 < 0.9.0;

// Exercise: 1. Create a function in the learnFunctions contract called multiplyCalculator
// 2. Add two parameters to the function a & b and set them as integers.
// 3. Grant the function public visibility as well as viewing capability for the IDE.
// 4. Return an integer for the function
// 5. Create a variable result that contains the logic to multiply a and b
// 6. Return the result
// 7. Compile and deploy your very first dApplication and test out the results!

/* 
    NOTE: "view" keyword is just going to allow us to view the results of the return in our IDE, That's all you need to know for now.
    Alright, If we don't have that, we can't see the results.
*/

/* 
    NOTE: If we want to return something, we bring in "returns()" keyword and then we have to declare what we're returning.
    If we didn't want to return the result, we could actually have this function without "returns()", it would have still worked.   
*/

/* 
    function function-name(parameters-list | inputs) scope view returns(what we're returning) {
        // statements
    }
*/

contract learnFunctions {
    function addition(uint a, uint b) public pure returns (uint) {
        uint result = a + b; // local variable
        return result;
    }

    function subtraction(uint a, uint b) public pure returns (uint) {
        uint result = a - b;
        return result;
    }

    function multiplication(uint a, uint b)
        public
        pure
        returns (uint)
    {
        uint result = a * b;
        return result;
    }

    function division(uint a, uint b) public pure returns (uint) {
        uint result = a / b;
        return result;
    }

    function exponentiation(uint a, uint b)
        public
        pure
        returns (uint)
    {
        uint result = a**b;
        return result;
    }

    function remainder(uint a, uint b) public pure returns (uint) {
        uint result = a % b;
        return result;
    }
}
