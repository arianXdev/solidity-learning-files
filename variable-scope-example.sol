// SPDX-License-Identifier: GPL-3
pragma solidity >= 0.7.0 < 0.9.0;

// VARIABLE SCOPE | Visibliity - Functions & Variables (State Variable)

// There are four types of visibility for functions and state variables (except external): private, public, external, internal
// NOTE: You can modify the rules of scope in Solidtiy with the keywords, What are the 'keywords'?

// Public means that You can call the function from 'outside of the smart contract' as well as inside the smart contract
// Private = You can only call the function inside the smart contract 
// Internal = called only within the contract OR other contracts that inherit the smart contract 
// Internal is slightly less restrictive than public
// External = You can only call the function or the variable outside the contract not from other functions within.

// NOTE: For state variables, external is not possible.

// c++ also has inheritance 

// How to decide which one to use?
// RULE OF THUMB: Give the minimum amount of priviledge to any entity. 
// 1. Private, 2. Internal 3. External 4. Public 


// NOTE: For local variable we can't set visiblity or scope.

// State Variables vs Local Variables

contract A {
    uint data = 10;

    function x() external pure returns(uint) {
        // NOTE: This data is a local variable, And that means that this data can only be accessed in this function.
        /* 
        - Well, Why is that valuable?
        That's valuable because let's say we are creating logic in this function, We
        don't want that logic to leak out to our other functions, because that would be very confusing and It would be problematic,
        So IT'S IMPORTANT TO HAVE THE SCOPE!
        */
        
        // Exercise: Modify function X so that you return 25 for data without changing the data of the state variable
        uint data = 25;
        
        return data;
    }

    // NOTE: If we wanted this data to be accessible on both of these functions, all we would have to do is move our data outside of the function,


    function y() external view returns (uint) {
            return data;
    }
    
}

contract B {
    uint data = 10;
}


contract C {

}



