// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract Datatypes {
    bool public boo = true;

   //declaring uint
    uint8 public u8 = 1;
    uint256 public u = 758;
    uint256 public u256 = 2123;


    //declaring int 
    int8 public i8 = -1;
    int256 public i = -758;
    int256 public i256 = -2343;

 //finding the maximum and minimum of int 
    int256 public minInt1 = type(int256).min;
    int256 public maxInt2 = type(int256).max;


//address datatype 
address public add = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
}
