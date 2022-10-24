pragma solidity >= 0.7.0 < 0.9.0;

// What exactly do we want our crypto token to do?
// The Contract allows only its creator to create new coins (Different issuance schemes are possible).
// Anyone can send coins to each other without a need for registering with a username and a password, all you need is an Etheruem keypair.

contract Coin {
    // The Keyword "public" it's making the variables here accessible from other contracts
    address public minter; // who's minting the coin!
    mapping(address => uint) public balances;
    

    /* 
    Event is an inheritable member of a contract. An event is emitted, it stores the arguments passed in transaction logs.
    These logs are stored on blockchain and are accessible using address of the contract till the contract is present on the blockchain.*/
    event Sent(address from, address to, uint amount);
 
    // constructor only runs when we deploy the contract
    constructor() {
        minter = msg.sender; // the person who's calling the contract
    }

    // Mint: To Make a coin
    // Make new coins and send them to an address 
    // Only the owner can send these coins
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter); // the person who's calling the function has be the person who's calling the contract!

        // How do we actually make coins and send them?
        balances[receiver] += amount;
    }

    error insufficientBalance(uint requested, uint available);

    // Let's create a function where we can send any amount of coins to an existing address.
    function send(address receiver, uint amount) public {
        // You can't send the amount you don't have!
        if (amount > balances[msg.sender]) {
            revert insufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
        }

        balances[msg.sender] -= amount; // Sender
        balances[receiver] += amount; // Receiver
        // When you create an event, then you need to emit than event!
        emit Sent(msg.sender, receiver, amount);
    }

}