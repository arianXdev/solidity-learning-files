pragma solidity >= 0.7.0 < 0.9.0;

// Functions in Solidity

/* 
What are functions?

 A function is a group of reusable code that can be used anywhere in your application. They perform a specific task
      it's our way to executing our scripts, functions are where we make things happen.

A function is a group of resuable code which can be called anywhere in your program.
This eliminates the need of writing the same code again and again.
It helps programmers in wrting modular codes. Functions allow a programmer to
divide a big program into a number of small and managable functions.


Like any other advanced programming language, Solidity also supports all the features neccessary to write modular code using functions.
This section explains how to write your own functions in Solidity.

NOTE: Function take inputs of information and produce outputs.

NOTE: The Scope is the visibiility.

NOTE: If I say 'public' for a function, It's basically just saying that the function can be accessed "outside of the contract", 
So other contracts can access it.   

NOTE: If we want to make it private, it can only be accessed "in the contract".

And If we want to return something, we have to set 'returns()'
returns() is the output.    

*/
contract learnFunctions {
    // How to write functions in Solidity?

    // function function-name(parameter-list) visibility returns(what do we want to return?) {
    // statement
    // }

    //      This is the input of the function | This is going to be the output of the function
    function remoteControlOpen(bool closedDoor) public returns (bool) {
        // Everything inside the curly brackets here, That's going to be all the code of the function
        // All the things that we want this function to do
        // Everything inside here are the statements
    }

    // create a function that can add up two variables

    /* 
        NOTE: "view" keyword is just going to allow us to view the results of the return in our IDE, That's all you need to know for now.
        Alright, If we don't have that, we can't see the results.
    */

    /* 
        NOTE: If we didn't want to return the result (output), we could actually have this function without "returns()"
        and It would have still worked.

        So Just If we want to return something, then we would write "returns()"
     */

    function addValues() public view returns (uint256) {
        uint256 a = 2;
        uint256 b = 3;

        // We assigned the result to a plus b
        uint256 result = a + b;
        return result;
    }
}

// -----------------------------------------------------------------------------------------------------------------------------------

contract learnFunctionScope {
    // Note: local variables will supersede state variables.
    uint256 a = 45; // this is a 'state variable'

    // NOTE: If we know 'a' is always 45 - then it's smart to just instantiate 'a' = 45 as a "state variable"

    function addValues() public view returns (uint256) {
        // All the variables that we write in the function remains localized in the function

        uint256 a = 2; // this is a 'local variable'
        uint256 b = 3; // local variable
        uint256 result = a + b;
        /* 
        This is the "local scope" of these variables, they belong in the function!
       */

        return result;
    }

    function addNewValues() public view returns (uint256) {
        uint256 a = 1; // this is a 'local variable'
        uint256 b = 5; // local variable
        uint256 result = a + b; // local variable

        /* These variables inside are not going to change the variables in another function 
        because these variables will only exist in this function that is called the scope, 
        That is the scope!
        */

        // The SCOPE is very important in Solidity.
        /* 
        The scope in Solidity is very important because we're writing Smart Contracts and we have to be very 
        careful with what we grant access in our smart contracts.

        That's why the public keyword is important
         */

        /* 
        So If we're writing variables in this function, these variables are not going to 'affcet' the variable in another funciton.  
         
       */

        /* 
       Now, If we were to write variables outside of the function in the contract
       
        */

        return result;
    }
}
