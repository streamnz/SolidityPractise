// SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract Ownerable{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    function setOwner(address _newOwner) external onlyOwner{
        require(_newOwner != address(0));
        owner = _newOwner;
    }

    function onlyOwnerCanCall() external onlyOwner{
    //do something here
    // show owner address
    }

    function anyoneCanCall() external {
    // show owner address
    }
}