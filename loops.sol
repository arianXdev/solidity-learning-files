pragma solidity >= 0.7.0 < 0.9.0;

// Loops (for, while, do...while)


contract Loops {

    function forLoop() public view returns (uint) {
        uint counter = 0;

        
        for (uint i = 0; i < 100; i++) {
            counter++;
        }    


        return counter;    
    }

}



// Looping Practice (FOR LOOP):
// 1. Create a contract called myLoopingPracticeContract and place all the following code within:
// 2. Create a list that ranges from 1 to 20 called longList
// 3. Create a list called numbersList of the following numbers: 1, 4, 34, 56
// 4. Create a function that loops through numbersList and returns a true value if the number 
// that the user inputs exists in the list otherwise it should return false
// 5. Create a function that loops through and returns how may even numbers there are in the long list


contract MyLoopingPracticeContract {
    uint [] longList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]; // 10 odd 10 even
    uint [] numbersList = [1, 4, 34, 56];


    function numbersListLoop(uint _num) public view returns (bool) { // it's going to return a boolean
        bool numberExists = false;
        
        for (uint i = 0; i < numbersList.length; i++) {
                if (_num == numbersList[i]) {
                    numberExists = !numberExists;
                } 
        }    

        return numberExists;
    } 


    function evenNumbersLoop() public view returns (uint) {
        uint evenNumbers = 0; // 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, ...
        uint oddNumbers = 0; // 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, ...


        // number % 2 == 0 Always going to be an even number

        for (uint i = 0; i < longList.length; i++) {
              if (longList[i] % 2 == 0) {
                evenNumbers++; // means evenNumbers += 1;
              } else {
                oddNumbers++;
              }
        }

        return evenNumbers; 
    }


}