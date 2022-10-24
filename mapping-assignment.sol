pragma solidity ^0.8.7;


contract Assignment {
    mapping(address => mapping(uint8 => Member)) public people;

    struct Member {
        string name;
        uint48 allowance;
        uint48 income;
    }

    /* 
    1. Greogry, $1200, $4200 *
    2. Carl, $789, $600
    3. Thomas, $900, $1900
    4. Arian, $490, $70000 *
    5. Barbod, $800, $40000 *
    */

    function setMember(uint8 _id, string memory _name, uint48 _allowance, uint48 _income) public {
        people[msg.sender][_id] = Member(_name, _allowance, _income);
    }


    function reportIncome(uint8 _id) public returns(string memory) {
        if(people[msg.sender][_id].income >= 4000) { // If people's income is greater than or equal to $4000, Don't give them allowance!
            delete people[msg.sender][_id];
            return "Thank you! Appreciate your helping, We've remove him from the list!";
        } else {
            return "His income is fair!";
        }
    }

}