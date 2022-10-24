// SPDX-License-Identifier: UNLICENSED
// What we are saying here is that we want a version of solidity, that is going to be greater than or equal to this version (0.7.0)
//  and less than 0.9.0
// x greater than or equal to y and less than z
// x = Solidity | y = 0.7.0 | z = 0.9.0
pragma solidity >= 0.7.0 < 0.9.0;

// Pragma statement
// The first thing we want to do is bring in Solidity, How do we bring in Solidity? With Pragma
// This line tells the Solidity Compiler that which version of Solidity we want to use
// The first line of a solidity file is the pragma statement, It indicates the solidity version that is being used. 
// It helps ensure compatibliity in code files.

// ------------------------------------------------------------------------------------------

// Comments
/* 
There are two ways to write our comments in Solidity:
    - Using // (single-line comment) - (C++-style)
    - Using / * * / (multi-line comment) - (C-style)
*/

// ------------------------------------------------------------------------------------------
// Operators
// Operators: An Operator in a programming language is a symbol that tells the compiler or interpreter to perform specific mathematical, 
// relational or logical operation and produce final result.

// Operands: Operands are expressions or values on which an operator acts or works.

// Operands: variables
// Operators: signs

// Arithmetic Operators: These operators are used to perform arithmetic or mathematical operations. + - * /

// Logical Operators: These operators are used to combine two or more conditions.

// There are 3 types of logical operators in Solidity: && (Logical AND), || (Logical OR), ! (Logical NOT)

// a < b && b > c - Logical AND (Both conditions must be satisfied / true)
// a < b || b > c - Logical OR (Either condition must be satisfied / true)
// !(a < b) - Logical NOT


// Comparison Operators: Operators which compare operands | These operators are used to compare two values (operands)
// Ex: less than (<) - greater than (>) - equality (==) - not equality (!=) - less than or equal to (<=) - greater than or equal to (>=)

// Note: Comparison Operators always return a boolean (True / False).


/* 
    Assignment operators
    These operators are for the assignment of value to a variable.
    The operand at the left side is variable while operand at the right side is value.
*/

// Simple Assignment =
// Add Assignment +=
// Subtract Assignment -=
// Divide Assignment /=
// Multiply Assignment *=
// Modulus Assignment (Remainder Assignment) %=
// ------------------------------------------------------------------------------------------

// We want to create a contract that can store data and return the data back

// a contract should be able to do the following:
// 1. Receive information, 2. Store information, 3. return the information back


// WHAT IS A SMART CONTRACT AS DEFINED IN SOLIDITY?
// A contract in the sense of Solidity is a collection of code (its functions) and data (its state) 
//      that resides "at a specific address on the Ethereum blockchain" WHICH HAPPENS when we deploy the contact.

// curly brackes essentially create an object for us, where we can write all of the code inside here.

// Variables
// Variables are nothing but reserved memory locations to store values.
// Variables are reserverd memory locations to store value.
// This means that when you create a variable actually you reserve some space in memory!


contract SimpleStorage {
    uint storeData; // 2 ^ 16 - 1 ( 0 - 65,535)
    string names = "Clarian North";
    bool switchOn = false;

    // Functions
    // A function is a group of reusable code that can be used anywhere in your application. They perform a specific task
    //      it's our way to executing our scripts, functions are where we make things happen.
    // This eliminates the need of writing the same code again and again.

   
    /* If we want to return something, we bring in "returns()" keyword and then 
    we have to declare 'what we're are returning" */

    // NOTE: For local variables we can't set visiblity or scope (private, public, external, internal)

    function set(uint x) public {
        storeData = x;
    }    
    

    function get() public view returns(uint) {
        return storeData;
    }

}

// Exercise: 1. Create a storage contract that sets and gets values - only the value it returns is multiplied 5x
// 2. Create a storage contract that sets and gets values of Names

contract FiveXStorage {
    uint data;
    // clinic sign exhibit skirt grunt safe exit
    function set(uint _num) public {
        data = _num * 5;
    }

    function get() public view returns(uint) {
        return data;
    }
}

contract NamesStorage {
    string names;

    function set(string memory _name) public {
        names = _name;
    }

    function get() public view returns(string memory) {
        return names;
    }
}