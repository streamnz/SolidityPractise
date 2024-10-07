// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract DataTypes{
    bool public isMale = true;
    uint public maxUint = type(uint).max;
    uint public minUint = type(uint).min;

    uint8 public maxUint8 = type(uint8).max;
    uint8 public minUint8 = type(uint8).min;

    uint16 public maxUint16 = type(uint16).max;
    uint16 public minUint16 = type(uint16).min;


    int public maxInt = type(int).max;
    int public minInt = type(int).min;

    int8 public maxInt8 = type(int8).max;
    int8 public minInt8 = type(int8).min;

    // int16 public maxInt16 = type(int16).max;
    // int16 public minInt16 = type(int16).min;

    // address public addr = address(1);


    // bytes32 public minB32 = keccak256("");
    //  bytes32 public maxB32 = keccak256(abi.encodePacked(bytes("string(255)")));

    function getGlobalValue () external view returns (bool, uint, uint, uint8, uint8, uint16, uint16,int,int,int8,int8){
        return (isMale, maxUint,minUint,maxUint8,minUint8,maxUint16,minUint16,maxInt,minInt,maxInt8,minInt8);
    }
}