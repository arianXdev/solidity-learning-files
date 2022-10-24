// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;

/* 
                    **INHERITANCE**
    Inheritance is a way to extend funcitonality of a contract.
    Solidity supports both single as well as multiple inheritance.

    Observe: The contract in Solidity is similar to a Class in C++ - a blueprint for an object

    Classes can inherit and so can contracts!
*/

/* 
Exercise: Create two contract A and B
    1. Contract A should have a state var called innerVal initialized to 100.
    2. Create a fully accessible function called innerAddTen which returns 10 to any given input
    3. Contract B should inherit from Contract A
    4. Contract B should have a function called outerAddTen which returns
    the calculation from the innerAddTen function in Contract A to any given input
    5. Create a function in Contract B which returns the value of innerVal from Contract A
    6. Compile and deploy successfully the contract and test the results
*/


contract A {
    uint innerVal;

    constructor() {
        innerVal = 100;
    }

    function innerAddTen(uint _num) public pure returns(uint) {
        return 10 + _num;
    }
}

contract B is A {
    function outerAddTen(uint _num) public pure returns(uint) {
        // return A.innerAddTen(_num);
        return innerAddTen(_num);
    }

    function getInnerVal() public view returns(uint) {
        return innerVal;
    }
}