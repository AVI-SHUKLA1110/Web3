 // SPDX-License-Identifier: MIT
 pragma solidity ^0.8.18;
 contract simpleStorage {
     string public text;
    //so we will use 2 functions in this contract - one to set the string inoput 
    // and the other to get it

    //set function 
    function set (string calldata _text) external {
        text= _text;
    }
    //get function 
    function get () external view returns (string memory){
        return text;
    }
 }

