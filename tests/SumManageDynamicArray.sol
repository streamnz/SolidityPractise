// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SumElementsAndManageDynamicArray {
    // task1 Function to calculate the sum of all elements in an array
    function sumOfArray(int[] memory arr) public pure returns (int) {
        int sum = 0;
        for(uint i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
        return sum;
    }

    // task2 Manage a Dynamic Array of Strings
    string[] public strings;

    // Function to add an element to the array
    function addElement(string memory newElement) public {
        strings.push(newElement);
    }

    // Function to retrieve an element at a specific index
    function getElement(uint index) public view returns (string memory) {
        require(index < strings.length, "Index out of bounds");
        return strings[index];
    }

}
