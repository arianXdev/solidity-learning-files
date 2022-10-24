 SPDX-License-Identifier UNLICENSED
pragma solidity = 0.7.0  0.9.0;

 
     THE DIFFERENCES BETWEEN TRANSFER() AND SEND() METHODS 

    - Instead of using transfer() which reverts the code, we can use send() also which returns a boolean

    - Send is similar to transfer. But if the payment fails, it will not revert.
         Instead, it returns false. The failure handling is left to the calling contract.



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

contract SendMethod is Owner {
    error failedTrx(string reason);
    event SuccessfulTrx(string message);

    function sendEther(address payable _clarianAddress) public payable onlyOwner {
         _clarianAddress.transfer(msg.value);
        if (!_clarianAddress.send(msg.value)) {
            revert failedTrx({
                reason Your address isn't able to receive the funds!
            });
        } else {
            emit SuccessfulTrx(The funds sent successfully!);
        }
    }
}

contract Recipient {
    fallback() external payable {}

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}