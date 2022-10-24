pragma solidity >= 0.7.0 < 0.9.0; // means specifying the version of solidity
// Operators

// Operators: An Operator in a programming language is a symbol that tells the compiler or interpreter to perform specific mathematical, 
// relational or logical operation and produce final result.

// Operands: Operands are expressions or values on which an operator acts or works.

// Operands: variables
// Operators: signs

// ------------------------------------------------------------------------------------------------------------------------

// What are the types of operators?
// 1. Arithmetic Operators: + - % / * ** 
// 2. Comparison Operators
// 3. Logical Operators
// 4. Assignment Operators



// Arithmetic Operators: These operators are used to perform arithmetic or mathematical operations.

contract ArithmeticOperators {
    function calculator(uint a, uint b, uint operator) public view returns(uint) {
        uint result; // without any values

        if (operator == 1) {
            // Addition Operator
           result = a + b;
        } else if (operator == 2) {
            // Subtraction Operator
            result = a - b;
        } else if (operator == 3) {
            // Multiplication Operator
            result = a * b;
        } else if (operator == 4) {
            // Division Operator
            result = a / b;
        } else if(operator == 5) {
            // Exponentiation Operator
            result = a ** b;
        } else if (operator == 6) {
            // Remainder (Modulus) Operator
            result = a % b; 
        } else {
            result = 0;
        }

        // Returning the result of the operation
        return result;
    } 

        // uint c = a++; // post-increment
        // uint c = ++a; // pre-increment


        // uint c = b--; // post-decrement
        // uint c = --b; // pre-decrement


    // Arithmetic Operators: + - * / % ** ++ --
    // Increment | Decrement Operators: They actually just add one or subtract one!
    function incrementOperator() public pure returns (uint) {
        uint number = 10;
        return number++;
    }   

    // ARITHEMTIC EXERCISES:
    // a = 2 | b = 12
    // 1. a + b - b + a = ?
    // 2a + 0b = 4


    // 2. a * b * b - 1 = ?
    // 2 * 12 * 12 - 1 = 2 * 144 - 1 = 287

    // 3. b + b++ + a++ = ?
    // 12 + 13 + 3 = 28

    // 4. (b % a) + 3 = ?
    // 3

}