// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;

/* 
Restricted Access to a Contract is a common practice.

By default, a contract state is read-only unless it is specified as public.

We can restrict who can modify the contract's state or call a contract's functions using modifiers.

Let us build a contract with modified restricted access with the following common writeouts:

    onlyBy - only the mentioned caller can call this function.

    onlyAfter - called after certain time period.

    costs - call this function only if certain value is provided.
*/

contract RestrictedAccess {
    address public owner = msg.sender;
    uint public creationTime = block.timestamp; // 1650613947

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    modifier onlyBy(address _account) {
        require(msg.sender == _account);
        _;
    }

    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time, "Function is called too early!");
        _;
    }

    // Write a function that will change the owner address
    function changeOwnerAddress(address _newOwner) public onlyBy(owner) {
        owner = _newOwner;
    }

    // only run the function 3 weeks after the creation of the contract
    function disown() public onlyBy(owner) onlyAfter(creationTime + 3 weeks) {
        delete owner;  
    }

    /* 
    Exercise: We can only use this function if we have 200 ether in our account
        1. Create a modifier called costs which takes an _amount parameter
        2. Require that msg.value is greater than or equal to the amount
        3. If the msg.value is not greater than or equal to the amount return a string that says Not enough Ether provided.
        4. Write a function called forceOwnerChange which takes an address called _newOwner and is payable
        5. Add a modification to the signature so that the function needs 200 ether to execute
        6. Set the owner of the contract to the new owner of the address.
        7. BONUS** Figure out how to make the function actually run!
    */


    // it's going to call the function, only if you give it a certain value (ether or money)
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided!");
        _;
    }

    function forceOwnerChange(address _newOwner) public payable costs(10 ether) {
        owner = _newOwner;
    }


    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

}