pragma solidity >= 0.7.0 < 0.9.0;

// Logical Operators: These operators are used to combine two or more conditions.

// There are 3 types of logical operators in Solidity: && (Logical AND), || (Logical OR), ! (Logical NOT)

// a < b && b > c - Logical AND (Both conditions must be satisfied / true)
// a < b || b > c - Logical OR (Either condition must be satisfied / true)
// !(a < b) - Logical NOT


contract LogicalOperators {
    // These are state variables
    uint a = 17;
    uint b = 32;

    function logic() public view returns(uint) {
        uint result = 0;    

        if (a < b && a == 5) {
            result = a + b;
        }

        return result;
    }   

    // Exercises:
    // 1. Create a function which will multiply a by b divide the result by b 
    // 2. Only return the multiplication of the function If b is greater than a AND a does not equal b 
    // 3. Intialize a = 17 and b = 32

    function multiply() public view returns(uint) {
        uint multiplication = a * b;
        uint divison = multiplication / b;

        uint result;

        if (b > a && a != b) {
            result = multiplication;    
        }

        return result;
    }
}   
