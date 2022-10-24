// This line just tells the solidity compiler which version of the Solidity programming language that we want to use
pragma solidity ^0.8.7;

// Array: They're just a way of storing a list of information.
contract Arrays {
    uint[] public array = [1, 2, 3];   
    string[] public stringArray = ["Gregory", "Barbod", "Arian"];
    string[] public myArray;

    // Two-dimensional array: means you can create an array that has other arrays inside of it.
    uint[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    uint[][][][] public array4D = [[[[1, 2, 3], [4, 5, 6], [7, 8, 9]]]];

    // Ten-dimensional arraye
    string[][][][][][][][][][] public stringArray10D = [[[[[[[[[["Barbod", "Robert", "Omid"]]]]]]]]]];

    function addValue(string memory _value) public {
        myArray.push(_value);
    }

    function valueCount() public view returns(uint) {
        return myArray.length;
    }

}  


// There are two types of Arrays in Solidity: 1. Fixed-size arrays | 2. Dynamic Arrays
// <data type of elements>[size] name = [elements];

contract TypesOfArrays {
    // 1. Fixed-size arrays: Maximum numbers of elements are predefined.
   uint[4] fixedSizeArray = [1, 2, 3, 4];


    // 2. Dynamic arrays: Maximum Numbers of elements are NOT predefined.
    uint[] dynamicArrays = [1, 2, 3, 4];
}

