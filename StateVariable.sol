// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage{

    uint public storedData ;


    function set(uint _storedData) public {
        storedData = _storedData;
    }

    function get() view public returns(uint) {
        return storedData;
    }
}