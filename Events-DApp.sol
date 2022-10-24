// SPDX-License-Identifier: GPL-3
pragma solidity ^0.8.0;

contract Events {
    // These events don't get stored in Solidity.
    // We can't access it afterward. (one way)
    // The only people who can access it are the people OUTSIDE.
    // After emitting events or after you met these events, you can't read them in the past
    // Only for entities outside of the blockchain - not stored as memory

    // Syntax to declare: event Name(parameters);
    // Syntax to emit: emit Name(arguments);

    event NewTrade(uint256 date, address _from, address _to, uint256 amount);

    function trade(address payable _to, uint256 _amount) external payable {
        // Emitting the event
        // In outside, consumers can see the event through web3.js
        // How do people actually see this event? We would do that with the library Web3.js
        emit NewTrade(block.timestamp, msg.sender, _to, _amount);
    }
}
