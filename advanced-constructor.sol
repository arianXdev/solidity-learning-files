// SPDX-License-Identifier: GPL-3
pragma solidity >= 0.7.0 < 0.9.0;

// Constructor is a special function using 'constructor' keyword.
// It initializes state variables of a contract.

// A constructor in Solidity is a special function that is used to initialize state variables in a contract.

/*
Following are key characteristics:

    1. A contract can have only one constructor.

    2. A constructor code is excuted once when a contract is created and it is used to initialize contract state. (It happens once!)

    3. After a constructor code executed, the final code is deployed to blockchain.

    This code include public functions and code reachable through public functions.
    Constructor code or any internal method used only by constructor are not included in final code.

    A constructor can be either public or internal

    An internal constructor marks the contract as abstract.

    In case, no constructor is defined, a default constructor is present in the contract.
*/

contract Member {
    string name;
    uint age;


    // If we wanted to set up the contract state (state variables), we have to use constructor function to do that!
    // NOTE: We're using underscores to differetiate our name and our age.
    constructor(string memory _name, uint _age) {
        name = _name;
        age = _age;
    }


    function getName() public view returns (string memory) {
        return name;
    }
}

contract Teacher is Member { 
    constructor(string memory _name, uint _age) Member(_name, _age) {}
}




// -----------------------------------------------------------------------------
//

// contract Parent {
//     // Constructor: A special function declared constructor keyword which will be executed once when contract is created

//     // State variables (Property)

//     // Functions (Method)

//     string fathersFirstname;
//     string fathersSurname;

//     string favoriteColor;
//     uint age;


//     constructor(string memory _favoriteColor, uint _age) {
//         fathersFirstname = "Clarian";
//         fathersSurname = "North";

//         favoriteColor = _favoriteColor;
//         age = _age;
//     }



//     function getFathersFirstname() public view returns (string memory) {
//         return fathersFirstname;
//     }

//     function getFathersSurname() public view returns (string memory) {
//         return fathersSurname;
//     }

//     function getAge() public view returns (uint) {
//         return age;
//     }

//     function getFavoriteColor() public view returns (string memory) {
//         return favoriteColor;
//     }
// }


// contract FirstChild is Parent("Blue", 24) {
    
// }


// contract SecondChild is Parent("Green", 20) {
    
// }


// // It will become "abtract contract"
// contract ThirdChild is Parent {
    
// }
// -----------------------------------------------------------------------------
// A constructor in Solidity is a special function that is used to initialize state variables in a contract.







// -----------------------------------------------------------------------------
contract Car {
    // State variables (Properties)

    // Functions (Methods)

    // Constructor
    
    // Car properties
    string company;
    string model;
    string color;
    uint year;

    constructor(string memory _company, string memory _model, string memory _color, uint _year) {
        company = _company;
        model = _model;
        color = _color;
        year = _year;
    }

    // Car functions
    function move() public view returns (string memory) {
        return "Moving...";
    }

    function stop() public view returns (string memory) {
        return "Stopping...";
    }


    function speed() public view returns (string memory) {
        return "Speeding...";
    }


    function getCompany() public view returns (string memory) {
        return company;
    }

    function getModel() public view returns (string memory) {
        return model;
    }

    function getColor() public view returns (string memory) {
        return color;
    }

    function getYear() public view returns (uint) {
        return year;
    }
}


// Inheritance
contract _730li is Car {
    constructor(string memory _color, uint _year) Car("BMW", "730li", _color, _year) {}
}

contract _530i is Car {
    constructor(string memory _color, uint _year)  Car("BMW", "530i", _color, _year) {}
}

contract _718Boxter is Car  {
    constructor(string memory _color, uint _year) Car("Porsche", "718 Boxter S", _color, _year) {}
}