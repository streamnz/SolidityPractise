// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MseStudent {
    string public name;
    uint256 public age;

    constructor() {
        name = "MSE";
        age = 24;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setName(string calldata _name) public {
        name = _name;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    function setAge(uint256 a) public {
        age = a;
    }

    function deleteName() public virtual returns (string memory) {
        name = "";
        return "MES DELETED";
    }
}
