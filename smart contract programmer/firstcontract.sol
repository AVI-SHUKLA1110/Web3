// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract firstapp {
    uint public count;

//function to check the current value of count -
function get() public view returns (uint) {
    return count;
}

//function to increase the value of count by 1-
function inc() public {
    count +=1;
}

//function to decrease the value of count by 1-
function dec() public {
   count -=1;
}
}
