// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Introfunc {
    string  hi="HELLO WORLD!";
}

// it's okay to remove the public visibility modifier, and it won't throw an error. 
// The contract will still compile and deploy successfully.
// Just keep in mind that without the public visibility, 
// you'll need to add your own custom getter function 
// if you want to retrieve the value of hi from outside the contract.
