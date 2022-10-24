pragma solidity >= 0.4.0 < 0.9.0;

// View functions ensure that they will not modify the state (return values).
// The view functions are read-only functions, which ensure that state variables cannot be modified after calling them. 
// By default, a getter method is view function.

// Pure functions ensure that they not read or modify the state (return calculations).
// The pure functions do not read or modify the state variables (the state), which returns the values 
//      only using the parameters passed to the function or local variables present in it.

// Solidity was not created for the Remix IDE!

contract MyContract {
    uint value;

    // setValue modifies the state value!
    function setValue(uint _value) external { // in this function, we actually change the state, modifying the state of our contract
        value = _value; // it's modifying the state because it can be pure or view!
    }

    // getValue does not modify anything, it's just returning, it's a read-only function!
    // And because it's read-only, we want to ensure that it's not going to modify the state.
    function getValue() external view returns(uint) {
        // value = 2022; // this actually modifies the state! So we get an error.
        return value;
    }

    function getNewValue() external pure returns(uint) {
        // 3 + 3; // that's a calculation!
        return 3 + 3; // just returns a calculation! not modifying the state
    }

}

// Exercise: 1. Create a function called multiply which returns 3 multiplied by 7
// 2. Create another function called valuePlusThree which returns the state variable value + 3 (***SO IMPORTANT!!!)
// 3. Deploy the contracts successfully and test for the results.

// REMEMBER: to use the appropriate modifying keywords accordingly!
contract Exercise {
    uint value = 2019; // ... is a state variable so pure funcitons can't read this!

    function multiply() external pure returns (uint) {
        return 3 * 7; // 21 This shows the result like view keyword!
    }

    function valuePlusThree() external view returns (uint) {
        return value + 3; // it doesn't modify the state, but it's reading from the state!
    }

}

