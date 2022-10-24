pragma solidity >= 0.7.0 < 0.9.0;

// Exercise in DeFi :)
// 1. Create a stakingWallet variable as an integer and set it to the value of 10
// 2. Write a function called airDrop which has public visibility, is IDE viewable and returns an integer
// 3. Create decision making logic so that if the wallet has a value of 10 then add to the wallet 10 more
// 4. Add an else statement so that if the wallet does not equal the value of 10 to add only 1 more
// 4. and return the value of the wallet
// 5. Deploy the contract the test the result - try changing the value of the wallet to 6 and redeploying for varying reuslts


contract DecisionMakingExercise {
    uint stakingWallet = 101; // state variable

    // There are two ways to write this exercise:

    // function airDrop() public returns (uint) {
    //     if (stakingWallet >= 10) {
    //         stakingWallet += 10; // stakingWallet = stakingWallet + 10;
    //     } else {
    //         stakingWallet += 1;
    //     }

    //     return stakingWallet;
    // }


    function airDrop() public view returns(uint) {
        if (stakingWallet >= 10) {
            return stakingWallet + 10;
        } else {
            return stakingWallet + 1;
        }
    }
}