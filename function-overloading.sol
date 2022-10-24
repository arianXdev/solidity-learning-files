pragma solidity >= 0.7.0 < 0.9.0;

/* 
Function Overloading: It's when you have multiple functions that have the same name in the same scope.
    You can have multiple difinitions for the same function name in the same scope.
    The difinition of the function must differ from each other by the types and/or the number of arguments in the argument list.
    You cannot overload function declarations that differ only by return type.
*/

contract FunctionOverloading {
    function x(bool lightSwitch) public {

    }

    function x(uint _number) public {

    }

    function x() public {

    }
}

/* 
Exercise: 
1. Create two funcions with the same name that return the sum of their arguments.
2. One function which takes two arguments and another function which takes three arguments.
3. Create two additional functions which can call each sum function and return their various sums.
4. Successfully deploy your smart contract and test the results of overloading functions!
*/

contract Exercise {
    function getSum(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function getSum(uint a, uint b, uint c) public pure returns(uint) {
        return a + b + c;
    }

    function getSumCaller() public pure returns (uint) {
        return getSum(2022, 1); // calling a function into another function in the same scope!
    }

    function getSumCaller(uint _thirdArg) public pure returns (uint) {
        return getSum(2020, 1, _thirdArg);
    }
}