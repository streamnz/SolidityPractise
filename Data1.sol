// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ValueTypes {
    bool public ba = true;
    uint public u = 123;// uint   uint256 8 to 2x256-1
    // uint8 8 to 2*48 -1
    // uint16 8 to 24*16-1
    int public i = -123;// int int256 -2 **255 to 24255 -1
    //int128-2**127 t0 2 **127 -1
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr=0x1234567890123456789012345678901234567890;
    bytes32 public b32 = 0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef;

}