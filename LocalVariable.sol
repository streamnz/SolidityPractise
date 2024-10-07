// SPDX-License-Identifier: MIT
pragma solidity 0.8,26;

contract LocalVariable{
    uint256 public g_variable = 1;
    address public g_addr = address(1);

    function f(uint256 input){
        bool bool_v = false;
        int int_v = type(int).max;
        int int_v_min = type(int).min;

        // update local variable 
        bool_v = true;
        int_v = type(int).min;
        int_v_min = type(int).max;

        // update global variable

        g_address = address().max;
        g_address = address().min;
    }




}