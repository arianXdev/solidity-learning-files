// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0; // means specifying the version of solidity

// VARIABLES AND TYPES in Solidity

/* 
While we are wrting program (or coding) in any language, you need to use various variables to store various information.
Variables are nothing but reserved memory locations to store values.

// Variables are reserverd memory locations to store value.

This means that when you create a variable actually you reserve some space in memory

Variables: Variables are used to store information to be referenced and manipulated in a computer program.

So if somebody asks you, hey, what's a variable?
You can say, hey well, VARIABLES are just memory locations or just places where we can store our information, 
It's where we store the information of our code.
*/

// ----------------------------------------------------------------------------------------------

/* 
There are many different data types of variables in Solidity:

Three main data types of variables: Booleans (bool), Integers (uint), & Strings (string)

---- Booleans ----
What are booleans? Well, Booleans just return true / false values, That's all booleans do.
lieDetector = boolean to check whether what they say is true or false


---- Integers ----
What are integers? Well, They're numbers, right? ..., -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, ...


---- Strings ----
What are strings? Well, They're a set (array) of characters or letters (s.o.l.i.d.i.t.y = solidity) that makes a word
So Strings are important when we want to return back "text information" such as error messages or writing stuff on our front-end...
In Solidity, We're not using strings that often rather than other programming languages like JavaScript or Python and so on!

Alright, So If you want to have an error message variable that says error message text, for example:
errorMessageText = string that would say "Error! There has been a mistake :("
*/


/* 
Summery of data types of variable in Solidity:
    Integers: They're numbers.
    Booleans: They just return true or false! (true / false)
    Strings: They're a set of letters or characters that makes a word
*/

// ----------------------------------------------------------------------------------------------

// How to write variables in Solidity?

contract learnVariables {
    // this is where all our solidity code
    /* 
        So to do that because Solidity is a statically-typed language,
        when you want to create an integer, you actually have to define it (variable) as an integer.
        
        Note: Therefore, WHENEVER We want to make a variable, we have to define THE TYPE of the variable! and each data type has a 'keyword'
        and the 'keyword" is what we use, right?

        The type of the variable = The data type of value that stores in variable.
     */


    // We don't write 'integer' because that's not the keyword!
    // The 'keyword' for 'integer' is actually "uint"
    // The 'keyword' for 'boolean' is actually "bool"
    // The 'keyword' for "string' is actually "string"

    // A semicolon is going to tell Solidity that, This is when this sentence ends like writing English.

    // Note: Also in Solidity, we can't create variables with a dash (-) like JavaScript | Naming Conventions

    // uint chocolateBar; // It doesn't actually equal anything

    // How can we intialize it to equal something?
    // Integers
    uint256 storeOwner = 300;
    uint256 chocolateBar = 10;

    // Booleans
    // The keyword for booleans is 'bool'
    bool lieDetector = true;

    // Strings
    // The keyword for strings is 'string'

    /* Note: When we write a string, we have to put it in string format and that can be either 'single quotations' or "double quotations"
    If we have a string, it matters because the message is always going to change, So we have to wrap out string in quotations.
    And we could use either 'single' or "double" quotations, It's totally up to us if we want to use 'single' or "double" */
    string errorMessageText = "Error! There bool been a mistake :( (This is string literal)";
    // We set the string variable to a string literal

    // Exercise

    // Exercise: 1. Create a new variable called wallet as an integer
    // 2. Create a boolean called spend
    // 3. Create a string give it the name notifySpend
    // 4. Initialize the wallet to 500
    // 5. Set the value of spend to false
    // 6. Add the string literal (the string value) 'you have spent money' to notifySpend

    // Assignment operator
    uint256 wallet = 500;
    bool spend = false;
    string notifySpend = "You have spent money!";
    // string notifySpend = 'You have spent money!';
}


