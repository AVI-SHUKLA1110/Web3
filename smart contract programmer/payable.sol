// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Payable {
    //creating a payable address - to receive ethers
    address payable public owner;

    constructor() {
      owner = payable(msg.sender); //type casting the msg.sender as payable otherwise it will throw an error
    }
  
   function deposit()  external payable  {}
    
   function getBalance() external view returns (uint){
       return address(this).balance;
   }

}