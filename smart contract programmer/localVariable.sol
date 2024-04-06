
//SPDX-License-Identifier: MIT
pragma solidity 0.8.25;


contract LocalVariables {
    uint public a;
    uint public b;     //state var
    address public myadd;

  function foo() external {
        uint x = 123;
        bool y = false;              // x, y = local variables

        x += 456;
        y = true;

        //updating the state variables
         a = 456;
         b = 789;
         myadd = address(1);
    }
}

// the two local variables x and y executes only while the function is execurint 
//after the function is executed we get that the state variables declared outside the function
// at the top stores their value at the last section ("update the state variables")
