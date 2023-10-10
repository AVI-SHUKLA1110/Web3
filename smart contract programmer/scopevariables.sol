//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract LocalVariables {
    uint public i;
    bool public b; //GLOBAL
    address public myaddr;

    function abc() external {
        uint x = 123;
        bool f = true;   //LOCAL

        x += 456;
        f = false;
        i = 123;
        b = true;
        myaddr = address(1);
    }
}
