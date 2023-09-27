// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract LocalVar {
    uint public i;
    bool public j;
    address public myAddress;
  
// check the deployment of this function before and after calling the foo function 

  function foo() external {
    uint a = 123;
    bool b = true;
    a += 456;
    b = false;

    i = 123;
    j = true;
    myAddress = address(1); //type conversion of interger 1 into hexadecimal value - eth address
  }

}
