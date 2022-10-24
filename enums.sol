pragma solidity ^0.8.7;

// Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.
// With the use of enums it is possible to reduce the number of bugs in your code.


// enums restrict a variable to have one of only a few predefined values.
// Syntax: enum <enumName> {element1, element2, etc...}

// NOTE: Solidity automatically converts the enums to unsigned integers (uint).


// Imagine We have a food app, that people can order a french fries
contract Enums {
    // This can be actually our data type!
    enum frenchFriesSize {LARGE, MEDIUM, SMALL}

    // A variable
    // When we want to create a variable, WE HAVE TO specify what data type do we want to store in that variable.
    frenchFriesSize myChoice;

    // Imagine The user forgot to input french fries size
    // Since It's never going to change, we're going to introduce the keyword "constant"
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;


    // This function will change our choice from MEDIUM to SMALL now
    function setSmallSize() public {
        myChoice = frenchFriesSize.SMALL;
    }

    function getChoice() public view returns(frenchFriesSize) {
        return myChoice; // This is going to return an integer as well.
    }

    function getDefaultChoice() public view returns(uint) {
        return uint(defaultChoice); // We're converting frenchFiresSize to an integer
    }
}


// NOTE: Solidity automatically converts the enums to unsigned integers (uint).
contract Elections {
    // This can be our data type!
    enum presidentListOfUSA {JOE_BIDEN, DONALD_TRUMP, ELON_MUSK} // A list of predefined values

    // When we want to create a variable, WE HAVE TO specify what data type do we want to store in that variable.
    presidentListOfUSA myChoice;

    presidentListOfUSA public myFriendsChoice = presidentListOfUSA.JOE_BIDEN;

    presidentListOfUSA public myBrothersChoice = presidentListOfUSA.DONALD_TRUMP;

    presidentListOfUSA public myAnotherFriendsChoice = presidentListOfUSA.ELON_MUSK;

    // Current President
    // Since It's never going to change, we're going to introduce the keyword "constant"
    presidentListOfUSA public constant currentPresident = presidentListOfUSA.DONALD_TRUMP;


    function setElonMusk() public {
        myFriendsChoice = presidentListOfUSA.ELON_MUSK;
    }
    
    function setJoeBiden() public {
        myChoice = presidentListOfUSA.JOE_BIDEN;
    }

    function setDonaldTrump() public {
        myChoice = presidentListOfUSA.DONALD_TRUMP;
    }


    function setMyChoice(uint _id) public {
        if (_id == 0) {
            myChoice = presidentListOfUSA.JOE_BIDEN;
        } else if (_id == 1) {
            myChoice = presidentListOfUSA.DONALD_TRUMP;
        } else if (_id == 2) {
            myChoice = presidentListOfUSA.ELON_MUSK;
        } else {
            myChoice = currentPresident; // Donald Trump
        }
    }

    // Getter function for myChoice variable (When we're not using public keyword)
    // function getMyChoice() public view returns(presidentListOfUSA) {
        // return myChoice;
    // }

    function getMyChoice() public view returns(uint) {
        // Converting an enum to an unsigned integer
        return uint(myChoice);
    }

}