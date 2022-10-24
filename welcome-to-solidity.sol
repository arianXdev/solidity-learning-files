pragma solidity >=0.7.0 <0.9.0;

contract WelcomeToSolidity {
    constructor() public {}

    function getResult() public view returns (uint) {
        uint a = 99;
        uint b = 1;
        uint result = a + b;
        return result;
    }
}


// Change the function called getResult in our WelcomeToSolidity contract So that the output
// returns 15