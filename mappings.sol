pragma solidity ^0.8.7;

// Mapping
contract Mapping {
    // Creating a mapping
    mapping(uint8 => string) public names;

    // Initilizing state variables
    constructor() {
        // Initializing the mapping
        names[1] = "Gregory";
        names[2] = "Robert";
        names[3] = "Barbod";
        names[4] = "Arian";
        names[5] = "Arian";
        names[6] = "Carl";
    }

}


contract customTypeMapping {
    // Creating a mapping
    mapping(uint8 => Book) public myLibrary; // A list of items which have a key and a value 

    struct Book {
        string title;
        string author;
        uint16 year;
    }


    // Initializing the mapping
    constructor() {
        myLibrary[1] = Book("The Inveitable", "Kevin Kelly", 2016);
        myLibrary[2] = Book("The Compound Effect", "Darren Hardy", 2010);
        myLibrary[3] = Book("No Filter: Inside story of Instagram", "Unknown!", 2020);
    }

}

contract addressBasedMapping {
    mapping(address => Book) public myBooks;

    struct Book {
        string title;
        string author;
    }


    function addBook(address _address, string memory _title, string memory _author) public {
        myBooks[_address] = Book(_title, _author);
    }

}

// what if you wanted to store movies that belong to a certain person, thing or address ***very important***
// Nested Mapping (a Mapping inside of another Mapping)
// Nested mapping can provide many powerful solutions when it comes to working with addresses in Solidity.
contract addressBasedNestedMapping {
    // Syntax: mapping(key1 => mapping(key2 => value2)) public <name>;
    mapping(address => mapping(uint8 => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    function addBook(uint8 _id, string memory _title, string memory _author) public {
        // Based on the user who calls the function
        // Solidity has a global variable called msg.sender that allows you to capture the address with a person calling the function
        // Syntax: myBooks[key1][key2] = value;

        myBooks[msg.sender][_id] = Book(_title, _author);
    }

}