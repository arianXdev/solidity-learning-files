pragma solidity >= 0.7.0 < 0.9.0;

// Strins are a set of letters or characters that makes a word
contract LearnStrings {
    // Each letter here is a 
    // We set the string variable to a string literal
    string greetings = "Hello Nick! How's it going? \n ...."; // "Hello!" is the string literal | greetings is the name of the string | strings is data type 
    // Watch out for weird chaacters (e.g. €, سلام, ...)

    // What about if you want to add quotations in your quotations? ESCAPE CHARACTERS (Escape Sequences)



    function sayHello() private view returns (string memory) {
        return greetings;
    }

    function changeGreeting(string memory _change) public {
        greetings = _change;
    }


    // Strings are too expensive computationally to get length in Solidity so you can't do it like other programming languages
    function getChar() public view returns (uint) {
        // return greetings.length; // it doesn't work!
        // Convert strings to bytes so that we can return the length of that strings (a new data type)

        // There is another data type besides "String" and "Integer" and "Boolean" and that is called "Bytes"

        // bytes are the basic unit of measurement in computer processing

        // A Data type (e.g. string) ----------> |^OPERATIONS^| -------------> Bytes
        bytes memory stringToBytes = bytes(greetings); // converted version 


        return stringToBytes.length;

    }


}

// Exercise: 
// 1. Create a string called favoriteColor
// 2. Set the favoriteColor of the string favoriteColor to blue
// 3. Create a function which returns the string literal of favoriteColor
// 4. Create a function which changes the favoriteColor string literal from blue to your favorite color
// 5. Create a function which can return how many characaters there are in the string favoriteColor

contract Strings {
    // String literal is actually characters of our string
    string favoriteColor = "Green"; // "Green" is the string literal 

    function getColor() public view returns (string memory) {
        return favoriteColor;
    }

    function changeColor(string memory _userFavoriteColor) public {
        favoriteColor = _userFavoriteColor;
    }

    function getColorLength() public view returns (uint) {
        // First of all, we have to convert our string to the bytes

        // converted string | bytes() is a build-in function to convert other data types (e.g. strings, intengers, booleans) to bytes
        bytes memory stringToBytes = bytes(favoriteColor); 

        return stringToBytes.length;
    }

}
