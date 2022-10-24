pragma solidity >= 0.7.0 < 0.9.0;

// Comparison Operators: Operators which compare operands | These operators are used to compare two values
// Ex: less than (<) - greater than (>) - equality (==) - not equality (!=) - less than or equal to (<=) - greater than or equal to (>=)

// Note: Comparison Operators always returns a boolean (True / False).


contract ComparisonOperators {
    uint a = 53;
    uint b = 54; 

    function lamborghiniAventador() public view returns(uint) {
        // < less than | > greater than

        /* require() essentially is going to be a method which is going to check whether or not something is true 
        And then if it's true, it's going to continue to run the function, and if it's not true, it's going to run an error that we say. */

        /* 
        if the condition of require(); is true, Just run the function, if it's not true, 
        Then send that false message.
        */
        
        // require(a == b, "Unfortunately! That's wrong.");

        // ------------------------------------- Exercises ----------------------------------------

        // Exercise: Only run the function compare so that a is equal to or less than b
        // Otherwise submit the message - This comparison is false!

        // Exercise 2: Only run the function (compare()) so that a is equal or greater than b 
        // Otherwise submit the message - This comparison is false


        // require(a <= b, "This comparison is false!"); // Exercise 1 (less than or equal to)
        require(a >= b, "This comparison is false");// Exercise 2 (greater than or equal to)

        return 2022;
    } 


}