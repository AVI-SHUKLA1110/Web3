// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//creating an ether wallet application where anyone can send the ether but only
//the owner can withdraw it

contract EtherWallet {
    address payable public owner;
    constructor() {
        owner = payable(msg.sender);
    }
  //function to receive ether
   receive() external payable {}
   
 //function to withdraw ether and only owner should be able to do so
   function withdraw (uint _amt) external {
       require(msg.sender == owner, "caller is not the owner");
      owner.transfer(_amt);
   }

}