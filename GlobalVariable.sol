// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract GlobalVariables{
    function showGlobalVariables() public view returns(address,uint,uint){
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender,timestamp,blockNum);
    }
}