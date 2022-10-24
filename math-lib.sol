// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;


library Math {
    function addition(int _a, int _b) external view returns(int result, address owner) {
        result = _a + _b;
        owner = msg.sender;
    }

    function subtraction(int _a, int _b) external view returns(int result, address owner) {
        result = _a - _b;
        owner = msg.sender;
    }

    function multiplication(int _a, int _b) external view returns(int result, address owner) {
        result = _a * _b; 
        owner = msg.sender;
    }

    function division(int _a, int _b) external view returns(int result, address owner) {
        result = _a / _b;
        owner = msg.sender;
    }

    function remainder(int _a, int _b) external view returns(int result, address owner) {
        result = _a % _b;
        owner = msg.sender;
    }

    // NOTE: Only works with "uint" data type
    function exponentiation(uint _a, uint _b) external view returns(uint result, address owner) {
        result = _a ** _b;
        owner = msg.sender;
    }
}