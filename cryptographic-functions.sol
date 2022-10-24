pragma solidity >= 0.7.0 < 0.9.0;

// Cryptographic Functions
/* 
A cryptographic hash function (CHF) is a mathematical algorithm that maps data of arbitrary size 
(often called the "message") to a bit array of a fixed size (the "hash value", "hash", or "message digest").
It is a one-way function, that is, a function which is practically infeasible to invert or reverse the computation.


Solidity provides inbuilt cryptographic functions as well. Following are important notes:

    keccak256(bytes memory) return (bytes32) - computes the Keccak-256 hash of the input.

    sha256(bytes memory) returns (bytes32) - computes the SHA-256 hash of the input.

    ripemd160(bytes memory) returns (bytes20) - computes RIPEMD-160 hash of the input.

    keccak is a leading hashing function, designed by non-NSA designers. keccak wo NIST competition to become the offical SHA3
    Keccak is a family of cryptographic sponge functions and is designed as an alternative to SHA-256.
     
*/


/*
Exercise (Secure the Random Functionality From Miner Manipulation):

1. Create a contract Oracle with an address datatype called admin and a public integer called rand.
2. Create a constructor and set the admin to the current caller (msg.sender).
3. Write a function which takes the input of an interger and sets the state variables rand to that integer.
4. Require that the current caller must equal the admin.
5. Set the oracle contract to a new variable called oracle in the GenerateRandomNumber contract (hint called contracts)
6. Write a constructor in the GenerateRandomNumber contract which sets the oracle to a deployment address of the Oracle
7. Modify the hash return so that the miners greatly lesson control manipulation to the random generation.
8. Successfully deploy and test the results.

Good luck and may the ethereum be with u!!!

*/


// A database management system is not only used for storing the data but to effectively manage it
// and provides high performance, authorized access and failure recovery features.


contract Oracle {
    address admin;
    uint public rand;

    constructor() {
        admin = msg.sender; // current caller of this contract
    }

    function feedRand(uint _rand) external {
        require(msg.sender == admin);
        rand = _rand;
    }
}

// A random number generator
contract GenerateRandomNumber {
    // We're going to build a random number generator which takes an input range and uses crypographic hashing
    // modulo (%) - so by computing against the remainder we will be able to produce a random number within a range
    // cryptographic hashing 
    Oracle public oracle; // state variable

    // Initializing state variables
    constructor(address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }
    
    function randMod(uint maxNumberOfRange) external view returns(uint) {
        // Let's grab the information from the blockchain randomly to generate random numbers - we need something dynamically changing.  
        // abi.encodePacked() concatenates arguments nicely
        return uint(keccak256(abi.encodePacked(oracle.rand, block.timestamp, block.difficulty, msg.sender))) % maxNumberOfRange;
    }
}
