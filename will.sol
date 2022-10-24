// SPDX-License-Identifier: GPL-3
pragma solidity >= 0.8.7;


// Everytime you do a transaction on the blockchain, there is a protocol
//  that it takes a certain gas fee to complete the transaction
contract Will {
    address owner; // The Grandfather's Address
    uint    fortune;
    bool    deceased;

    // A constructor is a special function that is used to initialize state variables in a contract, it'll execute once when we deploy the contract.
    // 'payable' modifier keyword: we're allowing this function to send and receive ether!
    constructor() payable {
        owner = msg.sender; // the person who is calling the contract, the person who is executing the contract
        fortune = msg.value; // tells us how much ether is being sent
        deceased = false;
    }

    // Modifiers: Function modifiers are used to modify the behaviour of a function,
    //  Modifiers are add-ons for our functions that can create additional logic for them

    modifier onlyOwner {
        require(msg.sender == owner, "You're not the owner!");
        _;
    }

    modifier mustBeDeceased {
        _;
        require(deceased, "Not deceased!");
    }

    // an array of different addresses
    // Array: An array is a list of items
    // with this payable keywork, we're allowing it to send and receive ethers
    address payable[] familyWallets;

    // Iteration - iterating just means looping through
    mapping(address => uint) inheritance; // {key: value} think of a mapping as a dictionary

    // Scope is where you set your variables and functions
    // Only the granderfather should be able to call this function
    function setInheritance(address payable wallet, uint amount) public onlyOwner {
        familyWallets.push(wallet);
        inheritance[wallet] = amount; // {wallet: amount, wallet2: amount2, wallet3: amount3}
    }

    function payout() public mustBeDeceased {
        // with a for loop you can loop through things and set conditions
        for (uint i = 0; i < familyWallets.length; i++) {
            // transferring the funds from contract address to receiver address
            familyWallets[i].transfer(inheritance[familyWallets[i]]);
        }

        if (deceased) deceased = false;
        else deceased = true;
    }

    // If this was a real world smart contract, we would connect this to an oracle
    // Oracle switch simulation
    // function hasDeceased() public onlyOwner {
    //     deceased = true;
    //     payout(); // calling the payout function
    // }

}
