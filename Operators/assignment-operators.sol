pragma solidity >= 0.7.0 < 0.9.0;

// Assignment Operators in Solidity 

/* 
    These operators are for the assignment of value to a variable.
    The operand at the left side is variable while operand at the right side is value.
*/


// Simple Assignment =


// Add Assignment +=


// Subtract Assignment -=


// Divide Assignment /=


// Multiply Assignment *=


// Modulus Assignmenbt (Remainder Assignment) %=


contract AssignmentOperators {
    uint a = 10;
    uint b = 20;


    function assign() public view returns(uint) {
        uint c = 2020; 

        // c = c + b; // 2020 + 20 = 2040

        // Addition Assignment Operator
        // c += b; // means c = c + b 

        // Subtraction Assignment Operator
        // c -= b; // means c = c - b  


        // Multiplication Assignment Operator
        // c *= b; // means c = c * b 

        // Division Assignment Operator
        // c /= b; // means c = c / b

        // Modulus (Remainder) Assignment Operator
        // c %= b; // means c = c % b;

        return c;
    }


}

// ----------------------------------------------------------------------------------------------------------------------------------

// Final Operators Exercise
// 0. Create a contract called Final Exericse (FinalExercise)
// 1. Intialize 3 state variables a, b, f
// 2. Assign each variable the following: a should equal 300, b should equal 12, f should equal 47
// 3. Create a function called finalize that is public and viewable which returns a local variable d
// 4. Intialize d to 23
// 5. Return d in shorthanded assignment form to multiply itself by itself and then subtracted by b.

// 6. BONUS: Make the function conditional so that it will only return the multiplication if a is greater than or equal to a and b is less than f
// otherwise d should return 23



contract FinalExercise {
    uint a = 300;
    uint b = 12; 
    uint f = 47;

    function finalize() public view returns(uint) {
        uint d = 23;

        if (a >= a && b < f) {
            d *= d; // 529

            return d - b;
        }

        return d;
    }

}