pragma solidity >= 0.7.0 < 0.9.0;

/*
While writing a program, there may be a situation when you need to adopt one out of a given set of paths. 
In such cases, you need to use conditional statements that allow your program to make correct decisions and perform right actions.

So while writing a program, there may be a situation when you need to adopt one out of a given 
    set of paths, Choose your own adventure!
    You can say, hey, you know, you can walk down the scary alleyway or you can go into that
    weird haunted house and see what's in the basement, Up to you, Up to you, Decisions, Decisions

    So these same things happen in coding, Right?   
    You have times where there are decisons to be made.
    You know, if the user doesn't put in the right password, they shouldn't get in.
    that's a decision, if the user puts in the right password, then the user should get access, 
    Something like that, basic decision, if the user says they want 10 things, then give them 
    10 things, But if the user says they want 10 things, but they don't have enough money, 
    Don't give them those 10 things, Right?! So In such cases, you need to use conditional
    statements that allow your progrm to make correct decisions, so that they perform the right
    actions, So that's just a fancy way of saying what I just said, You know and think about it 
    in real terms, In real terms, if you build an application, you want the application to work
    in order for it to work and needs to do things based on other things.
    So generally, that's where thse condition statements come in.
    No, some of the most now the most well-known condition statement here that we're going to see
    in languages are the """If statement'"

*/

/* 
- If statement: The if statement is the fundamental control statement that allows Solidity 
to make decisions and execute statements conditionally.

- If...else statement: The 'if...else' statement is the next form of control statement that allows
Solidity to execute statements in a more controlled way.

*/
// Examples of IF statement:
// if (condition) { then }

// if (the user has the right password), then let the user in!
// if (the user has the wrong password), then don't let the user in!

// if (the user has the right password), { let the user in! }
// if (the user has the wrong password), { don't let the user in! }

// --------------------------------------------------------------------------------------------------
// if (the user has the right password) { 
    // let the user in!
// }

// if (the user has the wrong password) {
    // do not let the user in!
// }

// A better way to write above example with 'if...else statement'

// if (the user has the right password) {
    // let the user in!
// } else { // else means otherwise
    // don't let the user in!
// } 

// --------------------------------------------------------------------------------------------------
// NOTE: --- We can use 'if...else' statement rather than 'if...if' statement (Above exmaple)
// if the user has the right password, let them in, else (otherwise) don't!
// -------------------------------------------------------------------------------------
// Old-fashined way
// if the user has the right password, then let the user in!
//[but] if the user has the wrong password, then don't let the user in!
// -------------------------------------------------------------------------------------
// Better way
// if the user has the right password, then let the user in! else (otherwise) dont' let the user in!

// NOTE: if something happens, then do something, else (or otherwise) do not do something else!
// if the user enter the right password, then let the user in, else (or otherwise) don't let the user in.

contract DecisionMaking {
    // How to Write If...else statements in Solidity?
    
    uint oranges = 4; // NOTE: one equal sign (=) assigns value whereas two equal signs (==) equivalates values
    uint numbersOfStudents = 2022;

    function validateOranges() public view returns(bool) {
        // So How do we actually write decision making logic with if...else statement?

        /* 
        NOTE: So we're saying here (Line 56), one oranges equals five, We're actually saying here, we're storing 5 into these oranges
        WHEREAS here we're saying IF oranges is equal to 5 then ...!
        */
        
        if (oranges == 5) { // whatever we put in the parentheses evaluates the trueness (that's a condition!)
            // curly brackets are for the statement of the if - curly brackets means THEN

            // NOTE: How to read the statement? if the oranges is equal to 5 then what do we want to do?
            // NOTE: These curly brackets are essentially "THEN"


            return true;
        } else { // or otherwise | else means otherwise
            return false;// We get false when we don't have 5 oranges in here.
        }

    }


    function validateNumbersOfStudents() public view returns (bool) {
        if (numbersOfStudents == 1022) {
            return true;
        } else {
            return false;
        }
   }
}
