pragma solidity >= 0.7.0 < 0.9.0;




contract criticalAssessment {
    function modulus(uint a, uint b) public view returns (uint) {

        require(b != 0, "Sorry! Cannot divide by zero!");

        return a % b;
    }
}