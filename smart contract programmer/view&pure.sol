//SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract viewandpureFunctions {
    uint public num;

    function viewfunc() external view returns(uint) {
        return num;       //view because it doesnt modify the state variable or write anything to the blockchain 
    }
    function purefunc() external pure returns(uint) {
        return 1;      //pure because it neither  odifies the state var, nor write anything on the blockchain 
//and also it doesnt read anythng from the blockchain too.
}
 //examples 
  function addtoNum(uint x) external view returns(uint) {
    return num + x;  //since it is reading from the state var (blockchain) we are using view
  }
 function addtwoNum(uint x, uint y) external pure returns(uint) {
    return x + y;    //since it doesnt read from the state var (blockchains) we are using pure
 }

}
