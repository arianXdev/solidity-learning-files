pragma solidity ^0.8.7;

// Special Variables (Global Variables)
// Special variables (Global Variables) are globally available variables and provides information about the blockchain!

// E.g: 
// msg.sender: returns Sender of the message (current call)
// msg.value (uint): returns number of wei sent with the message.
// block.timestamp: returns current block timestamp as seconds since unix epoch.
// block.number (uint): returns block number

// Global means everywhere in the contract!

contract LedgerBalance {
    // Create a map of wallets with amounts
    // set up the function that can update the amount of the person call the contract - contract address - msg.sender
    mapping(address => uint) public balance;

    function updatesBalance(uint _newBalance) public {
        balance[msg.sender] = _newBalance; // First item of the list
    }
}


contract Updated {
    function updatesBalance() public {
        // Contract in itself is like a struct! 
        // These contracts that we create are objects of information that were passing.
        // Why can't they be data types? They can be data types! They can for sure be data types!

        // So We can bring this contract into this contract

        // We just interacted between two contracts, We brought one contract into another!
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updatesBalance(30);
    }
}

// Other Glboal Variables in Solidity Examples
contract SimpleStorage {
    uint storedData;

    // Setter
    function set(uint _x) public {
        // storedData = _x;
        // storedData = block.difficulty;
        // storedData = block.timestamp;
        storedData = block.number;
    }

    // Getter
    function get() public view returns(uint) {
        return storedData;
    }
}