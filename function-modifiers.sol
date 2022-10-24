pragma solidity >= 0.7.0 < 0.9.0;

// Function Modifiers are used to modify the behaviour of a function.
// Function Modifiers are customizable modification for functions.

// Note: Use modifiers only for checks

contract Owner {
    // How to write a function modifier in Solidity?
    address owner;

    constructor() {
        owner = msg.sender;
    }

    // To write a modifer, we statically declare the modifier keyword and then name it 
    // and inside we write our logic and modifications
    modifier onlyOwner {
        // NOTE: "onlyOwner" is going to say: Hey, Is the msg.sender (current address) the owner?
        // customizable logic to modify our functions
        require(msg.sender == owner); // this needs to be true to continue the code
        _; 
        // Underscore is a special character only used inside
        // a function modifier and it tells Solidity to
        // execute the rest of the code.

        // The symbol _; is called a merge wildcard. It merges the function code with the modifier code
        //       where the _; is placed.

        // In other terms, the body of the function (to which the modifier is attached to) will be inserted where
        //      the special symbol _; appears in the modifier’s definition.
        // Using the terms of the Solidity docs, it “returns the flow of execution to the original function code”.

    }  

    // Modifiers can take inputs
    modifier costs(uint _price) {
        // What is msg.value? the amount in wei being sent with a message to a contract
        require(msg.value >= _price);
        _; // Underscore is a special character only used inside
        // a function modifier and it tells Solidity to
        // execute the rest of the code.
    }  
}


contract Register is Owner {
    // What in the code is currently modifying the functions? onlyOwner, payable
    mapping(address => bool) registeredAddresses;
    uint public price;

    constructor(uint intialPrice) {
        price = intialPrice;
    }

    // funciton register will set msg.sender (current caller) to true
    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    // onlyOwner is our function modifier that requires only the owner to be able to change the price
    function changePrice(uint _price) public onlyOwner {
        // NOTE: "onlyOwner" is going to say: Hey, Is the msg.sender (current address) the owner?
        price = _price;
    }
}

// Exercise Time :)
/* Create a function modifier called costs for our register function that check to see 
  that the senders value (hint: look up msg.value) requires has to be greater than or equal to the price. 
  (Second hint: The function modifier should take an argument) */

