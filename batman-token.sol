// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;

contract Owner {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}


contract BatmanToken is Owner {
    string name;

    address minter; // = owner
    uint public totalSupply;
    mapping(address => uint) public balances;

    event Mint(address receiver, uint amount, uint mintedTime, uint blockNumber);
    event Transfer(address from, address to, uint amount, uint time, uint blockNumber);
    event Burning(uint time, uint blockNumber);


    constructor() {
        name = "Batman Token";

        minter = msg.sender;
        totalSupply = 21000000; // There are only 21 million coins
    }

    error maxSupplyMaxERR(uint availableTotalSupply, uint requestedAmount);

    // RECEIVER: the address who get the minted coins.
    function mint(address receiver, uint amount) public onlyOwner {
        emit Mint(receiver, amount, block.timestamp, block.number);

        if (amount <= totalSupply) {
            balances[receiver] += amount;
            totalSupply -= amount;
        } else {
            revert maxSupplyMaxERR({
                availableTotalSupply: totalSupply,
                requestedAmount: amount
            });
        }
    }


    error insufficientBalance(uint availableBalance, uint requestedAmount);

    // Transfering coins between addressess
    function transfer(address receiver, uint amount) public {
        uint senderBalance = balances[msg.sender];

        if (amount > senderBalance) {
             revert insufficientBalance({
                availableBalance: senderBalance,
                requestedAmount: amount
            });
        }

        balances[msg.sender] -= amount;
        balances[receiver] += amount;

        emit Transfer(msg.sender, receiver, amount, block.timestamp, block.number);
    }


    function burn(uint amount) public onlyOwner {
        totalSupply -= amount;

        emit Burning(block.timestamp, block.number);
    }

}