// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;


/* 
    ** What exactly are events in Solidity? **
    Events are a way to log actions that occur in a smart contract.
    If you index events they are easier and faster to find in the transaction log.  Up to 3 parameters can be indexed.
*/

contract Events {
    // 1. Delcare the event 
    // 2. We want to emit the event (it's like calling the event)
    
    // NOTE: It's much better to name events with PascalCase naming convention!
    // You can only use 3 indexed in an event | it costs higher
    event NewTrade(
        uint indexed _date,
        address _from,
        address indexed _to,
        uint indexed _amount
    );

    // Emitting the event
    function trade(address to, uint amount) external {
        // Outside consumer can see the event through web3js
        // block.timestamp is a global variable (special variable) that gives "the current timestamp"
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }

}

// Events are inheritable
contract B is Events {
    function sayHello(address to, uint amount) public {
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}
