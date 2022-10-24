// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;

// If we want to send Ether to an address, the address needs to be payable.
// If the target is a smart contract, it needs to have at least one of the receive() or fallback() functions
// If none of these functions exists in the contract, the transfer will fail,
// It means that if we want to create a smart contract that receives Ether, we will need to implement at least one of these functions.

contract Tranfer {
    function sendEther(address payable _to) public payable {
        // _to.send(msg.value);
        _to.transfer(msg.value);
    }
}

// Since this contract receives ETHER, it has to have fallback() or receive() built-in methods to work!
contract Recipient {
    receive() external payable {

    }

    // fallback() external payable {

    // }

    function getBalance() public view returns(uint) {
        return address(this).balance; // returns the balance of this smart contract
    }
}
