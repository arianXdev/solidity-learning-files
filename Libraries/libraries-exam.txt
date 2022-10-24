// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;


library Getter {
    function multiply(uint _a, uint _b) public pure returns(uint result) {
        return _a * _b;
    }
}

contract FirstContract {
    uint data;


    constructor() {
        data = 1;
        Getter.multiply(data, data); // 1
    }
}


contract SecondContract {
    using Getter for uint;
    uint data;


    constructor() {
        data = 2;
        data.multiply(data); // 4

    }

}


contract ThirdContract {
    using Getter for *;
    uint data;


    constructor() {
        data = 3;
        data.multiply(data); // 9
    }

}